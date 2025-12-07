uint64_t Siri_Nlu_External_UserParse.summarizedDescription.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v15 = v0;
  v16 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_Parser.AlgorithmType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_Parser();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  _StringGuts.grow(_:)(106);
  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DE210);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.algorithm.getter();
  v12 = *(v9 + 8);
  v12(v11, v8);
  _print_unlocked<A, B>(_:_:)();
  (*(v5 + 8))(v7, v4);
  MEMORY[0x223DDF6D0](0xD000000000000017, 0x80000002234DE230);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  v12(v11, v8);
  v13 = v15;
  _print_unlocked<A, B>(_:_:)();
  (*(v16 + 8))(v3, v13);
  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DE250);
  Siri_Nlu_External_UserParse.probability.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234DE270);
  Siri_Nlu_External_UserParse.comparableProbability.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](8194604, 0xE300000000000000);
  return v17;
}

uint64_t specialized Sequence<>.summarizedDescription.getter(uint64_t a1)
{
  v26 = type metadata accessor for Siri_Nlu_External_UserParse();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v28;
  if (v5)
  {
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v24 = *(v7 + 56);
    v25 = v8;
    v23 = (v7 - 8);
    do
    {
      v10 = v26;
      v11 = v7;
      v25(v4, v9, v26);
      v12 = Siri_Nlu_External_UserParse.summarizedDescription.getter();
      v14 = v13;
      (*v23)(v4, v10);
      v28 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v6 = v28;
      }

      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v9 += v24;
      --v5;
      v7 = v11;
    }

    while (v5);
  }

  v28 = 91;
  v29 = 0xE100000000000000;
  v27 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  MEMORY[0x223DDF6D0](v18, v20);

  MEMORY[0x223DDF6D0](93, 0xE100000000000000);
  return v28;
}

uint64_t PommesBridgeResultCandidateState.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesBridgeResultCandidateState(0) + 20);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesBridgeResultCandidateState.userId.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesBridgeResultCandidateState(0) + 20);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PommesBridgeResultCandidateState.voiceIdClassification.setter(uint64_t a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void *PommesBridgeResultCandidateState.speechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t PommesBridgeResultCandidateState.utterance.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 36));

  return v1;
}

uint64_t PommesBridgeResultCandidateState.started.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.finished.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.selected.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.fallback.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.isGestureBased.setter(char a1)
{
  result = type metadata accessor for PommesBridgeResultCandidateState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.pommesCandidateId.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v5, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v5[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *v5;
      v9 = v5[2];
      v10 = v5[3];
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v12 = v11[16];
      v13 = v11[20];
      v14 = v11[24];
      *a1 = v8;
      a1[1] = v7;
      a1[2] = v9;
      a1[3] = v10;
      v15 = *MEMORY[0x277D56620];
      v16 = type metadata accessor for PommesCandidateId();
      (*(*(v16 - 8) + 104))(a1, v15, v16);
      outlined destroy of MediaUserStateCenter?(v5 + v14, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(v5 + v13, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
      v17 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
      v18 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
    }

    else
    {
      v24 = *v5;

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
      v25 = [v24 refId];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        *a1 = v27;
        a1[1] = v29;
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
          *v33 = 0;
          _os_log_impl(&dword_2232BB000, v31, v32, "No refId associated with SARDRunPOMMESRequest. Using empty string for PommesCandidateId. This should never happened.", v33, 2u);
          MEMORY[0x223DE0F80](v33, -1, -1);
        }

        *a1 = 0;
        a1[1] = 0xE000000000000000;
      }

      v34 = *MEMORY[0x277D56610];
      v35 = type metadata accessor for PommesCandidateId();
      (*(*(v35 - 8) + 104))(a1, v34, v35);
      v17 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v18 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
    }

    return outlined destroy of MediaUserStateCenter?(v5 + v12, v17, v18);
  }

  else
  {
    v19 = *v5;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR) + 48);
    *a1 = v19;
    a1[1] = v7;
    v21 = *MEMORY[0x277D56618];
    v22 = type metadata accessor for PommesCandidateId();
    (*(*(v22 - 8) + 104))(a1, v21, v22);
    return outlined destroy of NLXResultCandidate(v5 + v20, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesBridgeResultCandidateState.userParses.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v13, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(&v13[v15[16]], v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v7, v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v16 = type metadata accessor for TCUMappedNLResponse();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v5, 1, v16) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v18 = 0;
      }

      else
      {
        v24 = TCUMappedNLResponse.nlResponse.getter();
        (*(v17 + 8))(v5, v16);
        v18 = NLParseResponse.userParses.getter();

        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      v25 = v15[20];
      outlined destroy of MediaUserStateCenter?(&v13[v15[24]], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      v21 = &_s16SiriMessageTypes0A9UserInputOSgMd;
      v22 = &_s16SiriMessageTypes0A9UserInputOSgMR;
      v23 = &v13[v25];
    }

    else
    {

      v18 = *(v13 + 1);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      v21 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v22 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v23 = &v13[*(v20 + 64)];
    }

    outlined destroy of MediaUserStateCenter?(v23, v21, v22);
  }

  else
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v13[*(v19 + 48)], v10, type metadata accessor for NLXResultCandidate);
    v18 = *v10;

    outlined destroy of NLXResultCandidate(v10, type metadata accessor for NLXResultCandidate);
  }

  return v18;
}

uint64_t PommesBridgeResultCandidateState.fallbackParse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v15, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(v15 + v17[16], v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v9, v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v18 = type metadata accessor for TCUMappedNLResponse();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v7, 1, v18) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v20 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
        (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
      }

      else
      {
        v24 = TCUMappedNLResponse.nlResponse.getter();
        (*(v19 + 8))(v7, v18);
        NLParseResponse.fallbackParse.getter();

        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      }

      v25 = v17[20];
      outlined destroy of MediaUserStateCenter?(v15 + v17[24], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      return outlined destroy of MediaUserStateCenter?(v15 + v25, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }

    else
    {

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      return outlined init with take of PommesSearchReason?(v15 + *(v23 + 64), a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(v15 + *(v21 + 48), v12, type metadata accessor for NLXResultCandidate);
    outlined init with copy of MediaUserStateCenter?(&v12[*(v10 + 20)], a1, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return outlined destroy of NLXResultCandidate(v12, type metadata accessor for NLXResultCandidate);
  }
}

uint64_t PommesBridgeResultCandidateState.responseVariantResult.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v13, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      outlined init with take of PommesSearchReason?(v13 + v15[16], v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined init with copy of MediaUserStateCenter?(v7, v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v16 = type metadata accessor for TCUMappedNLResponse();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v5, 1, v16) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v18 = 0;
        v7 = v5;
      }

      else
      {
        v23 = TCUMappedNLResponse.nlResponse.getter();
        (*(v17 + 8))(v5, v16);
        v18 = NLParseResponse.responseVariantResult.getter();
      }

      outlined destroy of MediaUserStateCenter?(v7, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v24 = v15[20];
      outlined destroy of MediaUserStateCenter?(v13 + v15[24], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      v25 = &_s16SiriMessageTypes0A9UserInputOSgMd;
      v26 = &_s16SiriMessageTypes0A9UserInputOSgMR;
      v27 = v13 + v24;
    }

    else
    {
      v20 = *v13;

      v21 = [v20 responseVariantResult];
      if (v21)
      {
        v22 = v21;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {

        v18 = 0;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      v25 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v26 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v27 = v13 + *(v28 + 64);
    }

    outlined destroy of MediaUserStateCenter?(v27, v25, v26);
  }

  else
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(v13 + *(v19 + 48), v10, type metadata accessor for NLXResultCandidate);
    v18 = *&v10[*(v8 + 24)];

    outlined destroy of NLXResultCandidate(v10, type metadata accessor for NLXResultCandidate);
  }

  return v18;
}

uint64_t PommesBridgeResultCandidateState.tcuMappedResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v8 = v7[20];
    v9 = v7[24];
    outlined init with take of PommesSearchReason?(&v6[v7[16]], a1, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(&v6[v9], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    return outlined destroy of MediaUserStateCenter?(&v6[v8], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  }

  else
  {
    outlined destroy of NLXResultCandidate(v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v11 = type metadata accessor for TCUMappedNLResponse();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t PommesBridgeResultCandidateState.hasServerFallbackReason.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v53 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v53 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = v7;
    v58 = v3;
    v26 = v2;

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v28 = v27[20];
    v29 = v27[24];
    outlined init with take of PommesSearchReason?(&v19[v27[16]], v25, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of MediaUserStateCenter?(&v19[v29], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(&v19[v28], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with copy of MediaUserStateCenter?(v25, v23, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v30 = type metadata accessor for TCUMappedNLResponse();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v23, 1, v30) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v23, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v32 = v26;
    }

    else
    {
      v33 = TCUMappedNLResponse.nlResponse.getter();
      (*(v31 + 8))(v23, v30);
      v32 = v26;
      if (v33)
      {
        v34 = v33;
        NLParseResponse.serverFallbackReason.getter();

        v35 = v58;
        v36 = *(v58 + 48);
        if (v36(v16, 1, v32) != 1)
        {
          outlined destroy of MediaUserStateCenter?(v16, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v42 = v60;
          v53 = v34;
          NLParseResponse.serverFallbackReason.getter();
          v43 = v59;
          (*(v35 + 104))(v59, *MEMORY[0x277D5D188], v32);
          (*(v35 + 56))(v43, 0, 1, v32);
          v44 = *(v5 + 48);
          v45 = v55;
          outlined init with copy of MediaUserStateCenter?(v42, v55, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v54 = v44;
          outlined init with copy of MediaUserStateCenter?(v43, v45 + v44, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          if (v36(v45, 1, v32) == 1)
          {

            outlined destroy of MediaUserStateCenter?(v43, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v42, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v25, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            if (v36(v45 + v54, 1, v32) == 1)
            {
              v37 = &_s16SiriMessageTypes20ServerFallbackReasonOSgMd;
              v38 = &_s16SiriMessageTypes20ServerFallbackReasonOSgMR;
              v39 = v45;
              goto LABEL_10;
            }
          }

          else
          {
            v46 = v53;
            v47 = v57;
            outlined init with copy of MediaUserStateCenter?(v45, v57, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            v48 = v54;
            if (v36(v45 + v54, 1, v32) != 1)
            {
              v49 = v58;
              v50 = v56;
              (*(v58 + 32))(v56, v45 + v48, v32);
              lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type ServerFallbackReason and conformance ServerFallbackReason, MEMORY[0x277D5D190], MEMORY[0x277D5D198]);
              v51 = dispatch thunk of static Equatable.== infix(_:_:)();

              v52 = *(v49 + 8);
              v52(v50, v32);
              outlined destroy of MediaUserStateCenter?(v59, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              outlined destroy of MediaUserStateCenter?(v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              outlined destroy of MediaUserStateCenter?(v25, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
              v52(v47, v32);
              outlined destroy of MediaUserStateCenter?(v45, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
              v40 = v51 ^ 1;
              return v40 & 1;
            }

            outlined destroy of MediaUserStateCenter?(v59, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of MediaUserStateCenter?(v25, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
            (*(v58 + 8))(v47, v32);
          }

          outlined destroy of MediaUserStateCenter?(v45, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMd, &_s16SiriMessageTypes20ServerFallbackReasonOSg_ADtMR);
          v40 = 1;
          return v40 & 1;
        }

LABEL_9:
        outlined destroy of MediaUserStateCenter?(v16, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v37 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd;
        v38 = &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR;
        v39 = v25;
LABEL_10:
        outlined destroy of MediaUserStateCenter?(v39, v37, v38);
        goto LABEL_11;
      }
    }

    (*(v58 + 56))(v16, 1, 1, v32);
    goto LABEL_9;
  }

  outlined destroy of NLXResultCandidate(v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
LABEL_11:
  v40 = 0;
  return v40 & 1;
}

uint64_t PommesBridgeResultCandidateState.tcuId.getter()
{
  v1 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v0, v3, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = *(v3 + 2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v6 = v5[16];
    v7 = v5[20];
    outlined destroy of MediaUserStateCenter?(&v3[v5[24]], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(&v3[v7], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(&v3[v6], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    outlined destroy of NLXResultCandidate(v3, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    return 0;
  }

  return v4;
}

uint64_t PommesBridgeResultCandidateState.requestType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v4, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = *v4;

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
    outlined destroy of MediaUserStateCenter?(v4 + *(v6 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v7 = [v5 requestType];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }
  }

  else
  {
    outlined destroy of NLXResultCandidate(v4, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  }

  return 0;
}

uint64_t PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v31 - v8);
  v10 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NLXResultCandidate(v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v9);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    (*(v4 + 16))(v7, v9, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      v18 = PommesCandidateId.description.getter();
      v20 = v19;
      v21 = *(v4 + 8);
      v21(v7);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2232BB000, v14, v15, "Attempting to set RC-based user parses while not on the RC state path for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x223DE0F80](v17, -1, -1);
      MEMORY[0x223DE0F80](v16, -1, -1);

      return (v21)(v9, v3);
    }

    else
    {

      v30 = *(v4 + 8);
      v30(v7, v3);
      return (v30)(v9, v3);
    }
  }

  else
  {
    v24 = *v12;
    v25 = v12[1];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v27 = *(v12 + *(v26 + 64));
    outlined destroy of NLXResultCandidate(v12 + *(v26 + 48), type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v28 = *(v26 + 48);
    v29 = *(v26 + 64);
    *v1 = v24;
    v1[1] = v25;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v1 + v28, type metadata accessor for NLXResultCandidate);
    *(v1 + v29) = v27;
    return swift_storeEnumTagMultiPayload();
  }
}

void PommesBridgeResultCandidateState.setRunPommesRequest(userParses:fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PommesCandidateId();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v2, v14, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v15 = *v14;

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
    outlined destroy of MediaUserStateCenter?(v14 + *(v16 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined destroy of NLXResultCandidate(v2, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v17 = *(v16 + 64);
    *v2 = v15;
    v2[1] = a1;
    outlined init with copy of MediaUserStateCenter?(a2, v2 + v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of NLXResultCandidate(v14, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v11);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    (*(v6 + 16))(v9, v11, v5);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v28 = PommesCandidateId.description.getter();
      v24 = v23;
      v25 = *(v6 + 8);
      v25(v9, v5);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v24, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2232BB000, v19, v20, "Attempting to set user parses while not on the runPommesRequest state path for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x223DE0F80](v22, -1, -1);
      MEMORY[0x223DE0F80](v21, -1, -1);

      v25(v11, v5);
    }

    else
    {

      v27 = *(v6 + 8);
      v27(v9, v5);
      v27(v11, v5);
    }
  }
}

uint64_t PommesBridgeResultCandidateState.setParseResponse(_:)(uint64_t a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v40 - v8);
  v10 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v12;
    v19 = *(v12 + 2);
    v40 = *(v12 + 3);
    v41 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
    v21 = a1;
    v22 = v20[16];
    v23 = v20[24];
    outlined init with take of PommesSearchReason?(&v12[v20[20]], v18, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with take of PommesSearchReason?(&v12[v23], v15, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(&v12[v22], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v24 = v20[16];
    v25 = v20[20];
    v26 = v20[24];
    *v1 = v42;
    v27 = v40;
    *(v1 + 16) = v41;
    *(v1 + 24) = v27;
    outlined init with copy of MediaUserStateCenter?(v21, v1 + v24, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    outlined init with take of PommesSearchReason?(v18, v1 + v25, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined init with take of PommesSearchReason?(v15, v1 + v26, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of NLXResultCandidate(v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v9);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.pommes);
    (*(v4 + 16))(v7, v9, v3);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136315138;
      v34 = PommesCandidateId.description.getter();
      v36 = v35;
      v37 = *(v4 + 8);
      v37(v7);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v43);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2232BB000, v30, v31, "Attempting to set TCU-mapped user parses while not on the TRP state path for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x223DE0F80](v33, -1, -1);
      MEMORY[0x223DE0F80](v32, -1, -1);

      return (v37)(v9, v3);
    }

    else
    {

      v39 = *(v4 + 8);
      v39(v7, v3);
      return (v39)(v9, v3);
    }
  }
}

Swift::Void __swiftcall PommesBridgeResultCandidateState.setHasNLResultCandidate(_:)(Swift::Bool a1)
{
  v3 = type metadata accessor for PommesCandidateId();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v1, v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of NLXResultCandidate(v12, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v9);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    (*(v4 + 16))(v7, v9, v3);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = PommesCandidateId.description.getter();
      v23 = v22;
      v24 = *(v4 + 8);
      v24(v7);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_2232BB000, v17, v18, "Attempting to set hasResultCandidate while not on the RC state path for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x223DE0F80](v20, -1, -1);
      MEMORY[0x223DE0F80](v19, -1, -1);

      (v24)(v9, v3);
    }

    else
    {

      v31 = *(v4 + 8);
      v31(v7, v3);
      v31(v9, v3);
    }
  }

  else
  {
    v26 = *v12;
    v27 = v12[1];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(v12 + *(v28 + 48), v15, type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v1, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    *v1 = v26;
    v1[1] = v27;
    outlined init with take of NLXResultCandidate(v15, v1 + v29, type metadata accessor for NLXResultCandidate);
    *(v1 + v30) = a1;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t PommesBridgeResultCandidateState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PommesCandidateId();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v0, v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v22 = v21[16];
      v52 = v21[20];
      v23 = v21[24];
      outlined init with take of PommesSearchReason?(&v19[v22], v13, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      strcpy(v55, "response: ");
      BYTE3(v55[1]) = 0;
      HIDWORD(v55[1]) = -369098752;
      outlined init with copy of MediaUserStateCenter?(v13, v11, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v24 = String.init<A>(describing:)();
      MEMORY[0x223DDF6D0](v24);

      v25 = v55[0];
      v26 = v55[1];
      outlined destroy of MediaUserStateCenter?(v13, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined destroy of MediaUserStateCenter?(&v19[v23], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(&v19[v52], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }

    else
    {

      v29 = *(v19 + 1);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
      outlined init with take of PommesSearchReason?(&v19[*(v30 + 64)], v7, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v55[0] = 0;
      v55[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      strcpy(v55, "userParses: (");
      HIWORD(v55[1]) = -4864;
      v31 = type metadata accessor for Siri_Nlu_External_UserParse();
      v32 = MEMORY[0x223DDF870](v29, v31);
      v34 = v33;

      MEMORY[0x223DDF6D0](v32, v34);

      MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DDE70);
      v35 = Optional.debugDescription.getter();
      MEMORY[0x223DDF6D0](v35);

      MEMORY[0x223DDF6D0](41, 0xE100000000000000);
      v25 = v55[0];
      v26 = v55[1];
      outlined destroy of MediaUserStateCenter?(v7, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v19[*(v27 + 48)], v16, type metadata accessor for NLXResultCandidate);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v55, "userParses: (");
    HIWORD(v55[1]) = -4864;
    v28 = NLXResultCandidate.description.getter();
    MEMORY[0x223DDF6D0](v28);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v25 = v55[0];
    v26 = v55[1];
    outlined destroy of NLXResultCandidate(v16, type metadata accessor for NLXResultCandidate);
  }

  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(103);
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DDE90);
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v4);
  v36 = PommesCandidateId.description.getter();
  v38 = v37;
  (*(v53 + 8))(v4, v54);
  MEMORY[0x223DDF6D0](v36, v38);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234DDEB0);
  v39 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v40 = *(v0 + v39[8]);
  if (v40)
  {
    v41 = [v40 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 1701736302;
    v44 = 0xE400000000000000;
  }

  MEMORY[0x223DDF6D0](v42, v44);

  MEMORY[0x223DDF6D0](0x617265747475202CLL, 0xEE0022203A65636ELL);
  MEMORY[0x223DDF6D0](*(v1 + v39[9]), *(v1 + v39[9] + 8));
  MEMORY[0x223DDF6D0](0x73696E6966202C22, 0xED0000203A646568);
  if (*(v1 + v39[11]))
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (*(v1 + v39[11]))
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v45, v46);

  MEMORY[0x223DDF6D0](0x7463656C6573202CLL, 0xEC000000203A6465);
  if (*(v1 + v39[12]))
  {
    v47 = 1702195828;
  }

  else
  {
    v47 = 0x65736C6166;
  }

  if (*(v1 + v39[12]))
  {
    v48 = 0xE400000000000000;
  }

  else
  {
    v48 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v47, v48);

  MEMORY[0x223DDF6D0](8236, 0xE200000000000000);
  MEMORY[0x223DDF6D0](v25, v26);

  MEMORY[0x223DDF6D0](0x644972657375202CLL, 0xEA0000000000203ALL);
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
  v49 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v49);

  return v55[0];
}

uint64_t PommesBridgeResultCandidateState.init(resultCandidateId:userId:speechPackage:utterance:started:finished:selected:fallback:hasNLResultCandidate:userParses:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v19 = v18[7];
  v20 = type metadata accessor for SelectedUserAttributes();
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  a9[v18[14]] = 0;
  v21 = v18[15];
  v22 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v24 = &a9[*(v23 + 48)];
  v25 = *(v23 + 64);
  *a9 = a1;
  *(a9 + 1) = a2;
  v26 = type metadata accessor for NLXResultCandidate(0);
  v27 = *(v26 + 20);
  v28 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v28 - 8) + 56))(&v24[v27], 1, 1, v28);
  v29 = &v24[*(v26 + 24)];
  *v24 = a13;
  outlined assign with take of MediaUserStateCenter?(a14, &v24[v27], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v29 = 0;
  *(v29 + 1) = 0;
  a9[v25] = a12;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v30 = v18[5];
  v31 = type metadata accessor for UserID();
  result = (*(*(v31 - 8) + 32))(&a9[v30], a3, v31);
  *&a9[v18[8]] = a4;
  v33 = &a9[v18[9]];
  *v33 = a5;
  *(v33 + 1) = a6;
  a9[v18[10]] = a7;
  a9[v18[11]] = a8;
  a9[v18[12]] = a10;
  a9[v18[13]] = a11;
  *&a9[v18[6]] = 0;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for GestureInput();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UserID();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v43 = v18;
  v44 = v17;

  v19 = v16;
  UserIdAwareResultCandidateMessageBase.userId.getter();

  v20 = GestureBasedResultCandidateMessage.gesture.getter();
  v21 = MEMORY[0x223DDDDD0](v20);
  v23 = v22;
  (*(v7 + 8))(v9, v6);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (v23)
  {
    v25 = v23;
  }

  v45 = v25;
  v46 = v24;
  v26 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v27 = *(*(v26 - 8) + 56);
  v27(v5, 1, 1, v26);

  v28 = v13[9];
  v29 = type metadata accessor for SelectedUserAttributes();
  (*(*(v29 - 8) + 56))(&v15[v28], 1, 1, v29);
  v15[v13[16]] = 0;
  v30 = v13[17];
  v31 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v31 - 8) + 56))(&v15[v30], 1, 1, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v33 = &v15[*(v32 + 48)];
  v34 = *(v32 + 64);
  v35 = v43;
  *v15 = v44;
  *(v15 + 1) = v35;
  v36 = type metadata accessor for NLXResultCandidate(0);
  v37 = *(v36 + 20);
  v27(&v33[v37], 1, 1, v26);
  v38 = &v33[*(v36 + 24)];
  *v33 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v5, &v33[v37], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v38 = 0;
  *(v38 + 1) = 0;
  v15[v34] = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  (*(v48 + 32))(&v15[v13[7]], v47, v49);
  *&v15[v13[10]] = 0;
  v39 = &v15[v13[11]];
  v40 = v45;
  *v39 = v46;
  v39[1] = v40;
  v15[v13[12]] = 0;
  v15[v13[13]] = 0;
  v15[v13[14]] = 0;
  v15[v13[15]] = 0;
  *&v15[v13[8]] = 0;
  v41 = v50;
  result = outlined init with take of NLXResultCandidate(v15, v50, type metadata accessor for PommesBridgeResultCandidateState);
  *(v41 + v13[16]) = 1;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(trpCandidateId:tcuId:userId:speechPackage:utterance:started:finished:selected:fallback:parseResponse:originalUserInput:rewriteReason:voiceIdClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v23 = v22[7];
  v24 = type metadata accessor for SelectedUserAttributes();
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  a9[v22[14]] = 0;
  v25 = v22[15];
  v26 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v28 = v27[16];
  v29 = v27[20];
  v30 = v27[24];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  outlined init with take of PommesSearchReason?(a14, &a9[v28], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(a15, &a9[v29], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(a16, &a9[v30], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v31 = v22[5];
  v32 = type metadata accessor for UserID();
  result = (*(*(v32 - 8) + 32))(&a9[v31], a5, v32);
  *&a9[v22[8]] = a6;
  v34 = &a9[v22[9]];
  *v34 = a7;
  *(v34 + 1) = a8;
  a9[v22[10]] = a10;
  a9[v22[11]] = a11;
  a9[v22[12]] = a12;
  a9[v22[13]] = a13;
  *&a9[v22[6]] = a17;
  return result;
}

uint64_t PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v54 = a6;
  v51 = a3;
  v52 = a4;
  v59 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v49 - v12;
  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v57 = *(v14 - 1);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 28);
  v19 = type metadata accessor for SelectedUserAttributes();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v55 = v18;
  v49[1] = v20 + 56;
  v50 = v21;
  v21(v17 + v18, 1, 1, v19);
  *(v17 + v14[14]) = 0;
  v22 = v14[15];
  v23 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v23 - 8) + 56))(v17 + v22, 1, 1, v23);
  v24 = closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(a1);
  closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(a1, v13);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
  *v17 = a1;
  v17[1] = v24;
  outlined init with copy of MediaUserStateCenter?(v13, v17 + v25, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v26 = v14[5];
  v27 = type metadata accessor for UserID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v56 = a2;
  v29(v17 + v26, a2, v27);
  v30 = a1;
  v31 = [v30 recognition];
  if (v31)
  {
    v32 = v31;
    v33 = SASRecognition.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)();
  }

  else
  {
    v33 = 0;
  }

  *(v17 + v14[8]) = v33;
  v34 = closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v30);
  v35 = (v17 + v14[9]);
  *v35 = v34;
  v35[1] = v36;
  *(v17 + v14[10]) = v51 & 1;
  *(v17 + v14[11]) = v52 & 1;
  *(v17 + v14[12]) = v53 & 1;
  *(v17 + v14[13]) = v54 & 1;
  v37 = [v30 userIdentityClassification];
  if (v37)
  {
    v38 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v39 = String.axLowercasedFirstLetter.getter();
  v41 = v40;

  v42 = MEMORY[0x223DDF550](v39, v41);

  v43 = AFUserIdentityClassficationGetFromName();

  *(v17 + v14[6]) = v43;
  v44 = [v30 selectedUserAttributes];
  if (v44)
  {
    v45 = v44;
    v46 = v58;
    SASelectedUserAttributes.selectedUserAttributes.getter(v58);

    (*(v28 + 8))(v56, v27);
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  else
  {

    (*(v28 + 8))(v56, v27);
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v46 = v58;
    v50(v58, 1, 1, v19);
  }

  outlined assign with take of MediaUserStateCenter?(v46, v17 + v55, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v47 = v59;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v17, v59, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v57 + 56))(v47, 0, 1, v14);
  return outlined destroy of NLXResultCandidate(v17, type metadata accessor for PommesBridgeResultCandidateState);
}

void *closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(void *a1)
{
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 nlUserParses];
  if (!v9)
  {
LABEL_11:
    if (one-time initialization token for pommes == -1)
    {
LABEL_12:
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.pommes);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2232BB000, v17, v18, "nlUserParses from SARDRunPOMMESRequest are nil", v19, 2u);
        MEMORY[0x223DE0F80](v19, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_28:
    swift_once();
    goto LABEL_12;
  }

  v10 = v9;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v14)
  {
    if (v11 == v11 >> 32)
    {
LABEL_10:
      outlined consume of Data._Representation(v11, v13);
      goto LABEL_11;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v15 = JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A]();
  v30 = v15;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v21 = v41;
  v31 = v11;
  v32 = v13;
  v38 = *(v41 + 16);
  if (v38)
  {
    v22 = 0;
    v36 = (v33 + 56);
    v34 = (v33 + 32);
    v23 = (v41 + 40);
    v20 = MEMORY[0x277D84F90];
    v37 = v41;
    while (v22 < *(v21 + 16))
    {
      v40 = v20;
      v25 = *(v23 - 1);
      v24 = *v23;
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      outlined copy of Data._Representation(v25, v24);
      outlined copy of Data._Representation(v25, v24);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
      Message.init(serializedData:extensions:partial:options:)();
      outlined consume of Data._Representation(v25, v24);
      (*v36)(v6, 0, 1, v7);
      v26 = *v34;
      (*v34)(v35, v6, v7);
      v20 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v21 = v37;
      v28 = v20[2];
      v27 = v20[3];
      if (v28 >= v27 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v20);
      }

      v20[2] = v28 + 1;
      v26(v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v35, v7);
      ++v22;
      v23 += 2;
      if (v38 == v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_25:

  outlined consume of Data._Representation(v31, v32);
  return v20;
}

uint64_t closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = [a1 nlFallbackParse];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    if ((v9 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_DelegatedUserDialogAct and conformance Siri_Nlu_External_DelegatedUserDialogAct, MEMORY[0x277D5DD80], MEMORY[0x277D5DD78]);
    Message.init(serializedData:extensions:partial:options:)();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  if (v7 != v7 >> 32)
  {
    goto LABEL_8;
  }

LABEL_10:
  outlined consume of Data._Representation(v7, v9);
LABEL_11:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2232BB000, v13, v14, "nlFallbackParse from SARDRunPOMMESRequest is nil", v15, 2u);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }

  v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 1, 1, v16);
}

uint64_t closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(void *a1)
{
  v1 = [a1 utterance];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v3 = 0x3E6C696E3CLL;
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v6, "No utterance provided by SARDRunPOMMESRequest. Using <nil>.", v7, 2u);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }
  }

  return v3;
}

uint64_t closure #1 in PommesStateHolder.state(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16))
  {

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
      v12 = *(v11 - 8);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v10 + *(v12 + 72) * v9, a3, type metadata accessor for PommesBridgeResultCandidateState);

      return (*(v12 + 56))(a3, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t PommesStateHolder.update(pommesCandidateId:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PommesCandidateId();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 16);
  (*(v10 + 16))(v12, a1, v9);
  outlined init with copy of MediaUserStateCenter?(a2, v8, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  (*(v10 + 32))(v15 + v13, v12, v9);
  outlined init with take of PommesSearchReason?(v8, v15 + v14, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in PommesStateHolder.update(pommesCandidateId:with:);
  *(v16 + 24) = v15;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PommesStateHolder.update(pommesCandidateId:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PommesCandidateId();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  outlined init with copy of MediaUserStateCenter?(a3, v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v7, v10);
  return swift_endAccess();
}

uint64_t key path setter for PommesStateHolder.subscript(_:) : PommesStateHolder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PommesCandidateId();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a3);
  outlined init with copy of MediaUserStateCenter?(a1, v8, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  return (*(**a2 + 152))(v8, v11);
}

uint64_t PommesStateHolder.subscript.setter(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 136))(a2, a1);
  v5 = type metadata accessor for PommesCandidateId();
  (*(*(v5 - 8) + 8))(a2, v5);
  return outlined destroy of MediaUserStateCenter?(a1, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
}

void (*PommesStateHolder.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8) + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[2] = v9;
  v10 = type metadata accessor for PommesCandidateId();
  v7[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[4] = v11;
  v13 = *(v11 + 64);
  if (v5)
  {
    v7[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v7[6] = v14;
  (*(v12 + 16))();
  (*(*v2 + 128))(a2);
  return PommesStateHolder.subscript.modify;
}

void PommesStateHolder.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    outlined init with copy of MediaUserStateCenter?((*a1)[2], v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    (*(v6 + 32))(v3, v4, v5);
    (*(*v9 + 136))(v3, v7);
    (*(v6 + 8))(v3, v5);
    outlined destroy of MediaUserStateCenter?(v7, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  else
  {
    (*(*v9 + 136))((*a1)[6], v8);
    (*(v6 + 8))(v4, v5);
  }

  outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  free(v4);
  free(v3);
  free(v8);
  free(v7);

  free(v2);
}

uint64_t PommesStateHolder.__allocating_init()()
{
  v0 = swift_allocObject();
  PommesStateHolder.init()();
  return v0;
}

uint64_t PommesBridgeRequestProcessor.isRequestFinished.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.isRequestFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*PommesBridgeRequestProcessor.pommesStateHolder.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = PommesBridgeRequestProcessor.pommesStateHolder.getter();
  return PommesBridgeRequestProcessor.pommesStateHolder.modify;
}

uint64_t PommesBridgeRequestProcessor.sessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.sessionState;
  swift_beginAccess();
  return outlined init with copy of MediaUserStateCenter?(v1 + v3, a1, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
}

uint64_t PommesBridgeRequestProcessor.sessionState.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.sessionState;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + v3, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return swift_endAccess();
}

uint64_t PommesBridgeRequestProcessor.isCandidateRequest.getter()
{
  v1 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for PommesBridgeRequestProcessor.timeout : PommesBridgeRequestProcessor(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + class metadata base offset for PommesBridgeRequestProcessor + 248))(v6);
}

uint64_t PommesBridgeRequestProcessor.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.timeout;
  swift_beginAccess();
  v4 = type metadata accessor for DispatchTimeInterval();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PommesBridgeRequestProcessor.timeout.setter(uint64_t a1)
{
  v3 = direct field offset for PommesBridgeRequestProcessor.timeout;
  swift_beginAccess();
  v4 = type metadata accessor for DispatchTimeInterval();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PommesBridgeRequestProcessor.init(assistantId:sessionId:requestId:rootRequestId:name:messagePublisher:serviceHelper:pommesSearch:sessionState:instrumentationUtil:isMultiUser:isCandidateRequest:isOnlyUserInHome:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v56 = a5;
  v57 = a8;
  v50 = a7;
  v51 = a1;
  v52 = a2;
  v53 = a6;
  v54 = a9;
  v55 = a4;
  v47 = a3;
  v48 = a10;
  v45 = a16;
  v46 = a17;
  v44 = a15;
  v41 = a13;
  v42 = a14;
  v49 = a11;
  v43 = type metadata accessor for UUID();
  v18 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchTimeInterval();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isRequestFinished) = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.$__lazy_storage_$_pommesStateHolder) = 0;
  v24 = v17 + direct field offset for PommesBridgeRequestProcessor.sessionState;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v17 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
  *v25 = 0;
  v25[1] = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext) = 0;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesSearch) = a12;
  type metadata accessor for PommesBridgeRequestProcessor(0);
  v26 = *(*a12 + 160);

  v26(v58, v27);
  v28 = v59;
  v29 = v60;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v30 = (*(v29 + 8))(0, v28, v29);
  static PommesBridgeRequestProcessor.configuredTimeout(isServerFallbackDisabled:)(v30 & 1, v23);
  __swift_destroy_boxed_opaque_existential_1(v58);
  (*(v21 + 32))(v17 + direct field offset for PommesBridgeRequestProcessor.timeout, v23, v20);
  specialized static PommesBridgeRequestProcessor.configuredScoreThreshold()();
  *(v17 + direct field offset for PommesBridgeRequestProcessor.pommesDUDAThreshold) = v31;
  swift_beginAccess();
  v32 = v41;
  outlined assign with copy of ConversationSessionState?(v41, v24, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  swift_endAccess();
  *(v17 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil) = v42;
  v33 = v45;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isMultiUser) = v44;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isCandidateRequest) = v33;
  *(v17 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome) = v46;
  v34 = v47;
  v35 = v43;
  (*(v18 + 16))(v40, v47, v43);
  v36 = v48;
  outlined init with copy of AppDataProviding(v48, v58);
  v37 = RequestProcessorBase.init(assistantId:sessionId:requestId:name:messagePublisher:serviceHelper:rootLevelRequestId:)();

  outlined destroy of MediaUserStateCenter?(v32, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v36);
  (*(v18 + 8))(v34, v35);
  return v37;
}

void PommesBridgeRequestProcessor.handleStartSpeechRequestMessage(_:)(uint64_t a1)
{
  if (StartSpeechRequestMessage.location.getter())
  {
    v3 = dispatch thunk of Location.toCLLocation()();
  }

  else
  {
    v3 = 0;
  }

  (*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 328))(a1, v3);
}

void PommesBridgeRequestProcessor.handleRequestContextMessage(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40[-v4];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(&v1->isa + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v53 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v53, v11, "Got RequestContextMessage when we already have RequestContextData in scope. This may be due to a temporary transition period where RequestContext is being sent twice for compatibility. Ignoring this message.", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    v13 = v53;
  }

  else
  {
    v14 = a1;
    v53 = v1;
    v15 = MessageBase.assistantId.getter();
    v51 = v16;
    v52 = v15;
    v17 = v14;
    SessionMessageBase.sessionId.getter();

    v18 = v17;
    v19 = RequestMessageBase.requestId.getter();
    v49 = v20;
    v50 = v19;

    v21 = RequestContextMessage.audioSource.getter();
    v46 = v22;
    v47 = v21;
    v23 = RequestContextMessage.audioDestination.getter();
    v44 = v24;
    v45 = v23;
    v25 = RequestContextMessage.responseMode.getter();
    v42 = v26;
    v43 = v25;
    LOBYTE(v14) = RequestContextMessage.isEyesFree.getter();
    v27 = RequestContextMessage.isVoiceTriggerEnabled.getter();
    v28 = RequestContextMessage.isTextToSpeechEnabled.getter();
    v41 = RequestContextMessage.isTriggerlessFollowup.getter();
    v29 = RequestContextMessage.bargeInModes.getter();
    RequestContextMessage.approximatePreviousTTSInterval.getter();
    v48 = RequestContextMessage.deviceRestrictions.getter();
    type metadata accessor for PommesRequestContext(0);
    v30 = swift_allocObject();
    v31 = v51;
    *(v30 + 16) = v52;
    *(v30 + 24) = v31;
    (*(v7 + 32))(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v9, v6);
    v32 = (v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v33 = v49;
    *v32 = v50;
    v32[1] = v33;
    v34 = (v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    v35 = v46;
    *v34 = v47;
    v34[1] = v35;
    v36 = (v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    v37 = v44;
    *v36 = v45;
    v36[1] = v37;
    v38 = (v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    v39 = v42;
    *v38 = v43;
    v38[1] = v39;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = v14 & 1;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = v27 & 1;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = v28 & 1;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = v41 & 1;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v29;
    outlined init with take of PommesSearchReason?(v5, v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v48;
    *(v30 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;

    PommesBridgeRequestProcessor.setRequestContextAndBeginSearchIfReady(_:)(v30);
  }
}

void PommesBridgeRequestProcessor.handleRunPommesRequestMessage(_:)()
{
  v1 = RunPommesRequestMessage.command.getter();
  (*(*v0 + class metadata base offset for PommesBridgeRequestProcessor + 360))();
}

uint64_t PommesBridgeRequestProcessor.handleRunPommesRequest(command:)(void *a1)
{
  v121 = type metadata accessor for PommesCandidateId();
  v124 = *(v121 - 8);
  v3 = MEMORY[0x28223BE20](v121);
  v117 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v122 = (&v114 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v128 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = (&v114 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v115 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v114 - v13;
  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v127 = *(v14 - 1);
  v15 = MEMORY[0x28223BE20](v14);
  v116 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v114 - v18);
  MEMORY[0x28223BE20](v17);
  v123 = &v114 - v20;
  v21 = type metadata accessor for UserID();
  v132 = *(v21 - 8);
  v133 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v114 - v25;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v120 = v1;
  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.pommes);
  v29 = a1;
  v129 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_2232BB000, v30, v31, "PommesBridgeRequestProcessor received SARDRunPOMMESRequest: %@", v32, 0xCu);
    outlined destroy of MediaUserStateCenter?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v33, -1, -1);
    MEMORY[0x223DE0F80](v32, -1, -1);
  }

  v35 = [v29 userId];
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UserID.init(sharedUserId:)();
  }

  else
  {
    static UserID.defaultUserId.getter();
  }

  v37 = *(v132 + 16);
  v130 = v26;
  v38 = v26;
  v39 = v133;
  v37(v24, v38, v133);
  v40 = v14[7];
  v41 = type metadata accessor for SelectedUserAttributes();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v125 = v40;
  v118 = v42 + 56;
  v119 = v43;
  v43(v19 + v40, 1, 1, v41);
  *(v19 + v14[14]) = 0;
  v44 = v14[15];
  v45 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v45 - 8) + 56))(v19 + v44, 1, 1, v45);
  v46 = closure #1 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v29);
  v47 = v131;
  closure #2 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v29, v131);
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
  *v19 = v29;
  v19[1] = v46;
  outlined init with copy of MediaUserStateCenter?(v47, v19 + v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v37(v19 + v14[5], v24, v39);
  v49 = v29;
  v50 = [v49 recognition];
  if (v50)
  {
    v51 = v50;
    v52 = SASRecognition.toAFSpeechPackage(utteranceStart:processedAudioDuration:isFinal:)();
  }

  else
  {
    v52 = 0;
  }

  *(v19 + v14[8]) = v52;
  v53 = closure #3 in PommesBridgeResultCandidateState.init(runPommesRequest:userId:started:finished:selected:fallback:)(v49);
  v54 = (v19 + v14[9]);
  *v54 = v53;
  v54[1] = v55;
  *(v19 + v14[10]) = 0;
  *(v19 + v14[11]) = 0;
  *(v19 + v14[12]) = 0;
  *(v19 + v14[13]) = 0;
  v56 = [v49 userIdentityClassification];
  if (v56)
  {
    v57 = v56;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v58 = String.axLowercasedFirstLetter.getter();
  v60 = v59;

  v61 = MEMORY[0x223DDF550](v58, v60);

  v62 = AFUserIdentityClassficationGetFromName();

  *(v19 + v14[6]) = v62;
  v63 = [v49 selectedUserAttributes];
  if (v63)
  {
    v64 = v63;
    v65 = v128;
    SASelectedUserAttributes.selectedUserAttributes.getter(v128);

    outlined destroy of MediaUserStateCenter?(v131, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v66 = *(v132 + 8);
    v66(v24, v133);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v131, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v67 = *(v132 + 8);
    v67(v24, v133);
    v65 = v128;
    v68 = v41;
    v66 = v67;
    v119(v128, 1, 1, v68);
  }

  outlined assign with take of MediaUserStateCenter?(v65, v19 + v125, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v69 = v126;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v19, v126, type metadata accessor for PommesBridgeResultCandidateState);
  v70 = v127;
  v71 = *(v127 + 56);
  v71(v69, 0, 1, v14);
  outlined destroy of NLXResultCandidate(v19, type metadata accessor for PommesBridgeResultCandidateState);
  if ((*(v70 + 48))(v69, 1, v14) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v69, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2232BB000, v72, v73, "Not handling SARDRunPOMMESRequest because unable to create PommesBridgeResultCandidateState", v74, 2u);
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

    v75 = v130;
    return (v66)(v75, v133);
  }

  v131 = v66;
  v76 = v123;
  outlined init with take of NLXResultCandidate(v69, v123, type metadata accessor for PommesBridgeResultCandidateState);
  v77 = [v49 refId];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = v121;
    v83 = v122;
    *v122 = v79;
    v83[1] = v81;
    (*(v124 + 104))(v83, *MEMORY[0x277D56610], v82);
    v84 = v120;
    v85 = *(v120 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
    v86 = RequestProcessorBase.requestId.getter();
    v88 = v87;
    v89 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v85 + 128))(v83, v86, v88, v89, v90);

    v92 = *v84;
    v93 = v123;
    v94 = (*(v92 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v91);
    v95 = v117;
    v96 = v83;
    v97 = v121;
    (*(v124 + 16))(v117, v96, v121);
    v98 = v115;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v93, v115, type metadata accessor for PommesBridgeResultCandidateState);
    v71(v98, 0, 1, v14);
    (*(*v94 + 152))(v98, v95);

    v99 = v116;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v93, v116, type metadata accessor for PommesBridgeResultCandidateState);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v134 = v103;
      *v102 = 136315138;
      v104 = PommesBridgeResultCandidateState.description.getter();
      v106 = v105;
      outlined destroy of NLXResultCandidate(v99, type metadata accessor for PommesBridgeResultCandidateState);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v134);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_2232BB000, v100, v101, "Created %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x223DE0F80](v103, -1, -1);
      MEMORY[0x223DE0F80](v102, -1, -1);
    }

    else
    {

      outlined destroy of NLXResultCandidate(v99, type metadata accessor for PommesBridgeResultCandidateState);
    }

    v112 = v130;
    v66 = v131;
    v113 = v120;
    if ((*(*v120 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v93))
    {
      (*(*v113 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v122, v93 + v14[5]);
    }

    (*(v124 + 8))(v122, v97);
    outlined destroy of NLXResultCandidate(v93, type metadata accessor for PommesBridgeResultCandidateState);
    v75 = v112;
    return (v66)(v75, v133);
  }

  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_2232BB000, v108, v109, "Not handling SARDRunPOMMESRequest because no refId provided", v110, 2u);
    MEMORY[0x223DE0F80](v110, -1, -1);
  }

  outlined destroy of NLXResultCandidate(v76, type metadata accessor for PommesBridgeResultCandidateState);
  return (v131)(v130, v133);
}

uint64_t PommesBridgeRequestProcessor.handleASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v82 - v5;
  v6 = type metadata accessor for PommesCandidateId();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v94 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v93 = (&v82 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v82 - v11;
  v12 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v89 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](v12);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v82 - v15);
  v17 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v21, static Logger.insightRequestSummaryLogger);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = a1;

  v23 = a1;
  InsightRequestSummaryLogger.emitDebug(_:)();

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.pommes);
  v26 = v23;
  v87 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v86 = v20;
    v31 = v2;
    v32 = v18;
    v33 = v17;
    v34 = v30;
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v35 = v26;
    _os_log_impl(&dword_2232BB000, v27, v28, "PommesBridge handling message: %@", v29, 0xCu);
    outlined destroy of MediaUserStateCenter?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = v34;
    v17 = v33;
    v18 = v32;
    v2 = v31;
    v20 = v86;
    MEMORY[0x223DE0F80](v36, -1, -1);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  v37 = AsrResultCandidateMessage.speechPackage.getter();
  v38 = [v37 recognition];

  v92 = v2;
  if (v38)
  {
    v39 = AFSpeechRecognition.toAsrHypotheses()();

    if (v39[2])
    {
      (*(v18 + 16))(v20, v39 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

      v85 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      v86 = v40;
      (*(v18 + 8))(v20, v17);
      goto LABEL_12;
    }
  }

  v85 = 0x3E6C696E3CLL;
  v86 = 0xE500000000000000;
LABEL_12:
  v41 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v43 = v42;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v83 = AsrResultCandidateMessage.speechPackage.getter();
  v44 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v45 = *(*(v44 - 8) + 56);
  v84 = v26;
  v46 = v88;
  v45(v88, 1, 1, v44);
  v47 = v12[7];
  v48 = type metadata accessor for SelectedUserAttributes();
  (*(*(v48 - 8) + 56))(v16 + v47, 1, 1, v48);
  *(v16 + v12[14]) = 0;
  v49 = v12[15];
  v50 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v50 - 8) + 56))(v16 + v49, 1, 1, v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v52 = v16 + *(v51 + 48);
  v53 = *(v51 + 64);
  *v16 = v41;
  v16[1] = v43;
  v54 = type metadata accessor for NLXResultCandidate(0);
  v55 = *(v54 + 20);
  v45(&v52[v55], 1, 1, v44);
  v56 = &v52[*(v54 + 24)];
  *v52 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v46, &v52[v55], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v16 + v53) = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *(v16 + v12[8]) = v83;
  v57 = (v16 + v12[9]);
  v58 = v86;
  *v57 = v85;
  v57[1] = v58;
  *(v16 + v12[10]) = 0;
  *(v16 + v12[11]) = 0;
  *(v16 + v12[12]) = 0;
  *(v16 + v12[13]) = 0;
  *(v16 + v12[6]) = 0;
  v59 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v60 = v93;
  *v93 = v59;
  v60[1] = v61;
  v63 = v95;
  v62 = v96;
  v64 = (*(v95 + 104))(v60, *MEMORY[0x277D56618], v96);
  v65 = (*(*v92 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v64);
  v66 = *(v63 + 16);
  v67 = v94;
  v66(v94, v60, v62);
  v68 = v90;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v16, v90, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v89 + 56))(v68, 0, 1, v12);
  (*(*v65 + 152))(v68, v67);

  v69 = v91;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v16, v91, type metadata accessor for PommesBridgeResultCandidateState);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v97 = v73;
    *v72 = 136315138;
    v74 = PommesBridgeResultCandidateState.description.getter();
    v76 = v75;
    outlined destroy of NLXResultCandidate(v69, type metadata accessor for PommesBridgeResultCandidateState);
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v97);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_2232BB000, v70, v71, "Created %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x223DE0F80](v73, -1, -1);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v69, type metadata accessor for PommesBridgeResultCandidateState);
  }

  v78 = v94;
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v94);
  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v78);
  v79 = v96;
  v80 = *(v95 + 8);
  v80(v78, v96);
  v80(v93, v79);
  return outlined destroy of NLXResultCandidate(v16, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #1 in PommesBridgeRequestProcessor.handleASRResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD00000000000001ELL;
  v11[1] = 0x80000002234D9450;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v20[1] = v21;
  return v8;
}

uint64_t PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_2232BB000, v6, v7, "PommesBridge handling message: %@", v8, 0xCu);
      outlined destroy of MediaUserStateCenter?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223DE0F80](v9, -1, -1);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }

    v11 = TRPCandidateRequestMessage.tcuToContextList.getter();
    a1 = v11;
    v12 = v11[2];
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = (v11 + 4);
    while (v13 < a1[2])
    {
      outlined init with copy of MediaUserStateCenter?(v14, &v16, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
      ++v13;
      closure #1 in PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(v16, &v17, v5, v2);
      outlined destroy of MediaUserStateCenter?(&v16, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
      v14 += 48;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
  }
}

id closure #1 in PommesBridgeRequestProcessor.handleTRPCandidateRequestMessage(_:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v88 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v79 - v6;
  v7 = type metadata accessor for PommesCandidateId();
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = (&v79 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v89 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v79 - v16;
  v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v84 = *(v18 - 1);
  v19 = MEMORY[0x28223BE20](v18);
  v86 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v90 = v28;
  v91 = v27;
  v29 = a1;
  result = [a1 speechPackage];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v93 = 0x3E6C696E3CLL;
  v32 = [result recognition];

  if (v32)
  {
    v33 = AFSpeechRecognition.toAsrHypotheses()();

    if (v33[2])
    {
      (*(v24 + 16))(v26, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);

      v93 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
      v82 = v34;
      (*(v24 + 8))(v26, v23);
      goto LABEL_7;
    }
  }

  v82 = 0xE500000000000000;
LABEL_7:
  result = [v29 tcuId];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = result;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v37;
  v80 = v36;

  TRPCandidateRequestMessageBase.userId.getter();
  v81 = [v29 speechPackage];
  v38 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  v39 = type metadata accessor for SiriUserInput();
  v40 = v89;
  (*(*(v39 - 8) + 56))(v89, 1, 1, v39);
  v41 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v42 = v92;
  (*(*(v41 - 8) + 56))(v92, 1, 1, v41);
  v43 = v18[7];
  v44 = type metadata accessor for SelectedUserAttributes();
  (*(*(v44 - 8) + 56))(&v22[v43], 1, 1, v44);
  v22[v18[14]] = 0;
  v45 = v18[15];
  v46 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v46 - 8) + 56))(&v22[v45], 1, 1, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v48 = v47[16];
  v49 = v47[20];
  v50 = v47[24];
  v52 = v90;
  v51 = v91;
  *v22 = v91;
  *(v22 + 1) = v52;
  v53 = v79;
  *(v22 + 2) = v80;
  *(v22 + 3) = v53;
  outlined init with take of PommesSearchReason?(v17, &v22[v48], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v40, &v22[v49], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v42, &v22[v50], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v22[v18[8]] = v81;
  v54 = &v22[v18[9]];
  v55 = v82;
  *v54 = v93;
  v54[1] = v55;
  v22[v18[10]] = 0;
  v22[v18[11]] = 0;
  v22[v18[12]] = 0;
  v22[v18[13]] = 0;
  *&v22[v18[6]] = 0;

  result = [v29 tcuId];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v56 = result;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = v83;
  *v83 = v51;
  v60[1] = v52;
  v60[2] = v57;
  v60[3] = v59;
  v62 = v94;
  v61 = v95;
  v63 = (*(v94 + 104))(v60, *MEMORY[0x277D56620], v95);
  v64 = (*(*v88 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v63);
  v65 = v85;
  (*(v62 + 16))(v85, v60, v61);
  v66 = v87;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v22, v87, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v84 + 56))(v66, 0, 1, v18);
  (*(*v64 + 152))(v66, v65);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.pommes);
  v68 = v86;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v22, v86, type metadata accessor for PommesBridgeResultCandidateState);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v96 = v72;
    *v71 = 136315138;
    v73 = PommesBridgeResultCandidateState.description.getter();
    v75 = v74;
    outlined destroy of NLXResultCandidate(v68, type metadata accessor for PommesBridgeResultCandidateState);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v96);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_2232BB000, v69, v70, "Created %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v77 = v72;
    v62 = v94;
    MEMORY[0x223DE0F80](v77, -1, -1);
    v78 = v71;
    v61 = v95;
    MEMORY[0x223DE0F80](v78, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v68, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v60);
  (*(v62 + 8))(v60, v61);
  return outlined destroy of NLXResultCandidate(v22, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t PommesBridgeRequestProcessor.handleTextBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v72 - v5;
  v6 = type metadata accessor for PommesCandidateId();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = (&v72 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v72 - v12;
  v13 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v78 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v72 - v17);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v81 = v16;
  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.pommes);
  v21 = a1;
  v77 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_2232BB000, v22, v23, "PommesBridge handling message: %@", v24, 0xCu);
    outlined destroy of MediaUserStateCenter?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  v82 = v7;
  v83 = v6;

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v27, static Logger.insightRequestSummaryLogger);
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = v21;
  v29 = v21;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v74 = v29;
  v30 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v32 = v31;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v33 = TextBasedResultCandidateMessage.utterance.getter();
  v72 = v34;
  v73 = v33;
  v35 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v75 = v2;
  v36 = v35;
  v37 = *(*(v35 - 8) + 56);
  v38 = v76;
  v37(v76, 1, 1, v35);
  v39 = v13[7];
  v40 = type metadata accessor for SelectedUserAttributes();
  (*(*(v40 - 8) + 56))(v18 + v39, 1, 1, v40);
  *(v18 + v13[14]) = 0;
  v41 = v13[15];
  v42 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v42 - 8) + 56))(v18 + v41, 1, 1, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
  v44 = v18 + *(v43 + 48);
  v45 = *(v43 + 64);
  *v18 = v30;
  v18[1] = v32;
  v46 = type metadata accessor for NLXResultCandidate(0);
  v47 = *(v46 + 20);
  v37(&v44[v47], 1, 1, v36);
  v48 = &v44[*(v46 + 24)];
  *v44 = MEMORY[0x277D84F90];
  outlined assign with take of MediaUserStateCenter?(v38, &v44[v47], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *v48 = 0;
  *(v48 + 1) = 0;
  *(v18 + v45) = 0;
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *(v18 + v13[8]) = 0;
  v49 = (v18 + v13[9]);
  v50 = v72;
  *v49 = v73;
  v49[1] = v50;
  *(v18 + v13[10]) = 0;
  *(v18 + v13[11]) = 0;
  *(v18 + v13[12]) = 0;
  *(v18 + v13[13]) = 0;
  *(v18 + v13[6]) = 0;
  v51 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v52 = v83;
  v53 = v84;
  *v84 = v51;
  v53[1] = v54;
  v55 = v82;
  v56 = (*(v82 + 104))(v53, *MEMORY[0x277D56618], v52);
  v57 = (*(*v75 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v56);
  v58 = v79;
  (*(v55 + 16))(v79, v53, v52);
  v59 = v80;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v18, v80, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v78 + 56))(v59, 0, 1, v13);
  (*(*v57 + 152))(v59, v58);

  v60 = v81;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v18, v81, type metadata accessor for PommesBridgeResultCandidateState);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v85 = v64;
    *v63 = 136315138;
    v65 = PommesBridgeResultCandidateState.description.getter();
    v66 = v60;
    v67 = v65;
    v69 = v68;
    outlined destroy of NLXResultCandidate(v66, type metadata accessor for PommesBridgeResultCandidateState);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v85);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_2232BB000, v61, v62, "Created %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x223DE0F80](v64, -1, -1);
    MEMORY[0x223DE0F80](v63, -1, -1);

    (*(v55 + 8))(v84, v52);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v60, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v55 + 8))(v53, v52);
  }

  return outlined destroy of NLXResultCandidate(v18, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleTextBasedResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD000000000000024;
  v11[1] = 0x80000002234D9470;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v20[1] = v21;
  return v8;
}

uint64_t PommesBridgeRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - v5;
  v7 = type metadata accessor for PommesCandidateId();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v51 - v12);
  v14 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v57 = v8;
  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.pommes);
  v21 = a1;
  v53 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v52 = v11;
    v25 = v7;
    v26 = v24;
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v21;
    *v27 = v21;
    v28 = v21;
    _os_log_impl(&dword_2232BB000, v22, v23, "PommesBridge handling message: %@", v26, 0xCu);
    outlined destroy of MediaUserStateCenter?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v27, -1, -1);
    v29 = v26;
    v7 = v25;
    v11 = v52;
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v30, static Logger.insightRequestSummaryLogger);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v21;
  v32 = v21;

  InsightRequestSummaryLogger.emitDebug(_:)();

  PommesBridgeResultCandidateState.init(from:)(v32, v18);
  *v13 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v13[1] = v33;
  v34 = v57;
  v35 = (*(v57 + 104))(v13, *MEMORY[0x277D56618], v7);
  v36 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v35);
  (*(v34 + 16))(v11, v13, v7);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v18, v6, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v54 + 56))(v6, 0, 1, v55);
  (*(*v36 + 152))(v6, v11);

  v37 = v56;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v18, v56, type metadata accessor for PommesBridgeResultCandidateState);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v40 = 136315138;
    v42 = PommesBridgeResultCandidateState.description.getter();
    v55 = v18;
    v43 = v34;
    v44 = v42;
    v45 = v37;
    v47 = v46;
    outlined destroy of NLXResultCandidate(v45, type metadata accessor for PommesBridgeResultCandidateState);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, &v58);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_2232BB000, v38, v39, "Created %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223DE0F80](v41, -1, -1);
    MEMORY[0x223DE0F80](v40, -1, -1);

    (*(v43 + 8))(v13, v7);
    v49 = v55;
  }

  else
  {

    outlined destroy of NLXResultCandidate(v37, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v34 + 8))(v13, v7);
    v49 = v18;
  }

  return outlined destroy of NLXResultCandidate(v49, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD000000000000027;
  v11[1] = 0x80000002234D9580;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v20[1] = v21;
  return v8;
}

uint64_t PommesBridgeRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v78 - v5;
  v6 = type metadata accessor for PommesCandidateId();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v90 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v78 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v84 = &v78 - v16;
  v17 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v88 = *(v17 - 1);
  v18 = MEMORY[0x28223BE20](v17);
  v89 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.pommes);
  v24 = a1;
  v87 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_2232BB000, v25, v26, "PommesBridge handling message: %@", v27, 0xCu);
    outlined destroy of MediaUserStateCenter?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v30, static Logger.insightRequestSummaryLogger);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v24;
  v24;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v32 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v92 = v2;
  v33 = v32;
  v81 = v34;
  v35 = TextBasedTRPCandidateMessage.tcuId.getter();
  v79 = v36;
  v80 = v35;
  TRPCandidateRequestMessageBase.userId.getter();
  v37 = TextBasedTRPCandidateMessage.utterance.getter();
  v82 = v38;
  v83 = v37;
  v39 = type metadata accessor for TCUMappedNLResponse();
  v40 = v84;
  (*(*(v39 - 8) + 56))(v84, 1, 1, v39);
  v41 = type metadata accessor for SiriUserInput();
  v42 = v85;
  (*(*(v41 - 8) + 56))(v85, 1, 1, v41);
  v43 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v44 = v86;
  (*(*(v43 - 8) + 56))(v86, 1, 1, v43);
  v45 = v17[7];
  v46 = type metadata accessor for SelectedUserAttributes();
  (*(*(v46 - 8) + 56))(&v21[v45], 1, 1, v46);
  v21[v17[14]] = 0;
  v47 = v17[15];
  v48 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v48 - 8) + 56))(&v21[v47], 1, 1, v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v50 = v49[16];
  v51 = v49[20];
  v52 = v49[24];
  *v21 = v33;
  v53 = v92;
  v54 = v80;
  *(v21 + 1) = v81;
  *(v21 + 2) = v54;
  *(v21 + 3) = v79;
  outlined init with take of PommesSearchReason?(v40, &v21[v50], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v42, &v21[v51], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v44, &v21[v52], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v21[v17[8]] = 0;
  v55 = &v21[v17[9]];
  v56 = v82;
  *v55 = v83;
  v55[1] = v56;
  v21[v17[10]] = 0;
  v21[v17[11]] = 0;
  v21[v17[12]] = 0;
  v21[v17[13]] = 0;
  *&v21[v17[6]] = 0;
  v57 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v59 = v58;
  v60 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v10 = v57;
  v10[1] = v59;
  v10[2] = v60;
  v10[3] = v61;
  v63 = v93;
  v62 = v94;
  v64 = (*(v93 + 104))(v10, *MEMORY[0x277D56620], v94);
  v65 = (*(*v53 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v64);
  v66 = v90;
  (*(v63 + 16))(v90, v10, v62);
  v67 = v91;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v21, v91, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v88 + 56))(v67, 0, 1, v17);
  (*(*v65 + 152))(v67, v66);

  v68 = v89;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v21, v89, type metadata accessor for PommesBridgeResultCandidateState);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v95 = v72;
    *v71 = 136315138;
    v73 = PommesBridgeResultCandidateState.description.getter();
    v75 = v74;
    outlined destroy of NLXResultCandidate(v68, type metadata accessor for PommesBridgeResultCandidateState);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v95);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_2232BB000, v69, v70, "Created %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x223DE0F80](v72, -1, -1);
    MEMORY[0x223DE0F80](v71, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v68, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v10);
  (*(v93 + 8))(v10, v94);
  return outlined destroy of NLXResultCandidate(v21, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD000000000000021;
  v11[1] = 0x80000002234D94A0;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v20[1] = v21;
  return v8;
}

uint64_t PommesBridgeRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = &v77 - v5;
  v6 = type metadata accessor for PommesCandidateId();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v90 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v77 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v77 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v83 = &v77 - v16;
  v17 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v88 = *(v17 - 1);
  v18 = MEMORY[0x28223BE20](v17);
  v89 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.pommes);
  v24 = a1;
  v87 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_2232BB000, v25, v26, "PommesBridge handling message: %@", v27, 0xCu);
    outlined destroy of MediaUserStateCenter?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v28, -1, -1);
    MEMORY[0x223DE0F80](v27, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v30, static Logger.insightRequestSummaryLogger);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v24;
  v24;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v32 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v79 = v33;
  v80 = v32;
  v78 = TextBasedTRPCandidateMessage.tcuId.getter();
  v85 = v2;
  v35 = v34;
  TRPCandidateRequestMessageBase.userId.getter();
  v36 = TextBasedTRPCandidateMessage.utterance.getter();
  v81 = v37;
  v82 = v36;
  v38 = type metadata accessor for TCUMappedNLResponse();
  v39 = v83;
  (*(*(v38 - 8) + 56))(v83, 1, 1, v38);
  v40 = v84;
  RewrittenUtteranceCandidateMessage.originalUserInput.getter();
  v41 = type metadata accessor for SiriUserInput();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = v86;
  RewrittenUtteranceCandidateMessage.rewriteReason.getter();
  v43 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v17[7];
  v45 = type metadata accessor for SelectedUserAttributes();
  (*(*(v45 - 8) + 56))(&v21[v44], 1, 1, v45);
  v21[v17[14]] = 0;
  v46 = v17[15];
  v47 = type metadata accessor for PommesSearchEagerInfo(0);
  (*(*(v47 - 8) + 56))(&v21[v46], 1, 1, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v49 = v48[16];
  v50 = v48[20];
  v51 = v48[24];
  v52 = v79;
  *v21 = v80;
  *(v21 + 1) = v52;
  *(v21 + 2) = v78;
  *(v21 + 3) = v35;
  v53 = v85;
  outlined init with take of PommesSearchReason?(v39, &v21[v49], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v40, &v21[v50], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v42, &v21[v51], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  swift_storeEnumTagMultiPayload();
  *&v21[v17[8]] = 0;
  v54 = &v21[v17[9]];
  v55 = v81;
  *v54 = v82;
  v54[1] = v55;
  v21[v17[10]] = 0;
  v21[v17[11]] = 0;
  v21[v17[12]] = 0;
  v21[v17[13]] = 0;
  *&v21[v17[6]] = 0;
  v56 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v58 = v57;
  v59 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v10 = v56;
  v10[1] = v58;
  v10[2] = v59;
  v10[3] = v60;
  v62 = v92;
  v61 = v93;
  v63 = (*(v92 + 104))(v10, *MEMORY[0x277D56620], v93);
  v64 = (*(*v53 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v63);
  v65 = v90;
  (*(v62 + 16))(v90, v10, v61);
  v66 = v91;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v21, v91, type metadata accessor for PommesBridgeResultCandidateState);
  (*(v88 + 56))(v66, 0, 1, v17);
  (*(*v64 + 152))(v66, v65);

  v67 = v89;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v21, v89, type metadata accessor for PommesBridgeResultCandidateState);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94 = v71;
    *v70 = 136315138;
    v72 = PommesBridgeResultCandidateState.description.getter();
    v74 = v73;
    outlined destroy of NLXResultCandidate(v67, type metadata accessor for PommesBridgeResultCandidateState);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v94);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_2232BB000, v68, v69, "Created %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x223DE0F80](v71, -1, -1);
    MEMORY[0x223DE0F80](v70, -1, -1);
  }

  else
  {

    outlined destroy of NLXResultCandidate(v67, type metadata accessor for PommesBridgeResultCandidateState);
  }

  PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v10);
  (*(v92 + 8))(v10, v93);
  return outlined destroy of NLXResultCandidate(v21, type metadata accessor for PommesBridgeResultCandidateState);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD000000000000027;
  v11[1] = 0x80000002234D94D0;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v20[1] = v21;
  return v8;
}

uint64_t PommesBridgeRequestProcessor.handleNLResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PommesSearchReason();
  v142 = *(v4 - 8);
  v143 = v4;
  MEMORY[0x28223BE20](v4);
  v141 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v140 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v134 - v9;
  v136 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v136);
  v137 = (&v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v139 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = (&v134 - v14);
  v15 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v148 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PommesCandidateId();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v144 = (&v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v151 = (&v134 - v22);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.pommes);
  v25 = a1;
  v150 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v146 = v17;
  v149 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v152[0] = v30;
    *v29 = 136315138;
    v31 = NLResultCandidateMessageBase.userParses.getter();
    v32 = specialized Sequence<>.summarizedDescription.getter(v31);
    v33 = v19;
    v34 = v25;
    v35 = v32;
    v135 = v2;
    v36 = v33;
    v37 = v18;
    v39 = v38;

    v40 = v35;
    v25 = v34;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, v152);
    v18 = v37;
    v19 = v36;
    v2 = v135;
    v15 = v149;

    *(v29 + 4) = v41;
    _os_log_impl(&dword_2232BB000, v26, v27, "PommesBridgeRequestProcessor received messages: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x223DE0F80](v30, -1, -1);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  v42 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v43 = v151;
  *v151 = v42;
  v43[1] = v44;
  v45 = *MEMORY[0x277D56618];
  v46 = *(v19 + 104);
  v147 = v18;
  v46(v43, v45, v18);
  v47 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v48 = RequestProcessorBase.requestId.getter();
  v50 = v49;
  v51 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v47 + 128))(v43, v48, v50, v51, v52);

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for InsightRequestSummaryLogger();
  __swift_project_value_buffer(v53, static Logger.insightRequestSummaryLogger);
  v54 = swift_allocObject();
  *(v54 + 16) = v2;
  *(v54 + 24) = v25;
  v25;

  InsightRequestSummaryLogger.emitDebug(_:)();

  v56 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v57 = v56(v55);
  v58 = v145;
  (*(*v57 + 144))(v43);

  if ((*(v148 + 48))(v58, 1, v15) == 1)
  {
    v59 = v19;
    outlined destroy of MediaUserStateCenter?(v58, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v152[0] = v63;
      *v62 = 136315138;
      v64 = RequestProcessorBase.requestId.getter();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v152);

      *(v62 + 4) = v66;
      v59 = v19;
      v43 = v151;
      _os_log_impl(&dword_2232BB000, v60, v61, "Do not have prior state for this NLResultCandidateMessage for requestId: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x223DE0F80](v63, -1, -1);
      MEMORY[0x223DE0F80](v62, -1, -1);
    }

    v67 = RequestProcessorBase.requestId.getter();
    v69 = v68;
    v70 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v47 + 144))(5, v43, v67, v69, v70, v71);

    v72 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v74 = v73;
    v75 = *MEMORY[0x277D5CED8];
    v76 = type metadata accessor for PommesError();
    v77 = *(v76 - 8);
    v78 = v140;
    (*(v77 + 104))(v140, v75, v76);
    (*(v77 + 56))(v78, 0, 1, v76);
    v80 = v142;
    v79 = v143;
    v81 = v141;
    (*(v142 + 104))(v141, *MEMORY[0x277D56670], v143);
    v82 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v72, v74, 0, v78, v81);

    (*(v80 + 8))(v81, v79);
    outlined destroy of MediaUserStateCenter?(v78, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (v82)
    {
      RequestProcessorBase.messagePublisher.getter();
      __swift_project_boxed_opaque_existential_1(v152, v152[3]);
      dispatch thunk of MessagePublishing.postMessage(_:)();

      (*(v59 + 8))(v43, v147);
      return __swift_destroy_boxed_opaque_existential_1(v152);
    }

    else
    {
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_2232BB000, v131, v132, "PommesBridgeRequestProcessor failed to build noQuery message", v133, 2u);
        MEMORY[0x223DE0F80](v133, -1, -1);
      }

      return (*(v59 + 8))(v43, v147);
    }
  }

  else
  {
    v84 = v19;
    v85 = v146;
    outlined init with take of NLXResultCandidate(v58, v146, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.setHasNLResultCandidate(_:)(1);
    v142 = NLResultCandidateMessageBase.userParses.getter();
    v86 = v138;
    NLResultCandidateMessageBase.fallbackParse.getter();
    v87 = NLResultCandidateMessageBase.responseVariantResult.getter();
    v143 = v88;
    v89 = v136;
    v90 = *(v136 + 20);
    v91 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v92 = *(*(v91 - 8) + 56);
    v145 = v56;
    v93 = v137;
    v92(v137 + v90, 1, 1, v91);
    v94 = *(v89 + 24);
    v95 = v2;
    v96 = v84;
    v97 = (v93 + v94);
    *v93 = v142;
    outlined assign with take of MediaUserStateCenter?(v86, v93 + v90, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v98 = v143;
    *v97 = v87;
    v97[1] = v98;
    v99 = v96;
    v100 = v95;
    v101 = v151;
    PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(v93);
    outlined destroy of NLXResultCandidate(v93, type metadata accessor for NLXResultCandidate);
    v102 = NLResultCandidateMessage.voiceIdClassification.getter();
    if (v103)
    {
      v104 = 0;
    }

    else
    {
      v104 = v102;
    }

    v105 = v149;
    *(v85 + v149[6]) = v104;
    v106 = v145(v102);
    v107 = v144;
    v108 = v147;
    (*(v99 + 16))(v144, v101, v147);
    v109 = v139;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v85, v139, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v148 + 56))(v109, 0, 1, v105);
    (*(*v106 + 152))(v109, v107);

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v152[0] = v113;
      *v112 = 136315138;
      swift_beginAccess();
      v114 = PommesBridgeResultCandidateState.description.getter();
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v152);

      *(v112 + 4) = v116;
      _os_log_impl(&dword_2232BB000, v110, v111, "Fetched %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x223DE0F80](v113, -1, -1);
      MEMORY[0x223DE0F80](v112, -1, -1);
    }

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v152[0] = v120;
      *v119 = 136315138;
      v121 = v146;
      swift_beginAccess();
      v122 = (v121 + v149[9]);
      v135 = v100;
      v123 = v99;
      v124 = v108;
      v125 = v101;
      v127 = *v122;
      v126 = v122[1];

      v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v126, v152);

      *(v119 + 4) = v128;
      v101 = v125;
      v108 = v124;
      v99 = v123;
      v100 = v135;
      _os_log_impl(&dword_2232BB000, v117, v118, "Extracted Pommes query:\n    prState utterance: %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v120);
      MEMORY[0x223DE0F80](v120, -1, -1);
      MEMORY[0x223DE0F80](v119, -1, -1);
    }

    else
    {

      v121 = v146;
    }

    swift_beginAccess();
    if ((*(*v100 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v121))
    {
      v129 = v144;
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v144);
      (*(*v100 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v129, v121 + v149[5]);
      v130 = *(v99 + 8);
      v130(v129, v108);
      v130(v101, v108);
    }

    else
    {
      (*(v99 + 8))(v101, v108);
    }

    return outlined destroy of NLXResultCandidate(v121, type metadata accessor for PommesBridgeResultCandidateState);
  }
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.handleNLResultCandidateMessage(_:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = type metadata accessor for UUID();
  v23[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2234D1940;
  v9 = v8 + v7;
  v10 = v9 + v5[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v10, "PommesBridge");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  v11 = (v9 + v6 + v5[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v11 = 0xD00000000000001DLL;
  v11[1] = 0x80000002234D9500;
  v12 = (v9 + 2 * v6 + v5[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v12 = RequestProcessorBase.assistantId.getter();
  v12[1] = v13;
  v14 = (v9 + 3 * v6 + v5[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  (*(v23[0] + 8))(v4, v2);
  *v14 = v15;
  v14[1] = v17;
  v18 = (v9 + 4 * v6 + v5[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v18 = RequestProcessorBase.requestId.getter();
  v18[1] = v19;
  v20 = (v9 + 5 * v6 + v5[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v20 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v20[1] = v21;
  return v8;
}

void PommesBridgeRequestProcessor.handleTTResponseMessage(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v93 = v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = v91 - v5;
  v97 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesCandidateId();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v91[0] = (v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v98 = (v91 - v10);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v11 = MEMORY[0x28223BE20](v92);
  v91[1] = (v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = v91 - v13;
  v15 = type metadata accessor for TCUMappedNLResponse();
  v102 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v101 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v91 - v22;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v103 = v15;
  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.pommes);
  v26 = a1;
  v105 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_2232BB000, v27, v28, "PommesBridge handling message: %@", v29, 0xCu);
    outlined destroy of MediaUserStateCenter?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v30, -1, -1);
    MEMORY[0x223DE0F80](v29, -1, -1);
  }

  TTResponseMessage.mitigationDecision.getter();
  (*(v18 + 104))(v21, *MEMORY[0x277D5CAE0], v17);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x277D5CAF8], MEMORY[0x277D5CB08]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v32 = *(v18 + 8);
  v32(v21, v17);
  v32(v23, v17);
  if (v107 == v106)
  {
    v33 = v26;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v107 = v105;
      *v36 = 136315394;
      v37 = RequestProcessorBase.requestId.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v107);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2048;
      TTResponseMessage.mitigationDecision.getter();
      v40 = TTResponseMessage.MitigationDecision.rawValue.getter();
      v32(v23, v17);

      *(v36 + 14) = v40;
      v41 = "Returning because TTResponseMessage forceMitigated - requestId: %s with mitigatedDecision: %ld";
LABEL_11:
      _os_log_impl(&dword_2232BB000, v34, v35, v41, v36, 0x16u);
      v50 = v105;
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x223DE0F80](v50, -1, -1);
      MEMORY[0x223DE0F80](v36, -1, -1);

      return;
    }

LABEL_12:

    return;
  }

  TTResponseMessage.tcuMappedNLResponse.getter();
  v43 = v102;
  v42 = v103;
  v44 = (*(v102 + 48))(v14, 1, v103);
  v45 = v104;
  if (v44 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v33 = v26;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v107 = v105;
      *v36 = 136315394;
      v46 = RequestProcessorBase.requestId.getter();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v107);

      *(v36 + 4) = v48;
      *(v36 + 12) = 2048;
      TTResponseMessage.mitigationDecision.getter();
      v49 = TTResponseMessage.MitigationDecision.rawValue.getter();
      v32(v23, v17);

      *(v36 + 14) = v49;
      v41 = "Returning because TTResponseMessage contains no tcuMappedNLResponse for requestId: %s with mitigatedDecision: %ld";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  (*(v43 + 32))(v101, v14, v42);
  v51 = v26;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    TTResponseMessage.mitigationDecision.getter();
    v55 = TTResponseMessage.MitigationDecision.rawValue.getter();
    v32(v23, v17);
    *(v54 + 4) = v55;

    _os_log_impl(&dword_2232BB000, v52, v53, "TTResponseMessage contains tcuMappedNLResponse with mitigationDecision: %ld", v54, 0xCu);
    MEMORY[0x223DE0F80](v54, -1, -1);
  }

  else
  {

    v52 = v51;
  }

  v56 = v100;
  v57 = v98;

  v58 = v51;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v101;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v107 = v64;
    *v63 = 136315138;
    TTResponseMessage.tcuMappedNLResponse.getter();
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v107);

    *(v63 + 4) = v67;
    v45 = v104;
    _os_log_impl(&dword_2232BB000, v59, v60, "PommesBridgeRequestProcessor received messages: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x223DE0F80](v64, -1, -1);
    MEMORY[0x223DE0F80](v63, -1, -1);
  }

  v68 = v99;
  v69 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v71 = v70;
  v72 = TCUMappedNLResponse.tcuId.getter();
  *v57 = v69;
  v57[1] = v71;
  v57[2] = v72;
  v57[3] = v73;
  v74 = (*(v68 + 104))(v57, *MEMORY[0x277D56620], v56);
  v75 = (*(*v45 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v74);
  v76 = v96;
  (*(*v75 + 144))(v57);

  v77 = v97;
  if ((*(v95 + 48))(v76, 1, v97) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v76, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v107 = v81;
      *v80 = 136315138;
      v82 = RequestProcessorBase.requestId.getter();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v107);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_2232BB000, v78, v79, "Unable to validate PommesBridgeResultCandidateState for requestId: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x223DE0F80](v81, -1, -1);
      MEMORY[0x223DE0F80](v80, -1, -1);
    }

    (*(v68 + 8))(v57, v56);
    (*(v102 + 8))(v62, v103);
  }

  else
  {
    v85 = v76;
    v86 = v94;
    outlined init with take of NLXResultCandidate(v85, v94, type metadata accessor for PommesBridgeResultCandidateState);
    v87 = v93;
    TTResponseMessage.selectedUserAttributes.getter();
    PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(v86, v62, v87);
    outlined destroy of MediaUserStateCenter?(v87, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    if ((*(*v45 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v86))
    {
      v88 = v91[0];
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v91[0]);
      (*(*v45 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v88, v86 + *(v77 + 20));
      v89 = *(v68 + 8);
      v90 = v100;
      v89(v88, v100);
      outlined destroy of NLXResultCandidate(v86, type metadata accessor for PommesBridgeResultCandidateState);
      v89(v57, v90);
    }

    else
    {
      outlined destroy of NLXResultCandidate(v86, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v68 + 8))(v57, v100);
    }

    (*(v102 + 8))(v101, v103);
  }
}

void PommesBridgeRequestProcessor.handleNLTRPCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v128 = &v117 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v117 - v7;
  v132 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PommesCandidateId();
  v133 = *(v9 - 8);
  v134 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v126 = (&v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v117 - v12);
  v14 = type metadata accessor for TCUMappedNLResponse();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v117 - v19;
  MEMORY[0x28223BE20](v18);
  v136 = (&v117 - v21);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.pommes);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v135 = v14;
    v28 = v27;
    v29 = v2;
    v30 = v13;
    v31 = v15;
    v32 = v20;
    v33 = v23;
    v34 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v24;
    *v34 = v24;
    v35 = v24;
    _os_log_impl(&dword_2232BB000, v25, v26, "PommesBridge handling message: %@", v28, 0xCu);
    outlined destroy of MediaUserStateCenter?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v36 = v34;
    v23 = v33;
    v20 = v32;
    v15 = v31;
    v13 = v30;
    v2 = v29;
    MEMORY[0x223DE0F80](v36, -1, -1);
    v37 = v28;
    v14 = v135;
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 168))())
  {
    v136 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2232BB000, v136, v38, "Will not use NLTRPCandidateMessage because it should only be used for activated requests", v39, 2u);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

LABEL_19:
    v81 = v136;

    return;
  }

  v40 = *(dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter() + 16);

  if (v40 >= 2)
  {
    v41 = v23;
    v42 = v24;

    v124 = v41;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v125) = v44;
      v46 = v45;
      v122 = swift_slowAlloc();
      v137[0] = v122;
      *v46 = 134218242;
      v121 = v43;
      v47 = dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter();
      v123 = v15;
      v48 = *(v47 + 16);

      *(v46 + 4) = v48;
      v15 = v123;

      *(v46 + 12) = 2080;
      v49 = RequestProcessorBase.requestId.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v137);

      *(v46 + 14) = v51;
      v52 = v121;
      _os_log_impl(&dword_2232BB000, v121, v125, "Unexpected tcuMappedNLResponse count: %ld for requestId: %s, expected count of 1. Will select first entry.", v46, 0x16u);
      v53 = v122;
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x223DE0F80](v53, -1, -1);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

    else
    {
    }

    v23 = v124;
  }

  v54 = dispatch thunk of NLTRPCandidateMessage.tcuMappedNLResponse.getter();
  v125 = specialized Collection.first.getter(v54);
  v56 = v55;
  v58 = v57;

  if (!v56)
  {

    v136 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v136, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v137[0] = v77;
      *v76 = 136315138;
      v78 = RequestProcessorBase.requestId.getter();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v137);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_2232BB000, v136, v75, "Returning because NLTRPCandidateMessage contains no entry for tcuMappedNLResponse for requestId: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x223DE0F80](v77, -1, -1);
      MEMORY[0x223DE0F80](v76, -1, -1);

      return;
    }

    goto LABEL_19;
  }

  if (v58)
  {
    swift_bridgeObjectRetain_n();
    v59 = v58;
    v60 = v136;
    v121 = v59;
    v122 = v56;
    TCUMappedNLResponse.init(tcuId:nlResponse:)();
    v61 = v14;
    v62 = v20;
    v63 = *(v15 + 16);
    v63(v62, v60, v14);
    v124 = v23;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    v66 = os_log_type_enabled(v64, v65);
    v123 = v15;
    v135 = v14;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v119 = v65;
      v68 = v67;
      v69 = swift_slowAlloc();
      v120 = v13;
      v118 = v69;
      v137[0] = v69;
      *v68 = 136315138;
      v63(v127, v62, v14);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v127 = *(v15 + 8);
      (v127)(v62, v61);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v137);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_2232BB000, v64, v119, "PommesBridgeRequestProcessor received messages: %s", v68, 0xCu);
      v74 = v118;
      __swift_destroy_boxed_opaque_existential_1(v118);
      v13 = v120;
      MEMORY[0x223DE0F80](v74, -1, -1);
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    else
    {

      v127 = *(v15 + 8);
      (v127)(v62, v14);
    }

    *v13 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
    v13[1] = v90;
    v91 = v122;
    v13[2] = v125;
    v13[3] = v91;
    v92 = v133;
    v93 = (*(v133 + 104))(v13, *MEMORY[0x277D56620], v134);
    v94 = (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v93);
    v95 = v131;
    (*(*v94 + 144))(v13);

    v96 = v132;
    if ((*(v130 + 48))(v95, 1, v132) == 1)
    {
      v97 = v13;
      v98 = v135;
      outlined destroy of MediaUserStateCenter?(v95, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v137[0] = v102;
        *v101 = 136315138;
        v103 = RequestProcessorBase.requestId.getter();
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, v137);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_2232BB000, v99, v100, "Unable to validate PommesBridgeResultCandidateState for requestId: %s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v102);
        MEMORY[0x223DE0F80](v102, -1, -1);
        MEMORY[0x223DE0F80](v101, -1, -1);
      }

      v106 = v121;

      (*(v92 + 8))(v97, v134);
      v107 = v136;
      v108 = v98;
    }

    else
    {
      v109 = v129;
      outlined init with take of NLXResultCandidate(v95, v129, type metadata accessor for PommesBridgeResultCandidateState);
      v110 = v128;
      NLTRPCandidateMessage.selectedUserAttributes.getter();
      v111 = v136;
      PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(v109, v136, v110);
      outlined destroy of MediaUserStateCenter?(v110, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
      if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v109))
      {
        v112 = v126;
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v126);
        (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v112, v109 + *(v96 + 20));

        v113 = v121;

        v114 = *(v92 + 8);
        v115 = v134;
        v114(v112, v134);
        outlined destroy of NLXResultCandidate(v109, type metadata accessor for PommesBridgeResultCandidateState);
        v114(v13, v115);
      }

      else
      {

        v116 = v121;

        outlined destroy of NLXResultCandidate(v109, type metadata accessor for PommesBridgeResultCandidateState);
        (*(v92 + 8))(v13, v134);
      }

      v107 = v111;
      v108 = v135;
    }

    (v127)(v107, v108);
  }

  else
  {

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v137[0] = v85;
      *v84 = 136315394;
      v86 = RequestProcessorBase.requestId.getter();
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v137);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2080;
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v56, v137);

      *(v84 + 14) = v89;
      _os_log_impl(&dword_2232BB000, v82, v83, "Returning because entry for tcuMappedNLResponse contains no NLParseResponse for requestId: %s tcuId: %s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v85, -1, -1);
      MEMORY[0x223DE0F80](v84, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t PommesBridgeRequestProcessor.handleResultSelectedMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - v7;
  v52 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v9 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PommesCandidateId();
  v12 = *(v51 - 8);
  v13 = MEMORY[0x28223BE20](v51);
  v49 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v45 - v15);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v50 = v9;
  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.pommes);
  v19 = a1;
  v47 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = v11;
    v24 = v12;
    v25 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v26 = v19;
    _os_log_impl(&dword_2232BB000, v20, v21, "PommesBridge handling resultSelectedMessage: %@", v22, 0xCu);
    outlined destroy of MediaUserStateCenter?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = v25;
    v12 = v24;
    v11 = v46;
    MEMORY[0x223DE0F80](v27, -1, -1);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  *v16 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v16[1] = v28;
  v29 = v51;
  v30 = (*(v12 + 104))(v16, *MEMORY[0x277D56618], v51);
  v31 = v12;
  v32 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v33 = v32(v30);
  (*(*v33 + 144))(v16);

  v34 = v50;
  if ((*(v50 + 48))(v8, 1, v52) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2232BB000, v35, v36, "ResultSelectedMessage received before setting Pommes RC state", v37, 2u);
      MEMORY[0x223DE0F80](v37, -1, -1);
    }

    return (*(v12 + 8))(v16, v29);
  }

  else
  {
    v39 = outlined init with take of NLXResultCandidate(v8, v11, type metadata accessor for PommesBridgeResultCandidateState);
    v40 = v52;
    v11[*(v52 + 48)] = 1;
    v41 = v32(v39);
    v42 = v49;
    (*(v12 + 16))(v49, v16, v29);
    v43 = v48;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v11, v48, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v34 + 56))(v43, 0, 1, v40);
    (*(*v41 + 152))(v43, v42);

    if ((*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 464))(v11))
    {
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v42);
      (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v42, &v11[*(v52 + 20)]);
      v44 = *(v31 + 8);
      v44(v42, v29);
      outlined destroy of NLXResultCandidate(v11, type metadata accessor for PommesBridgeResultCandidateState);
      return (v44)(v16, v29);
    }

    else
    {
      outlined destroy of NLXResultCandidate(v11, type metadata accessor for PommesBridgeResultCandidateState);
      return (*(v31 + 8))(v16, v29);
    }
  }
}

uint64_t PommesBridgeRequestProcessor.handleFallbackToPommesMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserID();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PommesSearchReason();
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x28223BE20](v6);
  v95 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v93 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - v11;
  v13 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v103 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PommesCandidateId();
  v106 = *(v102 - 8);
  v16 = MEMORY[0x28223BE20](v102);
  v94 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v107 = (&v92 - v18);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v105 = v13;
  v101 = v15;
  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.pommes);
  v21 = a1;
  v104 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v109[0] = v25;
    *v24 = 136315138;
    v26 = FallbackToPommesMessage.delegatedUserDialogActs.getter();
    v27 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v28 = MEMORY[0x223DDF850](v26, v27);
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v109);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2232BB000, v22, v23, "PommesBridgeRequestProcessor received FallbackToPommesMessage with DUDAs: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223DE0F80](v25, -1, -1);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  v32 = v107;
  FallbackToPommesMessage.pommesCandidateId.getter();
  v33 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v34 = RequestProcessorBase.requestId.getter();
  v36 = v35;
  v37 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v33 + 128))(v32, v34, v36, v37, v38);

  v40 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v41 = (v40)(v39);
  (*(*v41 + 144))(v32);

  v42 = v105;
  v43 = (*(v103 + 48))(v12, 1, v105);
  v44 = v102;
  if (v43 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v109[0] = v48;
      *v47 = 136315138;
      v49 = RequestProcessorBase.requestId.getter();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v109);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_2232BB000, v45, v46, "Do not have prior state for this FallbackToPommesMessage for requestId: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x223DE0F80](v48, -1, -1);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    v53 = v97;
    v52 = v98;
    v54 = v95;
    (*(v97 + 104))(v95, *MEMORY[0x277D56668], v98);
    v55 = v96;
    FallbackToPommesMessage.userId.getter();
    v56 = v107;
    PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v107, v54, 5u, v55);
    (*(v99 + 8))(v55, v100);
    (*(v53 + 8))(v54, v52);
    return (*(v106 + 8))(v56, v44);
  }

  else
  {
    v58 = v101;
    outlined init with take of NLXResultCandidate(v12, v101, type metadata accessor for PommesBridgeResultCandidateState);
    if (specialized PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(v58))
    {
      *(v58 + v42[11]) = 0;
      *(v58 + v42[13]) = 1;
      v59 = v40();
      v60 = v94;
      (*(v106 + 16))(v94, v107, v44);
      v61 = v93;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v58, v93, type metadata accessor for PommesBridgeResultCandidateState);
      (*(v103 + 56))(v61, 0, 1, v42);
      (*(*v59 + 152))(v61, v60);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v109[0] = v65;
        *v64 = 136315138;
        swift_beginAccess();
        v66 = PommesBridgeResultCandidateState.description.getter();
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v109);

        *(v64 + 4) = v68;
        v42 = v105;
        _os_log_impl(&dword_2232BB000, v62, v63, "Fetched %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x223DE0F80](v65, -1, -1);
        MEMORY[0x223DE0F80](v64, -1, -1);
      }

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v109[0] = v72;
        *v71 = 136315138;
        swift_beginAccess();
        v73 = (v58 + v42[9]);
        v74 = *v73;
        v75 = v73[1];

        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v109);
        v58 = v101;

        *(v71 + 4) = v76;
        v42 = v105;
        _os_log_impl(&dword_2232BB000, v69, v70, "Extracted Pommes query:\n    prState utterance: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x223DE0F80](v72, -1, -1);
        MEMORY[0x223DE0F80](v71, -1, -1);
      }

      swift_beginAccess();
      v77 = v94;
      PommesBridgeResultCandidateState.pommesCandidateId.getter(v94);
      (*(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 472))(v77, v58 + v42[5]);
      v78 = *(v106 + 8);
      v78(v77, v44);
      v78(v107, v44);
    }

    else
    {
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v108[0] = v82;
        *v81 = 136315138;
        swift_beginAccess();
        v83 = PommesBridgeResultCandidateState.description.getter();
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v108);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_2232BB000, v79, v80, "Unable to override PommesCandidateResultState's PSC score %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x223DE0F80](v82, -1, -1);
        v86 = v81;
        v58 = v101;
        MEMORY[0x223DE0F80](v86, -1, -1);
      }

      v88 = v97;
      v87 = v98;
      v89 = v95;
      (*(v97 + 104))(v95, *MEMORY[0x277D56668], v98);
      v90 = v96;
      FallbackToPommesMessage.userId.getter();
      v91 = v107;
      PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v107, v89, 4u, v90);
      (*(v99 + 8))(v90, v100);
      (*(v88 + 8))(v89, v87);
      (*(v106 + 8))(v91, v44);
    }

    return outlined destroy of NLXResultCandidate(v58, type metadata accessor for PommesBridgeResultCandidateState);
  }
}

Swift::Void __swiftcall PommesBridgeRequestProcessor.transitionToActiveRequest()()
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
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "PommesBridge handling transitionToActiveRequest", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = direct field offset for PommesBridgeRequestProcessor.isCandidateRequest;
  swift_beginAccess();
  *(v1 + v6) = 0;
}

uint64_t PommesBridgeRequestProcessor.handleStartCandidateRequestMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2232BB000, v6, v7, "PommesBridge handling message: %@", v8, 0xCu);
    outlined destroy of MediaUserStateCenter?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v11 = *(v2 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
  v12 = RequestMessageBase.requestId.getter();
  (*(*v11 + 336))(v12);
}

uint64_t PommesBridgeRequestProcessor.isReady(prState:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v73 - v4;
  v6 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v7 = MEMORY[0x28223BE20](v6);
  v75 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v73 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  v16 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, &v73 - v23, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v24, v19, type metadata accessor for PommesBridgeResultCandidateState.ParseState);

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
      v27 = v26[20];
      v28 = v26[24];
      outlined init with take of PommesSearchReason?(&v19[v26[16]], v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v29 = type metadata accessor for TCUMappedNLResponse();
      if (*(*(v29 - 8) + 48))(v5, 1, v29) == 1 || ((*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 168))())
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.pommes);
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v13, type metadata accessor for PommesBridgeResultCandidateState);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v75 = v27;
          v34 = v33;
          v35 = swift_slowAlloc();
          v76 = v35;
          *v34 = 136315138;
          v36 = PommesBridgeResultCandidateState.description.getter();
          v74 = v28;
          v38 = v37;
          outlined destroy of NLXResultCandidate(v13, type metadata accessor for PommesBridgeResultCandidateState);
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v76);
          v28 = v74;

          *(v34 + 4) = v39;
          _os_log_impl(&dword_2232BB000, v31, v32, "search cannot continue because request is candidate request or no TCUMappedNLResponse received yet %s", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x223DE0F80](v35, -1, -1);
          v40 = v34;
          v27 = v75;
          MEMORY[0x223DE0F80](v40, -1, -1);
        }

        else
        {

          outlined destroy of NLXResultCandidate(v13, type metadata accessor for PommesBridgeResultCandidateState);
        }

        outlined destroy of MediaUserStateCenter?(v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(&v19[v28], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(&v19[v27], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
LABEL_36:
        v68 = type metadata accessor for PommesBridgeResultCandidateState.ParseState;
        v69 = v24;
        goto LABEL_37;
      }

      outlined destroy of MediaUserStateCenter?(v5, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      outlined destroy of MediaUserStateCenter?(&v19[v28], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(&v19[v27], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    }
  }

  else
  {
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v24, v22, type metadata accessor for PommesBridgeResultCandidateState.ParseState);

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v42 = *(v41 + 48);
    if ((v22[*(v41 + 64)] & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.pommes);
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v15, type metadata accessor for PommesBridgeResultCandidateState);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v76 = v47;
        *v46 = 136315138;
        v48 = PommesBridgeResultCandidateState.description.getter();
        v50 = v49;
        outlined destroy of NLXResultCandidate(v15, type metadata accessor for PommesBridgeResultCandidateState);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v76);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_2232BB000, v44, v45, "search cannot continue because has not received NLResultCandidate yet %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x223DE0F80](v47, -1, -1);
        MEMORY[0x223DE0F80](v46, -1, -1);
      }

      else
      {

        outlined destroy of NLXResultCandidate(v15, type metadata accessor for PommesBridgeResultCandidateState);
      }

      outlined destroy of NLXResultCandidate(&v22[v42], type metadata accessor for NLXResultCandidate);
      goto LABEL_36;
    }

    outlined destroy of NLXResultCandidate(&v22[v42], type metadata accessor for NLXResultCandidate);
  }

  outlined destroy of NLXResultCandidate(v24, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (*(a1 + *(v6 + 40)))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.pommes);
    v53 = v75;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v75, type metadata accessor for PommesBridgeResultCandidateState);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136315138;
      v58 = PommesBridgeResultCandidateState.description.getter();
      v60 = v59;
      outlined destroy of NLXResultCandidate(v53, type metadata accessor for PommesBridgeResultCandidateState);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v76);

      *(v56 + 4) = v61;
      v62 = "search cannot continue because prState has been previously started for rcId %s";
LABEL_28:
      _os_log_impl(&dword_2232BB000, v54, v55, v62, v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x223DE0F80](v57, -1, -1);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (*(a1 + *(v6 + 44)))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.pommes);
    v53 = v74;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v74, type metadata accessor for PommesBridgeResultCandidateState);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136315138;
      v64 = PommesBridgeResultCandidateState.description.getter();
      v66 = v65;
      outlined destroy of NLXResultCandidate(v53, type metadata accessor for PommesBridgeResultCandidateState);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v76);

      *(v56 + 4) = v67;
      v62 = "search cannot continue because prState has been previously finished for rcId %s";
      goto LABEL_28;
    }

LABEL_31:

    v68 = type metadata accessor for PommesBridgeResultCandidateState;
    v69 = v53;
LABEL_37:
    outlined destroy of NLXResultCandidate(v69, v68);
    return 0;
  }

  if (*(v1 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
  {
    return 1;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, static Logger.pommes);
  v54 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v54, v72))
  {
    goto LABEL_30;
  }

  v56 = swift_slowAlloc();
  *v56 = 0;
  _os_log_impl(&dword_2232BB000, v54, v72, "search cannot continue because pommesRequestContext has not been set yet", v56, 2u);
LABEL_29:
  MEMORY[0x223DE0F80](v56, -1, -1);
LABEL_30:

  return 0;
}

uint64_t PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(char *a1, uint64_t a2)
{
  v377 = a2;
  v379 = type metadata accessor for PommesSearchReason();
  v378 = *(v379 - 8);
  MEMORY[0x28223BE20](v379);
  v376 = v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x28223BE20](v351);
  v350 = v313 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v331 = v313 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v349 = v313 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v330 = v313 - v12;
  MEMORY[0x28223BE20](v11);
  v346 = v313 - v13;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x28223BE20](v348);
  v347 = v313 - v14;
  v341 = type metadata accessor for PommesSearchEagerInfo(0);
  v353 = *(v341 - 8);
  v15 = MEMORY[0x28223BE20](v341);
  v327 = v313 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v328 = v313 - v18;
  MEMORY[0x28223BE20](v17);
  v329 = v313 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v340 = v313 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v362 = v313 - v23;
  v361 = type metadata accessor for PommesSearchRequest(0);
  v360 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v367 = v313 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v359 = v313 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v368 = v313 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v369 = v313 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v339 = v313 - v32;
  v338 = type metadata accessor for UUID();
  v336 = *(v338 - 8);
  v33 = MEMORY[0x28223BE20](v338);
  v337 = v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v335 = v313 - v36;
  MEMORY[0x28223BE20](v35);
  v334 = v313 - v37;
  v373 = type metadata accessor for PommesContext();
  v366 = *(v373 - 8);
  MEMORY[0x28223BE20](v373);
  v332 = v313 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x28223BE20](v39 - 8);
  v333 = v313 - v40;
  v41 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v41 - 8);
  v313[1] = v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x28223BE20](v43 - 8);
  v314 = v313 - v44;
  v316 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v315 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v313[0] = v313 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v357);
  v358 = v313 - v46;
  v356 = type metadata accessor for ConversationSessionKey();
  v355 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v354 = v313 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for DispatchWorkItemFlags();
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v322 = v313 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for DispatchQoS();
  v321 = *(v323 - 8);
  MEMORY[0x28223BE20](v323);
  v320 = v313 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for DispatchQoS.QoSClass();
  v318 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v317 = v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  v51 = MEMORY[0x28223BE20](v352);
  v345 = v313 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v343 = v313 - v54;
  MEMORY[0x28223BE20](v53);
  v326 = (v313 - v55);
  v372 = type metadata accessor for UserID();
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v381 = v313 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for PommesCandidateId();
  v374 = *(v375 - 8);
  v57 = MEMORY[0x28223BE20](v375);
  v370 = (v313 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v57);
  v365 = (v313 - v59);
  v60 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v382 = *(v60 - 8);
  v61 = MEMORY[0x28223BE20](v60);
  v344 = v313 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v342 = v313 - v64;
  MEMORY[0x28223BE20](v63);
  v66 = v313 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v68 = MEMORY[0x28223BE20](v67 - 8);
  v364 = v313 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v71 = v313 - v70;
  v72 = *(v2 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v73 = RequestProcessorBase.requestId.getter();
  v75 = v74;
  v76 = RequestProcessorBase.rootLevelRequestId.getter();
  (*(*v72 + 128))(a1, v73, v75, v76, v77);

  v78 = swift_allocBox();
  v80 = v79;
  v82 = (*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v81 = *v82;
  v384 = v2;
  v363 = v81;
  v83 = *(*v81() + 144);
  v383 = a1;
  v83(a1);

  v84 = v382;
  v85 = *(v382 + 48);
  v380 = v60;
  if (v85(v71, 1, v60) != 1)
  {
    v370 = v82;
    outlined init with take of NLXResultCandidate(v71, v80, type metadata accessor for PommesBridgeResultCandidateState);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v66, type metadata accessor for PommesBridgeResultCandidateState);
    v99 = PommesBridgeResultCandidateState.hasServerFallbackReason.getter();
    v100 = outlined destroy of NLXResultCandidate(v66, type metadata accessor for PommesBridgeResultCandidateState);
    if (v99)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      __swift_project_value_buffer(v101, static Logger.pommes);

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v102, v103))
      {
        goto LABEL_38;
      }

      v375 = v78;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v389 = v105;
      *v104 = 136315394;
      swift_beginAccess();
      v106 = v342;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v342, type metadata accessor for PommesBridgeResultCandidateState);
      v107 = v343;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v106, v343, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
      outlined destroy of NLXResultCandidate(v106, type metadata accessor for PommesBridgeResultCandidateState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
        v109 = v108[20];
        v110 = v80;
        v111 = v108[24];
        v112 = v103;
        v113 = v105;
        v114 = v330;
        outlined init with take of PommesSearchReason?(v107 + v108[16], v330, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v115 = v107 + v111;
        v80 = v110;
        outlined destroy of MediaUserStateCenter?(v115, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v107 + v109, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        v116 = v114;
        v105 = v113;
        v103 = v112;
        v117 = v346;
        outlined init with take of PommesSearchReason?(v116, v346, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v118 = type metadata accessor for TCUMappedNLResponse();
        v119 = *(v118 - 8);
        if ((*(v119 + 48))(v117, 1, v118) != 1)
        {
          v120 = TCUMappedNLResponse.nlResponse.getter();
          (*(v119 + 8))(v117, v118);
          NLParseResponse.serverFallbackReason.getter();

          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of NLXResultCandidate(v107, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        v158 = type metadata accessor for TCUMappedNLResponse();
        v117 = v346;
        (*(*(v158 - 8) + 56))(v346, 1, 1, v158);
      }

      outlined destroy of MediaUserStateCenter?(v117, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v159 = type metadata accessor for ServerFallbackReason();
      (*(*(v159 - 8) + 56))(v347, 1, 1, v159);
LABEL_32:
      v160 = String.init<A>(describing:)();
      v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &v389);

      *(v104 + 4) = v162;
      *(v104 + 12) = 2080;
      v163 = v344;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v344, type metadata accessor for PommesBridgeResultCandidateState);
      v164 = v345;
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v163, v345, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
      outlined destroy of NLXResultCandidate(v163, type metadata accessor for PommesBridgeResultCandidateState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
        v166 = v165[20];
        v167 = v165[24];
        v168 = v331;
        outlined init with take of PommesSearchReason?(v164 + v165[16], v331, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        outlined destroy of MediaUserStateCenter?(v164 + v167, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v164 + v166, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        v169 = v349;
        outlined init with take of PommesSearchReason?(v168, v349, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v170 = type metadata accessor for TCUMappedNLResponse();
        v171 = *(v170 - 8);
        if ((*(v171 + 48))(v169, 1, v170) != 1)
        {
          v172 = TCUMappedNLResponse.nlResponse.getter();
          (*(v171 + 8))(v169, v170);
          v173 = v350;
          NLParseResponse.responseStatusCode.getter();

          v174 = 0;
LABEL_37:
          v176 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
          (*(*(v176 - 8) + 56))(v173, v174, 1, v176);
          v177 = String.init<A>(describing:)();
          v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v178, &v389);

          *(v104 + 14) = v179;
          _os_log_impl(&dword_2232BB000, v102, v103, "Returning because tcuMappedNLResponse indicates server fallback\n    serverFallbackReason: %s\n    responseStatusCode: %s", v104, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE0F80](v105, -1, -1);
          MEMORY[0x223DE0F80](v104, -1, -1);
LABEL_38:

          v180 = v378;
          v181 = v376;
          v182 = v379;
          (*(v378 + 104))(v376, *MEMORY[0x277D56670], v379);
          PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v383, v181, 4u, v377);
          (*(v180 + 8))(v181, v182);
        }
      }

      else
      {
        outlined destroy of NLXResultCandidate(v164, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        v175 = type metadata accessor for TCUMappedNLResponse();
        v169 = v349;
        (*(*(v175 - 8) + 56))(v349, 1, 1, v175);
      }

      outlined destroy of MediaUserStateCenter?(v169, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v174 = 1;
      v173 = v350;
      goto LABEL_37;
    }

    v125 = v66;
    v126 = v380;
    *(v80 + v380[10]) = 1;
    v127 = (v363)(v100);
    v128 = v365;
    (*(v374 + 16))(v365, v383, v375);
    v129 = v364;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v364, type metadata accessor for PommesBridgeResultCandidateState);
    v130 = v84 + 56;
    v350 = *(v84 + 56);
    (v350)(v129, 0, 1, v126);
    (*(*v127 + 152))(v129, v128);

    v131 = (v80 + v126[9]);
    v132 = v131[1];
    v378 = *v131;
    (*(v371 + 16))(v381, v80 + v126[5], v372);
    LODWORD(v351) = *(v80 + v126[13]);
    v133 = one-time initialization token for pommes;

    if (v133 != -1)
    {
      swift_once();
    }

    v134 = type metadata accessor for Logger();
    v135 = __swift_project_value_buffer(v134, static Logger.pommes);

    v376 = v135;
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    v375 = v78;

    v138 = os_log_type_enabled(v136, v137);
    v379 = v132;
    if (v138)
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&aBlock = v140;
      *v139 = 136315138;
      swift_beginAccess();
      outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v125, type metadata accessor for PommesBridgeResultCandidateState);
      v141 = PommesBridgeResultCandidateState.description.getter();
      v143 = v142;
      outlined destroy of NLXResultCandidate(v125, type metadata accessor for PommesBridgeResultCandidateState);
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &aBlock);

      *(v139 + 4) = v144;
      _os_log_impl(&dword_2232BB000, v136, v137, "Fetched %s", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v140);
      v145 = v140;
      v132 = v379;
      MEMORY[0x223DE0F80](v145, -1, -1);
      MEMORY[0x223DE0F80](v139, -1, -1);
    }

    v146 = v366;

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      *&aBlock = v150;
      *v149 = 136315138;
      *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v132, &aBlock);
      _os_log_impl(&dword_2232BB000, v147, v148, "Extracted Pommes query:\n    prState utterance: %s", v149, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v150);
      MEMORY[0x223DE0F80](v150, -1, -1);
      MEMORY[0x223DE0F80](v149, -1, -1);
    }

    swift_beginAccess();
    if (*(v80 + v380[14]) == 1)
    {
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v151, v152))
      {
LABEL_25:

        goto LABEL_41;
      }

      v153 = swift_slowAlloc();
      *v153 = 0;
      v154 = "Handling request for gesture based RC";
LABEL_24:
      _os_log_impl(&dword_2232BB000, v151, v152, v154, v153, 2u);
      MEMORY[0x223DE0F80](v153, -1, -1);
      goto LABEL_25;
    }

    v155 = *(v384 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8);
    if (v155)
    {
      v156 = *(v384 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin);
      if (v156 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v155 == v157)
      {
      }

      else
      {
        v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v183 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      if (([objc_opt_self() isIntuitiveConversationAnnounceEnabled] & 1) == 0)
      {
        v291 = v326;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v80, v326, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          outlined destroy of NLXResultCandidate(v291, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
          v293 = Logger.logObject.getter();
          v294 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v293, v294))
          {
            v295 = swift_slowAlloc();
            *v295 = 0;
            _os_log_impl(&dword_2232BB000, v293, v294, "Pommes doesn't handle request for clientGenerated inputOrigin when intuitive conversation announce feature flag is disabled", v295, 2u);
            MEMORY[0x223DE0F80](v295, -1, -1);
          }

          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v296 = v318;
          v297 = v317;
          v298 = v319;
          (*(v318 + 104))(v317, *MEMORY[0x277D851C8], v319);
          v299 = static OS_dispatch_queue.global(qos:)();
          (*(v296 + 8))(v297, v298);
          v300 = swift_allocObject();
          swift_weakInit();
          v301 = swift_allocObject();
          v302 = v375;
          *(v301 + 16) = v300;
          *(v301 + 24) = v302;
          v387 = partial apply for closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:);
          v388 = v301;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v386 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v386 + 1) = &block_descriptor_41;
          v303 = _Block_copy(&aBlock);

          v304 = v320;
          static DispatchQoS.unspecified.getter();
          v389 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          v305 = v322;
          v306 = v325;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x223DDFBF0](0, v304, v305, v303);
          _Block_release(v303);

          (*(v324 + 8))(v305, v306);
          (*(v321 + 8))(v304, v323);

          (*(v371 + 8))(v381, v372);
        }

        v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
        outlined destroy of MediaUserStateCenter?(v291 + *(v292 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
        v151 = Logger.logObject.getter();
        v152 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v151, v152))
        {
          goto LABEL_25;
        }

        v153 = swift_slowAlloc();
        *v153 = 0;
        v154 = "Allow Pommes to handle SARDRunPOMMESRequest";
        goto LABEL_24;
      }
    }

LABEL_41:
    v382 = v130;
    v352 = v125;
    v374 = v80;
    v377 = swift_allocBox();
    v185 = v184;
    v357 = *(*v384 + class metadata base offset for PommesBridgeRequestProcessor + 144);
    v357(&aBlock);
    if (*(&v386 + 1))
    {
      outlined init with copy of AppDataProviding(&aBlock, &v389);
      outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      __swift_project_boxed_opaque_existential_1(&v389, v390);
      v186 = v355;
      v187 = v185;
      v188 = v146;
      v189 = v354;
      v190 = v356;
      (*(v355 + 104))(v354, *MEMORY[0x277D5D1B8], v356);
      dispatch thunk of ConversationSessionState.value(forKey:userId:)();
      v191 = v189;
      v146 = v188;
      v185 = v187;
      (*(v186 + 8))(v191, v190);
      __swift_destroy_boxed_opaque_existential_1(&v389);
      if (*(&v392 + 1))
      {
        v192 = v373;
        v193 = swift_dynamicCast();
        (*(v146 + 56))(v187, v193 ^ 1u, 1, v192);
        goto LABEL_46;
      }
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
      v391 = 0u;
      v392 = 0u;
    }

    outlined destroy of MediaUserStateCenter?(&v391, &_sypSgMd, &_sypSgMR);
    v192 = v373;
    (*(v146 + 56))(v185, 1, 1, v373);
LABEL_46:
    v194 = v358;
    outlined init with copy of MediaUserStateCenter?(v185, v358, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v195 = *(v146 + 48);
    v196 = v195(v194, 1, v192);
    v197 = outlined destroy of MediaUserStateCenter?(v194, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v198 = v373;
    if (v196 != 1)
    {
      (v357)(&aBlock, v197);
      if (*(&v386 + 1))
      {
        outlined init with copy of AppDataProviding(&aBlock, &v389);
        outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        __swift_project_boxed_opaque_existential_1(&v389, v390);
        v199 = v355;
        v200 = v354;
        v201 = v356;
        (*(v355 + 104))(v354, *MEMORY[0x277D5D1D8], v356);
        v198 = v373;
        dispatch thunk of ConversationSessionState.value(forKey:userId:)();
        (*(v199 + 8))(v200, v201);
        __swift_destroy_boxed_opaque_existential_1(&v389);
        if (*(&v392 + 1))
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x277D47690);
          if (swift_dynamicCast())
          {
            v202 = aBlock;
            v203 = [aBlock promptContextProto];
            if (v203)
            {
              v358 = v202;
              v204 = v203;
              v205 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v207 = v206;

              v387 = 0;
              aBlock = 0u;
              v386 = 0u;
              outlined copy of Data._Representation(v205, v207);
              BinaryDecodingOptions.init()();
              lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x277D5E200], MEMORY[0x277D5E1F8]);
              v208 = v314;
              v209 = v316;
              Message.init(serializedData:extensions:partial:options:)();
              v356 = v205;
              v357 = v207;
              v307 = v315;
              (*(v315 + 56))(v208, 0, 1, v209);
              (*(v307 + 32))(v313[0], v208, v209);
              v308 = Logger.logObject.getter();
              v309 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v308, v309))
              {
                v311 = swift_slowAlloc();
                *v311 = 0;
                _os_log_impl(&dword_2232BB000, v308, v309, "Adding promptContext to PommesContext", v311, 2u);
                MEMORY[0x223DE0F80](v311, -1, -1);
              }

              v198 = v373;
              if (v195(v185, 1, v373))
              {
                (*(v307 + 8))(v313[0], v209);

                outlined consume of Data._Representation(v356, v357);
              }

              else
              {
                v312 = v313[0];
                PommesContext.update(with:)();

                outlined consume of Data._Representation(v356, v357);
                (*(v307 + 8))(v312, v209);
              }
            }

            else
            {
            }
          }

          goto LABEL_54;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&aBlock, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
        v391 = 0u;
        v392 = 0u;
      }

      outlined destroy of MediaUserStateCenter?(&v391, &_sypSgMd, &_sypSgMR);
    }

LABEL_54:
    v210 = v195(v185, 1, v198);
    v211 = MEMORY[0x277D84F90];
    v212 = v384;
    v213 = v374;
    if (!v210)
    {
      v214 = v366;
      v215 = v332;
      (*(v366 + 16))(v332, v185, v198);
      v216 = v333;
      PommesContext.exportLegacyNLContext()();
      (*(v214 + 8))(v215, v198);
      v217 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v218 = *(v217 - 8);
      if ((*(v218 + 48))(v216, 1, v217) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v216, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
        v211 = MEMORY[0x277D84F90];
      }

      else
      {
        v219 = MEMORY[0x223DDC1A0]();
        (*(v218 + 8))(v216, v217);
        v211 = v219;
      }
    }

    if (*(v213 + v380[14]) == 1)
    {
      v220 = *(v211 + 16);

      v221 = v383;
      if (!v220)
      {
        v222 = Logger.logObject.getter();
        v223 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          _os_log_impl(&dword_2232BB000, v222, v223, "POMMES might not be expecting a confirmation, continuing to use the gesture based RC", v224, 2u);
          MEMORY[0x223DE0F80](v224, -1, -1);
        }
      }
    }

    else
    {

      v221 = v383;
    }

    if (*(v212 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext))
    {
      v225 = *(v212 + direct field offset for PommesBridgeRequestProcessor.pommesRequestContext);
    }

    else
    {
      v366 = RequestProcessorBase.assistantId.getter();
      v227 = v226;
      v228 = v334;
      RequestProcessorBase.sessionId.getter();
      v229 = RequestProcessorBase.requestId.getter();
      v373 = v230;
      v231 = v336;
      v232 = v335;
      v233 = v338;
      (*(v336 + 16))(v335, v228, v338);
      v234 = *(v231 + 32);
      v235 = v337;
      v234(v337, v232, v233);
      (*(v231 + 8))(v228, v233);
      v236 = type metadata accessor for DateInterval();
      v237 = v339;
      (*(*(v236 - 8) + 56))(v339, 1, 1, v236);
      type metadata accessor for PommesRequestContext(0);
      v225 = swift_allocObject();
      *(v225 + 16) = v366;
      *(v225 + 24) = v227;
      v212 = v384;
      v234((v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId), v235, v233);
      v221 = v383;
      v238 = (v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
      v239 = v373;
      *v238 = v229;
      v238[1] = v239;
      v240 = (v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
      *v240 = 0;
      v240[1] = 0;
      v241 = (v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
      *v241 = 0;
      v241[1] = 0;
      v242 = (v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
      *v242 = 0;
      v242[1] = 0;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = 0;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = 0;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = 0;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = 0;
      v243 = MEMORY[0x277D84F90];
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = MEMORY[0x277D84F90];
      outlined init with take of PommesSearchReason?(v237, v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v243;
      *(v225 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
    }

    v244 = v369;
    v245 = v368;
    if (*(v212 + direct field offset for PommesBridgeRequestProcessor.aceInputOrigin + 8))
    {

      v246 = InputOrigin.init(aceValue:)();
    }

    else
    {
      v247 = type metadata accessor for InputOrigin();
      (*(*(v247 - 8) + 56))(v244, 1, 1, v247);
    }

    v248 = v367;
    MEMORY[0x28223BE20](v246);
    v249 = v379;
    v313[-10] = v378;
    v313[-9] = v249;
    v250 = v375;
    v313[-8] = v375;
    v313[-7] = v212;
    v313[-6] = v381;
    v313[-5] = v225;
    v313[-4] = v377;
    v313[-3] = v244;
    LOBYTE(v313[-2]) = v351;
    v313[-1] = v221;
    PommesSearchRequest.init(_:)(partial apply for closure #3 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:), v245);
    v251 = v359;
    outlined init with copy of MediaUserStateCenter?(v245, v359, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    if ((*(v360 + 48))(v251, 1, v361) == 1)
    {

      outlined destroy of MediaUserStateCenter?(v251, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      v252 = Logger.logObject.getter();
      v253 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        *v254 = 0;
        _os_log_impl(&dword_2232BB000, v252, v253, "Unable to construct PommesSearchRequest! Search will not complete", v254, 2u);
        MEMORY[0x223DE0F80](v254, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v245, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      outlined destroy of MediaUserStateCenter?(v244, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);

      (*(v371 + 8))(v381, v372);
    }

    else
    {
      outlined init with take of NLXResultCandidate(v251, v248, type metadata accessor for PommesSearchRequest);
      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v255 = type metadata accessor for InsightRequestSummaryLogger();
      __swift_project_value_buffer(v255, static Logger.insightRequestSummaryLogger);
      v256 = swift_allocObject();
      v256[2] = v212;
      v256[3] = v250;
      v257 = v379;
      v256[4] = v378;
      v256[5] = v257;

      InsightRequestSummaryLogger.emitDebug(_:)();

      v258 = *(v212 + direct field offset for PommesBridgeRequestProcessor.pommesSearch);
      v259 = swift_allocObject();
      swift_weakInit();
      v260 = swift_allocObject();
      v261 = v250;
      v262 = v260;
      *(v260 + 16) = v259;
      *(v260 + 24) = v261;
      v263 = *(*v258 + 272);

      v264 = v362;
      v263(v248, partial apply for closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:), v262);

      v265 = v340;
      outlined init with copy of MediaUserStateCenter?(v264, v340, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
      v266 = v341;
      if ((*(v353 + 48))(v265, 1, v341) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v265, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        v267 = Logger.logObject.getter();
        v268 = static os_log_type_t.debug.getter();
        v269 = os_log_type_enabled(v267, v268);
        v270 = v369;
        if (v269)
        {
          v271 = swift_slowAlloc();
          *v271 = 0;
          _os_log_impl(&dword_2232BB000, v267, v268, "No eager information available at POMMES search start", v271, 2u);
          MEMORY[0x223DE0F80](v271, -1, -1);
        }

        outlined destroy of MediaUserStateCenter?(v362, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined destroy of NLXResultCandidate(v367, type metadata accessor for PommesSearchRequest);
        outlined destroy of MediaUserStateCenter?(v368, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
      }

      else
      {
        v272 = v329;
        outlined init with take of NLXResultCandidate(v265, v329, type metadata accessor for PommesSearchEagerInfo);
        v273 = v328;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v272, v328, type metadata accessor for PommesSearchEagerInfo);
        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v274, v275))
        {
          v276 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          *&aBlock = v277;
          *v276 = 136315138;
          outlined init with copy of PommesBridgeResultCandidateState.ParseState(v273, v327, type metadata accessor for PommesSearchEagerInfo);
          v278 = String.init<A>(describing:)();
          v279 = v273;
          v280 = v278;
          v282 = v281;
          outlined destroy of NLXResultCandidate(v279, type metadata accessor for PommesSearchEagerInfo);
          v283 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v280, v282, &aBlock);

          *(v276 + 4) = v283;
          _os_log_impl(&dword_2232BB000, v274, v275, "Updating prState with eager search information: %s", v276, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v277);
          MEMORY[0x223DE0F80](v277, -1, -1);
          MEMORY[0x223DE0F80](v276, -1, -1);
        }

        else
        {

          outlined destroy of NLXResultCandidate(v273, type metadata accessor for PommesSearchEagerInfo);
        }

        v284 = v352;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v374, v352, type metadata accessor for PommesBridgeResultCandidateState);
        v285 = v380;
        v286 = v380[15];
        outlined destroy of MediaUserStateCenter?(v284 + v286, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v272, v284 + v286, type metadata accessor for PommesSearchEagerInfo);
        v287 = (*(v353 + 56))(v284 + v286, 0, 1, v266);
        v288 = (v363)(v287);
        v289 = v365;
        PommesBridgeResultCandidateState.pommesCandidateId.getter(v365);
        v290 = v364;
        outlined init with copy of PommesBridgeResultCandidateState.ParseState(v284, v364, type metadata accessor for PommesBridgeResultCandidateState);
        (v350)(v290, 0, 1, v285);
        (*(*v288 + 152))(v290, v289);

        outlined destroy of NLXResultCandidate(v272, type metadata accessor for PommesSearchEagerInfo);
        outlined destroy of MediaUserStateCenter?(v362, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
        outlined destroy of NLXResultCandidate(v367, type metadata accessor for PommesSearchRequest);
        outlined destroy of MediaUserStateCenter?(v368, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        outlined destroy of NLXResultCandidate(v284, type metadata accessor for PommesBridgeResultCandidateState);
        v270 = v369;
      }

      outlined destroy of MediaUserStateCenter?(v270, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);

      (*(v371 + 8))(v381, v372);
    }
  }

  outlined destroy of MediaUserStateCenter?(v71, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  swift_deallocBox();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  __swift_project_value_buffer(v86, static Logger.pommes);
  v87 = v374;
  v88 = v370;
  v89 = v383;
  v90 = v375;
  (*(v374 + 16))(v370, v383, v375);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&aBlock = v94;
    *v93 = 136315138;
    v95 = PommesCandidateId.description.getter();
    v97 = v96;
    (*(v87 + 8))(v88, v90);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &aBlock);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_2232BB000, v91, v92, "Unable to retrieve mutable prState for pommesCandidateId=%s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x223DE0F80](v94, -1, -1);
    MEMORY[0x223DE0F80](v93, -1, -1);
  }

  else
  {

    (*(v87 + 8))(v88, v90);
  }

  v121 = v378;
  v122 = v376;
  v123 = v379;
  (*(v378 + 104))(v376, *MEMORY[0x277D56670], v379);
  PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(v89, v122, 5u, v377);
  return (*(v121 + 8))(v122, v123);
}

void *closure #1 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for PommesCandidateId();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PommesBridgeResultCandidateState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v9, v8, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v5);
    outlined destroy of NLXResultCandidate(v8, type metadata accessor for PommesBridgeResultCandidateState);
    lazy protocol witness table accessor for type PommesSearchRequestProcessorError and conformance PommesSearchRequestProcessorError();
    v12 = swift_allocError();
    *v13 = 0;
    (*(*v11 + class metadata base offset for PommesBridgeRequestProcessor + 480))(v5, v12, 1);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t closure #3 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v231 = a7;
  v232 = a5;
  v230 = a3;
  v227 = a2;
  v220 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v205 = &v186 - v15;
  v190 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v188 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  v198 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v196 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for SiriUserInput();
  v199 = *(v200 - 8);
  v18 = MEMORY[0x28223BE20](v200);
  v193 = &v186 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v197 = &v186 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v216 = &v186 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v195 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v215 = &v186 - v26;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v27 = MEMORY[0x28223BE20](v192);
  v191 = &v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v202 = &v186 - v30;
  MEMORY[0x28223BE20](v29);
  v213 = &v186 - v31;
  v204 = type metadata accessor for NLXResultCandidate(0);
  v32 = MEMORY[0x28223BE20](v204);
  v201 = &v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v203 = (&v186 - v34);
  v219 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v219);
  v221 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v212);
  v211 = &v186 - v36;
  v226 = type metadata accessor for PommesCandidateId();
  v217 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v207 = (&v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = type metadata accessor for PommesBridgeResultCandidateState(0);
  MEMORY[0x28223BE20](v218);
  v206 = (&v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v39 = MEMORY[0x28223BE20](v210);
  v209 = &v186 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v228 = &v186 - v41;
  v42 = type metadata accessor for UserID();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v186 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = a4;
  v46 = swift_projectBox();
  v224 = swift_projectBox();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v225 = a10;
  v47 = type metadata accessor for Logger();
  v48 = __swift_project_value_buffer(v47, static Logger.pommes);
  v49 = *(v43 + 16);
  v223 = a6;
  v49(v45, a6, v42);
  v222 = a9;
  outlined init with copy of MediaUserStateCenter?(a9, v228, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  swift_retain_n();
  swift_retain_n();
  v50 = v230;

  v51 = v231;

  v214 = v48;
  v52 = v50;
  v53 = Logger.logObject.getter();
  LODWORD(v50) = static os_log_type_t.info.getter();

  v208 = v50;
  if (os_log_type_enabled(v53, v50))
  {
    v54 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v235 = v187;
    *v54 = 136317442;
    *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v52, &v235);
    *(v54 + 12) = 2080;
    swift_beginAccess();
    v55 = v206;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v46, v206, type metadata accessor for PommesBridgeResultCandidateState);
    v56 = v207;
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v207);
    outlined destroy of NLXResultCandidate(v55, type metadata accessor for PommesBridgeResultCandidateState);
    v57 = PommesCandidateId.description.getter();
    v206 = v53;
    v59 = v58;
    v60 = v217;
    (*(v217 + 8))(v56, v226);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v235);

    *(v54 + 14) = v61;
    *(v54 + 22) = 1024;
    LODWORD(v61) = *(v232 + direct field offset for PommesBridgeRequestProcessor.isMultiUser);

    *(v54 + 24) = v61;

    *(v54 + 28) = 2080;
    lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298], MEMORY[0x277D5D2C0]);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    (*(v43 + 8))(v45, v42);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v235);

    *(v54 + 30) = v65;
    *(v54 + 38) = 2080;
    v234 = v231;
    type metadata accessor for PommesRequestContext(0);

    v66 = String.init<A>(describing:)();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v235);

    *(v54 + 40) = v68;
    *(v54 + 48) = 2080;
    v69 = v224;
    swift_beginAccess();
    outlined init with copy of MediaUserStateCenter?(v69, v211, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v70 = String.init<A>(describing:)();
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v235);

    *(v54 + 50) = v72;
    *(v54 + 58) = 2080;
    v73 = v228;
    outlined init with copy of MediaUserStateCenter?(v228, v209, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v74 = String.init<A>(describing:)();
    v76 = v75;
    v77 = v73;
    v78 = v227;
    outlined destroy of MediaUserStateCenter?(v77, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, &v235);

    *(v54 + 60) = v79;
    *(v54 + 68) = 2080;
    swift_beginAccess();
    v80 = v218;
    v234 = *(v46 + *(v218 + 32));
    v81 = v234;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
    v82 = String.init<A>(describing:)();
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v235);

    *(v54 + 70) = v84;
    *(v54 + 78) = 1024;
    *(v54 + 80) = v225 & 1;
    *(v54 + 84) = 1024;
    swift_beginAccess();
    LODWORD(v79) = *(v46 + v80[14]);

    *(v54 + 86) = v79;

    v85 = v206;
    _os_log_impl(&dword_2232BB000, v206, v208, "Constructing Pommes search request:\n    utterance: %s,\n    %s,\n    isMultiUser: %{BOOL}d,\n    userId=%s,\n    requestContext: %s,\n    pommesContext: %s,\n    inputOrigin: %s,\n    asrSpeechPackage: %s,\n    isFallback=%{BOOL}d,\n    isGestureBased=%{BOOL}d", v54, 0x5Au);
    v86 = v187;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v86, -1, -1);
    v87 = v54;
    v88 = v231;
    MEMORY[0x223DE0F80](v87, -1, -1);

    v89 = v232;
  }

  else
  {
    v88 = v51;

    v90 = v232;

    outlined destroy of MediaUserStateCenter?(v228, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    (*(v43 + 8))(v45, v42);
    v89 = v90;
    v78 = v227;
    v80 = v218;
    v60 = v217;
  }

  v91 = v230;

  *a1 = v78;
  *(a1 + 1) = v91;
  v92 = type metadata accessor for PommesSearchRequest.Builder(0);
  v93 = v92[6];
  outlined destroy of MediaUserStateCenter?(&a1[v93], &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v94 = v226;
  (*(v60 + 16))(&a1[v93], v220, v226);
  (*(v60 + 56))(&a1[v93], 0, 1, v94);
  v95 = RequestProcessorBase.rootLevelRequestId.getter();
  v97 = v96;
  v98 = &a1[v92[7]];

  *v98 = v95;
  v98[1] = v97;
  a1[v92[9]] = *(v89 + direct field offset for PommesBridgeRequestProcessor.isMultiUser);
  v99 = v92[8];

  *&a1[v99] = v88;
  v100 = v224;
  swift_beginAccess();
  v101 = v92[11];
  outlined destroy of MediaUserStateCenter?(&a1[v101], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined init with copy of MediaUserStateCenter?(v100, &a1[v101], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined assign with copy of ConversationSessionState?(v222, &a1[v92[12]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  swift_beginAccess();
  v102 = *(v46 + v80[8]);
  v103 = v92[17];
  v104 = *&a1[v103];
  v231 = v102;

  *&a1[v103] = v102;
  a1[v92[18]] = v225 & 1;
  v105 = UserID.sharedUserId.getter();
  v107 = v106;
  v108 = &a1[v92[19]];

  *v108 = v105;
  v108[1] = v107;
  swift_beginAccess();
  *&a1[v92[20]] = *(v46 + v80[6]);
  a1[v92[21]] = *(v46 + v80[14]);
  v109 = v221;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v46, v221, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    v131 = v203;
    outlined init with take of NLXResultCandidate(v109 + *(v130 + 48), v203, type metadata accessor for NLXResultCandidate);
    v132 = v201;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v131, v201, type metadata accessor for NLXResultCandidate);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v233 = v136;
      *v135 = 136315138;
      v137 = NLXResultCandidate.description.getter();
      v139 = v138;
      outlined destroy of NLXResultCandidate(v132, type metadata accessor for NLXResultCandidate);
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v139, &v233);

      *(v135 + 4) = v140;
      _os_log_impl(&dword_2232BB000, v133, v134, "Pommes search request parse detail: %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v136);
      MEMORY[0x223DE0F80](v136, -1, -1);
      MEMORY[0x223DE0F80](v135, -1, -1);
    }

    else
    {

      outlined destroy of NLXResultCandidate(v132, type metadata accessor for NLXResultCandidate);
    }

    v170 = *v131;
    v171 = v92[14];

    *&a1[v171] = v170;
    v172 = v204;
    v173 = (v131 + *(v204 + 24));
    v174 = *v173;
    v175 = v173[1];
    v176 = &a1[v92[16]];

    *v176 = v174;
    *(v176 + 1) = v175;
    a1[v92[10]] = 0;
    v177 = v131 + *(v172 + 20);
    v178 = &a1[v92[15]];
    return outlined assign with take of MediaUserStateCenter?(v177, v178, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v141 = *v109;
    v142 = *(v109 + 8);
    v143 = v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64);
    v144 = v205;
    outlined init with take of PommesSearchReason?(v143, v205, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v145 = v92[14];

    *&a1[v145] = v142;
    v146 = [v141 responseVariantResult];
    if (v146)
    {
      v147 = v146;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v150 = v149;
    }

    else
    {

      v148 = 0;
      v150 = 0;
    }

    v179 = &a1[v92[16]];

    *v179 = v148;
    v179[1] = v150;
    a1[v92[10]] = *(v232 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome);
    v178 = &a1[v92[15]];
    v177 = v144;
    return outlined assign with take of MediaUserStateCenter?(v177, v178, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  }

  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v112 = v111[20];
  v113 = v111[24];
  v114 = v213;
  outlined init with take of PommesSearchReason?(v109 + v111[16], v213, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined init with take of PommesSearchReason?(v109 + v112, v215, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  outlined init with take of PommesSearchReason?(v109 + v113, v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  v115 = v202;
  outlined init with copy of MediaUserStateCenter?(v114, v202, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v233 = v119;
    *v118 = 136315138;
    outlined init with copy of MediaUserStateCenter?(v115, v191, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v120 = String.init<A>(describing:)();
    v121 = v115;
    v123 = v122;
    outlined destroy of MediaUserStateCenter?(v121, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v124 = v120;
    v114 = v213;
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v123, &v233);

    *(v118 + 4) = v125;
    v126 = v232;
    _os_log_impl(&dword_2232BB000, v116, v117, "Pommes search request parse detail: %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x223DE0F80](v119, -1, -1);
    MEMORY[0x223DE0F80](v118, -1, -1);

    v127 = v200;
    v128 = v199;
    v129 = v195;
  }

  else
  {

    outlined destroy of MediaUserStateCenter?(v115, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v127 = v200;
    v128 = v199;
    v129 = v195;
    v126 = v232;
  }

  outlined assign with copy of ConversationSessionState?(v114, &a1[v92[13]], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  a1[v92[10]] = *(v126 + direct field offset for PommesBridgeRequestProcessor.isOnlyUserInHome);
  v151 = v215;
  outlined init with copy of MediaUserStateCenter?(v215, v129, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  if ((*(v128 + 48))(v129, 1, v127) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v151, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(v114, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return outlined destroy of MediaUserStateCenter?(v129, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  }

  v153 = v197;
  (*(v128 + 32))(v197, v129, v127);
  v154 = v196;
  PommesBridgeRequestProcessor.buildRewriteMessage(rewriteUtterance:rewriteReason:)(v227, v230, v216);
  v155 = v92[5];
  outlined destroy of MediaUserStateCenter?(&a1[v155], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
  v156 = v198;
  v157 = v194;
  (*(v198 + 16))(&a1[v155], v154, v194);
  (*(v156 + 56))(&a1[v155], 0, 1, v157);
  v158 = v193;
  (*(v128 + 16))(v193, v153, v127);
  v159 = (*(v128 + 88))(v158, v127);
  if (v159 == *MEMORY[0x277D5CD98])
  {
    (*(v128 + 96))(v158, v127);
    v160 = *v158;

    *&a1[v103] = v160;
    v161 = [v160 recognition];

    v162 = v213;
    if (v161)
    {
      v163 = AFSpeechRecognition.toAsrHypotheses()();

      if (v163[2])
      {
        v164 = v189;
        v165 = v188;
        v166 = v190;
        (*(v189 + 16))(v188, v163 + ((*(v164 + 80) + 32) & ~*(v164 + 80)), v190);

        v167 = Siri_Nlu_External_AsrHypothesis.utterance.getter();
        v169 = v168;
        (*(v164 + 8))(v165, v166);
        (*(v198 + 8))(v196, v157);
        (*(v128 + 8))(v197, v127);
        outlined destroy of MediaUserStateCenter?(v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
        outlined destroy of MediaUserStateCenter?(v215, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
        outlined destroy of MediaUserStateCenter?(v162, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_28:

        *a1 = v167;
        *(a1 + 1) = v169;
        return result;
      }
    }

    (*(v198 + 8))(v196, v157);
    (*(v128 + 8))(v197, v127);
    outlined destroy of MediaUserStateCenter?(v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v215, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    return outlined destroy of MediaUserStateCenter?(v162, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  }

  else
  {
    v180 = v213;
    if (v159 == *MEMORY[0x277D5CD90])
    {
      (*(v198 + 8))(v196, v157);
      (*(v128 + 8))(v197, v127);
      outlined destroy of MediaUserStateCenter?(v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
      outlined destroy of MediaUserStateCenter?(v151, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
      outlined destroy of MediaUserStateCenter?(v180, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      (*(v128 + 96))(v158, v127);
      v167 = *v158;
      v169 = *(v158 + 1);
      goto LABEL_28;
    }

    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_2232BB000, v181, v182, "originalUserInput is nil or unknown type", v183, 2u);
      v184 = v183;
      v151 = v215;
      MEMORY[0x223DE0F80](v184, -1, -1);
    }

    (*(v198 + 8))(v196, v157);
    v185 = *(v128 + 8);
    v185(v197, v127);
    outlined destroy of MediaUserStateCenter?(v216, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    outlined destroy of MediaUserStateCenter?(v151, &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    outlined destroy of MediaUserStateCenter?(v180, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    return (v185)(v158, v127);
  }
}

uint64_t implicit closure #9 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v4 = type metadata accessor for PommesCandidateId();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PommesBridgeResultCandidateState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = swift_projectBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v13 = *(*v12 + 72);
  v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v15 = swift_allocObject();
  v40 = v15;
  *(v15 + 16) = xmmword_2234D4CC0;
  v16 = v15 + v14;
  v17 = v16 + v12[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v17, "PommesBridge");
  *(v17 + 13) = 0;
  *(v17 + 14) = -5120;
  v18 = (v16 + v13 + v12[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v18 = 0xD000000000000017;
  v18[1] = 0x80000002234D9520;
  v19 = (v16 + 2 * v13 + v12[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v19 = RequestProcessorBase.assistantId.getter();
  v19[1] = v20;
  v21 = (v16 + 3 * v13 + v12[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  *v21 = v22;
  v21[1] = v24;
  v25 = (v16 + 4 * v13 + v12[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v25 = RequestProcessorBase.requestId.getter();
  v25[1] = v26;
  v27 = (v16 + 5 * v13 + v12[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  v28 = v39;
  swift_beginAccess();
  v29 = v41;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v28, v41, type metadata accessor for PommesBridgeResultCandidateState);
  v30 = v42;
  PommesBridgeResultCandidateState.pommesCandidateId.getter(v42);
  outlined destroy of NLXResultCandidate(v29, type metadata accessor for PommesBridgeResultCandidateState);
  v31 = v30;
  v32 = PommesCandidateId.asResultCandidateId.getter();
  v34 = v33;
  (*(v43 + 8))(v31, v44);
  *v27 = v32;
  v27[1] = v34;
  v35 = (v16 + 6 * v13 + v12[14]);
  static InsightRequestSummaryKey.utterance.getter();
  v36 = v46;
  *v35 = v45;
  v35[1] = v36;

  return v40;
}

uint64_t PommesCandidateId.asResultCandidateId.getter()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D56618])
  {
    goto LABEL_2;
  }

  if (v5 == *MEMORY[0x277D56620])
  {
    (*(v2 + 96))(v4, v1);
    v7 = *v4;

    return v7;
  }

  else
  {
    if (v5 == *MEMORY[0x277D56610])
    {
LABEL_2:
      (*(v2 + 96))(v4, v1);
      return *v4;
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
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, v9, v10, "No resultCandidateId for unexpected pommesCandidateId. Passing empty string for resultCandidateId.", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }
}

void *closure #4 in PommesBridgeRequestProcessor.search(pommesCandidateId:userId:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PommesCandidateId();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PommesBridgeResultCandidateState(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v13, v12, type metadata accessor for PommesBridgeResultCandidateState);
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v9);
    outlined destroy of NLXResultCandidate(v12, type metadata accessor for PommesBridgeResultCandidateState);
    (*(*v15 + class metadata base offset for PommesBridgeRequestProcessor + 480))(v9, a1, a2 & 1);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, int a3)
{
  v350 = a3;
  v351 = a2;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x28223BE20](v326);
  v327 = (&v323 - v5);
  v357 = type metadata accessor for PommesError();
  v356 = *(v357 - 8);
  v6 = MEMORY[0x28223BE20](v357);
  v323 = &v323 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v333 = &v323 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v331 = &v323 - v10;
  v338 = type metadata accessor for UserID();
  v337 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v336 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v354 = &v323 - v13;
  v368 = type metadata accessor for PommesSearchReason();
  v375 = *(v368 - 8);
  v14 = MEMORY[0x28223BE20](v368);
  v329 = &v323 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v324 = &v323 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v330 = &v323 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v335 = &v323 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v355 = &v323 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v334 = &v323 - v25;
  MEMORY[0x28223BE20](v24);
  v364 = &v323 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v345 = &v323 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v348 = (&v323 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v340 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v342 = &v323 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v328 = &v323 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v332 = &v323 - v37;
  v341 = v38;
  MEMORY[0x28223BE20](v36);
  v370 = &v323 - v39;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v40 = MEMORY[0x28223BE20](v371);
  v352 = (&v323 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = MEMORY[0x28223BE20](v40);
  v344 = (&v323 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v349 = (&v323 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v347 = (&v323 - v47);
  MEMORY[0x28223BE20](v46);
  v358 = (&v323 - v48);
  v49 = type metadata accessor for PommesCandidateId();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v346 = &v323 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v52);
  v343 = &v323 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v353 = &v323 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v360 = &v323 - v58;
  MEMORY[0x28223BE20](v57);
  v60 = &v323 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v62 = MEMORY[0x28223BE20](v61 - 8);
  v325 = &v323 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v359 = &v323 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = &v323 - v66;
  v68 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v369 = *(v68 - 1);
  v69 = v369[7];
  v363 = v68;
  v69(v67, 1, 1);
  v385 = 0;
  v70 = RequestProcessorBase.requestQueue.getter();
  v71 = *(v50 + 16);
  v379 = a1;
  v373 = v50 + 16;
  v377 = v71;
  v71(v60, a1, v49);
  v72 = *(v50 + 80);
  v73 = (v72 + 24) & ~v72;
  v339 = v51;
  v361 = (v73 + v51);
  v74 = (v73 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v365 = v72;
  v75 = swift_allocObject();
  *(v75 + 16) = v3;
  v374 = v50;
  v77 = *(v50 + 32);
  v76 = (v50 + 32);
  v362 = v73;
  v367 = v60;
  v380 = v49;
  v366 = v77;
  v77((v75 + v73), v60, v49);
  *(v75 + v74) = &v385;
  v376 = v67;
  *(v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v78 = swift_allocObject();
  *(v78 + 16) = partial apply for closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:);
  *(v78 + 24) = v75;
  v372 = v75;
  v383 = thunk for @callee_guaranteed () -> ()partial apply;
  v384 = v78;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  v382 = &block_descriptor_51;
  v79 = _Block_copy(aBlock);
  v378 = v3;

  dispatch_sync(v70, v79);

  _Block_release(v79);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_98;
  }

  if ((v385 & 1) == 0)
  {
    v75 = v379;
    v76 = v377;
    if (one-time initialization token for pommes == -1)
    {
LABEL_9:
      v103 = type metadata accessor for Logger();
      __swift_project_value_buffer(v103, static Logger.pommes);
      v104 = v360;
      v105 = v380;
      v76(v360, v75, v380);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();
      v108 = os_log_type_enabled(v106, v107);
      v109 = v378;
      if (v108)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock[0] = v111;
        *v110 = 136315138;
        v112 = PommesCandidateId.description.getter();
        v114 = v113;
        (*(v374 + 8))(v104, v380);
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, aBlock);
        v75 = v379;

        *(v110 + 4) = v115;
        _os_log_impl(&dword_2232BB000, v106, v107, "Not posting pommes message, %s finished", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        v116 = v111;
        v105 = v380;
        MEMORY[0x223DE0F80](v116, -1, -1);
        v117 = v110;
        v76 = v377;
        MEMORY[0x223DE0F80](v117, -1, -1);
      }

      else
      {

        (*(v374 + 8))(v104, v105);
      }

      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v134 = type metadata accessor for InsightRequestSummaryLogger();
      __swift_project_value_buffer(v134, static Logger.insightRequestSummaryLogger);
      v135 = v367;
      v76(v367, v75, v105);
      v136 = swift_allocObject();
      *(v136 + 16) = v109;
      v366(&v362[v136], v135, v105);

      InsightRequestSummaryLogger.emitDebug(_:)();

      goto LABEL_92;
    }

LABEL_98:
    swift_once();
    goto LABEL_9;
  }

  v81 = v376;
  v82 = v359;
  outlined init with copy of MediaUserStateCenter?(v376, v359, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v83 = v369 + 6;
  v84 = v369[6];
  v85 = (v84)(v82, 1, v363);
  outlined destroy of MediaUserStateCenter?(v82, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if (v85 == 1)
  {
    v86 = v379;
    v87 = v377;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.pommes);
    v89 = v346;
    v90 = v380;
    v87(v346, v86, v380);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v378;
    if (v93)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock[0] = v96;
      *v95 = 136315138;
      v97 = PommesCandidateId.description.getter();
      v98 = v89;
      v99 = v81;
      v101 = v100;
      (*(v374 + 8))(v98, v90);
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v101, aBlock);
      v81 = v99;

      *(v95 + 4) = v102;
      _os_log_impl(&dword_2232BB000, v91, v92, "Not posting pommes message, no Pommes state for %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x223DE0F80](v96, -1, -1);
      MEMORY[0x223DE0F80](v95, -1, -1);
    }

    else
    {

      (*(v374 + 8))(v89, v90);
    }

    v137 = *(v94 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
    v138 = RequestProcessorBase.requestId.getter();
    v140 = v139;
    v141 = RequestProcessorBase.rootLevelRequestId.getter();
    (*(*v137 + 144))(5, v379, v138, v140, v141, v142);

    goto LABEL_93;
  }

  v360 = v84;
  v369 = v83;
  v361 = v76;
  v118 = v371;
  v119 = *(v371 + 48);
  v120 = *(v378 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v121 = RequestProcessorBase.requestId.getter();
  v123 = v122;
  v124 = RequestProcessorBase.rootLevelRequestId.getter();
  v125 = v358 + v119;
  v126 = v358;
  v127 = v379;
  v129 = (*(*v120 + 160))(v125, v379, v121, v123, v124, v128, v351, v350 & 1);

  *v126 = v129;
  v130 = v347;
  outlined init with copy of MediaUserStateCenter?(v126, v347, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);

  v131 = v348;
  outlined init with take of PommesSearchReason?(v130 + *(v118 + 48), v348, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v132 = type metadata accessor for PommesSearchError(0);
  v133 = *(*(v132 - 8) + 48);
  if (v133(v131, 1, v132) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v131, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    (*(v356 + 56))(v370, 1, 1, v357);
  }

  else
  {
    v143 = *v131;
    v144 = *v131;
    outlined destroy of NLXResultCandidate(v131, type metadata accessor for PommesSearchError);
    aBlock[0] = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v145 = v370;
    v146 = v357;
    v147 = swift_dynamicCast();
    (*(v356 + 56))(v145, v147 ^ 1u, 1, v146);
  }

  v148 = v368;
  v149 = v349;
  outlined init with copy of MediaUserStateCenter?(v126, v349, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v150 = *v149;
  v151 = *(v371 + 48);
  if (*v149)
  {
    v152 = v126;
    v153 = v149;
    v154 = v354;
    dispatch thunk of PommesResponse.searchReason.getter();

    v155 = v154;
    v156 = v375;
    (*(v375 + 56))(v155, 0, 1, v148);
    v157 = v153 + v151;
    v126 = v152;
    outlined destroy of MediaUserStateCenter?(v157, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v158 = (*(v156 + 48))(v155, 1, v148);
    v159 = v353;
    if (v158 != 1)
    {
      v160 = v364;
      (*(v375 + 32))(v364, v155, v148);
      v161 = v355;
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v149 + v151, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    v155 = v354;
    (*(v375 + 56))(v354, 1, 1, v148);
    v159 = v353;
  }

  v162 = v344;
  outlined init with copy of MediaUserStateCenter?(v126, v344, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);

  v163 = v162 + *(v371 + 48);
  v164 = v345;
  outlined init with take of PommesSearchReason?(v163, v345, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v165 = v133(v164, 1, v132);
  v166 = v364;
  if (v165 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v164, &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
    (*(v375 + 104))(v166, *MEMORY[0x277D56670], v148);
  }

  else
  {
    v167 = *(v132 + 20);
    v168 = v375;
    v169 = v334;
    (*(v375 + 16))(v334, v164 + v167, v148);
    outlined destroy of NLXResultCandidate(v164, type metadata accessor for PommesSearchError);
    (*(v168 + 32))(v166, v169, v148);
  }

  v161 = v355;
  v160 = v166;
  if ((*(v375 + 48))(v155, 1, v148) != 1)
  {
    outlined destroy of MediaUserStateCenter?(v155, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  }

LABEL_29:
  v170 = v352;
  outlined init with copy of MediaUserStateCenter?(v126, v352, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  v362 = *v170;
  outlined destroy of MediaUserStateCenter?(v170 + *(v371 + 48), &_s21SiriInformationSearch06PommesC5ErrorVSgMd, &_s21SiriInformationSearch06PommesC5ErrorVSgMR);
  v171 = v380;
  v377(v159, v127, v380);
  v172 = v374;
  v173 = (*(v374 + 88))(v159, v171);
  if (v173 == *MEMORY[0x277D56618])
  {
    (*(v172 + 96))(v159, v171);
    v174 = *(v159 + 1);
    v369 = *v159;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, static Logger.pommes);
    v176 = *(v375 + 16);
    v176(v161, v160, v148);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.debug.getter();
    v179 = os_log_type_enabled(v177, v178);
    v180 = v378;
    v181 = v362;
    if (v179)
    {
      v182 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      aBlock[0] = v363;
      *v182 = 136315138;
      v183 = v181;
      v184 = v174;
      v176(v335, v161, v368);
      v185 = v375;
      v186 = String.init<A>(describing:)();
      v188 = v187;
      v189 = v185;
      v174 = v184;
      v181 = v183;
      v371 = *(v189 + 8);
      (v371)(v161, v368);
      v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v188, aBlock);

      *(v182 + 4) = v190;
      _os_log_impl(&dword_2232BB000, v177, v178, "Building POMMES result candidate message on rcId path with reason: %s", v182, 0xCu);
      v191 = v363;
      __swift_destroy_boxed_opaque_existential_1(v363);
      v148 = v368;
      MEMORY[0x223DE0F80](v191, -1, -1);
      v192 = v182;
      v160 = v364;
      MEMORY[0x223DE0F80](v192, -1, -1);
    }

    else
    {

      v371 = *(v375 + 8);
      (v371)(v161, v148);
    }

    v203 = (*(*v180 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v369, v174, v181, v370, v160);

    v204 = v379;
    v205 = v380;
    if (v203)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v173 != *MEMORY[0x277D56620])
  {
    if (v173 != *MEMORY[0x277D56610])
    {
      v248 = v362;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v249 = type metadata accessor for Logger();
      __swift_project_value_buffer(v249, static Logger.pommes);
      v250 = Logger.logObject.getter();
      v251 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v250, v251))
      {
        v252 = swift_slowAlloc();
        *v252 = 0;
        _os_log_impl(&dword_2232BB000, v250, v251, "Unexpected pommesCandidateId. Not posting any message.", v252, 2u);
        MEMORY[0x223DE0F80](v252, -1, -1);
      }

      (*(v375 + 8))(v160, v148);
      outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
      (*(v172 + 8))(v159, v171);
      goto LABEL_91;
    }

    (*(v172 + 8))(v159, v171);
    v181 = v362;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v233 = type metadata accessor for Logger();
    v234 = __swift_project_value_buffer(v233, static Logger.pommes);
    v235 = *(v375 + 16);
    v236 = v329;
    v237 = v368;
    v235(v329, v160, v368);
    v371 = v234;
    v238 = Logger.logObject.getter();
    v239 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      aBlock[0] = v241;
      *v240 = 136315138;
      v235(v335, v236, v237);
      v242 = String.init<A>(describing:)();
      v244 = v243;
      v245 = *(v375 + 8);
      v245(v236, v237);
      v246 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v242, v244, aBlock);

      *(v240 + 4) = v246;
      _os_log_impl(&dword_2232BB000, v238, v239, "Building RunPommesResponseMessage with reason: %s", v240, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v241);
      v247 = v241;
      v160 = v364;
      MEMORY[0x223DE0F80](v247, -1, -1);
      MEMORY[0x223DE0F80](v240, -1, -1);
    }

    else
    {

      v245 = *(v375 + 8);
      v245(v236, v237);
    }

    v148 = v237;
    v294 = v357;
    v295 = v328;
    outlined init with copy of MediaUserStateCenter?(v370, v328, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v296 = v356;
    v297 = (*(v356 + 48))(v295, 1, v294);
    v205 = v380;
    if (v297 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v295, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      if (!v181)
      {
        v320 = Logger.logObject.getter();
        v321 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v320, v321))
        {
          v322 = swift_slowAlloc();
          *v322 = 0;
          _os_log_impl(&dword_2232BB000, v320, v321, "No POMMES result or error! Not posting any message", v322, 2u);
          MEMORY[0x223DE0F80](v322, -1, -1);
        }

        v245(v160, v148);
        v318 = v358;
        goto LABEL_90;
      }

      v371 = v245;
      v298 = v327;
      *v327 = v181;
      swift_storeEnumTagMultiPayload();
      v299 = v325;
      outlined init with copy of MediaUserStateCenter?(v376, v325, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      v300 = v160;
      v301 = *(*v378 + class metadata base offset for PommesBridgeRequestProcessor + 552);
      v302 = v181;
      v203 = v301(v298, v299, v300);
      outlined destroy of MediaUserStateCenter?(v299, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      outlined destroy of MediaUserStateCenter?(v298, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
      if (!v203)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v371 = v245;
      v305 = v323;
      (*(v296 + 32))(v323, v295, v294);
      v306 = v327;
      (*(v296 + 16))(v327, v305, v294);
      swift_storeEnumTagMultiPayload();
      v307 = v325;
      outlined init with copy of MediaUserStateCenter?(v376, v325, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      v203 = (*(*v378 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v306, v307, v160);
      outlined destroy of MediaUserStateCenter?(v307, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
      outlined destroy of MediaUserStateCenter?(v306, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
      (*(v296 + 8))(v305, v294);
      if (!v203)
      {
LABEL_85:
        v312 = v358;
        v313 = v371;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v314 = type metadata accessor for Logger();
        __swift_project_value_buffer(v314, static Logger.pommes);
        v315 = Logger.logObject.getter();
        v316 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v315, v316))
        {
          v317 = swift_slowAlloc();
          *v317 = 0;
          _os_log_impl(&dword_2232BB000, v315, v316, "Could not construct PommesResultCandidate message, builder function returned nil", v317, 2u);
          MEMORY[0x223DE0F80](v317, -1, -1);
        }

        v313(v160, v148);
        v318 = v312;
LABEL_90:
        outlined destroy of MediaUserStateCenter?(v318, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
LABEL_91:
        outlined destroy of MediaUserStateCenter?(v370, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
LABEL_92:
        v81 = v376;
        goto LABEL_93;
      }
    }

    v204 = v379;
LABEL_40:
    v206 = v365;
    v369 = v203;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v207 = type metadata accessor for InsightRequestSummaryLogger();
    v363 = __swift_project_value_buffer(v207, static Logger.insightRequestSummaryLogger);
    v208 = v342;
    outlined init with copy of MediaUserStateCenter?(v370, v342, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v209 = v367;
    v210 = v377;
    v377(v367, v204, v205);
    v211 = (*(v340 + 80) + 16) & ~*(v340 + 80);
    v212 = (v341 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
    v213 = (v206 + v212 + 8) & ~v206;
    v214 = swift_allocObject();
    outlined init with take of PommesSearchReason?(v208, v214 + v211, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    *(v214 + v212) = v378;
    v215 = v380;
    v366((v214 + v213), v209, v380);

    InsightRequestSummaryLogger.emitDebug(_:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v216 = type metadata accessor for Logger();
    __swift_project_value_buffer(v216, static Logger.pommes);
    v217 = v343;
    v210(v343, v204, v215);
    v218 = Logger.logObject.getter();
    v219 = static os_log_type_t.debug.getter();
    v220 = os_log_type_enabled(v218, v219);
    v221 = v358;
    if (v220)
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      aBlock[0] = v223;
      *v222 = 136315138;
      v224 = PommesCandidateId.asResultCandidateId.getter();
      v225 = v215;
      v227 = v226;
      (*(v374 + 8))(v217, v225);
      v228 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v224, v227, aBlock);

      *(v222 + 4) = v228;
      _os_log_impl(&dword_2232BB000, v218, v219, "Posting pommes result candidate for %s", v222, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v223);
      MEMORY[0x223DE0F80](v223, -1, -1);
      MEMORY[0x223DE0F80](v222, -1, -1);
    }

    else
    {

      (*(v374 + 8))(v217, v215);
    }

    v229 = v368;
    v230 = v362;
    v231 = v371;
    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(aBlock, v382);
    v232 = v369;
    dispatch thunk of MessagePublishing.postMessage(_:)();

    v231(v364, v229);
    outlined destroy of MediaUserStateCenter?(v221, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_91;
  }

  (*(v172 + 96))(v159, v171);
  v193 = *(v159 + 1);
  v353 = *v159;
  v359 = v193;
  v194 = *(v159 + 3);
  v354 = *(v159 + 2);
  v355 = v194;
  v81 = v376;
  v195 = v363;
  if ((v360)(v376, 1, v363))
  {
    v196 = v337;
    v197 = v331;
    v198 = v338;
    (*(v337 + 56))(v331, 1, 1, v338);
    static UserID.defaultUserId.getter();
    v199 = (*(v196 + 48))(v197, 1, v198);
    v200 = v378;
    v201 = v357;
    v202 = v332;
    if (v199 != 1)
    {
      outlined destroy of MediaUserStateCenter?(v197, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v253 = v337;
    v254 = v81 + *(v195 + 5);
    v255 = v331;
    v256 = v338;
    (*(v337 + 16))(v331, v254, v338);
    (*(v253 + 56))(v255, 0, 1, v256);
    (*(v253 + 32))(v336, v255, v256);
    v200 = v378;
    v201 = v357;
    v202 = v332;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v257 = type metadata accessor for Logger();
  __swift_project_value_buffer(v257, static Logger.pommes);

  v258 = Logger.logObject.getter();
  v259 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v258, v259))
  {
    v260 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    aBlock[0] = v261;
    *v260 = 136315138;
    v262 = RequestProcessorBase.requestId.getter();
    v264 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v262, v263, aBlock);

    *(v260 + 4) = v264;
    _os_log_impl(&dword_2232BB000, v258, v259, "No userId in prState, falling back to defaultUserId for request %s", v260, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v261);
    v265 = v261;
    v200 = v378;
    MEMORY[0x223DE0F80](v265, -1, -1);
    v81 = v376;
    MEMORY[0x223DE0F80](v260, -1, -1);
  }

  v266 = v362;
  outlined init with copy of MediaUserStateCenter?(v370, v202, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v267 = v356;
  v268 = (*(v356 + 48))(v202, 1, v201);
  v160 = v364;
  if (v268 != 1)
  {
    (*(v267 + 32))(v333, v202, v201);
    v281 = v375;
    v282 = *(v375 + 16);
    v283 = v330;
    v284 = v368;
    v282(v330, v160, v368);
    v285 = Logger.logObject.getter();
    v286 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      v369 = swift_slowAlloc();
      aBlock[0] = v369;
      *v287 = 136315138;
      v282(v335, v283, v284);
      v288 = String.init<A>(describing:)();
      v290 = v289;
      v371 = *(v281 + 8);
      (v371)(v283, v284);
      v291 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v288, v290, aBlock);

      *(v287 + 4) = v291;
      _os_log_impl(&dword_2232BB000, v285, v286, "Building POMMES TRP candidate message on error path with reason: %s", v287, 0xCu);
      v292 = v369;
      __swift_destroy_boxed_opaque_existential_1(v369);
      MEMORY[0x223DE0F80](v292, -1, -1);
      v293 = v287;
      v160 = v364;
      MEMORY[0x223DE0F80](v293, -1, -1);
    }

    else
    {

      v371 = *(v281 + 8);
      (v371)(v283, v284);
    }

    v148 = v284;
    v205 = v380;
    v303 = v333;
    v304 = v336;
    v203 = (*(*v200 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v353, v359, v354, v355, v333, v160, v336);

    (*(v356 + 8))(v303, v357);
    (*(v337 + 8))(v304, v338);
    v204 = v379;
    v181 = v362;
    if (!v203)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  outlined destroy of MediaUserStateCenter?(v202, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  if (v266)
  {
    v269 = *(v375 + 16);
    v270 = v324;
    v271 = v368;
    v269(v324, v160, v368);
    v272 = v266;
    v273 = Logger.logObject.getter();
    v274 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v273, v274))
    {
      v275 = swift_slowAlloc();
      v276 = swift_slowAlloc();
      aBlock[0] = v276;
      *v275 = 136315138;
      v269(v335, v270, v271);
      v277 = String.init<A>(describing:)();
      v279 = v278;
      v371 = *(v375 + 8);
      (v371)(v270, v271);
      v280 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v277, v279, aBlock);

      *(v275 + 4) = v280;
      _os_log_impl(&dword_2232BB000, v273, v274, "Building POMMES TRP candidate message on success path with reason: %s", v275, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v276);
      MEMORY[0x223DE0F80](v276, -1, -1);
      MEMORY[0x223DE0F80](v275, -1, -1);
    }

    else
    {

      v371 = *(v375 + 8);
      (v371)(v270, v271);
    }

    v148 = v271;
    v205 = v380;
    v311 = v336;
    v203 = (*(*v378 + class metadata base offset for PommesBridgeRequestProcessor + 568))(v353, v359, v354, v355, v272, v364, v336);

    (*(v337 + 8))(v311, v338);
    v204 = v379;
    v181 = v362;
    if (!v203)
    {
LABEL_84:
      v160 = v364;
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  v308 = Logger.logObject.getter();
  v309 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v308, v309))
  {
    v310 = swift_slowAlloc();
    *v310 = 0;
    _os_log_impl(&dword_2232BB000, v308, v309, "No POMMES result or error! Not posting any message", v310, 2u);
    MEMORY[0x223DE0F80](v310, -1, -1);
  }

  (*(v337 + 8))(v336, v338);
  (*(v375 + 8))(v160, v368);
  outlined destroy of MediaUserStateCenter?(v126, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMd, &_s21SiriInformationSearch14PommesResponseCSg8response_AA0dC5ErrorVSg5errortMR);
  outlined destroy of MediaUserStateCenter?(v370, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
LABEL_93:
  outlined destroy of MediaUserStateCenter?(v81, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
}

uint64_t closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for PommesCandidateId();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  if ((*(*a1 + class metadata base offset for PommesBridgeRequestProcessor + 96))(v15))
  {
    v16 = a2;
    v17 = v28;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2232BB000, v19, v20, "Not posting pommes message, request finished", v21, 2u);
      MEMORY[0x223DE0F80](v21, -1, -1);
    }

    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v22, static Logger.insightRequestSummaryLogger);
    (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v12);
    v23 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    (*(v13 + 32))(v24 + v23, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

    InsightRequestSummaryLogger.emitDebug(_:)();

    *v17 = 0;
  }

  else
  {
    *v11 = PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(&v11[*(v6 + 48)], a2) & 1;
    outlined init with copy of MediaUserStateCenter?(v11, v9, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    outlined assign with take of MediaUserStateCenter?(&v9[*(v6 + 48)], v27, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    outlined init with take of PommesSearchReason?(v11, v9, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    v26 = *(v6 + 48);
    *v28 = *v9;
    return outlined destroy of MediaUserStateCenter?(&v9[v26], &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v34[1] = a5;
  v34[2] = a2;
  v36 = a3;
  v37 = a4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2234D4CD0;
  v35 = v12;
  v13 = v12 + v11;
  v14 = v12 + v11 + *(v9 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v14, "PommesBridge");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  v15 = (v13 + v10 + *(v9 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v15 = 0xD000000000000018;
  v15[1] = 0x80000002234D9540;
  v16 = (v13 + 2 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v16 = RequestProcessorBase.assistantId.getter();
  v16[1] = v17;
  v18 = (v13 + 3 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *v18 = v19;
  v18[1] = v21;
  v22 = (v13 + 4 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v22 = RequestProcessorBase.requestId.getter();
  v22[1] = v23;
  v24 = (v13 + 5 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v24 = PommesCandidateId.asResultCandidateId.getter();
  v24[1] = v25;
  v26 = (v13 + 6 * v10 + *(v9 + 48));
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for InsightRequestSummaryKey();
  v28 = __swift_project_value_buffer(v27, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v29 = *(*(v27 - 8) + 16);
  v29(v13 + 6 * v10, v28, v27);
  *v26 = 0x65736C6166;
  v26[1] = 0xE500000000000000;
  v30 = *(v9 + 48);
  if (*v36 != -1)
  {
    swift_once();
  }

  v31 = (v13 - v10 + 8 * v10 + v30);
  v32 = __swift_project_value_buffer(v27, v37);
  v29(v13 - v10 + 8 * v10, v32, v27);
  *v31 = 1702195828;
  v31[1] = 0xE400000000000000;
  return v35;
}

uint64_t implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v47 = type metadata accessor for UUID();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2234D4CD0;
  v46 = v12;
  v13 = v12 + v11;
  v14 = v12 + v11 + *(v9 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v14, "PommesBridge");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  v15 = (v13 + v10 + *(v9 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v15 = 0xD000000000000015;
  v15[1] = 0x80000002234D9560;
  if (one-time initialization token for pommesError != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for InsightRequestSummaryKey();
  v17 = __swift_project_value_buffer(v16, static PommesInsightRequestSummaryKey.pommesError);
  v18 = *(v16 - 8);
  v43 = *(v18 + 16);
  v44 = v16;
  v42 = v18 + 16;
  v43(v13 + 2 * v10, v17, v16);
  v50 = 0;
  v51 = 0xE000000000000000;
  outlined init with copy of MediaUserStateCenter?(a1, v8, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v19 = type metadata accessor for PommesError();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v8, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v21 = PommesError.rawValue.getter();
    v22 = v23;
    (*(v20 + 8))(v8, v19);
  }

  v24 = (v13 + 2 * v10 + *(v9 + 48));
  MEMORY[0x223DDF6D0](v21, v22);

  v25 = v51;
  *v24 = v50;
  v24[1] = v25;
  v26 = (v13 + 3 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v26 = RequestProcessorBase.assistantId.getter();
  v26[1] = v27;
  v28 = (v13 + 4 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v29 = v47;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  (*(v45 + 8))(v5, v29);
  *v28 = v30;
  v28[1] = v32;
  v33 = (v13 + 5 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v33 = RequestProcessorBase.requestId.getter();
  v33[1] = v34;
  v35 = (v13 + 6 * v10 + *(v9 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v35 = PommesCandidateId.asResultCandidateId.getter();
  v35[1] = v36;
  v37 = *(v9 + 48);
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v38 = (v13 - v10 + 8 * v10 + v37);
  v39 = v44;
  v40 = __swift_project_value_buffer(v44, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v43(v13 - v10 + 8 * v10, v40, v39);
  *v38 = 0x65736C6166;
  v38[1] = 0xE500000000000000;
  return v46;
}

uint64_t PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(uint64_t a1)
{
  v37 = a1;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PommesCandidateId();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33 = &v30 - v16;
  v36 = RequestProcessorBase.requestQueue.getter();
  v17 = static DispatchTime.now()();
  (*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 240))(v17);
  MEMORY[0x223DDF450](v15, v10);
  (*(v8 + 8))(v10, v7);
  v35 = *(v12 + 8);
  v35(v15, v11);
  v18 = swift_allocObject();
  swift_weakInit();
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v37, v32);
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v5 + 32))(v22 + v21, v20, v19);
  aBlock[4] = partial apply for closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98;
  v23 = _Block_copy(aBlock);

  v24 = v38;
  static DispatchQoS.unspecified.getter();
  v44 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v26 = v39;
  v25 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v33;
  v28 = v36;
  MEMORY[0x223DDFBC0](v33, v24, v26, v23);
  _Block_release(v23);

  (*(v43 + 8))(v26, v25);
  (*(v41 + 8))(v24, v42);
  v35(v27, v34);
}

void *closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + class metadata base offset for PommesBridgeRequestProcessor + 496))(a2);
  }

  return result;
}

void PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v184 = &v180 - v4;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x28223BE20](v182);
  v183 = &v180 - v5;
  v6 = type metadata accessor for PommesError();
  v191 = *(v6 - 8);
  v192 = v6;
  MEMORY[0x28223BE20](v6);
  v185 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v188 = &v180 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v180 - v11;
  v200 = type metadata accessor for PommesSearchReason();
  v196 = *(v200 - 8);
  v13 = MEMORY[0x28223BE20](v200);
  v186 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v190 = &v180 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v180 - v18;
  MEMORY[0x28223BE20](v17);
  v201 = &v180 - v20;
  v21 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v197 = *(v21 - 8);
  v198 = v21;
  MEMORY[0x28223BE20](v21);
  v195 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PommesCandidateId();
  v24 = *(v23 - 8);
  v202 = v23;
  v203 = v24;
  isa = v24[8].isa;
  v26 = MEMORY[0x28223BE20](v23);
  v27 = &v180 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v189 = &v180 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v193 = &v180 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v199 = &v180 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v180 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v180 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v180 - v41;
  if ((*(*v1 + class metadata base offset for PommesBridgeRequestProcessor + 96))(v40))
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.pommes);
    v203 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v203, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v203, v44, "Not posting pommes timeout message, request finished", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    v46 = v203;

    return;
  }

  v47 = &v42[*(v36 + 48)];
  v194 = a1;
  v187 = v1;
  v48 = PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(v47, a1);
  *v42 = v48 & 1;
  if ((v48 & 1) == 0)
  {
    v181 = v42;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.pommes);
    v67 = v202;
    v66 = v203;
    v68 = v203[2].isa;
    v69 = v194;
    (v68)(v35, v194, v202);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v201 = v68;
      v73 = v72;
      v74 = swift_slowAlloc();
      v204[0] = v74;
      *v73 = 136315138;
      v75 = PommesCandidateId.description.getter();
      v77 = v76;
      (v203[1].isa)(v35, v67);
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v204);
      v69 = v194;

      *(v73 + 4) = v78;
      _os_log_impl(&dword_2232BB000, v70, v71, "Not posting pommes timeout message, %s finished", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      v79 = v74;
      v66 = v203;
      MEMORY[0x223DE0F80](v79, -1, -1);
      v80 = v73;
      v68 = v201;
      MEMORY[0x223DE0F80](v80, -1, -1);
    }

    else
    {

      (v66[1].isa)(v35, v67);
    }

    v84 = v187;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v85, static Logger.insightRequestSummaryLogger);
    v86 = v199;
    v87 = v202;
    (v68)(v199, v69, v202);
    v88 = (LOBYTE(v66[10].isa) + 24) & ~LOBYTE(v66[10].isa);
    v89 = swift_allocObject();
    *(v89 + 16) = v84;
    (v66[4].isa)(v89 + v88, v86, v87);

    InsightRequestSummaryLogger.emitDebug(_:)();

    goto LABEL_25;
  }

  outlined init with copy of MediaUserStateCenter?(v42, v39, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  v49 = *(v36 + 48);
  v50 = v198;
  if ((*(v197 + 48))(&v39[v49], 1, v198) == 1)
  {
    outlined destroy of MediaUserStateCenter?(&v39[v49], &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    v51 = v203;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.pommes);
    v53 = v202;
    (v51[2].isa)(v27, v194, v202);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v51;
      v57 = v42;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v204[0] = v59;
      *v58 = 136315138;
      v60 = PommesCandidateId.description.getter();
      v62 = v61;
      (v56[1].isa)(v27, v53);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v204);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_2232BB000, v54, v55, "Not posting pommes timeout message, no Pommes state for %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x223DE0F80](v59, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);

      v64 = v57;
    }

    else
    {

      (v51[1].isa)(v27, v53);
      v64 = v42;
    }

    goto LABEL_26;
  }

  v81 = v195;
  outlined init with take of NLXResultCandidate(&v39[v49], v195, type metadata accessor for PommesBridgeResultCandidateState);
  outlined init with copy of MediaUserStateCenter?(v81 + v50[15], v12, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
  v82 = type metadata accessor for PommesSearchEagerInfo(0);
  v83 = (*(*(v82 - 8) + 48))(v12, 1, v82);
  v181 = v42;
  if (v83 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMd, &_s21SiriInformationSearch06PommesC9EagerInfoVSgMR);
    (*(v196 + 104))(v201, *MEMORY[0x277D56670], v200);
  }

  else
  {
    v90 = v196;
    v91 = v200;
    (*(v196 + 16))(v19, v12, v200);
    outlined destroy of NLXResultCandidate(v12, type metadata accessor for PommesSearchEagerInfo);
    (*(v90 + 32))(v201, v19, v91);
  }

  v92 = v187;
  v93 = *(v187 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  v94 = RequestProcessorBase.requestId.getter();
  v96 = v95;
  v97 = RequestProcessorBase.rootLevelRequestId.getter();
  v98 = v194;
  (*(*v93 + 144))(3, v194, v94, v96, v97, v99);

  v101 = v202;
  v100 = v203;
  v102 = v203[2].isa;
  v103 = v193;
  (v102)(v193, v98, v202);
  v104 = (v100[11].isa)(v103, v101);
  if (v104 == *MEMORY[0x277D56618])
  {
    v180 = v102;
    (v100[12].isa)(v103, v101);
    v105 = *v103;
    v106 = v103[1];
    v108 = v191;
    v107 = v192;
    v109 = v188;
    (*(v191 + 104))(v188, *MEMORY[0x277D5CEE8], v192);
    (*(v108 + 56))(v109, 0, 1, v107);
    v110 = (*(*v92 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v105, v106, 0, v109, v201);

    outlined destroy of MediaUserStateCenter?(v109, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (!v110)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      __swift_project_value_buffer(v111, static Logger.pommes);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      v114 = os_log_type_enabled(v112, v113);
      v115 = v196;
      v116 = v200;
      if (!v114)
      {
        goto LABEL_36;
      }

      v117 = swift_slowAlloc();
      *v117 = 0;
      v118 = "Could not construct PommesResultCandidate message, buildCandidateMessage returned nil";
LABEL_35:
      _os_log_impl(&dword_2232BB000, v112, v113, v118, v117, 2u);
      MEMORY[0x223DE0F80](v117, -1, -1);
LABEL_36:

      (*(v115 + 8))(v201, v116);
      v119 = v81;
LABEL_44:
      outlined destroy of NLXResultCandidate(v119, type metadata accessor for PommesBridgeResultCandidateState);
LABEL_25:
      v64 = v181;
LABEL_26:
      outlined destroy of MediaUserStateCenter?(v64, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
      return;
    }

    goto LABEL_47;
  }

  if (v104 == *MEMORY[0x277D56620])
  {
    v180 = v102;
    (v203[12].isa)(v103, v101);
    v120 = v103[1];
    v197 = *v103;
    v121 = v103[3];
    v188 = v103[2];
    v122 = v198[5];
    v123 = v81;
    v125 = v191;
    v124 = v192;
    v126 = v185;
    (*(v191 + 104))(v185, *MEMORY[0x277D5CEE8], v192);
    v110 = (*(*v187 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v197, v120, v188, v121, v126, v201, v123 + v122);

    (*(v125 + 8))(v126, v124);
    if (!v110)
    {
      v127 = v195;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, static Logger.pommes);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = v196;
      v133 = v200;
      if (v131)
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_2232BB000, v129, v130, "Could not construct PommesTRPCandidateMessage message, buildTRPCommonErrorMessage returned nil", v134, 2u);
        MEMORY[0x223DE0F80](v134, -1, -1);
      }

      (*(v132 + 8))(v201, v133);
      v119 = v127;
      goto LABEL_44;
    }

LABEL_47:
    v137 = one-time initialization token for insightRequestSummaryLogger;
    v198 = v110;
    if (v137 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for InsightRequestSummaryLogger();
    __swift_project_value_buffer(v138, static Logger.insightRequestSummaryLogger);
    v139 = v199;
    v140 = v194;
    v141 = v180;
    v180(v199, v194, v101);
    v142 = v203;
    v143 = (LOBYTE(v203[10].isa) + 24) & ~LOBYTE(v203[10].isa);
    v144 = swift_allocObject();
    *(v144 + 16) = v187;
    (v142[4].isa)(v144 + v143, v139, v101);

    InsightRequestSummaryLogger.emitDebug(_:)();

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    __swift_project_value_buffer(v145, static Logger.pommes);
    v146 = v189;
    v141(v189, v140, v101);
    v147 = v101;
    v148 = v196;
    v149 = *(v196 + 16);
    v150 = v190;
    v151 = v200;
    v149(v190, v201, v200);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = v146;
      v155 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v204[0] = v199;
      *v155 = 136315394;
      v156 = PommesCandidateId.description.getter();
      v158 = v157;
      (v203[1].isa)(v154, v147);
      v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v158, v204);

      *(v155 + 4) = v159;
      *(v155 + 12) = 2080;
      v160 = v190;
      v149(v186, v190, v200);
      v161 = String.init<A>(describing:)();
      v163 = v162;
      v164 = *(v148 + 8);
      v164(v160, v200);
      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v163, v204);
      v151 = v200;

      *(v155 + 14) = v165;
      _os_log_impl(&dword_2232BB000, v152, v153, "Posting pommes result candidate with timeout error for %s; search reason was %s", v155, 0x16u);
      v166 = v199;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v166, -1, -1);
      MEMORY[0x223DE0F80](v155, -1, -1);
    }

    else
    {

      v164 = *(v148 + 8);
      v164(v150, v151);
      (v203[1].isa)(v146, v147);
    }

    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(v204, v204[3]);
    v167 = v198;
    dispatch thunk of MessagePublishing.postMessage(_:)();

    v164(v201, v151);
    outlined destroy of NLXResultCandidate(v195, type metadata accessor for PommesBridgeResultCandidateState);
    outlined destroy of MediaUserStateCenter?(v181, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
    __swift_destroy_boxed_opaque_existential_1(v204);
    return;
  }

  if (v104 == *MEMORY[0x277D56610])
  {
    v180 = v102;
    (v203[1].isa)(v103, v101);
    v135 = v183;
    (*(v191 + 104))(v183, *MEMORY[0x277D5CEE8], v192);
    swift_storeEnumTagMultiPayload();
    v136 = v184;
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v81, v184, type metadata accessor for PommesBridgeResultCandidateState);
    (*(v197 + 56))(v136, 0, 1, v198);
    v110 = (*(*v187 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v135, v136, v201);
    outlined destroy of MediaUserStateCenter?(v136, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    outlined destroy of MediaUserStateCenter?(v135, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
    if (!v110)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v178 = type metadata accessor for Logger();
      __swift_project_value_buffer(v178, static Logger.pommes);
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      v179 = os_log_type_enabled(v112, v113);
      v115 = v196;
      v116 = v200;
      if (!v179)
      {
        goto LABEL_36;
      }

      v117 = swift_slowAlloc();
      *v117 = 0;
      v118 = "Could not construct RunPommesResponseMessage, buildRunPommesResponseMessage returned nil";
      goto LABEL_35;
    }

    goto LABEL_47;
  }

  v168 = v181;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v169 = type metadata accessor for Logger();
  __swift_project_value_buffer(v169, static Logger.pommes);
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.error.getter();
  v172 = os_log_type_enabled(v170, v171);
  v173 = v203;
  v174 = v200;
  if (v172)
  {
    v175 = v168;
    v176 = swift_slowAlloc();
    *v176 = 0;
    _os_log_impl(&dword_2232BB000, v170, v171, "Unexpected pommesCandidateId. Not posting timeoutMessage.", v176, 2u);
    v177 = v176;
    v168 = v175;
    MEMORY[0x223DE0F80](v177, -1, -1);
  }

  (*(v196 + 8))(v201, v174);
  outlined destroy of NLXResultCandidate(v81, type metadata accessor for PommesBridgeResultCandidateState);
  outlined destroy of MediaUserStateCenter?(v168, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMd, &_sSb14shouldContinue_21SiriInformationSearch32PommesBridgeResultCandidateStateVSg02prJ0tMR);
  (v173[1].isa)(v103, v101);
}

uint64_t implicit closure #2 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234D4CD0;
  v32 = v9;
  v10 = v9 + v8;
  v11 = v9 + v8 + *(v6 + 48);
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v11, "PommesBridge");
  *(v11 + 13) = 0;
  *(v11 + 14) = -5120;
  v12 = (v10 + v7 + *(v6 + 48));
  static InsightRequestSummaryKey.messageDescription.getter();
  *v12 = 0xD000000000000018;
  v12[1] = 0x80000002234D9540;
  v13 = (v10 + 2 * v7 + *(v6 + 48));
  static InsightRequestSummaryKey.assistantId.getter();
  *v13 = RequestProcessorBase.assistantId.getter();
  v13[1] = v14;
  v15 = (v10 + 3 * v7 + *(v6 + 48));
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  *v15 = v16;
  v15[1] = v18;
  v19 = (v10 + 4 * v7 + *(v6 + 48));
  static InsightRequestSummaryKey.requestId.getter();
  *v19 = RequestProcessorBase.requestId.getter();
  v19[1] = v20;
  v21 = (v10 + 5 * v7 + *(v6 + 48));
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v21 = PommesCandidateId.asResultCandidateId.getter();
  v21[1] = v22;
  v23 = (v10 + 6 * v7 + *(v6 + 48));
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for InsightRequestSummaryKey();
  v25 = __swift_project_value_buffer(v24, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  v26 = *(*(v24 - 8) + 16);
  v26(v10 + 6 * v7, v25, v24);
  *v23 = 1702195828;
  v23[1] = 0xE400000000000000;
  v27 = *(v6 + 48);
  if (one-time initialization token for isRcFinished != -1)
  {
    swift_once();
  }

  v28 = (v10 - v7 + 8 * v7 + v27);
  v29 = __swift_project_value_buffer(v24, static PommesInsightRequestSummaryKey.isRcFinished);
  v26(v10 - v7 + 8 * v7, v29, v24);
  *v28 = 1702195828;
  v28[1] = 0xE400000000000000;
  return v32;
}

uint64_t implicit closure #5 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMd, &_ss23_ContiguousArrayStorageCy21SiriRequestDispatcher07InsightE10SummaryKeyV_SStGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMd, &_s21SiriRequestDispatcher07InsightB10SummaryKeyV_SStMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234D4CC0;
  v28[0] = v9;
  v10 = v9 + v8;
  v11 = v10 + v6[14];
  static InsightRequestSummaryKey.bridgeName.getter();
  strcpy(v11, "PommesBridge");
  *(v11 + 13) = 0;
  *(v11 + 14) = -5120;
  v12 = (v10 + v7 + v6[14]);
  static InsightRequestSummaryKey.messageDescription.getter();
  *v12 = 0xD000000000000015;
  v12[1] = 0x80000002234D9560;
  v13 = (v10 + 2 * v7 + v6[14]);
  static InsightRequestSummaryKey.assistantId.getter();
  *v13 = RequestProcessorBase.assistantId.getter();
  v13[1] = v14;
  v15 = (v10 + 3 * v7 + v6[14]);
  static InsightRequestSummaryKey.sessionId.getter();
  RequestProcessorBase.sessionId.getter();
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  *v15 = v16;
  v15[1] = v18;
  v19 = (v10 + 4 * v7 + v6[14]);
  static InsightRequestSummaryKey.requestId.getter();
  *v19 = RequestProcessorBase.requestId.getter();
  v19[1] = v20;
  v21 = (v10 + 5 * v7 + v6[14]);
  static InsightRequestSummaryKey.resultCandidateId.getter();
  *v21 = PommesCandidateId.asResultCandidateId.getter();
  v21[1] = v22;
  v23 = v6[14];
  if (one-time initialization token for isFromTimeoutHandler != -1)
  {
    swift_once();
  }

  v24 = (v10 + 6 * v7 + v23);
  v25 = type metadata accessor for InsightRequestSummaryKey();
  v26 = __swift_project_value_buffer(v25, static PommesInsightRequestSummaryKey.isFromTimeoutHandler);
  (*(*(v25 - 8) + 16))(v10 + 6 * v7, v26, v25);
  *v24 = 1702195828;
  v24[1] = 0xE400000000000000;
  return v28[0];
}

void PommesBridgeRequestProcessor.update(prState:with:selectedUserAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for PommesCandidateId();
  MEMORY[0x28223BE20](v7 - 8);
  v45 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for SelectedUserAttributes();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = v6;
    outlined destroy of NLXResultCandidate(v17, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
    v27 = type metadata accessor for TCUMappedNLResponse();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    goto LABEL_5;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v25 = v24[20];
  v26 = v24[24];
  outlined init with take of PommesSearchReason?(&v17[v24[16]], v23, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(&v17[v26], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  outlined destroy of MediaUserStateCenter?(&v17[v25], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  v27 = type metadata accessor for TCUMappedNLResponse();
  if ((*(*(v27 - 8) + 48))(v23, 1, v27) == 1)
  {
    v41 = v6;
LABEL_5:
    outlined destroy of MediaUserStateCenter?(v23, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for TCUMappedNLResponse();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v21, v42, v27);
    (*(v28 + 56))(v21, 0, 1, v27);
    PommesBridgeResultCandidateState.setParseResponse(_:)(v21);
    outlined destroy of MediaUserStateCenter?(v21, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v29 = type metadata accessor for PommesBridgeResultCandidateState(0);
    *(a1 + v29[12]) = 1;
    v30 = v44;
    outlined init with copy of MediaUserStateCenter?(v44, v11, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v31 = v43;
    if ((*(v43 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v11, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    }

    else
    {
      (*(v31 + 32))(v14, v11, v12);
      v32 = SelectedUserAttributes.classification.getter();
      (*(v31 + 8))(v14, v12);
      *(a1 + v29[6]) = v32;
    }

    v33 = v41;
    v34 = outlined assign with copy of ConversationSessionState?(v30, a1 + v29[7], &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v35 = (*(*v46 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v34);
    v36 = v45;
    PommesBridgeResultCandidateState.pommesCandidateId.getter(v45);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v33, type metadata accessor for PommesBridgeResultCandidateState);
    (*(*(v29 - 1) + 56))(v33, 0, 1, v29);
    (*(*v35 + 152))(v33, v36);

    return;
  }

  outlined destroy of MediaUserStateCenter?(v23, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.pommes);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2232BB000, v38, v39, "Will not update prState with mappedNLResponse because it already has a value", v40, 2u);
    MEMORY[0x223DE0F80](v40, -1, -1);
  }
}

uint64_t PommesBridgeRequestProcessor.buildRewriteMessage(rewriteUtterance:rewriteReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewriteType();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RewrittenUtteranceCandidateMessage.RewriteReason();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  Apple_Parsec_Siri_V2alpha_RewrittenUtterance.init()();

  MEMORY[0x223DDB2E0](a1, a2);
  outlined init with copy of MediaUserStateCenter?(a3, v11, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return outlined destroy of MediaUserStateCenter?(v11, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  }

  (*(v13 + 32))(v18, v11, v12);
  (*(v13 + 16))(v16, v18, v12);
  v20 = (*(v13 + 88))(v16, v12);
  v21 = *(v24 + 104);
  v22 = (v13 + 8);
  if (v20 == *MEMORY[0x277D5CCC8])
  {
    v21(v8, *MEMORY[0x277D39368], v25);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    return (*v22)(v18, v12);
  }

  else
  {
    v21(v8, *MEMORY[0x277D39388], v25);
    Apple_Parsec_Siri_V2alpha_RewrittenUtterance.rewriteType.setter();
    v23 = *v22;
    (*v22)(v18, v12);
    return v23(v16, v12);
  }
}

void PommesBridgeRequestProcessor.publishNoQueryErrorMessage(pommesCandidateId:searchReason:failReason:userId:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v53 = a4;
  v56 = a3;
  v58 = a2;
  v55 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x28223BE20](v49);
  v51 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v48 - v8;
  v57 = type metadata accessor for PommesError();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PommesCandidateId();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + direct field offset for PommesBridgeRequestProcessor.instrumentationUtil);
  RequestProcessorBase.requestId.getter();
  RequestProcessorBase.rootLevelRequestId.getter();
  v18 = *(*v17 + 144);
  v19 = v55;
  v18(v56);

  (*(v14 + 16))(v16, v19, v13);
  v20 = (*(v14 + 88))(v16, v13);
  if (v20 == *MEMORY[0x277D56618])
  {
    (*(v14 + 96))(v16, v13);
    v21 = *v16;
    v22 = v16[1];
    v23 = v54;
    v24 = v57;
    (*(v54 + 104))(v12, *MEMORY[0x277D5CED8], v57);
    (*(v23 + 56))(v12, 0, 1, v24);
    v25 = (*(*v5 + class metadata base offset for PommesBridgeRequestProcessor + 544))(v21, v22, 0, v12, v58);

    outlined destroy of MediaUserStateCenter?(v12, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
    if (v25)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v26 = v4;
  v27 = v57;
  v28 = v58;
  if (v20 == *MEMORY[0x277D56620])
  {
    (*(v14 + 96))(v16, v13);
    v29 = *v16;
    v30 = v16[1];
    v31 = v16[2];
    v32 = v16[3];
    v33 = v54;
    v34 = v52;
    (*(v54 + 104))(v52, *MEMORY[0x277D5CED8], v27);
    v25 = (*(*v26 + class metadata base offset for PommesBridgeRequestProcessor + 576))(v29, v30, v31, v32, v34, v28, v53);

    (*(v33 + 8))(v34, v27);
    if (!v25)
    {
      goto LABEL_15;
    }

LABEL_9:
    v39 = v25;
    RequestProcessorBase.messagePublisher.getter();
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    dispatch thunk of MessagePublishing.postMessage(_:)();

    __swift_destroy_boxed_opaque_existential_1(v59);
    return;
  }

  if (v20 != *MEMORY[0x277D56610])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.pommes);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2232BB000, v41, v42, "Unexpected pommesCandidateId", v43, 2u);
      MEMORY[0x223DE0F80](v43, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    goto LABEL_15;
  }

  v35 = (*(v14 + 8))(v16, v13);
  v36 = (*(*v4 + class metadata base offset for PommesBridgeRequestProcessor + 120))(v35);
  v37 = v50;
  (*(*v36 + 144))(v19);

  v38 = v51;
  (*(v54 + 104))(v51, *MEMORY[0x277D5CED8], v27);
  swift_storeEnumTagMultiPayload();
  v25 = (*(*v4 + class metadata base offset for PommesBridgeRequestProcessor + 552))(v38, v37, v28);
  outlined destroy of MediaUserStateCenter?(v38, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  outlined destroy of MediaUserStateCenter?(v37, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.pommes);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2232BB000, v45, v46, "PommesBridgeRequestProcessor failed to build noQuery message", v47, 2u);
    MEMORY[0x223DE0F80](v47, -1, -1);
  }
}

uint64_t closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_Parser();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v12 + 8))(v14, v11);
  (*(v5 + 104))(v8, *MEMORY[0x277D5DA68], v4);
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DAA8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  v17 = v20[2];
  v16 = v20[3];
  v18 = type metadata accessor for Siri_Nlu_External_UserParse();
  if (v16 != v17)
  {
    return (*(*(v18 - 8) + 16))(a2, a1, v18);
  }

  MEMORY[0x28223BE20](v18);
  v20[-2] = a1;
  lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = Siri_Nlu_External_Span.matcherNames.getter();
  MEMORY[0x223DDBF50](v1);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

void *closure #2 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = TCUMappedNLResponse.nlResponse.getter();
  v16 = NLParseResponse.userParses.getter();

  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v14;
    v32 = a2;
    v33 = a1;
    v43 = MEMORY[0x277D84F90];
    v39 = v17;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = 0;
    v20 = v43;
    v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v37 = v16 + v38;
    v35 = v7 + 8;
    v36 = v7 + 16;
    v34 = (v7 + 32);
    while (v19 < *(v16 + 16))
    {
      v21 = v16;
      v22 = *(v7 + 72);
      v23 = v40;
      (*(v7 + 16))(v40, v37 + v22 * v19, v6);
      v41(v23);
      v24 = v7;
      (*(v7 + 8))(v23, v6);
      v43 = v20;
      v25 = v11;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v20 = v43;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      result = (*v34)(v20 + v38 + v27 * v22, v25, v6);
      v11 = v25;
      v7 = v24;
      v16 = v21;
      if (v39 == v19)
      {

        v14 = v31;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    NLParseResponse.Builder.userParses.setter();
    v28 = TCUMappedNLResponse.nlResponse.getter();
    NLParseResponse.responseStatusCode.getter();

    v29 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
    (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    return NLParseResponse.Builder.responseStatusCode.setter();
  }

  return result;
}

uint64_t PommesBridgeRequestProcessor.fetchAndUpdateState(_:)(char *a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for PommesCandidateId();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v2 + class metadata base offset for PommesBridgeRequestProcessor + 120);
  v18 = *(*v17(v14) + 144);
  v30 = a2;
  v18(a2);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v11, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
LABEL_5:
    (*(v13 + 56))(v31, 1, 1, v12);
    return 0;
  }

  v19 = outlined init with take of NLXResultCandidate(v11, v16, type metadata accessor for PommesBridgeResultCandidateState);
  v20 = *(v12 + 44);
  if (v16[v20] == 1)
  {
    outlined destroy of NLXResultCandidate(v16, type metadata accessor for PommesBridgeResultCandidateState);
    goto LABEL_5;
  }

  v16[v20] = 1;
  v22 = v17(v19);
  v23 = v29;
  (*(v27 + 16))(v29, v30, v28);
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(v16, v9, type metadata accessor for PommesBridgeResultCandidateState);
  v24 = *(v13 + 56);
  v24(v9, 0, 1, v12);
  (*(*v22 + 152))(v9, v23);

  v25 = v31;
  outlined init with take of NLXResultCandidate(v16, v31, type metadata accessor for PommesBridgeResultCandidateState);
  v24(v25, 0, 1, v12);
  return 1;
}

uint64_t PommesBridgeRequestProcessor.buildCandidateMessage(_:pommesRes:error:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_allocWithZone(type metadata accessor for PommesResultCandidateMessage());
  result = PommesResultCandidateMessage.init(build:)();
  if (!result)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2232BB000, v8, v9, "Could not construct PommesResultCandidate message, constructor failure", v10, 2u);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildCandidateMessage(_:pommesRes:error:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v27 = a3;
  v28 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277D5CDF0];
  v20 = type metadata accessor for MessageSource();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  PommesResultCandidateMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  PommesResultCandidateMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
  PommesResultCandidateMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  PommesResultCandidateMessage.Builder.requestId.setter();

  PommesResultCandidateMessage.Builder.resultCandidateId.setter();
  v23 = v28;
  PommesResultCandidateMessage.Builder.pommesResponse.setter();
  outlined init with copy of MediaUserStateCenter?(v29, v12, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  PommesResultCandidateMessage.Builder.error.setter();
  v24 = type metadata accessor for PommesSearchReason();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v30, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  return PommesResultCandidateMessage.Builder.searchReason.setter();
}

uint64_t PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MediaUserStateCenter?(a2, v10, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v10, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.pommes);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v16, v17, "Unable to construct RunPommesResponseMessage without PR state", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }
  }

  else
  {
    v19 = outlined init with take of NLXResultCandidate(v10, v14, type metadata accessor for PommesBridgeResultCandidateState);
    MEMORY[0x28223BE20](v19);
    *(&v36 - 2) = v14;
    v20 = objc_allocWithZone(type metadata accessor for NLParseResponse());
    v21 = NLParseResponse.init(build:)();
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x28223BE20](v21);
      *(&v36 - 6) = v4;
      *(&v36 - 5) = a1;
      *(&v36 - 4) = v23;
      *(&v36 - 3) = a3;
      *(&v36 - 2) = v14;
      v24 = objc_allocWithZone(type metadata accessor for RunPommesResponseMessage());
      v25 = RunPommesResponseMessage.init(build:)();
      if (v25)
      {
        v26 = v25;

        outlined destroy of NLXResultCandidate(v14, type metadata accessor for PommesBridgeResultCandidateState);
        return v26;
      }

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.pommes);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2232BB000, v33, v34, "Could not construct RunPommesResponseMessage message, constructor failure", v35, 2u);
        MEMORY[0x223DE0F80](v35, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.pommes);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2232BB000, v29, v30, "Could not construct NLParseResponse needed for RunPommesResponse message, constructor failure", v31, 2u);
        MEMORY[0x223DE0F80](v31, -1, -1);
      }
    }

    outlined destroy of NLXResultCandidate(v14, type metadata accessor for PommesBridgeResultCandidateState);
  }

  return 0;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  PommesBridgeResultCandidateState.userParses.getter();
  NLParseResponse.Builder.userParses.setter();
  PommesBridgeResultCandidateState.fallbackParse.getter(v5);
  NLParseResponse.Builder.fallbackParse.setter();
  v6 = *MEMORY[0x277D5DBB8];
  v7 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  return NLParseResponse.Builder.responseStatusCode.setter();
}

uint64_t closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017RunPommesResponseB0C9UserInputOSgMd, &_s16SiriMessageTypes017RunPommesResponseB0C9UserInputOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = (&v39 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v39 - v23;
  v25 = *MEMORY[0x277D5CDF0];
  v26 = type metadata accessor for MessageSource();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v24, v25, v26);
  (*(v27 + 56))(v24, 0, 1, v26);
  RunPommesResponseMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  RunPommesResponseMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
  RunPommesResponseMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  RunPommesResponseMessage.Builder.requestId.setter();
  outlined init with copy of MediaUserStateCenter?(v39, v18, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
  RunPommesResponseMessage.Builder.pommesResult.setter();
  v30 = v41;
  RunPommesResponseMessage.Builder.nlResponse.setter();
  v31 = type metadata accessor for PommesSearchReason();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v15, v42, v31);
  (*(v32 + 56))(v15, 0, 1, v31);
  RunPommesResponseMessage.Builder.pommesSearchReason.setter();
  v33 = v43;
  closure #1 in closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)(v43, v40);
  RunPommesResponseMessage.Builder.userInput.setter();
  v34 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v35 = *(v34 + 20);
  v36 = type metadata accessor for UserID();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v10, v33 + v35, v36);
  (*(v37 + 56))(v10, 0, 1, v36);
  RunPommesResponseMessage.Builder.userId.setter();
  outlined init with copy of MediaUserStateCenter?(v33 + *(v34 + 28), v44, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  return RunPommesResponseMessage.Builder.selectedUserAttributes.setter();
}

double closure #1 in closure #2 in PommesBridgeRequestProcessor.buildRunPommesResponseMessage(result:prState:searchReason:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of NLXResultCandidate(v6, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
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
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v22, v23, "Attempting to build RunPommesResponseMessage with incorrect PommesBridgeResultCandidateState", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    goto LABEL_28;
  }

  v7 = *v6;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR);
  outlined destroy of MediaUserStateCenter?(v6 + *(v8 + 64), &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v9 = [v7 requestType];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_21;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v13)
  {
LABEL_21:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_22:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Unexpected requestType for SARDRunPOMMESRequest";
LABEL_26:
    _os_log_impl(&dword_2232BB000, v26, v27, v29, v28, 2u);
    MEMORY[0x223DE0F80](v28, -1, -1);
LABEL_27:

LABEL_28:
    v30 = type metadata accessor for RunPommesResponseMessage.UserInput();
    (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
    return result;
  }

  if (v14 == v11 && v13 == v15)
  {

    goto LABEL_30;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_30:

    v32 = *(a1 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 32));
    if (v32)
    {
      v33 = v32;

      *a2 = v33;
      v34 = *MEMORY[0x277D5CBF0];
      v35 = type metadata accessor for RunPommesResponseMessage.UserInput();
      v36 = *(v35 - 8);
      (*(v36 + 104))(a2, v34, v35);
      (*(v36 + 56))(a2, 0, 1, v35);
      return result;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_27;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Unable to build RunPommesResponseMessage with type SARDRequestTypeSPEECHValue without AFSpeechPackage";
    goto LABEL_26;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v11 && v13 == v18)
  {

    goto LABEL_37;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_37:
  v38 = (a1 + *(type metadata accessor for PommesBridgeResultCandidateState(0) + 36));
  v39 = v38[1];
  *a2 = *v38;
  a2[1] = v39;
  v40 = *MEMORY[0x277D5CBE8];
  v41 = type metadata accessor for RunPommesResponseMessage.UserInput();
  v42 = *(v41 - 8);
  (*(v42 + 104))(a2, v40, v41);
  (*(v42 + 56))(a2, 0, 1, v41);

  return result;
}

uint64_t PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:pommesResult:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = objc_allocWithZone(type metadata accessor for PommesTRPCandidateMessage());
  result = PommesTRPCandidateMessage.init(build:)();
  if (!result)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2232BB000, v10, v11, "Could not construct PommesTRPCandidateMessage message, constructor failure", v12, 2u);
      MEMORY[0x223DE0F80](v12, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:pommesResult:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v34[3] = a6;
  v34[4] = a5;
  v34[1] = a4;
  v34[2] = a3;
  v37 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v34 - v22;
  v24 = *MEMORY[0x277D5CDF0];
  v25 = type metadata accessor for MessageSource();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v23, v24, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  PommesTRPCandidateMessage.Builder.source.setter();
  RequestProcessorBase.assistantId.getter();
  PommesTRPCandidateMessage.Builder.assistantId.setter();
  RequestProcessorBase.sessionId.getter();
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 56))(v20, 0, 1, v27);
  PommesTRPCandidateMessage.Builder.sessionId.setter();
  RequestProcessorBase.requestId.getter();
  PommesTRPCandidateMessage.Builder.requestId.setter();

  PommesTRPCandidateMessage.Builder.trpCandidateId.setter();

  PommesTRPCandidateMessage.Builder.tcuId.setter();
  outlined init with copy of MediaUserStateCenter?(v35, v17, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
  PommesTRPCandidateMessage.Builder.pommesResult.setter();
  v29 = type metadata accessor for PommesSearchReason();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v14, v36, v29);
  (*(v30 + 56))(v14, 0, 1, v29);
  PommesTRPCandidateMessage.Builder.searchReason.setter();
  v31 = type metadata accessor for UserID();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v11, v37, v31);
  (*(v32 + 56))(v11, 0, 1, v31);
  return PommesTRPCandidateMessage.Builder.userId.setter();
}

uint64_t PommesBridgeRequestProcessor.buildTRPMessage(trpId:tcuId:response:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  *(&v21 - v15) = a5;
  swift_storeEnumTagMultiPayload();
  v17 = *(*v7 + class metadata base offset for PommesBridgeRequestProcessor + 560);
  v18 = a5;
  v19 = v17(a1, a2, a3, a4, v16, a6, v22);
  outlined destroy of MediaUserStateCenter?(v16, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  return v19;
}

uint64_t PommesBridgeRequestProcessor.buildTRPErrorMessage(trpId:tcuId:error:searchReason:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  v18 = type metadata accessor for PommesError();
  (*(*(v18 - 8) + 16))(v17, a5, v18);
  swift_storeEnumTagMultiPayload();
  v19 = (*(*v7 + class metadata base offset for PommesBridgeRequestProcessor + 560))(a1, a2, a3, a4, v17, a6, a7);
  outlined destroy of MediaUserStateCenter?(v17, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  return v19;
}

uint64_t PommesBridgeRequestProcessor.__ivar_destroyer()
{

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);

  v1 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t PommesBridgeRequestProcessor.deinit()
{
  v0 = RequestProcessorBase.deinit();

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridgeRequestProcessor.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);

  v1 = direct field offset for PommesBridgeRequestProcessor.timeout;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}