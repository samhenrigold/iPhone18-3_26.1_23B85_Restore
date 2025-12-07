uint64_t SpeechContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TRPContext.selectedTCUId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t TRPContext.selectedTCUId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t TRPContext.pommesTCUId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TRPContext.pommesTCUId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

id TRPContext.speechPackage.getter()
{
  v1 = v0;
  v2 = (*(*v0 + 216))();
  if (!v3)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_26;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[7], v1[8], v39);
    _os_log_impl(&dword_1DC659000, v20, v21, "Warning: Selected TCU is not known for TRP Candidate %s, falling back on last TCU in the list for speechPackage.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    v24 = v22;
    goto LABEL_24;
  }

  v4 = v2;
  v5 = v3;
  v6 = v0[9];
  v34 = v0;
  v35 = *(v6 + 16);
  if (!v35)
  {
LABEL_21:
    if (one-time initialization token for conversationBridge != -1)
    {
LABEL_30:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.conversationBridge);
    v1 = v34;

    v20 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v29))
    {

      goto LABEL_26;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[7], v34[8], v39);
    *(v30 + 12) = 2080;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v39);

    *(v30 + 14) = v32;
    _os_log_impl(&dword_1DC659000, v20, v29, "Warning: TRP Candidate %s does not contain speech info for selected TCU ID %s, falling back on last TCU in the list for speechPackage.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v24 = v30;
LABEL_24:
    MEMORY[0x1E12A2F50](v24, -1, -1);
LABEL_26:

    v33 = v1[2];

    return v33;
  }

  v7 = 0;
  v8 = v6 + 32;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v8, v38, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v38, &v36, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v9 = v36;
    v10 = [v36 tcuId];

    if (!v10)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      goto LABEL_5;
    }

    v11 = v5;
    v12 = v4;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = v13;
    v4 = v12;
    v5 = v11;
    if (v16 == v4 && v11 == v15)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v7;
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v8 += 48;
    if (v35 == v7)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v37);
LABEL_19:
  *v39 = v38[0];
  v40 = v38[1];
  v41 = v38[2];
  v25 = *&v38[0];
  v26 = [*&v38[0] speechPackage];

  __swift_destroy_boxed_opaque_existential_1Tm(&v39[1]);
  if (!v26)
  {
    goto LABEL_21;
  }

  return v26;
}

uint64_t TRPContext.selectedTCUPackage.getter()
{
  result = (*(*v0 + 216))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v0[9];
  v16 = *(v4 + 16);
  if (!v16)
  {
LABEL_14:

    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = v4 + 32;
  while (v6 < *(v4 + 16))
  {
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v19, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v19, &v17, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v8 = v17;
    v9 = [v17 tcuId];

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      if (v10 == v5 && v3 == v12)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_17:

        v20[0] = v19[0];
        v20[1] = v19[1];
        v20[2] = v19[2];
        v15 = *&v19[0];
        __swift_destroy_boxed_opaque_existential_1Tm(v20 + 1);
        return v15;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    ++v6;
    result = outlined destroy of ReferenceResolutionClientProtocol?(v19, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);
    v7 += 48;
    if (v16 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id TRPContext.init(requestMessage:)(void *a1)
{
  v2 = v1;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v4 = TRPCandidateRequestMessage.tcuToContextList.getter();
  v5 = *(v4 + 16);
  if (!v5)
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Could not build TRPContext from TRPCandidateRequestMessage: No TCU's found", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    type metadata accessor for TRPContext();
    swift_deallocPartialClassInstance();
    return 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v4 + 48 * v5 - 16, &v19, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMd, &_sSo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptMR);

  v6 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v7 = a1;
  v8 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v10 = v9;

  *(v2 + 56) = v8;
  *(v2 + 64) = v10;
  *(v2 + 72) = TRPCandidateRequestMessage.tcuToContextList.getter();
  result = [v6 speechPackage];
  if (result)
  {
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
    *(v2 + 16) = result;
    v12 = result;
    v13 = [v12 recognition];
    v14 = [v13 aceRecognition];

    *(v2 + 24) = v14;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t TRPContext.__ivar_destroyer()
{
}

uint64_t TRPContext.deinit()
{

  return v0;
}

uint64_t TRPContext.__deallocating_deinit()
{
  TRPContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t TextContext.utterance.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TextContext.trpId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TextContext.tcuId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

Swift::String __swiftcall String.sanitize()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3;
  v17 = v2;
  v15[2] = 0x2B5D735C5BLL;
  v15[3] = 0xE500000000000000;
  v15[0] = 32;
  v15[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = v8;
  static CharacterSet.whitespacesAndNewlines.getter();
  v9 = StringProtocol.trimmingCharacters(in:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TTResponseMessage.MitigationDecision(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E69D0270])
  {
    return 0x64657463656C6573;
  }

  if (v6 == *MEMORY[0x1E69D0278])
  {
    return 0x657461676974696DLL;
  }

  if (v6 == *MEMORY[0x1E69D0268])
  {
    v8 = 1652121965;
    return v8 | 0x74694D6500000000;
  }

  if (v6 == *MEMORY[0x1E69D0260])
  {
    v8 = 1668444006;
    return v8 | 0x74694D6500000000;
  }

  (*(v2 + 8))(v5, a1);
  return 0;
}

double ResultCandidateState.pommesCandidateId.getter@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RoutingDecision(v1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v5, type metadata accessor for ResultCandidateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(v5, type metadata accessor for ResultCandidateType);
    }

    else
    {
      v26 = type metadata accessor for GestureInput();
      (*(*(v26 - 8) + 8))(v5, v26);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v21 = *(v5 + 5);
    if (v21)
    {
      v22 = *(v5 + 4);

      v23 = *(v1 + 16);
      v24 = *(v1 + 24);
      *a1 = v23;
      a1[1] = v24;
      a1[2] = v22;
      a1[3] = v21;
      v25 = MEMORY[0x1E69CE640];
LABEL_18:
      v29 = *v25;
      v30 = type metadata accessor for PommesCandidateId();
      v31 = *(v30 - 8);
      (*(v31 + 104))(a1, v29, v30);
      (*(v31 + 56))(a1, 0, 1, v30);

      return result;
    }

LABEL_17:
    v27 = *(v1 + 16);
    v28 = *(v1 + 24);
    *a1 = v27;
    a1[1] = v28;
    v25 = MEMORY[0x1E69CE638];
    goto LABEL_18;
  }

  type metadata accessor for TRPContext();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_17;
  }

  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(*v7 + 216);

  v12 = v10(v11);
  v14 = v13;

  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *a1 = v9;
  a1[1] = v8;
  a1[2] = v15;
  a1[3] = v16;
  v17 = *MEMORY[0x1E69CE640];
  v18 = type metadata accessor for PommesCandidateId();
  v19 = *(v18 - 8);
  (*(v19 + 104))(a1, v17, v18);
  (*(v19 + 56))(a1, 0, 1, v18);
  return result;
}

unint64_t specialized ResultCandidateProcessingStatus.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t outlined assign with take of RoutingDecision(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingDecision(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus()
{
  result = lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus;
  if (!lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResultCandidateProcessingStatus and conformance ResultCandidateProcessingStatus);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResultCandidateType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = a2[1];
        *a1 = *a2;
        a1[1] = v8;
        a1[2] = a2[2];
      }

      else
      {
        v13 = type metadata accessor for GestureInput();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[3];
      a1[2] = a2[2];
      a1[3] = v10;
      v11 = a2[4];
      v12 = a2[5];
      a1[4] = v11;
      a1[5] = v12;
    }

    else
    {
      *a1 = *a2;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for ResultCandidateType(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {

LABEL_15:
    }

    if (result == 3)
    {
      v4 = type metadata accessor for GestureInput();
      v5 = *(*(v4 - 8) + 8);

      return v5(a1, v4);
    }
  }

  else
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

void *initializeWithCopy for ResultCandidateType(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      a1[2] = a2[2];
    }

    else
    {
      v11 = type metadata accessor for GestureInput();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    v8 = a2[3];
    a1[2] = a2[2];
    a1[3] = v8;
    v9 = a2[4];
    v10 = a2[5];
    a1[4] = v9;
    a1[5] = v10;
  }

  else
  {
    *a1 = *a2;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for ResultCandidateType(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for ResultCandidateType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
      }

      else
      {
        v6 = type metadata accessor for GestureInput();
        (*(*(v6 - 8) + 16))(a1, a2, v6);
      }
    }

    else
    {
      *a1 = *a2;
      if (EnumCaseMultiPayload)
      {
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
      }

      else
      {
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for ResultCandidateType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = type metadata accessor for GestureInput();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for ResultCandidateType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for ResultCandidateType);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = type metadata accessor for GestureInput();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for ResultCandidateType(uint64_t a1)
{
  result = type metadata accessor for GestureInput();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RoutingDecision(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for RoutingDecision(uint64_t a1)
{
  v2 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RoutingDecision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for RoutingDecision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for RoutingDecision);
    swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for RoutingDecision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for RoutingDecision(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s14SiriKitRuntime15RoutingDecisionOWOhTm_0(a1, type metadata accessor for RoutingDecision);
    swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata completion function for RoutingDecision(uint64_t a1)
{
  result = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata completion function for ResultCandidateState(uint64_t a1)
{
  type metadata accessor for ResultCandidateType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UserID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for ExecutionLocation?, MEMORY[0x1E69D35D8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for Siri_Nlu_External_LanguageVariantResult?, MEMORY[0x1E69D0BD8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for TTResponseMessage.MitigationDecision?, MEMORY[0x1E69D0280]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for RoutingDecision(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
              if (v7 <= 0x3F)
              {
                type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x1E69D0BE8]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for ServerFallbackReason?, MEMORY[0x1E69D0790]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for SiriXRedirectContext?, MEMORY[0x1E69CFA50]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for ResultCandidateState.LoggingMetadata(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for SelectedUserAttributes?, MEMORY[0x1E69D0860]);
                        if (v12 <= 0x3F)
                        {
                          swift_updateClassMetadata2();
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

uint64_t destroy for DirectActionContext(uint64_t a1)
{
}

void *initializeBufferWithCopyOfBuffer for DirectActionContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for DirectActionContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for DirectActionContext(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for DirectActionContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DirectActionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destroy for TextContext(void *a1)
{
}

void *initializeWithCopy for TextContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for TextContext(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for TextContext(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TextContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TextContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResultCandidateState.LoggingMetadata(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for OSSignpostID();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }
  }

  return a1;
}

uint64_t destroy for ResultCandidateState.LoggingMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for OSSignpostID();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *initializeWithCopy for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *assignWithCopy for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(&a1[v12], &a2[v12], v13);
      return a1;
    }

    (*(v14 + 8))(&a1[v12], v13);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 16))(&a1[v12], &a2[v12], v13);
  (*(v14 + 56))(&a1[v12], 0, 1, v13);
  return a1;
}

char *initializeWithTake for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *assignWithTake for ResultCandidateState.LoggingMetadata(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 40))(&a1[v12], &a2[v12], v13);
      return a1;
    }

    (*(v14 + 8))(&a1[v12], v13);
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_12:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    return a1;
  }

  (*(v14 + 32))(&a1[v12], &a2[v12], v13);
  (*(v14 + 56))(&a1[v12], 0, 1, v13);
  return a1;
}

void type metadata completion function for ResultCandidateState.LoggingMetadata(uint64_t a1)
{
  type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExecutionLocation?(319, &lazy cache variable for type metadata for OSSignpostID?, MEMORY[0x1E69E93B8]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata accessor for ExecutionLocation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t static ReuseEagerChildRequestForIFFeatureFlag.isEnabled.getter()
{
  v2[3] = &type metadata for ReuseEagerChildRequestForIFFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag();
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag()
{
  result = lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag;
  if (!lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag;
  if (!lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReuseEagerChildRequestForIFFeatureFlag and conformance ReuseEagerChildRequestForIFFeatureFlag);
  }

  return result;
}

Swift::Int ReuseEagerChildRequestForIFFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.genAIFallbackSuppressReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision.SiriXRoute();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4, v10);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69D02E8])
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v12, v7, v8);
    NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.genAIFallbackSuppressReason.getter();
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v14 = type metadata accessor for NLRoutingDecisionMessage.GenAIFallbackSuppressReason();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t RunLocation.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F69747563657845;
  }

  else
  {
    return 0xD000000000000010;
  }
}

SiriKitRuntime::RunLocation_optional __swiftcall RunLocation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_RunLocation_executionDevice;
  }

  else
  {
    v4.value = SiriKitRuntime_RunLocation_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RunLocation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69747563657845;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001DCA7AA10;
  }

  else
  {
    v4 = 0xEF6563697665446ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69747563657845;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEF6563697665446ELL;
  }

  else
  {
    v6 = 0x80000001DCA7AA10;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RunLocation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RunLocation(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RunLocation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RunLocation@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RunLocation.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RunLocation(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7AA10;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x6F69747563657845;
    v2 = 0xEF6563697665446ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type RunLocation and conformance RunLocation()
{
  result = lazy protocol witness table cache variable for type RunLocation and conformance RunLocation;
  if (!lazy protocol witness table cache variable for type RunLocation and conformance RunLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunLocation and conformance RunLocation);
  }

  return result;
}

char *RunSiriKitExecutorProcessor.__allocating_init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, char a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v55 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v38 = type metadata accessor for UserID();
  (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall] = 0;
  v39 = &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId];
  *v39 = 0;
  *(v39 + 1) = 0;
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished] = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo] = 0;
  v41 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v42 = swift_allocObject();
  *(v42 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *&v36[v41] = v42;
  *(v42 + 24) = v43;
  *(v36 + 2) = a1;
  *(v36 + 3) = a2;
  *(v36 + 4) = a3;
  *(v36 + 5) = a4;
  *(v36 + 6) = a5;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, (v36 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, (v36 + 96), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source] = a10;
  *(v36 + 19) = a8;
  *(v36 + 20) = a9;
  *(v36 + 17) = a11;
  *(v36 + 18) = a12;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter] = 0;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil] = a13;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper] = a14;
  swift_beginAccess();
  *v39 = a15;
  *(v39 + 1) = a16;
  swift_beginAccess();
  *&v36[v40] = a17;
  v44 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v60 = type metadata accessor for RequestType();
  v45 = *(v60 - 8);
  (*(v45 + 16))(&v36[v44], a18, v60);
  swift_beginAccess();
  v58 = a1;
  v57 = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(a3, a4);
  v56 = a17;

  swift_unknownObjectRetain();
  outlined assign with copy of UserID?(a19, &v36[v55]);
  swift_endAccess();
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold] = a20;
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold] = a21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a22, &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a23, &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v46 = &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId];
  *v46 = a24;
  *(v46 + 1) = a25;
  outlined init with copy of ReferenceResolutionClientProtocol(a26, &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher]);
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled] = a27;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage] = a29;
  outlined init with copy of ReferenceResolutionClientProtocol?(a30, &v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v47 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v48 = type metadata accessor for UserSessionState();
  v49 = *(v48 - 8);
  (*(v49 + 16))(&v36[v47], a28, v48);
  v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession] = a31;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v50 = swift_allocObject();
  swift_weakInit();
  *(v50 + 24) = a14;
  *&v36[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate] = v50;
  v51 = a29;
  swift_unknownObjectRetain();
  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)(v36);

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(a3, a4);
  outlined destroy of ReferenceResolutionClientProtocol?(a30, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v49 + 8))(a28, v48);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  outlined destroy of ReferenceResolutionClientProtocol?(a23, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v45 + 8))(a18, v60);
  outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v36;
}

uint64_t RSKESource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x65746F6D6572;
  }

  return 0x726576726573;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RSKESource(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746F6D6572;
  if (v2 != 1)
  {
    v3 = 0x726576726573;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x65746F6D6572;
  if (*a2 != 1)
  {
    v6 = 0x726576726573;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RSKESource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RSKESource(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RSKESource(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RSKESource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RSKESource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RSKESource(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x65746F6D6572;
  if (v2 != 1)
  {
    v4 = 0x726576726573;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C61636F6CLL;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t RunSiriKitExecutorProcessor.reply.getter()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(v1, *(v0 + 40));
  return v1;
}

uint64_t RunSiriKitExecutorProcessor.requestId.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.assistantId.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.plannerInvocationId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);

  return v1;
}

uint64_t RunSiriKitExecutorProcessor.requestType.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *RunSiriKitExecutorProcessor.muxContextMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage);
  v2 = v1;
  return v1;
}

uint64_t key path setter for RunSiriKitExecutorProcessor.userId : RunSiriKitExecutorProcessor(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v8 - v5, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return (*(**a2 + 336))(v6);
}

uint64_t RunSiriKitExecutorProcessor.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  swift_beginAccess();
  outlined assign with take of UserID?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t RunSiriKitExecutorProcessor.meetsUserSessionThreshold.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RunSiriKitExecutorProcessor.outputCounter.setter(int a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RunSiriKitExecutorProcessor.resultCandidateId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void key path setter for RunSiriKitExecutorProcessor.flowPluginInfo : RunSiriKitExecutorProcessor(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *RunSiriKitExecutorProcessor.init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, char a27, uint64_t a28, void *a29, uint64_t a30, char a31)
{
  v32 = v31;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v56 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  v39 = type metadata accessor for UserID();
  (*(*(v39 - 8) + 56))(&v32[v38], 1, 1, v39);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_loggedStartOfCall] = 0;
  v40 = &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_resultCandidateId];
  *v40 = 0;
  *(v40 + 1) = 0;
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished] = 0;
  v41 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo] = 0;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v43 = swift_allocObject();
  *(v43 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *&v32[v42] = v43;
  *(v43 + 24) = v44;
  *(v32 + 2) = a1;
  *(v32 + 3) = a2;
  v58 = a3;
  *(v32 + 4) = a3;
  *(v32 + 5) = a4;
  *(v32 + 6) = a5;
  outlined init with copy of ReferenceResolutionClientProtocol(a6, (v32 + 56));
  outlined init with copy of ReferenceResolutionClientProtocol?(a7, (v32 + 96), &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source] = a10;
  *(v32 + 19) = a8;
  *(v32 + 20) = a9;
  *(v32 + 17) = a11;
  *(v32 + 18) = a12;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter] = 0;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil] = a13;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestDispatcherServiceHelper] = a14;
  swift_beginAccess();
  *v40 = a15;
  *(v40 + 1) = a16;
  swift_beginAccess();
  *&v32[v41] = a17;
  v45 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v62 = type metadata accessor for RequestType();
  v46 = *(v62 - 8);
  (*(v46 + 16))(&v32[v45], a18, v62);
  swift_beginAccess();
  v60 = a1;
  v59 = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ())?(a3, a4);
  v57 = a17;

  swift_unknownObjectRetain();
  outlined assign with copy of UserID?(a19, &v32[v56]);
  swift_endAccess();
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold] = a20;
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold] = a21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a22, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a23, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v47 = &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId];
  *v47 = a24;
  *(v47 + 1) = a25;
  outlined init with copy of ReferenceResolutionClientProtocol(a26, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher]);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_isMuxEnabled] = a27;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_muxContextMessage] = a29;
  outlined init with copy of ReferenceResolutionClientProtocol?(a30, &v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v49 = type metadata accessor for UserSessionState();
  v50 = *(v49 - 8);
  (*(v50 + 16))(&v32[v48], a28, v49);
  v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_remoteRequestWasMadeInSession] = a31;
  type metadata accessor for RunSiriKitExecutorProcessorExecutionDelegate();
  v51 = swift_allocObject();
  swift_weakInit();
  *(v51 + 24) = a14;
  *&v32[OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate] = v51;
  v52 = a29;
  swift_unknownObjectRetain();
  RunSiriKitExecutorProcessorExecutionDelegate.setRSKEProcessor(rskeProcessor:)(v32);

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v58, a4);
  outlined destroy of ReferenceResolutionClientProtocol?(a30, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v50 + 8))(a28, v49);
  __swift_destroy_boxed_opaque_existential_1Tm(a26);
  outlined destroy of ReferenceResolutionClientProtocol?(a23, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(v46 + 8))(a18, v62);
  outlined destroy of ReferenceResolutionClientProtocol?(a7, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v32;
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.handleCancel()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Cancelling RSKE..", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if ((*(*v1 + 448))())
  {
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v6, "RSKE request already finished. Ignoring cancellation..", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  else
  {
    if (v1[18])
    {
      v8 = v1[17];
      v9 = v1[18];
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    type metadata accessor for CancelExecutionTurn();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = 0;
    v11 = v1[10];
    v12 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v11);
    v13 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_rskeProcessorExecutionDelegate);
    v14 = *(v12 + 40);

    v14(v10, v13, &protocol witness table for RunSiriKitExecutorProcessorExecutionDelegate, v11, v12);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = CancelExecutionTurn.debugDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v15, v16, "Successfully sent: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    else
    {
    }

    v22 = *(*v1 + 456);

    v22(1);
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.handleRuntimeError(error:)(NSError *error)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Handling Runtime error for RSKE", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  if ((*(*v2 + 448))())
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v8, "RSKE request already finished. Ignoring runtime error..", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }

  else
  {
    v10 = v2[4];
    if (v10)
    {
      v10(0, error);
    }

    v11 = *(*v2 + 456);

    v11(1);
  }
}

uint64_t RunSiriKitExecutorProcessor.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x80000001DCA7ECA0, &v12);
    _os_log_impl(&dword_1DC659000, v7, v8, "Cannot do %s for RSKE initiated execution", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

void RunSiriKitExecutorProcessor.postToMessageBus(message:completion:)(void *a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  type metadata accessor for RequestMessageBase();
  if (swift_dynamicCastClass())
  {
    v25 = a1;
    v6 = RequestMessageBase.requestId.getter();
    v8 = *(v3 + 144);
    if (v8)
    {
      if (v6 == *(v3 + 136) && v8 == v7)
      {

LABEL_13:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.conversationBridge);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1DC659000, v16, v17, "Posting message received from Flow", v18, 2u);
          MEMORY[0x1E12A2F50](v18, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher), *(v3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher + 24));
        dispatch thunk of MessagePublishing.postMessage(_:)();
        v19 = 1;
LABEL_23:
        a2(v19, 0);

        return;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v26);
      _os_log_impl(&dword_1DC659000, v21, v22, "Skipping: %s,  Message requestId doesn't match current requestId", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v19 = 0;
    goto LABEL_23;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v26);
    _os_log_impl(&dword_1DC659000, v10, v11, "Skipping: %s,  Message from flow is not of type RequestMessageBase", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  a2(0, 0);
}

void RunSiriKitExecutorProcessor.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  oslog = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = [v9 debugDescription];
    v15 = a3;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = a2;
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v19, &v25);
    a2 = v17;

    *(v12 + 4) = v20;
    a3 = v15;
    _os_log_impl(&dword_1DC659000, v10, v11, "<<<--- %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  if ((*(*v4 + 448))())
  {
    osloga = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, osloga, v21, "Ignoring close() because request already finished", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }

  else
  {

    RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(oslog, a2, a3, 0);
  }
}

uint64_t RunSiriKitExecutorProcessor.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Execution requested server fallback from an RSKE. Returning a RunSiriKitExecutorCompleted with needsServerExecution=true", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v1 + 16), 0, 1, *(v1 + 32), *(v1 + 40), 0);
  (*(*v1 + 456))(1);
  v6 = *(*v1 + 648);

  return v6();
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Execution requested fallback to info domain from an RSKE. Returning a RunSiriKitExecutorCompleted with needsServerExecution=true", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v2 + 16), 0, 1, *(v2 + 32), *(v2 + 40), 0);
  (*(*v2 + 456))(1);
  v7 = *(*v2 + 648);

  v7();
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.fallbackToPeer()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Execution requested fallback to Peer from an RSKE. Returning a RunSiriKitExecutorCompleted", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v1 + 16), 0, 0, *(v1 + 32), *(v1 + 40), 1);
  (*(*v1 + 456))(1);
  v6 = *(*v1 + 648);

  v6();
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = *MEMORY[0x1E69D0460];
  v11 = type metadata accessor for MessageSource();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  FlowPluginInfoMessage.Builder.source.setter();

  FlowPluginInfoMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a2 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  FlowPluginInfoMessage.Builder.sessionId.setter();

  FlowPluginInfoMessage.Builder.requestId.setter();
  FlowPluginInfoMessage.Builder.resultCandidateId.setter();
  FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter();
  return FlowPluginInfoMessage.Builder.isPersonalRequest.setter();
}

uint64_t RunSiriKitExecutorProcessor.deinit()
{
  _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(*(v0 + 32), *(v0 + 40));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionConfiguration, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_messagePublisher));

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_previousUserId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userSessionState;
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  return v0;
}

uint64_t RunSiriKitExecutorProcessor.__deallocating_deinit()
{
  RunSiriKitExecutorProcessor.deinit();

  return swift_deallocClassInstance();
}

void specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(void *a1, char a2, char a3, void (*a4)(void, void), uint64_t a5, char a6)
{
  v52 = a5;
  v11 = type metadata accessor for UUID();
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v50 = v11;
    v18 = a2;
    v19 = a3;
    v20 = a6;
    v21 = a4;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "Sending RSKECompleted as response to RSKE", v17, 2u);
    v23 = v22;
    a4 = v21;
    a6 = v20;
    a3 = v19;
    a2 = v18;
    v11 = v50;
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  if (a4)
  {
    v50 = a4;
    v24 = objc_allocWithZone(MEMORY[0x1E69C7888]);

    v25 = [v24 init];
    UUID.init()();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    (*(v51 + 8))(v13, v11);
    v29 = MEMORY[0x1E12A1410](v26, v28);

    [v25 setAceId_];

    v30 = [a1 aceId];
    [v25 setRefId_];

    [v25 setNeedsUserInput_];
    [v25 setNeedsServerExecution_];
    [v25 setTopicSwitchDetected_];
    v31 = [v25 dictionary];
    if (v31)
    {
      v54 = 0;
      v32 = v31;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v54 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v54;
      }
    }

    else
    {
      v33 = 0;
    }

    outlined copy of [AnyHashable : Any]??(v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    outlined consume of [AnyHashable : Any]??(v33);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 136315138;
      if (v33 == 1)
      {
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        v53 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
        v39 = Optional.debugDescription.getter();
        v38 = v40;
      }

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v54);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DC659000, v34, v35, "Sending RSKECompleted: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    if (v33 == 1)
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v42 = objc_allocWithZone(MEMORY[0x1E69C77F0]);
    }

    else
    {
      v42 = objc_allocWithZone(MEMORY[0x1E69C77F0]);
      if (!v33)
      {
        v43.super.isa = 0;
        goto LABEL_20;
      }
    }

    v43.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_20:
    v44 = [v42 initWithDictionary_];

    v45 = v44;
    v46 = v44;
    v47 = v52;
    v48 = v50;
    v50(v46, 0);

    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v48, v47);
  }
}

unint64_t specialized RSKESource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RSKESource.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type RSKESource and conformance RSKESource()
{
  result = lazy protocol witness table cache variable for type RSKESource and conformance RSKESource;
  if (!lazy protocol witness table cache variable for type RSKESource and conformance RSKESource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RSKESource and conformance RSKESource);
  }

  return result;
}

void type metadata completion function for RunSiriKitExecutorProcessor(uint64_t a1)
{
  type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for SessionConfiguration?, MEMORY[0x1E69D07A0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SessionConfiguration?(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x1E69D08C8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UserSessionState();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of RunSiriKitExecutorProcessor.__allocating_init(command:executionContextInfo:reply:executionOutputSubmitter:executionClient:contextUpdater:assistantId:source:requestId:instrumentationUtil:requestDispatcherServiceHelper:resultCandidateId:flowPluginInfo:requestType:userId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:sessionId:sessionConfiguration:plannerInvocationId:messagePublisher:isMuxEnabled:userSessionState:muxContextMessage:previousUserId:remoteRequestWasMadeInSession:)()
{
  v2 = *(v0 + 496);

  return v2();
}

void type metadata accessor for SessionConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.__allocating_init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.init(requestDispatcherServiceHelper:)(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = a1;
  return v1;
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 560))(a1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v4[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v9);
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 584))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v13);
      _os_log_impl(&dword_1DC659000, v9, v10, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessorExecutionDelegate.fallbackToServer(forResultCandidateId:serverFallbackReason:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 592))(a1, a2, a3);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      if (a2)
      {
        v12 = a2;
      }

      else
      {
        a1 = 7104878;
        v12 = 0xE300000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v12, &v14);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v8, v9, "RunSiriKitExecutorProcessor already released, ignoring fallbackToServer of %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessorExecutionDelegate.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  object = forResultCandidateId.value._object;
  countAndFlagsBits = forResultCandidateId.value._countAndFlagsBits;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 600))(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      if (object)
      {
        v9 = object;
      }

      else
      {
        countAndFlagsBits = 7104878;
        v9 = 0xE300000000000000;
      }

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v9, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v5, v6, "RunSiriKitExecutorProcessor already released, ignoring fallbackToInfoDomainResults of %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }
}

Swift::Void __swiftcall RunSiriKitExecutorProcessorExecutionDelegate.fallbackToPeer()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 608))(Strong);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationBridge);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "RunSiriKitExecutorProcessor already released, ignoring fallbackToPeer", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B14XPCTransporterOSgMd, &_s16SiriMessageTypes0B14XPCTransporterOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for MessageXPCTransporter();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v22 = a4;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type MessageXPCTransporter and conformance MessageXPCTransporter();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    v19 = MessageXPCTransporter.toMessageBase()();
    (*(*v14 + 576))(v19, a3, v22);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "Not publising flow message because RSKEProcessor is not in scope", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    return a3(0, 0);
  }
}

uint64_t RunSiriKitExecutorProcessorExecutionDelegate.deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();
  return v0;
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:errorString:shouldFailRequest:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA7EC40, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "%s for RSKE initiated execution not supported", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1, const char *a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.actionCandidatesGenerated(_:rcId:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA7EDA0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000060, 0x80000001DCA7ECE0, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Cannot do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(0);
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.willExecute(executionInputInfo:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x80000001DCA7EDD0, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.fetchRecentDialogs(reply:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA7ED80, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Need not do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  return a1(MEMORY[0x1E69E7CC0]);
}

uint64_t NonUnderstandingError.localizedDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NonUnderstandingError.init(message:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NonUnderstandingError(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

unint64_t lazy protocol witness table accessor for type RequestPaused and conformance RequestPaused()
{
  result = lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused;
  if (!lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPaused and conformance RequestPaused);
  }

  return result;
}

uint64_t type metadata completion function for NonUnderstandingError(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for NonUnderstandingError(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *assignWithCopy for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

_OWORD *initializeWithTake for NonUnderstandingError(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for NonUnderstandingError(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for NonUnderstandingError(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for NonUnderstandingError(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

BOOL SABaseCommand.isSuccessfulOnBargeIn.getter()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

unint64_t type metadata accessor for SABaseCommand()
{
  result = lazy cache variable for type metadata for SABaseCommand;
  if (!lazy cache variable for type metadata for SABaseCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseCommand);
  }

  return result;
}

Swift::Bool __swiftcall PersonaUniqueIdentifierAccepting.isAppleTV()()
{
  type metadata accessor for SiriEnvironment();
  if (!static SiriEnvironment.forCurrentTask.getter())
  {
    static SiriEnvironment.default.getter();
  }

  SiriEnvironment.currentDevice.getter();
  v0 = dispatch thunk of CurrentDevice.isAppleTV.getter();

  return v0 & 1;
}

void SAUIAddViews.accept(personaUniqueIdentifier:accessLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E12A1410](a1, a2);
  [v4 setPersonaId_];

  v8 = MEMORY[0x1E12A1410](a3, a4);
  [v4 setPersonaAccessLevel_];
}

id SAIntentGroupRunSiriKitExecutor.confirmationStateAsEnum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 confirmationState];
  if (v3)
  {

    result = [v1 confirmationState];
    if (result)
    {
      v5 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return SiriKitConfirmationState.init(rawValue:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = type metadata accessor for SiriKitConfirmationState();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }

  return result;
}

uint64_t SAIntentGroupSiriKitParameterMetadata.confirmationStatesAsEnum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for SiriKitConfirmationState();
  v29 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 confirmationStates];
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v28 = v3;
  v10 = v8;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_10:

    return v9;
  }

  v27 = v4;
  v33 = v9;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
  v13 = 0;
  v9 = v33;
  v14 = v11 + 32;
  v25 = v11;
  v26 = (v29 + 48);
  v15 = (v29 + 32);
  while (v13 < *(v11 + 16))
  {
    outlined init with copy of Any(v14, v32);
    outlined init with copy of Any(v32, &v30);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    v10 = v28;
    SiriKitConfirmationState.init(rawValue:)();
    v16 = v27;
    if ((*v26)(v10, 1, v27) == 1)
    {
      goto LABEL_14;
    }

    v17 = *v15;
    (*v15)(v7, v10, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v33 = v9;
    v10 = v7;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v9 = v33;
    }

    ++v13;
    *(v9 + 16) = v19 + 1;
    v17((v9 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19), v10, v16);
    v14 += 32;
    v7 = v10;
    v11 = v25;
    if (v12 == v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA87420);
  _print_unlocked<A, B>(_:_:)();
  v21 = v30;
  v22 = v31;

  specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v21, v22, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 38);
  __break(1u);
LABEL_14:
  outlined destroy of SiriKitConfirmationState?(v10);
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  MEMORY[0x1E12A1580](0xD00000000000002CLL, 0x80000001DCA874E0);
  _print_unlocked<A, B>(_:_:)();
  v23 = v30;
  v24 = v31;

  result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v23, v24, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Extensions/SAIntentGroupSiriKitConfirmationState+Enum.swift", 128, 2, 42);
  __break(1u);
  return result;
}

uint64_t outlined destroy of SiriKitConfirmationState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateOSgMd, &_s11SiriKitFlow0aB17ConfirmationStateOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SAPerson.contact.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v2 = [v0 firstName];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = MEMORY[0x1E12A1410](v4, v6);

  [v1 setGivenName_];

  v8 = [v0 firstNamePhonetic];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = MEMORY[0x1E12A1410](v10, v12);

  [v1 setPhoneticGivenName_];

  v14 = [v0 middleName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = MEMORY[0x1E12A1410](v16, v18);

  [v1 setMiddleName_];

  v20 = [v0 lastName];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = MEMORY[0x1E12A1410](v22, v24);

  [v1 setFamilyName_];

  v26 = [v0 lastNamePhonetic];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v31 = MEMORY[0x1E12A1410](v28, v30);

  [v1 setPhoneticFamilyName_];

  v32 = [v0 nickName];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = MEMORY[0x1E12A1410](v34, v36);

  [v1 setNickname_];

  return v1;
}

uint64_t specialized static SayMetricsLogger.isBlockedDialogID(dialogIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)() & 1) != 0 || (StringProtocol.contains<A>(_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = StringProtocol.contains<A>(_:)();
  }

  return v2 & 1;
}

id specialized static SayMetricsLogger.getSparseCommand(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7BB0]) init];
  v8 = [a1 listenAfterSpeaking];
  [v7 setListenAfterSpeaking_];

  v9 = [a1 dialogIdentifier];
  [v7 setDialogIdentifier_];

  v10 = [a1 languageCode];
  [v7 setLanguageCode_];

  [v7 setCanUseServerTTS_];
  [v7 setRepeatable_];
  v11 = [a1 dialogIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = specialized static SayMetricsLogger.isBlockedDialogID(dialogIdentifier:)(v13, v15);

  if ((v16 & 1) == 0)
  {
    v17 = [a1 message];
    [v7 setMessage_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t specialized static SayMetricsLogger.logAnalytics(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.instrumentation);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1DC659000, v9, v10, "Logging SayIt to AFAnalytics : %@", v11, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v28 = v14;
  v15 = specialized static SayMetricsLogger.getSparseCommand(command:)(v8);
  v16 = [v15 dictionary];
  if (v16)
  {
    v17 = v16;
    v27 = type metadata accessor for NSMutableDictionary();
    *&v26 = v17;
    outlined init with take of Any(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v19 = v24;
    v28 = v24;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v26);
    outlined destroy of ReferenceResolutionClientProtocol?(&v26, &_sypSgMd, &_sypSgMR);
    v19 = v28;
  }

  v20 = [objc_opt_self() sharedAnalytics];
  if (v20)
  {
    v21 = v20;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v21 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v5, v2);
}

void SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(char a1, void (*a2)(void, void, void, void *), uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &aBlock);
    _os_log_impl(&dword_1DC659000, v8, v9, "SelfReflectionAgent.%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v12 = (*(*v4 + 224))();
  if (v12)
  {
    v13 = (*(*v12 + 896))();
    if (v13)
    {
      v14 = (*(*v13 + 112))();

      v15 = [v14 audioAnalytics];
      if (v15)
      {
        v16 = v15;
        [v15 snr];
        v18 = v17;

        if (v18 <= 0.0)
        {
          v19 = "tAction(revealSpeech:_:)";
          v20 = 0xD000000000000029;
          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v19 = "logSayItAnalytics";
  v20 = 0xD00000000000001ALL;
LABEL_13:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = SelfReflectionAgent.createCATContext()();
  if (v23)
  {
    v24 = v23;
    v44 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &aBlock);
      _os_log_impl(&dword_1DC659000, v25, v26, "SelfReflectionAgent.%s CAT executing", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    v29 = objc_opt_self();
    v30 = MEMORY[0x1E12A1410](v20, v19 | 0x8000000000000000);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a3;
    *(v32 + 32) = v4;
    *(v32 + 40) = v44 & 1;
    v50 = partial apply for closure #1 in SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:);
    v51 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    v49 = &block_descriptor_21;
    v33 = _Block_copy(&aBlock);
    v34 = v24;

    [v29 execute:v22 catId:v30 parameters:isa globals:v34 completion:v33];
    _Block_release(v33);

    v22 = v34;
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136315394;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &v52);
      *(v37 + 12) = 2080;
      aBlock = 0xD000000000000028;
      v47 = 0x80000001DCA87570;
      lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v52);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_1DC659000, v35, v36, "SelfReflectionAgent.%s error: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
    v42 = swift_allocError();
    *v43 = 0xD000000000000028;
    v43[1] = 0x80000001DCA87570;
    a2(0, 0, 0, v42);
  }
}

double SelfReflectionAgent.createSiriDismissalAction()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(v0, v1);

  v3 = SelfReflectionAgent.createCancelRequestAction()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *&result = 2;
  *(v4 + 16) = xmmword_1DCA6ACA0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  return result;
}

void SelfReflectionAgent.createRevealRecognizedSpeech()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
  v3 = *(*v0 + 224);
  v4 = v3();
  v5 = v4;
  if (v4)
  {
    v6 = (*(*v4 + 896))(v4);
    if (v6)
    {
      v7 = (*(*v6 + 112))(v6);

      v8 = [v7 recognition];

      if (!v8)
      {
        __break(1u);
        return;
      }

      v5 = [v8 aceRecognition];
    }

    else
    {

      v5 = 0;
    }
  }

  [v2 setRecognition_];

  v9 = v3();
  if (v9)
  {
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);

    v12 = MEMORY[0x1E12A1410](v10, v11);
  }

  else
  {
    v12 = 0;
  }

  [v2 setSpeechRecognizedAceId_];

  v13 = (*(*v1 + 248))();
  if (v13)
  {
    v14 = v13[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes];

    if (v14 == 1)
    {
      if (v3())
      {
        v15 = ResultCandidateState.alternativeSuggestion.getter();

        if (*(v15 + 16) && (__swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]), v16.value._countAndFlagsBits = (*(*v1 + 200))(), v18 = v17, v19._object = 0x80000001DCA87600, v19._countAndFlagsBits = 0xD000000000000024, v16.value._object = v18, TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v19, v16), , v20 = v1[9], v21 = v1[10], __swift_project_boxed_opaque_existential_1(v1 + 6, v20), ((*(v21 + 32))(v20, v21) & 1) == 0))
        {
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v2 setAsrAlternatives_];

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.conversationBridge);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_1DC659000, v24, v25, "Enabled alternativeSuggestionTreatment", v26, 2u);
            MEMORY[0x1E12A2F50](v26, -1, -1);
          }
        }

        else
        {
        }
      }
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t SelfReflectionError.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(26);

  MEMORY[0x1E12A1580](a1, a2);
  return 0xD000000000000018;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionError()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(26);

  MEMORY[0x1E12A1580](v1, v2);
  return 0xD000000000000018;
}

id SelfReflectionAgent.createCATContext()()
{
  v1 = *(v0 + 32);
  v2 = [v1 languageCode];
  if (!v2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87680, &v16);
    v14 = "SelfReflectionAgent.%s Unable to retrieve input language code";
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v1 outputVoice];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 languageCode];

    if (v6)
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E699A098]) initWithInputLocale:v3 outputVoiceLocale:v6];

      return v7;
    }
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87680, &v16);
    v14 = "SelfReflectionAgent.%s Unable to retrieve outputVoice language code";
LABEL_13:
    _os_log_impl(&dword_1DC659000, v10, v11, v14, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

LABEL_14:

  return 0;
}

void closure #1 in SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(void *a1, void *a2, void (*a3)(void, void, void, void), uint64_t a4, uint64_t a5, int a6)
{
  v113 = a6;
  v117 = a1;
  v118 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = &v109 - v9;
  v10 = type metadata accessor for NLContextUpdate();
  v116 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v109 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v119 = __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v111 = v14;
    v22 = v21;
    v23 = a3;
    v24 = swift_slowAlloc();
    v120[0] = v24;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, v120);
    _os_log_impl(&dword_1DC659000, v19, v20, "SelfReflectionAgent.%s CAT result", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v25 = v24;
    a3 = v23;
    MEMORY[0x1E12A2F50](v25, -1, -1);
    v26 = v22;
    v14 = v111;
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  if (a2)
  {
    v27 = a2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v120[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, v120);
      *(v30 + 12) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v120);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_1DC659000, v28, v29, "SelfReflectionAgent.%s failed to produce dialog. error: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v35 = a2;
    a3(0, 0, 0, a2);

    v36 = a2;
LABEL_19:

    return;
  }

  if (!static SystemDialogActHelper.systemAskedUserToRepeat()())
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_16;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()();
  swift_unknownObjectRelease();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_16:
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121 = v58;
      *v57 = 136315394;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001DCA875A0, &v121);
      *(v57 + 12) = 2080;
      v120[0] = 0xD000000000000020;
      v120[1] = 0x80000001DCA87650;
      lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
      v59 = Error.localizedDescription.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v121);

      *(v57 + 14) = v61;
      _os_log_impl(&dword_1DC659000, v55, v56, "SelfReflectionAgent.%s failed to produce dialog. error: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError();
    v62 = swift_allocError();
    *v63 = 0xD000000000000020;
    v63[1] = 0x80000001DCA87650;
    a3(0, 0, 0, v62);
    v36 = v62;
    goto LABEL_19;
  }

  v119 = a3;
  v37 = v114;
  (*(v16 + 32))(v114, v14, v15);
  v38 = v115;
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v39 = v16;
  v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1DCA66060;
  v110 = v39;
  v111 = v15;
  (*(v39 + 16))(v41 + v40, v37, v15);
  NLContextUpdate.nluSystemDialogActs.setter();
  v42 = v116;
  v43 = v112;
  (*(v116 + 16))(v112, v38, v10);
  (*(v42 + 56))(v43, 0, 1, v10);
  v109 = specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(v43, 0, 0, 0);
  outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v44 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v45 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v46 = v44;
  v47 = [v45 init];
  v48 = [v47 UUIDString];

  if (!v48)
  {
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = MEMORY[0x1E12A1410](v49);
  }

  [v46 setAceId_];

  v50 = *(*v118 + 200);
  v51 = v46;
  v52 = v50();
  if (v53)
  {
    v54 = MEMORY[0x1E12A1410](v52);
  }

  else
  {
    v54 = 0;
  }

  [v51 setRefId_];

  v64 = [v117 print];
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v65[2])
  {
    v66 = v65[4];
    v67 = v65[5];

    v68 = MEMORY[0x1E12A1410](v66, v67);
  }

  else
  {

    v68 = 0;
  }

  [v51 setText_];

  v69 = [v117 dialogId];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v70[2])
  {
    v71 = v70[4];
    v72 = v70[5];

    v73 = MEMORY[0x1E12A1410](v71, v72);
  }

  else
  {

    v73 = 0;
  }

  [v51 setDialogIdentifier_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v74 = v51;
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v74 setListenAfterSpeaking_];

  v76 = [v117 meta];
  v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v77 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(0x79726F6765746163, 0xE800000000000000), (v79 & 1) != 0))
  {
    v80 = (*(v77 + 56) + 16 * v78);
    v81 = *v80;
    v82 = v80[1];

    v83 = MEMORY[0x1E12A1410](v81, v82);
  }

  else
  {

    v83 = 0;
  }

  [v74 setDialogCategory_];

  v84 = (*(*v118 + 272))();
  if (v84)
  {
    if (*(v84 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled) == 1)
    {
      v85 = v84;
      v86 = [v117 speak];
      v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v87[2])
      {
        v88 = v87[4];
        v89 = v87[5];

        v90 = MEMORY[0x1E12A1410](v88, v89);
      }

      else
      {

        v90 = 0;
      }

      [v74 setSpeakableText_];

      v84 = v90;
    }
  }

  v91 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v92 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v93 = v91;
  v94 = [v92 init];
  v95 = [v94 UUIDString];

  if (!v95)
  {
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = MEMORY[0x1E12A1410](v96);
  }

  [v93 setAceId_];

  v97 = v50();
  if (v98)
  {
    v99 = MEMORY[0x1E12A1410](v97);
  }

  else
  {
    v99 = 0;
  }

  v100 = v119;
  [v93 setRefId_];

  [v93 setDialogPhase_];
  [v93 setDisplayTarget_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1DCA70640;
  *(v101 + 32) = v74;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v102 = Array._bridgeToObjectiveC()().super.isa;

  [v93 setViews_];

  v103 = 0;
  if (v113)
  {
    SelfReflectionAgent.createRevealRecognizedSpeech()();
    v103 = v104;
  }

  v105 = v103;
  v106 = v109;
  v107 = v109;
  v108 = v93;
  v100(v93, v103, v106, 0);

  (*(v116 + 8))(v115, v10);
  (*(v110 + 8))(v114, v111);
}

id SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7B18]) init];
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = MEMORY[0x1E12A1410](v11, v13);

  [v10 setAceId_];

  v15 = *(*v3 + 200);
  v16 = v10;
  v17 = v15();
  if (v18)
  {
    v19 = MEMORY[0x1E12A1410](v17);
  }

  else
  {
    v19 = 0;
  }

  [v16 setRefId_];

  v20 = MEMORY[0x1E12A1410](a1, a2);
  [v16 setReason_];

  return v16;
}

id SelfReflectionAgent.createCancelRequestAction()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E69C7760]) init];
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = MEMORY[0x1E12A1410](v7, v9);

  [v6 setAceId_];

  v11 = (*(*v1 + 200))();
  if (v12)
  {
    v13 = MEMORY[0x1E12A1410](v11);
  }

  else
  {
    v13 = 0;
  }

  [v6 setRefId_];

  return v6;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionError and conformance SelfReflectionError()
{
  result = lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError;
  if (!lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionError and conformance SelfReflectionError);
  }

  return result;
}

uint64_t SelfReflectionAgent.__allocating_init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned int a7)
{
  v24 = a7;
  v9 = a4;
  v13 = swift_allocObject();
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(a1, a2, a3, v9, v19, a6, v24, v13, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v21;
}

uint64_t ResultCandidateState.speechpackage.getter()
{
  v1 = (*(*v0 + 896))();
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 112))(v1);

  return v2;
}

id AFSpeechPackage.snr.getter()
{
  result = [v0 audioAnalytics];
  v2 = result;
  if (result)
  {
    [result snr];
    v4 = v3;

    return v4;
  }

  return result;
}

unint64_t ResultCandidateState.alternativeSuggestion.getter()
{
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance();
  v1 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SuggestionCandidate = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate();
  v53 = *(SuggestionCandidate - 8);
  MEMORY[0x1EEE9AC00](SuggestionCandidate);
  v49 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Suggestion = type metadata accessor for Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion();
  v5 = *(Suggestion - 8);
  MEMORY[0x1EEE9AC00](Suggestion);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v40 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*v0 + 384))(v13);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v45 = v15;
  v46 = v1;
  v17 = *(v16 + 16);
  v18 = v17;

  v19 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
    return v19;
  }

  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_21:

LABEL_22:

    return v19;
  }

  v38 = result;
  v39 = __CocoaSet.count.getter();
  result = v38;
  if (!v39)
  {
    goto LABEL_21;
  }

LABEL_5:
  v44 = v18;
  if ((result & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1E12A1FE0](0);
LABEL_8:
    v18 = v21;

    type metadata accessor for GenericExperience();
    if (swift_dynamicCastClass())
    {
      dispatch thunk of GenericExperience.serverSuggestions.getter();
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        v22 = v45;
        (*(v12 + 32))(v45, v10, v11);
        Apple_Parsec_Siri_V2alpha_ServerSuggestion.alternateQuerySuggestion.getter();
        v23 = Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestion.candidates.getter();
        (*(v5 + 8))(v7, Suggestion);
        v24 = *(v23 + 16);
        if (v24)
        {
          v41 = v18;
          v42 = v12;
          v43 = v11;
          v54 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
          v19 = v54;
          v25 = *(v53 + 16);
          v26 = *(v53 + 80);
          v40[1] = v23;
          v27 = v23 + ((v26 + 32) & ~v26);
          v47 = *(v53 + 72);
          v48 = v25;
          ++v46;
          v53 += 16;
          v28 = (v53 - 8);
          do
          {
            v29 = v49;
            v30 = SuggestionCandidate;
            v48(v49, v27, SuggestionCandidate);
            v31 = v51;
            Apple_Parsec_Siri_V2alpha_AlternateQuerySuggestionCandidate.utterance.getter();
            v32 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
            v34 = v33;
            (*v46)(v31, v52);
            (*v28)(v29, v30);
            v54 = v19;
            v36 = *(v19 + 16);
            v35 = *(v19 + 24);
            if (v36 >= v35 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v19 = v54;
            }

            *(v19 + 16) = v36 + 1;
            v37 = v19 + 16 * v36;
            *(v37 + 32) = v32;
            *(v37 + 40) = v34;
            v27 += v47;
            --v24;
          }

          while (v24);
          (*(v42 + 8))(v45, v43);
        }

        else
        {

          (*(v12 + 8))(v22, v11);
        }

        return v19;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
    }

    else
    {

      v18 = v44;
    }

    goto LABEL_22;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t SelfReflectionAgentDecision.pommesSchemaValueForSELFReporting.getter()
{
  if (*v0 - 2 > 4)
  {
    return 3;
  }

  else
  {
    return dword_1DCA7462C[(*v0 - 2)];
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70536C6165766572 && a2 == 0xEC00000068636565)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SelfReflectionAgentDecision.CodingKeys()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x557373696D736964;
  v4 = 0x7469646532706174;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65726F6E6769;
  if (v1 != 1)
  {
    v5 = 0x7065526F546B7361;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SelfReflectionAgentDecision.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SelfReflectionAgentDecision.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.DismissUICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.DismissUICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.IgnoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.IgnoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelfReflectionAgentDecision.Tap2editCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelfReflectionAgentDecision.Tap2editCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelfReflectionAgentDecision.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO36FallbackToIntelligenceFlowCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO36FallbackToIntelligenceFlowCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO18Tap2editCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO18Tap2editCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO19DismissUICodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO19DismissUICodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO21AskToRepeatCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO21AskToRepeatCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO16IgnoreCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO16IgnoreCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO14NoneCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO14NoneCodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO10CodingKeys33_829D41B8284081B1456341081EAAB713LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime27SelfReflectionAgentDecisionO10CodingKeys33_829D41B8284081B1456341081EAAB713LLOGMR);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v1;
  v18 = a1[3];
  v19 = a1;
  v21 = &v34 - v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  lazy protocol witness table accessor for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17 > 3)
  {
    switch(v17)
    {
      case 4:
        v54 = 3;
        lazy protocol witness table accessor for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys();
        v22 = v35;
        v23 = v50;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v38;
        v24 = v39;
        goto LABEL_11;
      case 5:
        v55 = 4;
        lazy protocol witness table accessor for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys();
        v22 = v41;
        v23 = v50;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v42;
        v24 = v43;
        goto LABEL_11;
      case 6:
        v56 = 5;
        lazy protocol witness table accessor for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys();
        v22 = v44;
        v23 = v50;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v45;
        v24 = v46;
LABEL_11:
        (*(v25 + 8))(v22, v24);
        return (*(v49 + 8))(v21, v23);
    }

LABEL_15:
    v53 = 2;
    lazy protocol witness table accessor for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys();
    v31 = v36;
    v32 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v40;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v37 + 8))(v31, v33);
    return (*(v49 + 8))(v21, v32);
  }

  v27 = v47;
  v26 = v48;
  if (v17 == 2)
  {
    v51 = 0;
    lazy protocol witness table accessor for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys();
    v30 = v50;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v15, v13);
    return (*(v49 + 8))(v21, v30);
  }

  if (v17 != 3)
  {
    goto LABEL_15;
  }

  v52 = 1;
  lazy protocol witness table accessor for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys();
  v28 = v12;
  v23 = v50;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v28, v10);
  return (*(v49 + 8))(v21, v23);
}

uint64_t SelfReflectionResponse.sentenceConfidence.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t SelfReflectionResponse.snr.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t SelfReflectionResponse.catIdentifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SelfReflectionResponse.catCategories.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

_BYTE *SelfReflectionResponse.init(decision:hasCantUnderstandDialog:hasCantDoDialog:isWebSearchFallback:isFlexibleFollowUp:isVoiceTrigger:sentenceConfidence:snr:isSingleWord:catIdentifiers:catCategories:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = *result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8 & 1;
  *(a9 + 24) = a10;
  *(a9 + 32) = a11 & 1;
  *(a9 + 33) = a12;
  *(a9 + 40) = a13;
  *(a9 + 48) = a14;
  return result;
}

void *SelfReflectionAgent.executionInputInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

void *SelfReflectionAgent.requestContextData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

uint64_t SelfReflectionAgent.previousTurnMitigationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  v8[0] = *(v1 + 152);
  v8[1] = v3;
  v9 = *(v1 + 184);
  v4 = v9;
  v10 = *(v1 + 200);
  v5 = v10;
  *a1 = v8[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return outlined init with copy of SelfReflectionResponse(v8, &v7);
}

uint64_t SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = a4;
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(a1, a2, a3, v10, v19, a6, v7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v21;
}

uint64_t SelfReflectionAgent.setResultCandidateState(_:)(uint64_t a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DCA876E0, &v14);
    *(v6 + 12) = 2080;
    v8 = (*(*a1 + 832))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "SelfReflectionAgent.%s resultCandidateState: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v13 = *(*v1 + 232);

  return v13(v11);
}

uint64_t SelfReflectionAgent.setExecutionInputInfo(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA87700, &v15);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent.%s executionInputInfo: %@", v8, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v14 = *(*v2 + 256);
  v12 = v5;

  return v14(v5);
}

Swift::Void __swiftcall SelfReflectionAgent.requestCompleted()()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v27[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87740, v27);
    _os_log_impl(&dword_1DC659000, v3, v4, "SelfReflectionAgent.%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  if ((*(*v1 + 344))())
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v27[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87740, v27);
      _os_log_impl(&dword_1DC659000, oslog, v7, "SelfReflectionAgent.%s called more than once", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(*v1 + 352))(1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v27[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001DCA87740, v27);
      _os_log_impl(&dword_1DC659000, v10, v11, "SelfReflectionAgent.%s donating to curare", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v14 = 7104846;
    v15 = (*(*v1 + 320))(v27);
    v16 = (*(*v1 + 200))(v15);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 7104846;
    }

    v19 = 0xE300000000000000;
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = (*(*v1 + 224))(v16);
    if (v21)
    {
      v14 = *(v21 + 16);
      v19 = *(v21 + 24);
    }

    SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)(v27, v18, v20, v14, v19);

    v25[0] = v27[0];
    v25[1] = v27[1];
    v25[2] = v27[2];
    v26 = v28;
    outlined destroy of SelfReflectionResponse(v25);
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    (*(*v1 + 448))(v23);
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s14SiriKitRuntime6Tagger_pSgMd, &_s14SiriKitRuntime6Tagger_pSgMR);
  }
}

void ExecutionOutput.hasCantUnderstandDialog.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v40 - v2;
  v43 = v0;
  v4 = ExecutionOutput.catCategories.getter();
  v5 = v4;
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v13;
    v15 = v13[1];
    v9 &= v9 - 1;
    v46 = 0xD000000000000010;
    v47 = 0x80000001DCA87780;
    v44 = v14;
    v45 = v15;
    v16 = type metadata accessor for Locale();
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
    lazy protocol witness table accessor for type String and conformance String();

    v17 = StringProtocol.compare<A>(_:options:range:locale:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    if (!v17)
    {

LABEL_37:

      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_39;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  v18 = ExecutionOutput.catIdentifiers.getter();
  v19 = v18 + 56;
  v20 = 1 << *(v18 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v18 + 56);
  v23 = (v20 + 63) >> 6;
  v42 = v18;

  v24 = 0;
  v40 = v23;
  v41 = v19;
LABEL_17:
  if (v22)
  {
    v25 = v24;
LABEL_22:
    v43 = *(*(v42 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v22)))));
    v26 = one-time initialization token for kCantUnderstandCatIds;

    if (v26 != -1)
    {
      swift_once();
    }

    v22 &= v22 - 1;
    v27 = kCantUnderstandCatIds;
    v28 = kCantUnderstandCatIds + 56;
    v29 = 1 << *(kCantUnderstandCatIds + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(kCantUnderstandCatIds + 7);
    v32 = (v29 + 63) >> 6;

    v33 = 0;
    while (v31)
    {
      v34 = v33;
LABEL_34:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = (v27[6] + ((v34 << 10) | (16 * v35)));
      v37 = *v36;
      v38 = v36[1];

      v39._countAndFlagsBits = v37;
      v39._object = v38;
      LOBYTE(v37) = String.hasPrefix(_:)(v39);

      if (v37)
      {

        goto LABEL_37;
      }
    }

    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        v24 = v25;
        v23 = v40;
        v19 = v41;
        goto LABEL_17;
      }

      v31 = *&v28[8 * v34];
      ++v33;
      if (v31)
      {
        v33 = v34;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_22;
    }
  }

LABEL_40:
  __break(1u);
}

void ExecutionOutput.hasCantDoDialog.getter(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = ExecutionOutput.catCategories.getter();
  v6 = v5;
  v7 = v5 + 56;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_10:
    v14 = (*(v6 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = *v14;
    v16 = v14[1];
    v10 &= v10 - 1;
    v23 = v19;
    v24 = v20;
    v21 = v15;
    v22 = v16;
    v17 = type metadata accessor for Locale();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    lazy protocol witness table accessor for type String and conformance String();

    v18 = StringProtocol.compare<A>(_:options:range:locale:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    if (!v18)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t ExecutionOutput.catIdentifiers.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_command);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = one-time initialization token for conversationBridge;
  v3 = v1;
  if (v2 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v67 = v9;
      *v8 = 136315138;
      swift_getObjectType();
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v67);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent attempts to retrieve cat id from command: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v5;
      v16 = [v14 views];

      if (v16)
      {
        break;
      }
    }

    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29 || (v30 = v29, v5 = v5, v3 = [v30 dialogs], v5, !v3))
    {

      return MEMORY[0x1E69E7CD0];
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v5;
    v32 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
      v33 = __CocoaSet.count.getter();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = 0;
    v56 = 0;
    v58 = MEMORY[0x1E69E7CC0];
    v66 = v31 & 0xC000000000000001;
    v60 = v31;
    v59 = v33;
    if (!v33)
    {
LABEL_27:

      v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v58);

      return v35;
    }

    while (1)
    {
      if (v66)
      {
        v37 = MEMORY[0x1E12A1FE0](v34, v31);
      }

      else
      {
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_51;
        }

        v37 = *(v31 + 8 * v34 + 32);
      }

      v38 = v37;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v64 = v34 + 1;
      v39 = [v37 dialogIdentifier];
      if (v39)
      {
        v40 = v39;
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;
      }

      else
      {
        v3 = 0;
        v42 = 0;
      }

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      v62 = v3;
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v69 = v46;
        *v45 = 136315138;
        v67 = v3;
        v68 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v47 = String.init<A>(describing:)();
        v3 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v69);

        *(v45 + 4) = v3;
        _os_log_impl(&dword_1DC659000, v43, v44, "SelfReflectionAgent dialog catId: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v49 = v46;
        v31 = v60;
        MEMORY[0x1E12A2F50](v49, -1, -1);
        v50 = v45;
        v33 = v59;
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      ++v34;
      if (v42)
      {
        v51 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 16) + 1, 1, v58);
        }

        v3 = *(v51 + 2);
        v52 = *(v51 + 3);
        if (v3 >= v52 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v3 + 1, 1, v51);
        }

        *(v51 + 2) = v3 + 1;
        v58 = v51;
        v53 = &v51[16 * v3];
        v34 = v64;
        *(v53 + 4) = v62;
        *(v53 + 5) = v42;
        if (v33 == v64)
        {
          goto LABEL_27;
        }
      }

      else if (v33 == v34)
      {
        goto LABEL_27;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v15;
    if (!v18)
    {
      goto LABEL_54;
    }

    goto LABEL_9;
  }

  v18 = __CocoaSet.count.getter();
  v61 = v15;
  if (v18)
  {
LABEL_9:
    v19 = 0;
    v65 = v17 & 0xC000000000000001;
    v3 = v17 & 0xFFFFFFFFFFFFFF8;
    v20 = MEMORY[0x1E69E7CC0];
    v63 = v17;
    while (1)
    {
      if (v65)
      {
        v22 = MEMORY[0x1E12A1FE0](v19, v17);
      }

      else
      {
        if (v19 >= *(v3 + 16))
        {
          goto LABEL_49;
        }

        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v69 = v22;
      closure #1 in ExecutionOutput.catIdentifiers.getter(&v67, "SelfReflectionAgent view: %s catId: %s", &v69, &selRef_dialogIdentifier, v55, v56);

      v25 = v68;
      if (v68)
      {
        v26 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v21 = &v20[16 * v28];
        *(v21 + 4) = v26;
        *(v21 + 5) = v25;
        v17 = v63;
      }

      ++v19;
      if (v24 == v18)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_54:
  v20 = MEMORY[0x1E69E7CC0];
LABEL_55:

  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

  return v54;
}

uint64_t ExecutionOutput.catCategories.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_command);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = one-time initialization token for conversationBridge;
  v3 = v1;
  if (v2 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.conversationBridge);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v51 = v9;
      *v8 = 136315138;
      swift_getObjectType();
      v10 = _typeName(_:qualified:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v51);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DC659000, v6, v7, "SelfReflectionAgent attempts to retrieve cat category from command: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = v5;
    v16 = [v14 views];

    if (!v16)
    {
      break;
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      v46 = v15;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = v15;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    v19 = 0;
    v49 = v17 & 0xC000000000000001;
    v3 = (v17 & 0xFFFFFFFFFFFFFF8);
    v20 = MEMORY[0x1E69E7CC0];
    v47 = v17;
    while (1)
    {
      if (v49)
      {
        v22 = MEMORY[0x1E12A1FE0](v19, v17);
      }

      else
      {
        if (v19 >= v3[2])
        {
          goto LABEL_43;
        }

        v22 = *(v17 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v53 = v22;
      closure #1 in ExecutionOutput.catIdentifiers.getter(&v51, "SelfReflectionAgent view: %s catCategory: %s", &v53, &selRef_dialogCategory, v45, v46);

      v25 = v52;
      if (v52)
      {
        v26 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v21 = &v20[16 * v28];
        *(v21 + 4) = v26;
        *(v21 + 5) = v25;
        v17 = v47;
      }

      ++v19;
      if (v24 == v18)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v30 = v29;
  v3 = v5;
  v31 = [v30 dialogs];

  if (!v31)
  {

    return MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADialog, 0x1E69C77A0);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v3;
    if (!v33)
    {
      goto LABEL_50;
    }

    goto LABEL_26;
  }

  v33 = __CocoaSet.count.getter();
  v46 = v3;
  if (v33)
  {
LABEL_26:
    v34 = 0;
    v50 = v32 & 0xC000000000000001;
    v35 = v32 & 0xFFFFFFFFFFFFFF8;
    v20 = MEMORY[0x1E69E7CC0];
    v48 = v32;
    while (1)
    {
      if (v50)
      {
        v37 = MEMORY[0x1E12A1FE0](v34, v32);
      }

      else
      {
        if (v34 >= *(v35 + 16))
        {
          goto LABEL_45;
        }

        v37 = *(v32 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_44;
      }

      v53 = v37;
      closure #2 in ExecutionOutput.catCategories.getter(&v53, &v51);

      v3 = v52;
      if (v52)
      {
        v40 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v42 = *(v20 + 2);
        v41 = *(v20 + 3);
        if (v42 >= v41 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v20);
        }

        *(v20 + 2) = v42 + 1;
        v36 = &v20[16 * v42];
        *(v36 + 4) = v40;
        *(v36 + 5) = v3;
        v32 = v48;
      }

      ++v34;
      if (v39 == v33)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_50:
  v20 = MEMORY[0x1E69E7CC0];
LABEL_51:

  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

  return v44;
}

unint64_t ResultCandidateState.isFlexibleFollowUp.getter()
{
  v1 = (*(*v0 + 904))();
  if (v1 && (v2 = (*(*v1 + 264))(v1), , v2) && (v3 = [v2 speechEvent], v2, v3 <= 0x23))
  {
    v4 = 0xC40000000uLL >> v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t ResultCandidateState.isVoiceTrigger.getter()
{
  v1 = (*(*v0 + 904))();
  if (v1 && (v2 = (*(*v1 + 264))(v1), , v2) && (v3 = [v2 speechEvent], v2, v3 <= 0x10))
  {
    v4 = 0x18100u >> v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t PommesInfo.isWebSearchFallback.getter()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = v1, PommesResponse.metadataDomainName.getter(), v3 = String.lowercased()(), v4 = , v10 = v3, MEMORY[0x1EEE9AC00](v4), v9[2] = &v10, v5 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v9, &outlined read-only object #0 of PommesInfo.isWebSearchFallback.getter), v2, swift_arrayDestroy(), , (v5 & 1) != 0))
  {
    v6 = v2;
    v7 = PommesResponse.metadataFallbackTriggered.getter();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id AFSpeechPackage.isSingleWord.getter()
{
  result = [v0 recognition];
  if (result)
  {
    v2 = result;
    v3 = [result phrases];

    if (v3)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        v5 = __CocoaSet.count.getter();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v5 == 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ResultCandidateState.hasAlternativeSuggestion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v0 + 384))(v6);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = *(v9 + 16);
  v11 = v10;

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = dispatch thunk of PommesResponse.experiences.getter();
  v13 = v12;
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1E12A1FE0](0, v13);
LABEL_8:
    v16 = v15;

    type metadata accessor for GenericExperience();
    if (swift_dynamicCastClass())
    {
      dispatch thunk of GenericExperience.serverSuggestions.getter();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        (*(v5 + 32))(v8, v3, v4);
        v17 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.hasAlternateQuerySuggestion.getter();

        (*(v5 + 8))(v8, v4);
        return v17 & 1;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
    }

    else
    {
    }

LABEL_15:
    v17 = 0;
    return v17 & 1;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  (*(*v1 + 320))(v46, v13);
  v16 = outlined destroy of SelfReflectionResponse(v46);
  v17 = LOBYTE(v46[0]);
  v18 = (*(*v1 + 248))(v16);
  if (v18)
  {
    v19 = v18[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes];
  }

  else
  {
    v19 = 0;
  }

  v21 = v17 == 2 || v17 == 5;
  v22 = v21 & v19;
  if ((v17 - 2) > 4)
  {
    v23 = 3;
  }

  else
  {
    v23 = dword_1DCA7462C[(v17 - 2)];
  }

  (*(**(v2 + 16) + 248))(v22, v23);
  result = [*(v2 + 32) getSearchQueriesDataSharingStatus];
  if (v22)
  {
    v25 = result;
    result = (*(*v2 + 200))();
    if (v26)
    {
      v27 = v26;
      v40 = result;
      UUID.init(uuidString:)();
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        return outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v28 = *(v9 + 32);
        v39 = v9 + 32;
        v38 = v28;
        v28(v15, v7, v8);
        outlined init with copy of Tagger?(v41, &v43);
        if (v44)
        {
          outlined init with take of ReferenceResolutionClientProtocol(&v43, v45);
        }

        else
        {
          v29 = *(v2 + 104);
          v45[3] = type metadata accessor for TaggingService();
          v45[4] = &protocol witness table for TaggingService;
          v45[0] = v29;
        }

        LODWORD(v41) = v25 < 2;
        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v42, 1, 1, v30);
        (*(v9 + 16))(v11, v15, v8);
        outlined init with copy of ReferenceResolutionClientProtocol(v45, &v43);
        v31 = (*(v9 + 80) + 40) & ~*(v9 + 80);
        v32 = v31 + v10;
        v37 = v9;
        v33 = (v31 + v10) & 0xFFFFFFFFFFFFFFF8;
        v34 = swift_allocObject();
        *(v34 + 2) = 0;
        *(v34 + 3) = 0;
        *(v34 + 4) = v2;
        v38(&v34[v31], v11, v8);
        v34[v32] = v41;
        outlined init with take of ReferenceResolutionClientProtocol(&v43, &v34[v33 + 8]);
        v35 = &v34[(v33 + 55) & 0xFFFFFFFFFFFFFFF8];
        *v35 = v40;
        *(v35 + 1) = v27;

        v36 = v42;
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v42, &async function pointer to partial apply for closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:), v34);

        outlined destroy of ReferenceResolutionClientProtocol?(v36, &_sScPSgMd, &_sScPSgMR);
        (*(v37 + 8))(v15, v8);
        return __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }
    }
  }

  return result;
}

uint64_t closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a8;
  *(v8 + 88) = v12;
  *(v8 + 64) = a5;
  *(v8 + 72) = a7;
  *(v8 + 128) = a6;
  *(v8 + 56) = a4;
  v9 = type metadata accessor for DataClassificationTag();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:), 0, 0);
}

uint64_t closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)()
{
  if (*(v0[7] + 40) == 1)
  {
    static DataClassificationTag.searchRequest(componentName:uuid:joined:optedInToSearchSharing:)();
  }

  else
  {
    static DataClassificationTag.searchRequest(requestIdentifier:optedInToSearchSharing:)();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = MEMORY[0x1E69CE1E0];
  v0[5] = v3;
  v0[6] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  v11 = (*(v6 + 8) + **(v6 + 8));
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:);

  return v11(v0 + 2, v5, v6);
}

{
  v27 = v0;
  if ((*(v0 + 129) & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationBridge);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 80);
      v4 = *(v0 + 88);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136380675;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v26);
      _os_log_impl(&dword_1DC659000, v2, v3, "Unable to tag request %{private}s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 96);
  if (v11)
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v25 = *(v0 + 112);
    v17 = *(v0 + 128);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136380931;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v26);
    *(v18 + 12) = 2080;
    if (v17)
    {
      v20 = 28265;
    }

    else
    {
      v20 = 7632239;
    }

    if (v17)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1DC659000, v9, v10, "Search query sharing status at the time of %{private}s: opted-%s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);

    (*(v13 + 8))(v25, v14);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)(char a1)
{
  v2 = *v1;
  *(v2 + 129) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x1EEE6DFA0](closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:), 0, 0);
}

uint64_t SelfReflectionAgent.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return v0;
}

uint64_t SelfReflectionAgent.__deallocating_deinit()
{
  SelfReflectionAgent.deinit();

  return swift_deallocClassInstance();
}

uint64_t PommesInfo.isWebSearch.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    PommesResponse.metadataDomainName.getter();
    v3 = String.lowercased()();

    v8 = v3;
    MEMORY[0x1EEE9AC00](v4);
    v7[2] = &v8;
    v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, &outlined read-only object #0 of PommesInfo.isWebSearch.getter);

    swift_arrayDestroy();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PommesInfo.isFallback.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = PommesResponse.metadataFallbackTriggered.getter();

  return v3 & 1;
}

uint64_t one-time initialization function for kCantUnderstandCatIds()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kCantUnderstandCatIds);
  result = swift_arrayDestroy();
  kCantUnderstandCatIds = v0;
  return result;
}

uint64_t one-time initialization function for kAllowedFallbackToMightyPrefix()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kAllowedFallbackToMightyPrefix);
  result = swift_arrayDestroy();
  kAllowedFallbackToMightyPrefix = v0;
  return result;
}

uint64_t one-time initialization function for kDeniedFallbackToMightyCatIds()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kDeniedFallbackToMightyCatIds);
  result = swift_arrayDestroy();
  kDeniedFallbackToMightyCatIds = v0;
  return result;
}

void closure #1 in ExecutionOutput.catIdentifiers.getter(uint64_t *__return_ptr a1@<X8>, char *a2@<X2>, void **a3@<X0>, SEL *a4@<X1>, uint64_t a5, uint64_t a6, ...)
{
  v9 = *a3;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 *a4];
    if (v11)
    {
      v12 = v11;
LABEL_6:
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      goto LABEL_8;
    }
  }

  v13 = [v9 dialog];
  if (v13)
  {
    v14 = *a4;
    v15 = v13;
    v12 = [v13 v14];

    if (v12)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_8:
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = v9;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    format = a2;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315394;
    swift_getObjectType();
    v25 = _typeName(_:qualified:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v21, v22, format, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  *a1 = v16;
  a1[1] = v18;
}

void closure #2 in ExecutionOutput.catCategories.getter(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 dialogCategory];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);

  v10 = v3;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    swift_getObjectType();
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v21);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1DC659000, v11, v12, "SelfReflectionAgent dialog: %s catCategory: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t specialized SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a9;
  v23 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a5, a9);
  type metadata accessor for TaggingService();
  swift_allocObject();
  *(a8 + 104) = TaggingService.init()();
  *(a8 + 112) = 0u;
  *(a8 + 144) = 0;
  *(a8 + 128) = 0u;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  outlined init with take of ReferenceResolutionClientProtocol(&v21, a8 + 48);
  swift_beginAccess();
  *(a8 + 128) = 0;
  swift_beginAccess();
  *(a8 + 136) = 0;
  swift_beginAccess();
  v19 = *(a8 + 144);
  *(a8 + 144) = 0;

  *(a8 + 152) = 33686018;
  *(a8 + 156) = 514;
  *(a8 + 160) = 0;
  *(a8 + 168) = 1;
  *(a8 + 176) = 0;
  *(a8 + 184) = 1;
  *(a8 + 185) = 2;
  *(a8 + 192) = 0;
  *(a8 + 200) = 0;
  *(a8 + 208) = 33686018;
  *(a8 + 212) = 514;
  *(a8 + 216) = 0;
  *(a8 + 224) = 1;
  *(a8 + 232) = 0;
  *(a8 + 240) = 1;
  *(a8 + 241) = 2;
  *(a8 + 248) = 0;
  *(a8 + 256) = 0;
  *(a8 + 88) = a6;
  *(a8 + 264) = 0;
  *(a8 + 96) = a7;
  return a8;
}

BOOL specialized static SelfReflectionAgentDecision.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 4u:
      return v3 == 4;
    case 5u:
      return v3 == 5;
    case 6u:
      return v3 == 6;
  }

LABEL_17:
  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.CodingKeys and conformance SelfReflectionAgentDecision.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys and conformance SelfReflectionAgentDecision.FallbackToIntelligenceFlowCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.Tap2editCodingKeys and conformance SelfReflectionAgentDecision.Tap2editCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.DismissUICodingKeys and conformance SelfReflectionAgentDecision.DismissUICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.AskToRepeatCodingKeys and conformance SelfReflectionAgentDecision.AskToRepeatCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.IgnoreCodingKeys and conformance SelfReflectionAgentDecision.IgnoreCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SelfReflectionAgentDecision.NoneCodingKeys and conformance SelfReflectionAgentDecision.NoneCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of Tagger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime6Tagger_pSgMd, &_s14SiriKitRuntime6Tagger_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + v5);
  v10 = v1 + (v5 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v1 + (((v5 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SelfReflectionAgent.classifyRequestAsSearchRequest(tagger:)(a1, v6, v7, v8, v1 + v4, v9, (v10 + 8), v11);
}

uint64_t getEnumTagSinglePayload for SelfReflectionAgentDecision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SelfReflectionAgentDecision(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for SelfReflectionAgentDecision(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for SelfReflectionAgentDecision(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t assignWithCopy for SelfReflectionResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for SelfReflectionResponse(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for SelfReflectionResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for SelfReflectionResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SelfReflectionAgentDecision.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SelfReflectionAgentDecision.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id specialized SelfReflectionAgent.calculateSentenceConfidence(recognition:)(id result)
{
  if (result)
  {
    result = [result oneBestTokenList];
    if (result)
    {
      v1 = result;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechToken, 0x1E698D248);
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v2 >> 62)
      {
LABEL_25:
        v3 = __CocoaSet.count.getter();
        if (v3)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
LABEL_5:
          v4 = 0;
          v5 = 0;
          while (v3 != v4)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1E12A1FE0](v4, v2);
            }

            else
            {
              if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v6 = *(v2 + 8 * v4 + 32);
            }

            v7 = v6;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v8 = [v6 confidenceScore];

            ++v4;
            v9 = __OFADD__(v5, v8);
            v5 += v8;
            if (v9)
            {
              goto LABEL_24;
            }
          }

          if (v2 >> 62)
          {
            v10 = __CocoaSet.count.getter();
          }

          else
          {
            v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = v5 / v10;
          if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v11 > -9.22337204e18)
          {
            if (v11 < 9.22337204e18)
            {
              return v11;
            }

            goto LABEL_30;
          }

          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized SelfReflectionAgentDecision.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6E6769 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065526F546B7361 && a2 == 0xEB00000000746165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x557373696D736964 && a2 == 0xE900000000000049 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7469646532706174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001DCA876A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t lazy protocol witness table accessor for type NetworkAvailability.Status and conformance NetworkAvailability.Status()
{
  result = lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status;
  if (!lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status)
  {
    type metadata accessor for NetworkAvailability.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status);
  }

  return result;
}

uint64_t *SelfReflectionCurareDonator.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static SelfReflectionCurareDonator.instance;
}

void SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v27 = a1[2];
  v28 = *(a1 + 6);
  outlined init with copy of ReferenceResolutionClientProtocol?(v5 + 16, &v22, &_s14SiriKitRuntime20SelfReflectionStream_pSgMd, &_s14SiriKitRuntime20SelfReflectionStream_pSgMR);
  if (v23)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v22, v24);
    static TaskPriority.background.getter();
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
    outlined init with copy of ReferenceResolutionClientProtocol(v24, &v22);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v16 + 48) = a4;
    *(v16 + 56) = a5;
    v17 = v26;
    *(v16 + 64) = v25;
    *(v16 + 80) = v17;
    *(v16 + 96) = v27;
    *(v16 + 112) = v28;
    outlined init with take of ReferenceResolutionClientProtocol(&v22, v16 + 120);

    outlined init with copy of SelfReflectionResponse(&v25, &v22);
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:), v16);

    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sScPSgMd, &_sScPSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v22, &_s14SiriKitRuntime20SelfReflectionStream_pSgMd, &_s14SiriKitRuntime20SelfReflectionStream_pSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.instrumentation);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Failed to find SelfReflectionStream for SelfReflectionAgent.", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }
  }
}

uint64_t SelfReflectionCurareStream.streamId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SelfReflectionCurareStream.__allocating_init(streamId:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SelfReflectionCurareStream.init(streamId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SelfReflectionCurareStream.insert(jsonStr:interactionId:)(Swift::String jsonStr, Swift::String interactionId)
{
  object = interactionId._object;
  countAndFlagsBits = interactionId._countAndFlagsBits;
  v5 = jsonStr._object;
  v6 = jsonStr._countAndFlagsBits;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = objc_allocWithZone(MEMORY[0x1E699C0D0]);
  v8 = MEMORY[0x1E12A1410](v6, v5);
  v9 = MEMORY[0x1E12A1410](countAndFlagsBits, object);
  v10 = [v7 initWithJsonStr:v8 interactionId:v9 dataVersion:0];

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v13 = objc_allocWithZone(MEMORY[0x1E699C0D8]);
  v14 = MEMORY[0x1E12A1410](v12, v11);
  v15 = [v13 initWithStreamId_];

  if (!v15)
  {
    __break(1u);
  }

  v19[0] = 0;
  v16 = [v15 insert:v10 error:v19];

  if (v16)
  {
    v17 = v19[0];
  }

  else
  {
    v18 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t SelfReflectionCurareStream.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static SelfReflectionCurareDonator.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t SelfReflectionCurareDonator.__allocating_init(selfReflectionStream:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SelfReflectionCurareDonator.init(selfReflectionStream:)(a1);
  return v2;
}

uint64_t SelfReflectionCurareDonator.init(selfReflectionStream:)(uint64_t a1)
{
  v2 = v1;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v1 + 16, &_s14SiriKitRuntime20SelfReflectionStream_pSgMd, &_s14SiriKitRuntime20SelfReflectionStream_pSgMR);
  if (!*(a1 + 24))
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.instrumentation);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "Failed to create stream for SelfReflection - donations will be disabled.", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s14SiriKitRuntime20SelfReflectionStream_pSgMd, &_s14SiriKitRuntime20SelfReflectionStream_pSgMR);
  return v2;
}

uint64_t closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[63] = a8;
  v8[64] = v11;
  v8[61] = a6;
  v8[62] = a7;
  v8[59] = a4;
  v8[60] = a5;
  type metadata accessor for String.Encoding();
  v8[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:), 0, 0);
}

uint64_t closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)()
{
  v61 = v0;
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v59 = v0[59];
  v60 = v3;

  MEMORY[0x1E12A1580](58, 0xE100000000000000);
  MEMORY[0x1E12A1580](v2, v1);
  v5 = v59;
  v4 = v60;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.instrumentation);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v59);
    _os_log_impl(&dword_1DC659000, v7, v8, "Creating SelfReflectionResponse donation to Curare for interactionId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v11 = v0[63];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA74640;
  *(inited + 32) = 0x6E6F697369636564;
  *(inited + 40) = 0xE800000000000000;
  v13 = *v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(inited + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 56) = v14;
  *(inited + 64) = 0x44746E6143736168;
  *(inited + 72) = 0xEF676F6C6169446FLL;
  v15 = v11[2];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(inited + 80) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 88) = v16;
  *(inited + 96) = 0xD000000000000017;
  *(inited + 104) = 0x80000001DCA879F0;
  v17 = v11[1];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(inited + 112) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x80000001DCA87A10;
  v19 = v11[3];
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(inited + 144) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 152) = v20;
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001DCA87A30;
  v21 = v11[4];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(inited + 176) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 184) = v22;
  strcpy((inited + 192), "isVoiceTrigger");
  *(inited + 207) = -18;
  v23 = v11[5];
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(inited + 208) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 216) = v24;
  strcpy((inited + 224), "isSingleWord");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v25 = v11[33];
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(inited + 240) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 248) = v26;
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x80000001DCA87A50;
  v27 = swift_allocObject();
  v28 = v11[16];
  *(v27 + 16) = *(v11 + 1);
  *(v27 + 24) = v28;
  *(inited + 272) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 280) = v27;
  *(inited + 288) = 7499379;
  *(inited + 296) = 0xE300000000000000;
  v29 = swift_allocObject();
  v30 = v11[32];
  *(v29 + 16) = *(v11 + 3);
  *(v29 + 24) = v30;
  *(inited + 304) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 312) = v29;
  strcpy((inited + 320), "catIdentifiers");
  *(inited + 335) = -18;
  v31 = *(v11 + 5);
  v0[53] = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(inited + 336) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  *(inited + 344) = v32;
  strcpy((inited + 352), "catCategories");
  *(inited + 366) = -4864;
  v33 = *(v11 + 6);
  v0[54] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(inited + 368) = implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply;
  *(inited + 376) = v34;
  outlined init with copy of ReferenceResolutionClientProtocol?((v0 + 53), (v0 + 55), &_sShySSGSgMd, &_sShySSGSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?((v0 + 54), (v0 + 56), &_sShySSGSgMd, &_sShySSGSgMR);
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime12AnyEncodableVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime12AnyEncodableVtMd, &_sSS_14SiriKitRuntime12AnyEncodableVtMR);
  swift_arrayDestroy();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[57] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS14SiriKitRuntime12AnyEncodableVGMd, &_sSDySS14SiriKitRuntime12AnyEncodableVGMR);
  lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v43 = v42;
  v58 = v5;

  static String.Encoding.utf8.getter();
  v44 = String.init(data:encoding:)();
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    v48 = v0[64];
    v50 = v48[3];
    v49 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v50);
    (*(v49 + 8))(v46, v47, v58, v4, v50, v49);

    v36 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v53 = 136315138;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v4, &v59);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_1DC659000, v36, v51, "Donated SelfReflectionResponse to Curare for interactionId:%s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);
      outlined consume of Data._Representation(v41, v43);

      goto LABEL_15;
    }

    outlined consume of Data._Representation(v41, v43);
  }

  else
  {
    outlined consume of Data._Representation(v41, v43);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v59 = v39;
      *v38 = 136315138;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v59);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_1DC659000, v36, v37, "Failed to convert SelfReflectionResponse donation to JSON for interactionId:%s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);

      goto LABEL_15;
    }
  }

LABEL_15:

  v56 = v0[1];

  return v56();
}

uint64_t SelfReflectionCurareDonator.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime20SelfReflectionStream_pSgMd, &_s14SiriKitRuntime20SelfReflectionStream_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SelfReflectionCurareDonator.donateSelfReflectionResponse(selfReflectionResponse:requestId:rcId:)(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t specialized SelfReflectionCurareDonator.__allocating_init()()
{
  v0 = objc_opt_self();
  if ([v0 isSupportedUser] && objc_msgSend(v0, sel_isSupportedPlatform))
  {
    v1 = type metadata accessor for SelfReflectionCurareStream();
    v2 = swift_allocObject();
    *(v2 + 16) = 0xD000000000000016;
    *(v2 + 24) = 0x80000001DCA879D0;
    *(&v10 + 1) = v1;
    v11 = &protocol witness table for SelfReflectionCurareStream;
    *&v9 = v2;
    type metadata accessor for SelfReflectionCurareDonator();
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.instrumentation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Unsupported User/Platform for feature store - donations will be disabled.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    type metadata accessor for SelfReflectionCurareDonator();
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  v7 = swift_allocObject();
  SelfReflectionCurareDonator.init(selfReflectionStream:)(&v9);
  return v7;
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

uint64_t implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)specialized partial apply(uint64_t a1)
{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:)(a1);
}

uint64_t static SelfReflectionUserDefaults.fallbackToMighty.getter()
{
  swift_beginAccess();
  v0 = static SelfReflectionUserDefaults._fallbackToMighty;
  v1 = off_1ECC94E18;
  v2 = byte_1ECC94E20;

  v3 = specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(v0, v1, v2);

  return v3 & 1;
}

void one-time initialization function for selfReflectionUserDefaults()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA87A70);
  v2 = [v0 initWithSuiteName_];

  static SelfReflectionUserDefaults.selfReflectionUserDefaults = v2;
}

uint64_t *SelfReflectionUserDefaults.selfReflectionUserDefaults.unsafeMutableAddressor()
{
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  return &static SelfReflectionUserDefaults.selfReflectionUserDefaults;
}

uint64_t static SelfReflectionUserDefaults.selfReflectionUserDefaults.getter()
{
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  v0 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
  v1 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
  return v0;
}

uint64_t key path getter for static SelfReflectionUserDefaults.fallbackToMighty : SelfReflectionUserDefaults.Type@<X0>(_BYTE *a1@<X8>)
{
  swift_beginAccess();
  v2 = static SelfReflectionUserDefaults._fallbackToMighty;
  v3 = off_1ECC94E18;
  v4 = byte_1ECC94E20;

  v5 = specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(v2, v3, v4);

  *a1 = v5 & 1;
  return result;
}

uint64_t key path setter for static SelfReflectionUserDefaults.fallbackToMighty : SelfReflectionUserDefaults.Type(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  specialized SelfReflectionUserDefaultsProperty.wrappedValue.setter(v1);
  return swift_endAccess();
}

uint64_t static SelfReflectionUserDefaults.fallbackToMighty.setter(uint64_t a1)
{
  v1 = a1;
  swift_beginAccess();
  specialized SelfReflectionUserDefaultsProperty.wrappedValue.setter(v1);
  return swift_endAccess();
}

uint64_t specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  if (static SelfReflectionUserDefaults.selfReflectionUserDefaults)
  {
    v6 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
    v7 = MEMORY[0x1E12A1410](a1, a2);
    v8 = [v6 objectForKey_];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28[0] = v26;
    v28[1] = v27;
    outlined init with copy of Any?(v28, &v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v28);

      a3 = v25;
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.conversationBridge);
      swift_bridgeObjectRetain_n();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v26 = v18;
        *v17 = 136315394;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v26);

        *(v17 + 4) = v19;
        *(v17 + 12) = 2080;
        v20 = String.init<A>(describing:)();
        v22 = v21;

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v26);

        *(v17 + 14) = v23;
        _os_log_impl(&dword_1DC659000, v15, v16, "%s value not set, returning default: %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v18, -1, -1);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      outlined destroy of Any?(v28);
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v28[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001DCA87A70, v28);
      _os_log_impl(&dword_1DC659000, v10, v11, "%s user defaults domain does not exist.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }

  return a3 & 1;
}

uint64_t SelfReflectionUserDefaultsProperty.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v58 = *(v5 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51[-v12];
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51[-v16];
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  if (static SelfReflectionUserDefaults.selfReflectionUserDefaults)
  {
    v54 = v7;
    v57 = a2;
    v18 = *v59;
    v19 = v59[1];
    v20 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
    v21 = MEMORY[0x1E12A1410](v18, v19);
    v55 = v20;
    v22 = [v20 objectForKey_];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v31 = v57;
    v62[0] = v60;
    v62[1] = v61;
    outlined init with copy of Any?(v62, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v62);

      (*(v58 + 56))(v17, 0, 1, v5);
      return (*(v58 + 32))(v31, v17, v5);
    }

    else
    {
      (*(v58 + 56))(v17, 1, 1, v5);
      (*(v15 + 8))(v17, v14);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationBridge);
      v33 = v56;
      v34 = *(v56 + 16);
      v35 = v59;
      v34(v13, v59, a1);
      v34(v10, v35, a1);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v52 = v37;
        v39 = v38;
        v53 = swift_slowAlloc();
        *&v60 = v53;
        *v39 = 136315394;
        v41 = *v13;
        v40 = v13[1];
        v56 = *(v33 + 8);
        v42 = v56;

        v42(v13, a1);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v60);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = *(v58 + 16);
        v44(v54, v10 + *(a1 + 28), v5);
        v45 = String.init<A>(describing:)();
        v47 = v46;
        (v56)(v10, a1);
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v60);

        *(v39 + 14) = v48;
        _os_log_impl(&dword_1DC659000, v36, v52, "%s value not set, returning default: %s", v39, 0x16u);
        v49 = v53;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v49, -1, -1);
        MEMORY[0x1E12A2F50](v39, -1, -1);

        outlined destroy of Any?(v62);
        return v44(v57, v59 + *(a1 + 28), v5);
      }

      else
      {

        v50 = *(v33 + 8);
        v50(v10, a1);
        v50(v13, a1);
        outlined destroy of Any?(v62);
        return (*(v58 + 16))(v57, v59 + *(a1 + 28), v5);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v62[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001DCA87A70, v62);
      _os_log_impl(&dword_1DC659000, v24, v25, "%s user defaults domain does not exist.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v28 = *(v58 + 16);
    v29 = v59 + *(a1 + 28);

    return v28(a2, v29, v5);
  }
}

void specialized SelfReflectionUserDefaultsProperty.wrappedValue.setter(char a1)
{
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  if (static SelfReflectionUserDefaults.selfReflectionUserDefaults)
  {
    v2 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v4 = MEMORY[0x1E12A1410](*v1, v1[1]);
    [v2 setObject:v3 forKey:v4];

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001DCA87A70, &v10);
      _os_log_impl(&dword_1DC659000, oslog, v6, "%s user defaults domain does not exist.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E12A2F50](v8, -1, -1);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t SelfReflectionUserDefaultsProperty.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for selfReflectionUserDefaults != -1)
  {
    swift_once();
  }

  if (static SelfReflectionUserDefaults.selfReflectionUserDefaults)
  {
    v5 = *(a2 + 16);
    v6 = static SelfReflectionUserDefaults.selfReflectionUserDefaults;
    v7 = _bridgeAnythingToObjectiveC<A>(_:)();
    v8 = MEMORY[0x1E12A1410](*v2, v2[1]);
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
    v9 = *(*(v5 - 8) + 8);
    v10 = a1;
    v11 = v5;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000001DCA87A70, &v18);
      _os_log_impl(&dword_1DC659000, v13, v14, "%s user defaults domain does not exist.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v11 = *(a2 + 16);
    v9 = *(*(v11 - 8) + 8);
    v10 = a1;
  }

  return v9(v10, v11);
}

uint64_t (*static SelfReflectionUserDefaults.fallbackToMighty.modify(uint64_t a1))(uint64_t a1)
{
  swift_beginAccess();
  *(a1 + 24) = specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(static SelfReflectionUserDefaults._fallbackToMighty, off_1ECC94E18, byte_1ECC94E20) & 1;
  return static SelfReflectionUserDefaults.fallbackToMighty.modify;
}

uint64_t static SelfReflectionUserDefaults.fallbackToMighty.modify(uint64_t a1)
{
  specialized SelfReflectionUserDefaultsProperty.wrappedValue.setter(*(a1 + 24));

  return swift_endAccess();
}

uint64_t SelfReflectionUserDefaultsProperty.init(key:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for SelfReflectionUserDefaultsProperty(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t SelfReflectionUserDefaults.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SelfReflectionUserDefaults.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t key path setter for SelfReflectionUserDefaultsProperty.wrappedValue : <A>SelfReflectionUserDefaultsProperty<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  (*(v8 + 16))(&v13 - v6, v5);
  v11 = type metadata accessor for SelfReflectionUserDefaultsProperty(0, v4, v9, v10);
  return SelfReflectionUserDefaultsProperty.wrappedValue.setter(v7, v11);
}

void (*SelfReflectionUserDefaultsProperty.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SelfReflectionUserDefaultsProperty.wrappedValue.getter(a2, v11);
  return SelfReflectionUserDefaultsProperty.wrappedValue.modify;
}

void SelfReflectionUserDefaultsProperty.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    SelfReflectionUserDefaultsProperty.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SelfReflectionUserDefaultsProperty.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t type metadata completion function for SelfReflectionUserDefaultsProperty(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id ServerBoundContextUpdateContainer.__allocating_init(contextUpdate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *ServerBoundContextUpdateContainer.contextUpdate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate);
  v2 = v1;
  return v1;
}

id ServerBoundContextUpdateContainer.init(coder:)(void *a1)
{
  v3 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7A620);
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    outlined destroy of Any?(v16);
    v5 = 0;
    goto LABEL_8;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
  if (swift_dynamicCast())
  {
    v5 = v12;
LABEL_8:
    *&v1[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = v5;
    v13.receiver = v1;
    v13.super_class = type metadata accessor for ServerBoundContextUpdateContainer();
    v6 = objc_msgSendSuper2(&v13, sel_init);

    return v6;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "Failed to decode the serverContextUpdateCommand", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  type metadata accessor for ServerBoundContextUpdateContainer();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ServerBoundContextUpdateContainer.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate);
  v4 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7A620);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id ServerBoundContextUpdateContainer.init(contextUpdate:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServerBoundContextUpdateContainer();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *ServerBoundContextUpdateContainer.init(serializedBackingStore:)(void *a1)
{
  v2 = v1;
  outlined init with copy of Any(a1, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DC659000, v7, v8, "The backing store for ServerBoundContextUpdateContainer is not of type Data", v9, 2u);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    goto LABEL_8;
  }

  v5 = v18;
  v4 = v19;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
  if (!v21)
  {
    outlined consume of Data._Representation(v18, v19);
    outlined destroy of Any?(v20);
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data._Representation(v18, v19);
    goto LABEL_8;
  }

  v10 = v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "Decoded the ServerBoundContextUpdateContainer", v16, 2u);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  outlined consume of Data._Representation(v5, v4);

LABEL_9:
  *&v2[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = v10;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for ServerBoundContextUpdateContainer();
  v11 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

void ServerBoundContextUpdateContainer.serializedBackingStore()(uint64_t *a1@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate);
  if (v3)
  {
    v4 = objc_opt_self();
    v21[0] = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v21];
    v7 = v21[0];
    if (v6)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v15 = v7;
      v16 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.conversationBridge);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DC659000, v18, v19, "Failed to encode the server context update", v20, 2u);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v8 = 0;
      v10 = 0xC000000000000000;
    }

    a1[3] = MEMORY[0x1E6969080];
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "SARDNativeFlowContextUpdate command is nil at the time of encoding", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v8 = 0;
    a1[3] = MEMORY[0x1E6969080];
    v10 = 0xC000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
}

id ServerBoundContextUpdateContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServerBoundContextUpdateContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerBoundContextUpdateContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *ServerFallbackCapableRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, __int128 a9, __int128 a11, __int128 a13, uint64_t a15, uint64_t a16, void (*a17)(void, void), void *a18, uint64_t a19, __int128 a20, __int128 a22, __int128 a24, uint64_t a26, void *a27, uint64_t a28, void *a29, unsigned __int8 argA8)
{
  v24 = a27[3];
  v25 = a27[4];
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a27, v24);
  *(&v29 + 1) = a16;
  *&v29 = v31;
  v27 = specialized ServerFallbackCapableRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a11, a13, v29, a17, a18, a19, a20, a22, a24, a26, v26, a28, a29, argA8, v30, v24, v25);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a27);
  return v27;
}

uint64_t one-time initialization function for rraasWaitTimeMillis()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static ServerFallbackCapableRequestProcessor.rraasWaitTimeMillis);
  *__swift_project_value_buffer(v0, static ServerFallbackCapableRequestProcessor.rraasWaitTimeMillis) = 1000;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t ServerFallbackCapableRequestProcessor.requestHandledOnServer.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ServerFallbackCapableRequestProcessor.requestHandledOnServer.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerFallbackCapableRequestProcessor.isUserOnActivePhoneCall.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ServerFallbackCapableRequestProcessor.isUserOnActivePhoneCall.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double ServerFallbackCapableRequestProcessor.gatedExecuteNLOnServer.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t ServerFallbackCapableRequestProcessor.gatedExecuteNLOnServer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void ServerFallbackCapableRequestProcessor.handleExecuteNLOnServerMessage(_:)(void *a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for MessageSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage);
  *(v2 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = a1;
  v10 = a1;

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v13 = v10;
  v74 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v73 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v72 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v71 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v76[0] = v21;
    *v18 = 138412546;
    *(v18 + 4) = v13;
    *v20 = a1;
    *(v18 + 12) = 2080;
    v22 = v13;
    MessageBase.source.getter();
    v23 = MessageSource.rawValue.getter();
    v25 = v24;
    (*(v6 + 8))(v8, v71);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v76);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1DC659000, v14, v15, "ExecutionBridge received message: %@ from: %s", v18, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    v27 = v18;
    v3 = v72;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = (*(*v3 + 608))();
  if (v28)
  {
    v29 = v28;
    v30 = v73;
    v31 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v33 = v32;
    v34 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v35 = *v34;
    v36 = v34[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v34, v36);
    v37 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v31, v33, v35);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v35, v36);
    if (v37)
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1DC659000, v38, v39, "TRPState is present, running ENOS in Medoc path", v40, 2u);
        MEMORY[0x1E12A2F50](v40, -1, -1);
      }

LABEL_13:

      v47 = (*(*v37 + 408))(v46);
      if (ResultCandidateProcessingStatus.rawValue.getter(v47) == 0x64656C65636E6163 && v48 == 0xE800000000000000)
      {
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v75 = v54;
            *v53 = 136315138;
            v55 = *v37;
            v72 = v3;
            v56 = *(v55 + 832);

            v58 = v56(v57);
            v60 = v59;

            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v75);

            *(v53 + 4) = v61;
            _os_log_impl(&dword_1DC659000, v51, v52, "Received ExecuteNLOnServer when RC state: %s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v54);
            MEMORY[0x1E12A2F50](v54, -1, -1);
            MEMORY[0x1E12A2F50](v53, -1, -1);
          }

          ServerFallbackCapableRequestProcessor.attemptServerFallback(executeNLOnServer:rcState:)(v30, v37);

LABEL_26:

          return;
        }
      }

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v75 = v65;
        *v64 = 136315138;
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v75);

        *(v64 + 4) = v66;
        _os_log_impl(&dword_1DC659000, v62, v63, "RC ID:%s has already been canceled. Not handling ExecuteNLOnServerMessage any further.", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x1E12A2F50](v65, -1, -1);
        MEMORY[0x1E12A2F50](v64, -1, -1);
      }

      else
      {
      }

      goto LABEL_26;
    }

    v45 = *v34;
    v44 = v34[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    v37 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v31, v33, v45);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    if (v37)
    {
      goto LABEL_13;
    }

    v41 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v75 = v69;
      *v68 = 136315138;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v75);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_1DC659000, v41, v67, "Received ExecuteNLOnServer before RC state is created for RC ID: %s .. this may happen if no ASR or text input message was received before this message is received from the message bus.", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x1E12A2F50](v69, -1, -1);
      MEMORY[0x1E12A2F50](v68, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "Received ExecuteNLOnServer while we are not in a turn. Ignoring.", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }
  }
}

void ServerFallbackCapableRequestProcessor.attemptServerFallback(executeNLOnServer:rcState:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v82 - v16;
  v17 = type metadata accessor for InputOrigin();
  v18 = *(v17 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2->isa + 76);
  v91 = v2;
  v23 = v22(v19);
  if (v23)
  {
    v24 = v23;
    v83 = a1;
    (*(v18 + 104))(v21, *MEMORY[0x1E69D04C0], v17);
    _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E8]);
    v89 = v24;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v85 = a2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    if (v92[0] == v92[4] && v92[1] == v92[5])
    {
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v18 + 8))(v21, v17);

      if ((v30 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (((*(*a2 + 480))(v25) & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.conversationBridge);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v91;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v92[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), v92);
        _os_log_impl(&dword_1DC659000, v38, v39, "Server fallback gated for RC %s in FF request until endpointer signal is available", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1E12A2F50](v43, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      (*(*a2 + 416))(11);
      v44 = (*(v41->isa + 197))(v92);
      v46 = v45;
      v47 = v83;
      MEMORY[0x1E12A1680]();
      if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44(v92, 0);
      goto LABEL_47;
    }

    v31 = v9;
    v32 = v90;
    (*(*a2 + 552))();
    v33 = v87;
    v34 = v88;
    (*(v87 + 104))(v14, *MEMORY[0x1E69D0278], v88);
    (*(v33 + 56))(v14, 0, 1, v34);
    v35 = *(v7 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v32, v31, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, v31 + v35, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v36 = *(v33 + 48);
    if (v36(v31, 1, v34) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (v36(v31 + v35, 1, v34) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
LABEL_42:
        v77 = v91;
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v78 = type metadata accessor for Logger();
        __swift_project_value_buffer(v78, static Logger.conversationBridge);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_1DC659000, v79, v80, "SDSD decision was 'mitigated', not sending ENOS command to server. Setting rcState to serverFallbackFinished and sending CommitResultCandidateId", v81, 2u);
          MEMORY[0x1E12A2F50](v81, -1, -1);
        }

        (*(*a2 + 416))(12);
        specialized static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(1, v77[12].isa, v77[13].isa, v77 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v77[8].isa, v77[9].isa, &v77[3].isa);
        (*(v77->isa + 145))(a2);
        goto LABEL_47;
      }
    }

    else
    {
      v48 = v86;
      outlined init with copy of ReferenceResolutionClientProtocol?(v31, v86, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (v36(v31 + v35, 1, v34) != 1)
      {
        v72 = v31 + v35;
        v73 = v84;
        (*(v33 + 32))(v84, v72, v34);
        _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0288]);
        v74 = v48;
        v75 = dispatch thunk of static Equatable.== infix(_:_:)();
        v76 = *(v33 + 8);
        v76(v73, v34);
        outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v76(v74, v34);
        outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        if (v75)
        {
          goto LABEL_42;
        }

LABEL_27:
        v49 = (*a2 + 416);
        v50 = *v49;
        (*v49)(10);
        (*(*a2 + 656))(1);
        v51 = v91;
        v52 = ServerFallbackCapableRequestProcessor.makePreExecutionRules(_:)(a2);
        v53 = (*(**(&v51->isa + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) + 88))();
        (*(*a2 + 512))(BYTE1(v53));
        v54 = (*(*a2 + 536))(v53);
        v55 = *(*a2 + 504);
        v56 = (v55)(v54);
        if ((*(v51->isa + 202))(v56))
        {
          v90 = v52;
          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, static Logger.conversationBridge);

          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v92[0] = v61;
            *v60 = 136315138;
            v62 = v55();
            v63 = PreExecutionDecision.rawValue.getter(v62);
            v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v92);

            *(v60 + 4) = v65;
            _os_log_impl(&dword_1DC659000, v58, v59, "Stopping server fallback because of preExecutionDecision %s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            MEMORY[0x1E12A2F50](v61, -1, -1);
            v66 = v60;
            v51 = v91;
            MEMORY[0x1E12A2F50](v66, -1, -1);
          }

          v67 = (v50)(12);
          if ((*(*a2 + 480))(v67))
          {
            (*(v51->isa + 145))(a2);
          }

          goto LABEL_34;
        }

        v68 = (*(*a2 + 408))();
        if (ResultCandidateProcessingStatus.rawValue.getter(v68) == 0xD000000000000018 && 0x80000001DCA7B580 == v69)
        {

          v70 = v89;
        }

        else
        {
          v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v70 = v89;
          if ((v71 & 1) == 0)
          {
LABEL_34:

LABEL_47:

            return;
          }
        }

        ServerFallbackCapableRequestProcessor.sendExecuteNLOnServerCommand(executeNLOnServer:rcState:turn:)(v83, a2, v70);
        goto LABEL_34;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (*(v33 + 8))(v48, v34);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    goto LABEL_27;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.conversationBridge);
  v91 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v91, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DC659000, v91, v27, "Received ExecuteNLOnServer while we are not in a turn. Ignoring.", v28, 2u);
    MEMORY[0x1E12A2F50](v28, -1, -1);
  }

  v29 = v91;
}