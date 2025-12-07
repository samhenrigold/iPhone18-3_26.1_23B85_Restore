uint64_t ConversationRequestProcessor.handleTextBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v15 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DCA6B020;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E69D0530], v6);
  v12(v11 + v8, *MEMORY[0x1E69D0558], v6);
  v12(v11 + 2 * v8, *MEMORY[0x1E69D0538], v6);

  v13 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v13, v15, v5, v10, 0xF000000000000007, 0, v2, v13, specialized ConversationRequestProcessor.makeResultCandidateState(from:));

  swift_setDeallocating();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(void *a1, unsigned int *a2, void (*a3)(id))
{
  ResultCandidateRequestMessageBase.resultCandidateId.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DCA66060;
  (*(v7 + 104))(v9 + v8, *a2, v6);

  v11 = a1;
  a3(v11);

  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleNLResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserID();
  isa = v8[-1].isa;
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v109 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v109 - v13;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.conversationBridge);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v112 = v14;
    v21 = v5;
    v22 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v23 = v16;
    _os_log_impl(&dword_1DC659000, v17, v18, "ConversationBridge handling message: %@", v19, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v24 = v22;
    v5 = v21;
    v14 = v112;
    MEMORY[0x1E12A2F50](v24, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v25 = (*(*v2 + 608))();
  if (!v25)
  {

    v116 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v117[0] = v55;
      *v54 = 136315138;
      v56 = (*(*v2 + 400))();
      if (v58 > 1u)
      {
        if (v58 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v56, v57, 2);
          v59 = 0xEC00000064657472;
          v60 = 0x617473206E727574;
        }

        else
        {
          v84 = (v56 | v57) == 0;
          if (v56 | v57)
          {
            v60 = 0x6574656C706D6F63;
          }

          else
          {
            v60 = 1701602409;
          }

          if (v84)
          {
            v59 = 0xE400000000000000;
          }

          else
          {
            v59 = 0xE800000000000000;
          }
        }
      }

      else if (v58)
      {
        v59 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v56, v57, 1);
        v60 = 0xD00000000000001DLL;
      }

      else
      {
        v59 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v56, v57, 0);
        v60 = 0xD000000000000011;
      }

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, v117);

      *(v54 + 4) = v85;
      _os_log_impl(&dword_1DC659000, v116, v53, "Got DirectActionResultCandidateMessage when in state %s: Ignoring", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1E12A2F50](v55, -1, -1);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      goto LABEL_43;
    }

LABEL_22:
    v72 = v116;

    return;
  }

  v26 = v25;
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    v61 = v16;

    v116 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v116, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v118 = v65;
      *v63 = 138412546;
      *(v63 + 4) = v61;
      *v64 = v61;
      *(v63 + 12) = 2080;
      v66 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      (*(v5 + 16))(v7, v26 + v66, v4);
      v67 = v61;
      v68 = RequestType.rawValue.getter();
      v70 = v69;
      (*(v5 + 8))(v7, v4);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v118);

      *(v63 + 14) = v71;
      _os_log_impl(&dword_1DC659000, v116, v62, "%@ is not supported for this requestType: %s", v63, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1E12A2F50](v65, -1, -1);
      MEMORY[0x1E12A2F50](v63, -1, -1);

LABEL_43:

      return;
    }

    goto LABEL_22;
  }

  v27 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v29 = v28;
  v30 = (v26 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
  v112 = v27;
  v33 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v27, v29, v32);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
  if (!v33)
  {

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v118 = v76;
      *v75 = 136315138;
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v29, &v118);

      *(v75 + 4) = v77;
      _os_log_impl(&dword_1DC659000, v73, v74, "Received NL result before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x1E12A2F50](v76, -1, -1);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }

    else
    {
    }

    goto LABEL_50;
  }

  NLResultCandidateMessage.voiceIdScore.getter();
  NLResultCandidateMessage.voiceIdClassification.getter();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  v34 = type metadata accessor for SelectedUserAttributes();
  (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
  v35 = (*(*v33 + 800))(v14);
  v36 = (*(*v33 + 408))(v35);
  if (ResultCandidateProcessingStatus.rawValue.getter(v36) == 0x64656C65636E6163 && v37 == 0xE800000000000000)
  {

LABEL_28:

    v73 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v73, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v118 = v80;
      *v79 = 136315138;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v29, &v118);

      *(v79 + 4) = v81;
      v82 = "RC ID:%s has already been canceled. Not handling NLResultCandidateMessage any further.";
LABEL_30:
      _os_log_impl(&dword_1DC659000, v73, v78, v82, v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      v83 = v79;
LABEL_31:
      MEMORY[0x1E12A2F50](v83, -1, -1);
LABEL_49:

LABEL_50:

      return;
    }

LABEL_48:

    goto LABEL_49;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_28;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v110 = v42;
    v111 = swift_slowAlloc();
    v118 = v111;
    *v42 = 136315138;
    v43 = *(*v33 + 832);

    v109 = v40;
    v45 = v43(v44);
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v118);

    v50 = v109;
    v49 = v110;
    *(v110 + 1) = v48;
    v51 = v49;
    _os_log_impl(&dword_1DC659000, v50, v41, "Received NL output when RC state: %s", v49, 0xCu);
    v52 = v111;
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    MEMORY[0x1E12A2F50](v52, -1, -1);
    MEMORY[0x1E12A2F50](v51, -1, -1);
  }

  else
  {
  }

  if ((*(*v33 + 312))())
  {

    v73 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v118 = v80;
      *v79 = 136315138;
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v29, &v118);

      *(v79 + 4) = v86;
      v82 = "Already received NL output for this RC ID: %s .. this happened because we received multiple NL outputs for the same RC ID.";
      goto LABEL_30;
    }

    goto LABEL_48;
  }

  v87 = v114;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v88 = UserID.sharedUserId.getter();
  v90 = v89;
  v114 = *(isa + 1);
  (v114)(v87, v116);
  v91 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  if (v88 == UserID.sharedUserId.getter() && v90 == v92)
  {
  }

  else
  {
    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v93 & 1) == 0)
    {
      v94 = v16;

      v73 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v73, v95))
      {
        goto LABEL_49;
      }

      v96 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v118 = v112;
      *v96 = 136315394;
      v97 = v113;
      v111 = v73;
      UserIdAwareResultCandidateMessageBase.userId.getter();
      v98 = UserID.sharedUserId.getter();
      v100 = v99;
      v101 = v116;
      LODWORD(v110) = v95;
      v102 = v114;
      (v114)(v97, v116);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v118);

      *(v96 + 4) = v103;
      *(v96 + 12) = 2080;
      (*(isa + 2))(v97, &v33[v91], v101);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v102(v97, v101);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v118);

      *(v96 + 14) = v107;
      v73 = v111;
      _os_log_impl(&dword_1DC659000, v111, v110, "Discrepency in userId. UserId received with NL RC: %s, but RCState userId: %s", v96, 0x16u);
      v108 = v112;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v108, -1, -1);
      v83 = v96;
      goto LABEL_31;
    }
  }

  ConversationRequestProcessor.handleNLResultCandidateMessage(_:rcState:)(v16, v33);
}

void ConversationRequestProcessor.handleNLRepetitionMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v65 = v12;

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v65;
    *(v15 + 4) = v65;
    *v16 = v17;
    v18 = v17;
    _os_log_impl(&dword_1DC659000, v13, v14, "ConversationBridge handling message: %@", v15, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v19 = (*(*v2 + 608))();
  if (v19)
  {
    v20 = v19;
    v21 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v5 + 16))(v10, v20 + v21, v4);
    (*(v5 + 104))(v7, *MEMORY[0x1E69D0548], v4);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    LOBYTE(v21) = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);
    if (v21)
    {
      v23 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
      v25 = v24;
      v26 = (v20 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v27 = *v26;
      if (*v26 >> 62 == 1)
      {
        v28 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        v30 = v28 == v23 && v29 == v25;
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          v50 = Logger.logObject.getter();
          v60 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v50, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_1DC659000, v50, v60, "RC already selected. Not handling NLRepetitionMessage.", v61, 2u);
            MEMORY[0x1E12A2F50](v61, -1, -1);
          }

          goto LABEL_34;
        }
      }

      v32 = *v26;
      v31 = v26[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
      v33 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v23, v25, v32);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
      if (v33)
      {
        v34 = (*(*v33 + 408))();
        if (ResultCandidateProcessingStatus.rawValue.getter(v34) == 0x64656C65636E6163 && v35 == 0xE800000000000000)
        {
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v37 & 1) == 0)
          {
            v39 = (*(*v33 + 896))(v38);
            if (v39)
            {
              v40 = v39;
              if ((*(*v39 + 120))())
              {

                v41 = Logger.logObject.getter();
                v42 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v41, v42))
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v66 = v44;
                  *v43 = 136315138;
                  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v66);

                  *(v43 + 4) = v45;
                  v46 = "Repetition result is already set for this RC ID: %s. This should not happen as there is only one NLRepetition message for one RC.";
LABEL_49:
                  _os_log_impl(&dword_1DC659000, v41, v42, v46, v43, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v44);
                  MEMORY[0x1E12A2F50](v44, -1, -1);
                  MEMORY[0x1E12A2F50](v43, -1, -1);
LABEL_51:

                  goto LABEL_46;
                }
              }

              else
              {
                v63 = NLRepetitionMessage.repetitionResults.getter();
                (*(*v40 + 128))(v63);

                v41 = Logger.logObject.getter();
                v42 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v41, v42))
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v66 = v44;
                  *v43 = 136315138;
                  v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v66);

                  *(v43 + 4) = v64;
                  v46 = "Cached NL repetition results in ResultCandidateState for RC ID: %s";
                  goto LABEL_49;
                }
              }

              goto LABEL_51;
            }

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v66 = v57;
              *v56 = 136315138;
              v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v66);

              *(v56 + 4) = v62;
              v59 = "RC ID:%s is not a speech-based RC. Not revealing ASR.";
              goto LABEL_38;
            }

            goto LABEL_44;
          }
        }

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v66 = v57;
          *v56 = 136315138;
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v66);

          *(v56 + 4) = v58;
          v59 = "RC ID:%s has already been canceled. Not handling NLRepetitionMessage.";
LABEL_38:
          _os_log_impl(&dword_1DC659000, v54, v55, v59, v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1E12A2F50](v57, -1, -1);
          MEMORY[0x1E12A2F50](v56, -1, -1);
LABEL_45:

LABEL_46:

          return;
        }

LABEL_44:

        goto LABEL_45;
      }

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "RC State missing. SpeechBasedRCState should be created before NLRepetitionMessage.";
        goto LABEL_33;
      }
    }

    else
    {
      v50 = Logger.logObject.getter();
      LOBYTE(v51) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Request is not a speech request. Not handling NLRepetitionMessage";
LABEL_33:
        _os_log_impl(&dword_1DC659000, v50, v51, v53, v52, 2u);
        MEMORY[0x1E12A2F50](v52, -1, -1);
      }
    }

LABEL_34:

    return;
  }

  v65 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v65, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1DC659000, v65, v47, "Request not active. Not handling NLRepetitionMessage.", v48, 2u);
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  v49 = v65;
}

void ConversationRequestProcessor.handleNLResultCandidateMessage(_:rcState:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[2];
  v12 = a2[3];
  v14 = NLResultCandidateMessageBase.userParses.getter();
  (*(*a2 + 320))(v14);
  NLResultCandidateMessageBase.responseStatusCode.getter();
  (*(*a2 + 608))(v11);
  NLResultCandidateMessageBase.languageVariantResult.getter();
  (*(*a2 + 344))(v8);
  v15 = NLResultCandidateMessageBase.responseVariantResult.getter();
  (*(*a2 + 368))(v15);
  (*(*a2 + 416))(5);
  NLResultCandidateMessageBase.fallbackParse.getter();
  (*(*a2 + 704))(v5);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.conversationBridge);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136315138;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v23);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v17, v18, "Cached NL output in ResultCandidateState for RC ID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  else
  {
  }

  ConversationRequestProcessor.maybeRunExecution(rcState:)(a2);
}

void ConversationRequestProcessor.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Trying to fallback to IntelligenceFlow", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v7);
  v8 = objc_allocWithZone(type metadata accessor for FallbackToIFRequestedMessage());
  v9 = FallbackToIFRequestedMessage.init(build:)();
  if (v9)
  {
    v10 = v9;
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Posted FallbackToIFRequestedMessage to the bus", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[8], v2[9], &v18);
      _os_log_impl(&dword_1DC659000, v14, v15, "Failed to create FallbackToIFRequestedMessage for requestId: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes021FallbackToIFRequestedB0C14PrescribedToolOSgMd, &_s16SiriMessageTypes021FallbackToIFRequestedB0C14PrescribedToolOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v17 = *MEMORY[0x1E69D0448];
  v18 = type metadata accessor for MessageSource();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  FallbackToIFRequestedMessage.Builder.source.setter();

  FallbackToIFRequestedMessage.Builder.assistantId.setter();
  v20 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v13, &a2[v20], v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  FallbackToIFRequestedMessage.Builder.sessionId.setter();

  FallbackToIFRequestedMessage.Builder.requestId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v7, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v23 = type metadata accessor for PrescribedTool();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    v25 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  }

  else
  {
    PrescribedTool.messageBusRepresentation.getter(v10);
    (*(v24 + 8))(v7, v23);
  }

  return FallbackToIFRequestedMessage.Builder.prescribedTool.setter();
}

uint64_t PrescribedTool.messageBusRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrescribedTool();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  (*(v5 + 16))(&v25 - v10, v2, v4, v9);
  static PrescribedTool.searchTool.getter();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type PrescribedTool and conformance PrescribedTool, MEMORY[0x1E69CFE68], MEMORY[0x1E69CFE70]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    v14 = *MEMORY[0x1E69D03C8];
    v15 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    v16 = *(v15 - 8);
    (*(v16 + 104))(a1, v14, v15);
    return (*(v16 + 56))(a1, 0, 1, v15);
  }

  static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13(v7, v4);
  v13(v11, v4);
  if (v17)
  {
    v18 = *MEMORY[0x1E69D03C0];
    v15 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    v16 = *(v15 - 8);
    (*(v16 + 104))(a1, v18, v15);
    return (*(v16 + 56))(a1, 0, 1, v15);
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
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "Unknown PrescribedTool", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  v24 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

void ConversationRequestProcessor.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v7 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriXRedirectContext();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v77 - v14;
  v16 = type metadata accessor for SiriXRedirectContext();
  isa = v16[-1].isa;
  v90 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v77 - v20;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationBridge);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a2;
    v25 = a1;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "Trying to fallback to SiriX", v26, 2u);
    v27 = v26;
    a1 = v25;
    a2 = v24;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v28 = (*(*v4 + 608))();
  if (v28)
  {
    v78 = v11;
    v29 = (v28 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v31 = *v29;
    v30 = v29[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v31, v30);
    v32 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(a1, a2, v31);
    v33 = a2;
    v34 = a1;
    v35 = v32;
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v31, v30);
    if (v35)
    {
      (*(*v4 + 504))(0);
      (*(*v35 + 416))(15);
      outlined init with copy of ReferenceResolutionClientProtocol?(v87, v15, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
      v37 = isa;
      v36 = v90;
      if ((*(isa + 6))(v15, 1, v90) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
        ConversationRequestProcessor.maybeRunExecution(rcState:)(v35);
      }

      else
      {
        v50 = v85;
        (*(v37 + 4))(v85, v15, v36);
        (*(v37 + 2))(v18, v50, v36);
        v51 = v18;
        v52 = v50;
        SiriXRedirectContext.init(from:)(v51, v88);
        v53 = v82;
        SiriXRedirectContext.reason.getter();
        v55 = v83;
        v54 = v84;
        if ((*(v83 + 88))(v53, v84) == *MEMORY[0x1E69CFA20])
        {
          (*(v55 + 96))(v53, v54);
          v56 = v79;
          v57 = v80;
          v58 = v81;
          (*(v80 + 32))(v79, v53, v81);
          v59 = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
          v61 = v60;
          v62 = (*(v57 + 8))(v56, v58);
        }

        else
        {
          v62 = (*(v55 + 8))(v53, v54);
          v59 = 0;
          v61 = 0;
        }

        MEMORY[0x1EEE9AC00](v62);
        *(&v77 - 4) = v52;
        *(&v77 - 3) = v4;
        *(&v77 - 2) = v59;
        *(&v77 - 1) = v61;
        v64 = objc_allocWithZone(type metadata accessor for FallbackToSiriXRequestedMessage());
        v65 = FallbackToSiriXRequestedMessage.init(build:)();

        if (v65)
        {
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_1DC659000, v66, v67, "Posting FallbackToSiriXRequestedMessage", v68, 2u);
            MEMORY[0x1E12A2F50](v68, -1, -1);
          }

          __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
          dispatch thunk of MessagePublishing.postMessage(_:)();

          (*(v86 + 8))(v88, v78);
          (*(isa + 1))(v52, v90);
        }

        else
        {
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          v71 = os_log_type_enabled(v69, v70);
          v72 = isa;
          if (v71)
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_1DC659000, v69, v70, "Could not build FallbackToSiriXRequestedMessage. Missing fields?", v73, 2u);
            MEMORY[0x1E12A2F50](v73, -1, -1);
          }

          else
          {
          }

          v76 = v78;

          (*(v86 + 8))(v88, v76);
          (*(v72 + 1))(v52, v90);
        }
      }
    }

    else
    {

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v91 = v49;
        *v48 = 136315138;
        *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v91);
        _os_log_impl(&dword_1DC659000, v46, v47, "Received redirectToSiriX before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x1E12A2F50](v49, -1, -1);
        MEMORY[0x1E12A2F50](v48, -1, -1);
      }
    }
  }

  else
  {

    v90 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92[0] = v40;
      *v39 = 136315138;
      v41 = (*(*v4 + 400))();
      if (v43 > 1u)
      {
        if (v43 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v41, v42, 2);
          v44 = 0xEC00000064657472;
          v45 = 0x617473206E727574;
        }

        else
        {
          v74 = (v41 | v42) == 0;
          if (v41 | v42)
          {
            v45 = 0x6574656C706D6F63;
          }

          else
          {
            v45 = 1701602409;
          }

          if (v74)
          {
            v44 = 0xE400000000000000;
          }

          else
          {
            v44 = 0xE800000000000000;
          }
        }
      }

      else if (v43)
      {
        v44 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v41, v42, 1);
        v45 = 0xD00000000000001DLL;
      }

      else
      {
        v44 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v41, v42, 0);
        v45 = 0xD000000000000011;
      }

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v92);

      *(v39 + 4) = v75;
      _os_log_impl(&dword_1DC659000, v90, v38, "Got redirectToSiriX when in state %s: Ignoring", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12A2F50](v40, -1, -1);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    else
    {
      v63 = v90;
    }
  }
}

uint64_t SiriXRedirectContext.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v34 = a1;
  SiriXRedirectContext.reason.getter();
  v19 = (*(v9 + 88))(v11, v8);
  if (v19 == *MEMORY[0x1E69CFA18])
  {
    (*(v9 + 96))(v11, v8);
    v20 = v11;
    v21 = v32;
    (*(v5 + 32))(v7, v20, v32);
    SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
    SiriXRedirectContext.RedirectReason.NoMatchingTool.init(searchSucceeded:)();
    (*(v5 + 8))(v7, v21);
    v22 = MEMORY[0x1E69D0400];
LABEL_9:
    (*(v13 + 104))(v18, *v22, v12);
    (*(v13 + 16))(v15, v18, v12);
    SiriXRedirectContext.init(reason:)();
    v27 = type metadata accessor for SiriXRedirectContext();
    (*(*(v27 - 8) + 8))(v34, v27);
    return (*(v13 + 8))(v18, v12);
  }

  if (v19 == *MEMORY[0x1E69CFA20])
  {
    (*(v9 + 96))(v11, v8);
    v23 = v29;
    v24 = v30;
    v25 = v11;
    v26 = v31;
    (*(v30 + 32))(v29, v25, v31);
    SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
    SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(rewrittenUtterance:)();
    (*(v24 + 8))(v23, v26);
    v22 = MEMORY[0x1E69D0408];
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x1E69CF9F8])
  {
    v22 = MEMORY[0x1E69D03F8];
    goto LABEL_9;
  }

  if (v19 == *MEMORY[0x1E69CFA40])
  {
    v22 = MEMORY[0x1E69D0410];
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in ConversationRequestProcessor.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SiriXRedirectContext();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SiriXRedirectContext();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v31, v14, v20);

  SiriXRedirectContext.init(from:)(v17, v22);
  v23 = *MEMORY[0x1E69D0460];
  v24 = type metadata accessor for MessageSource();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v13, v23, v24);
  (*(v25 + 56))(v13, 0, 1, v24);
  FallbackToSiriXRequestedMessage.Builder.source.setter();

  FallbackToSiriXRequestedMessage.Builder.assistantId.setter();
  v26 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v10, &a3[v26], v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  FallbackToSiriXRequestedMessage.Builder.sessionId.setter();

  FallbackToSiriXRequestedMessage.Builder.requestId.setter();
  FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.setter();
  v29 = v32;
  (*(v19 + 16))(v32, v22, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.setter();
  return (*(v19 + 8))(v22, v18);
}

void ConversationRequestProcessor.willRedirectToSiriX(rcId:context:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - v9;
  v11 = (*(*v3 + 608))(v8);
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v13 = *v12;
    v14 = v12[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v12, v14);
    v15 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(a1, a2, v13);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v13, v14);
    if (v15)
    {
      v16 = type metadata accessor for SiriXRedirectContext();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v10, a3, v16);
      (*(v17 + 56))(v10, 0, 1, v16);
      (*(*v15 + 752))(v10);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.conversationBridge);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v37 = v31;
        *v30 = 136315138;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v37);
        _os_log_impl(&dword_1DC659000, v28, v29, "Received willRedirectToSiriX before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1E12A2F50](v31, -1, -1);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);

    v36 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v38[0] = v21;
      *v20 = 136315138;
      v22 = (*(*v3 + 400))();
      if (v24 > 1u)
      {
        if (v24 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v22, v23, 2);
          v25 = 0xEC00000064657472;
          v26 = 0x617473206E727574;
        }

        else
        {
          v33 = (v22 | v23) == 0;
          if (v22 | v23)
          {
            v26 = 0x6574656C706D6F63;
          }

          else
          {
            v26 = 1701602409;
          }

          if (v33)
          {
            v25 = 0xE400000000000000;
          }

          else
          {
            v25 = 0xE800000000000000;
          }
        }
      }

      else if (v24)
      {
        v25 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v22, v23, 1);
        v26 = 0xD00000000000001DLL;
      }

      else
      {
        v25 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v22, v23, 0);
        v26 = 0xD000000000000011;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v38);

      *(v20 + 4) = v34;
      _os_log_impl(&dword_1DC659000, v36, v19, "Got willRedirectToSiriX when in state %s: Ignoring", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    else
    {
      v32 = v36;
    }
  }
}

void ConversationRequestProcessor.handlePommesResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v108 = &v103 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v103 - v9;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1DC659000, v14, v15, "ExecutionBridge received message: %@", v16, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v110 = (*(*v2 + 608))();
  if (v110)
  {
    v105 = v10;
    v19 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v21 = v20;
    v22 = (v110 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v23 = *v22;
    v24 = v22[1];
    if (v23 >> 62 != 1 || (*((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == v19 ? (v25 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == v21) : (v25 = 0), v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v23, v24);
      v26 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v19, v21, v23);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v23, v24);
      if (v26)
      {
        v103 = v6;

        v107 = v12;
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();

        v29 = os_log_type_enabled(v27, v28);
        v106 = v21;
        if (v29)
        {
          v30 = swift_slowAlloc();
          v104 = v19;
          v31 = v30;
          v32 = swift_slowAlloc();
          v111 = v32;
          *v31 = 136315394;
          *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v21, &v111);
          *(v31 + 12) = 2080;
          v33 = v13;
          v34 = v26;
          v35 = *(*v26 + 832);

          v37 = v35(v36);
          v26 = v34;
          v38 = v37;
          v40 = v39;

          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v111);
          v13 = v33;

          *(v31 + 14) = v41;
          _os_log_impl(&dword_1DC659000, v27, v28, "PommesResultCandidateMessage was received for RC ID %s when RC state: %s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v32, -1, -1);
          v42 = v31;
          v19 = v104;
          MEMORY[0x1E12A2F50](v42, -1, -1);
        }

        v51 = (*(*v26 + 408))();
        if (ResultCandidateProcessingStatus.rawValue.getter(v51) == 0x64656C65636E6163 && v52 == 0xE800000000000000)
        {
        }

        else
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v54 & 1) == 0)
          {
            if ((*(*v26 + 384))(v55))
            {

              v56 = v106;

              v46 = Logger.logObject.getter();
              v57 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v46, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v111 = v59;
                *v58 = 136315138;
                v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v56, &v111);

                *(v58 + 4) = v60;
                v61 = "Already received Pommes output for this RC ID: %s .. this happened because we received multiple Pommes outputs for the same RC ID.";
LABEL_33:
                _os_log_impl(&dword_1DC659000, v46, v57, v61, v58, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v59);
                MEMORY[0x1E12A2F50](v59, -1, -1);
                MEMORY[0x1E12A2F50](v58, -1, -1);
LABEL_35:

LABEL_40:

                return;
              }

              goto LABEL_34;
            }

            v65 = PommesResultCandidateMessage.pommesResponse.getter();
            v66 = v105;
            PommesResultCandidateMessage.error.getter();
            v67 = v108;
            PommesResultCandidateMessage.searchReason.getter();
            v68 = type metadata accessor for PommesSearchReason();
            (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
            type metadata accessor for PommesInfo(0);
            v69 = swift_allocObject();
            *(v69 + 16) = v65;
            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v66, v69 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v67, v69 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
            (*(*v26 + 392))(v69);
            v70 = v106;

            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.debug.getter();

            v73 = os_log_type_enabled(v71, v72);
            v104 = v19;
            if (v73)
            {
              v74 = v13;
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v77 = v19;
              v78 = v76;
              v111 = v76;
              *v75 = 136315138;
              *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v70, &v111);
              _os_log_impl(&dword_1DC659000, v71, v72, "Cached PommesResultCandidateMessage in ResultCandidateState for RC ID: %s", v75, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v78);
              MEMORY[0x1E12A2F50](v78, -1, -1);
              v79 = v75;
              v13 = v74;
              MEMORY[0x1E12A2F50](v79, -1, -1);
            }

            v80 = v109;
            PommesResultCandidateMessage.error.getter();
            v81 = type metadata accessor for PommesError();
            v82 = (*(*(v81 - 8) + 48))(v80, 1, v81);
            outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
            if (v82 != 1)
            {
              v83 = v13;

              v84 = Logger.logObject.getter();
              v85 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v84, v85))
              {
                v86 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                v111 = v109;
                *v86 = 136315394;
                PommesResultCandidateMessage.error.getter();
                v87 = String.init<A>(describing:)();
                v89 = v13;
                v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v111);

                *(v86 + 4) = v90;
                v13 = v89;
                *(v86 + 12) = 2080;
                *(v86 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v70, &v111);
                _os_log_impl(&dword_1DC659000, v84, v85, "PommesResultCandidateMessage had error: %s for RC ID: %s", v86, 0x16u);
                v91 = v109;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v91, -1, -1);
                MEMORY[0x1E12A2F50](v86, -1, -1);
              }
            }

            v92 = PommesResultCandidateMessage.pommesResponse.getter();
            if (v92)
            {
              v93 = v92;
            }

            else
            {

              v93 = Logger.logObject.getter();
              v94 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v93, v94))
              {
                v95 = v13;
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v111 = v97;
                *v96 = 136315138;
                v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v70, &v111);

                *(v96 + 4) = v98;
                _os_log_impl(&dword_1DC659000, v93, v94, "PommesResultCandidateMessage had unexpected nil response for RC ID: %s", v96, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v97);
                MEMORY[0x1E12A2F50](v97, -1, -1);
                v99 = v96;
                v13 = v95;
                MEMORY[0x1E12A2F50](v99, -1, -1);
LABEL_52:

                if (one-time initialization token for insightRequestSummaryLogger != -1)
                {
                  swift_once();
                }

                v100 = type metadata accessor for InsightRequestSummaryLogger(0);
                v101 = __swift_project_value_buffer(v100, static Logger.insightRequestSummaryLogger);
                v102 = v13;

                specialized InsightRequestSummaryLogger.emitDebug(_:)(v101, v102, v2, v26);

                ConversationRequestProcessor.maybeRunExecution(rcState:)(v26);

                return;
              }
            }

            goto LABEL_52;
          }
        }

        v62 = v106;

        v46 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v46, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v111 = v59;
          *v58 = 136315138;
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v62, &v111);

          *(v58 + 4) = v63;
          v61 = "RC ID:%s has already been canceled. Not handling PommesResultCandidateMessage.";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_35;
      }

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v46, v47))
      {

        goto LABEL_40;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v111 = v49;
      *v48 = 136315138;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v111);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1DC659000, v46, v47, "Received PommesResultCandidateMessage before RC state was created for RC ID: %s. Dropping it on the floor.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    else
    {

      v46 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v46, v64))
      {
        goto LABEL_40;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v64, "A different RC was already selected. Not handling PommesResultCandidateMessage.", v48, 2u);
    }

    MEMORY[0x1E12A2F50](v48, -1, -1);
    goto LABEL_40;
  }

  v110 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v110, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1DC659000, v110, v43, "Request already canceled. Not handling PommesResultCandidateMessage.", v44, 2u);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  v45 = v110;
}

void ConversationRequestProcessor.handleSpeechStopDetectedMessage(_:)(void *a1)
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
    osloga = swift_slowAlloc();
    v79[0] = osloga;
    *v8 = 136315138;
    v9 = v5;
    v10 = v5;
    v11 = [v9 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v5 = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v79);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v6, v7, "ConversationBridge received SpeechStopDetectedMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(osloga);
    MEMORY[0x1E12A2F50](osloga, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled))
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v16, "SpeechStopDetectedMessage handling was never undertaken for multi user devices as Flexible Endpoitning was deprecated before multi user on Medoc work started.", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

LABEL_8:

    return;
  }

  v18 = (*(*v2 + 608))();
  if (v18)
  {
    v19 = v18;
    v20 = (v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v22 = *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v21 = *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

    if (v22 == RequestMessageBase.requestId.getter() && v21 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v26 = v5;

        oslog = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(oslog, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v79[0] = v29;
          *v28 = 136315394;
          v30 = RequestMessageBase.requestId.getter();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v79);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v33 = *v20;
          v34 = v20[1];

          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v79);

          *(v28 + 14) = v35;
          _os_log_impl(&dword_1DC659000, oslog, v27, "SpeechStopDetectedMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v29, -1, -1);
          MEMORY[0x1E12A2F50](v28, -1, -1);

          return;
        }

        goto LABEL_8;
      }
    }

    v40 = SpeechStopDetectedMessage.lastTRPId.getter();
    v42 = v41;
    v43 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v45 = *v43;
    v44 = v43[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    v46 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v40, v42, v45);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    if (v46)
    {
      v74 = v42;
      v75 = v5;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      v73 = v40;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v49 = 136315138;
        v50 = *(*v46 + 832);

        v52 = v50(v51);
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v78);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_1DC659000, v47, v48, "SpeechStopDetectedMessage received for TRP state: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1E12A2F50](v72, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      else
      {
      }

      v63 = (*(*v46 + 408))();
      if (ResultCandidateProcessingStatus.rawValue.getter(v63) == 0x64656C65636E6163 && v64 == 0xE800000000000000)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {

          (*(*v2 + 976))(v75, v19, v46);

LABEL_40:

          return;
        }
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v78 = v70;
        *v69 = 136315138;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v78);

        *(v69 + 4) = v71;
        _os_log_impl(&dword_1DC659000, v67, v68, "TRP ID: %s already canceled. Not sending commit signal.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1E12A2F50](v70, -1, -1);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      else
      {
      }

      goto LABEL_40;
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v40;
      v61 = v59;
      v78 = v59;
      *v58 = 136315138;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v42, &v78);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1DC659000, v56, v57, "Received SpeechStopDetectedMessage before RC state was created for TRP ID: %s. Dropping it on the floor.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "SpeechStopDetectedMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v39 = (*(*v2 + 416))(v79);
    ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v5 | 0x8000000000000000);
    v39(v79, 0);
  }
}

void ConversationRequestProcessor.State.cacheCandidateMessage(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (*(v2 + 16) <= 1u)
  {
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = a1;
      v7 = (a1 & 0x1FFFFFFFFFFFFFFFLL);

      specialized Array.append<A>(contentsOf:)(inited);
      outlined consume of ConversationRequestProcessor.State(v4, v5, 1);
      *v2 = v4;
      *(v2 + 8) = v5;
      *(v2 + 16) = 1;
      return;
    }

    goto LABEL_16;
  }

  if (*(v2 + 16) == 2)
  {
    v8 = 0xEC00000064657472;
    v9 = 0x617473206E727574;
  }

  else
  {
    if (!(v5 | v4))
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1DCA66060;
      *(v15 + 32) = a1;
      v16 = (a1 & 0x1FFFFFFFFFFFFFFFLL);
      specialized Array.append<A>(contentsOf:)(v15);
      *v2 = v4;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      return;
    }

    v9 = 0x6574656C706D6F63;
    v8 = 0xE800000000000000;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v18);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1DC659000, oslog, v11, "Not caching candidate request message as we are in an invalid state %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationRequestProcessor.handleTRPCandidateRequestMessage(_:)(unint64_t a1)
{
  v2 = v1;
  v4 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DCA65720;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E69D0548], v7);
  v13(v12 + v9, *MEMORY[0x1E69D0538], v7);

  v14 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v14, v4, v6, v11, a1 | 0x2000000000000000, 0, v2, v14, specialized ConversationRequestProcessor.makeResultCandidateState(from:));

  swift_setDeallocating();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleNLRoutingDecisionMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  isa = v4[-1].isa;
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v128 - v8;
  v138 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v9 = v138[-1].isa;
  MEMORY[0x1EEE9AC00](v138);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v137 = &v128 - v12;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v136 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v142[0] = v130;
    *v18 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v4;
    v22 = v2;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, v142);
    v2 = v22;
    v4 = v131;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_1DC659000, v15, v16, "ConversationBridge received NLRoutingDecisionMessage: %s", v18, 0xCu);
    v26 = v130;
    __swift_destroy_boxed_opaque_existential_1Tm(v130);
    MEMORY[0x1E12A2F50](v26, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) != 1)
  {
    isa = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(isa, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, isa, v33, "SystemAssistantExperience not enabled. Ignoring NLRoutingDecisionMessage.", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

LABEL_12:
    v35 = isa;
LABEL_13:

    return;
  }

  v27 = (*(*v2 + 608))();
  if (!v27)
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "NLRoutingDecisionMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v39 = (*(*v2 + 416))(v142);
    ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v14 | 0x6000000000000000);
    v39(v142, 0);
    return;
  }

  v28 = v27;
  v29 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v31 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v30 = *(v27 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v31 == RequestMessageBase.requestId.getter() && v30 == v32)
  {

    goto LABEL_20;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
    v92 = v14;

    isa = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(isa, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v142[0] = v95;
      *v94 = 136315394;
      v96 = RequestMessageBase.requestId.getter();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v142);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      v99 = *v29;
      v100 = v29[1];

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v142);

      *(v94 + 14) = v101;
      _os_log_impl(&dword_1DC659000, isa, v93, "NLRoutingDecisionMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v95, -1, -1);
      MEMORY[0x1E12A2F50](v94, -1, -1);

      return;
    }

    goto LABEL_12;
  }

LABEL_20:
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    v78 = v14;

    v138 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v138, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v141 = v82;
      *v80 = 138412546;
      *(v80 + 4) = v78;
      *v81 = v78;
      *(v80 + 12) = 2080;
      v83 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v84 = isa;
      v85 = &v28[v83];
      v86 = v139;
      (isa[2].isa)(v139, v85, v4);
      v87 = v78;
      v88 = RequestType.rawValue.getter();
      v90 = v89;
      (v84[1].isa)(v86, v4);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v141);

      *(v80 + 14) = v91;
      _os_log_impl(&dword_1DC659000, v138, v79, "%@ is not supported for this requestType: %s", v80, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v81, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v81, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1E12A2F50](v82, -1, -1);
      MEMORY[0x1E12A2F50](v80, -1, -1);

      return;
    }

    v35 = v138;
    goto LABEL_13;
  }

  v41 = NLRoutingDecisionMessage.trpCandidateId.getter();
  v43 = v42;
  v44 = &v28[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState];
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v44, v46);
  v47 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v41, v43, v45);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v45, v46);
  if (!v47)
  {

    v69 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v141 = v104;
      *v103 = 136315138;
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v141);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_1DC659000, v69, v102, "Received NLRoutingDecisionMessage before RC state is created for TRP ID: %s. This is an error", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x1E12A2F50](v104, -1, -1);
      MEMORY[0x1E12A2F50](v103, -1, -1);
    }

    else
    {
    }

    goto LABEL_47;
  }

  isa = v43;
  v48 = (*(*v47 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v48) == 0x64656C65636E6163 && v49 == 0xE800000000000000)
  {

    goto LABEL_41;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v51)
  {
LABEL_41:
    v106 = isa;

    v69 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v69, v107))
    {

      goto LABEL_45;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v141 = v109;
    *v108 = 136315138;
    v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v106, &v141);

    *(v108 + 4) = v110;
    _os_log_impl(&dword_1DC659000, v69, v107, "TRP ID: %s has already been cancelled. Not handling NLRoutingDecisionMessage any further", v108, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    MEMORY[0x1E12A2F50](v109, -1, -1);
    v77 = v108;
LABEL_43:
    MEMORY[0x1E12A2F50](v77, -1, -1);
LABEL_45:

LABEL_47:

    return;
  }

  v52 = Logger.logObject.getter();
  v53 = v47;
  v54 = static os_log_type_t.debug.getter();

  v55 = os_log_type_enabled(v52, v54);
  v129 = v2;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v139 = v28;
    v57 = v56;
    v58 = swift_slowAlloc();
    v141 = v58;
    *v57 = 136315138;
    v59 = *v53;
    v131 = v52;
    v60 = *(v59 + 832);

    v62 = v60(v61);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v141);

    *(v57 + 4) = v65;
    v52 = v131;
    _os_log_impl(&dword_1DC659000, v131, v54, "Received NLRoutingDecisionMessage when RC state: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  v66 = v136;
  v67 = v134;
  (*(*v53 + 576))();
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    outlined destroy of RoutingDecision(v67, type metadata accessor for RoutingDecision);

    v68 = v53;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    v71 = v68;

    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_45;
    }

    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v141 = v73;
    *v72 = 136315138;
    v74 = *(v71 + 2);
    v75 = *(v71 + 3);

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v141);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_1DC659000, v69, v70, "RCState does not have a preselected RoutingDecision when receiving NLRoutingDecision for trpId = %s. This is an error.", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x1E12A2F50](v73, -1, -1);
    v77 = v72;
    goto LABEL_43;
  }

  (*(v66 + 4))(v137, v67, v138);
  v111 = v133;
  NLRoutingDecisionMessage.routingDecision.getter();
  swift_storeEnumTagMultiPayload();
  v112 = *(*v53 + 584);
  v139 = v53;
  v112(v111);
  v113 = v132;
  NLRoutingDecisionMessage.routingDecision.getter();
  v114 = static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)();
  v115 = *(v66 + 1);
  v115(v113, v138);
  if ((v114 & 1) == 0)
  {

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1DC659000, v119, v120, "We default to SiriXFallback in eager execution if NLRoutingDecision has not yet been received. We need to re-run eager exeuction if the RoutingDecision has changed.", v121, 2u);
      MEMORY[0x1E12A2F50](v121, -1, -1);
    }

    v122 = v139;
    (*(*v139 + 416))(6);
    ConversationRequestProcessor.maybeRunExecution(rcState:)(v122);
    goto LABEL_57;
  }

  v116 = *v44;
  if (*v44 >> 62 != 1)
  {

    goto LABEL_59;
  }

  v117 = v116 & 0x3FFFFFFFFFFFFFFFLL;
  v118 = v139;
  if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != v41 || *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != isa)
  {
    v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v126)
    {
      goto LABEL_65;
    }

LABEL_59:
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_1DC659000, v123, v124, "StoppedListeningForText|SpeechContinuation has not yet been received or this NLRoutingDecisionMessage does not correspond to a finalized TRP.", v125, 2u);
      MEMORY[0x1E12A2F50](v125, -1, -1);

LABEL_63:
      v115(v137, v138);
      return;
    }

LABEL_62:

    goto LABEL_63;
  }

LABEL_65:
  v127 = v129;
  if ((*(*v129 + 928))(v117))
  {
    (*(*v127 + 1160))(v118);

LABEL_57:

    goto LABEL_62;
  }

  v115(v137, v138);
}

void ConversationRequestProcessor.handleTTResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v245 = *(v4 - 8);
  v246 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v244 = &v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SelectedUserAttributes();
  v234 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v221 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v221 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v231 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v230 = &v221 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v229 = &v221 - v17;
  v18 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v228 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v227 = &v221 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v226 = &v221 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v225 = &v221 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v236 = &v221 - v27;
  v28 = type metadata accessor for TCUMappedNLResponse();
  v238 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v221 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTResponseMessage.MitigationDecision();
  isa = v31[-1].isa;
  v243 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v224 = &v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v235 = &v221 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v241 = &v221 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v240 = &v221 - v38;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, static Logger.conversationBridge);
  v41 = a1;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v239 = v28;
  v237 = v30;
  v233 = v11;
  v232 = v8;
  v247 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v250[0] = v223;
    *v45 = 136315138;
    v46 = v41;
    v47 = [v46 description];
    v48 = v6;
    v49 = v40;
    v50 = v2;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v54 = v51;
    v2 = v50;
    v40 = v49;
    v6 = v48;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, v250);

    *(v45 + 4) = v55;
    _os_log_impl(&dword_1DC659000, v42, v43, "ConversationBridge received TTResponseMessage: %s", v45, 0xCu);
    v56 = v223;
    __swift_destroy_boxed_opaque_existential_1Tm(v223);
    MEMORY[0x1E12A2F50](v56, -1, -1);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  v57 = (*(v2->isa + 76))();
  if (v57)
  {
    v58 = v57;
    v59 = (v57 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v61 = *(v57 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v60 = *(v57 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

    v62 = v247;
    if (v61 == RequestMessageBase.requestId.getter() && v60 == v63)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {
        v95 = v62;

        v247 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v247, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v250[0] = v98;
          *v97 = 136315394;
          v99 = RequestMessageBase.requestId.getter();
          v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, v250);

          *(v97 + 4) = v101;
          *(v97 + 12) = 2080;
          v102 = *v59;
          v103 = v59[1];

          v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v250);

          *(v97 + 14) = v104;
          _os_log_impl(&dword_1DC659000, v247, v96, "TTResponseMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v97, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v98, -1, -1);
          v94 = v97;
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    if (ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
    {
      v71 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
      v73 = v72;
      v74 = (v58 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v75 = *v74;
      v76 = v74[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v74, v76);
      v77 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v71, v73, v75);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v75, v76);
      if (!v77)
      {

        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v249 = v109;
          *v108 = 136315138;
          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v249);

          *(v108 + 4) = v110;
          _os_log_impl(&dword_1DC659000, v106, v107, "Received TTResponseMessage before RC state is created for TRP ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus.", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v109);
          MEMORY[0x1E12A2F50](v109, -1, -1);
          MEMORY[0x1E12A2F50](v108, -1, -1);
        }

        else
        {
        }

        goto LABEL_40;
      }

      if ((v71 != v77[2] || v73 != v77[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v106 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v106, v116))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_1DC659000, v106, v116, "TTResponse is for a TRP that does not match the finalized TRP, ignoring this.", v113, 2u);
          goto LABEL_38;
        }

LABEL_39:

LABEL_40:

        return;
      }

      v78 = (*(*v77 + 408))();
      if (ResultCandidateProcessingStatus.rawValue.getter(v78) == 0x64656C65636E6163 && v79 == 0xE800000000000000)
      {

        goto LABEL_32;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v111)
      {
LABEL_32:

        v106 = Logger.logObject.getter();
        v112 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v106, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v249 = v114;
          *v113 = 136315138;
          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v249);

          *(v113 + 4) = v115;
          _os_log_impl(&dword_1DC659000, v106, v112, "TRP ID: %s has already been cancelled. Not handling TTResponseMessage any further", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v114);
          MEMORY[0x1E12A2F50](v114, -1, -1);
LABEL_38:
          MEMORY[0x1E12A2F50](v113, -1, -1);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      v244 = v71;

      v245 = v40;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();

      v119 = os_log_type_enabled(v117, v118);
      v246 = v77;
      v223 = v74;
      if (v119)
      {
        v120 = swift_slowAlloc();
        v222 = v73;
        v121 = v120;
        v221 = swift_slowAlloc();
        v249 = v221;
        *v121 = 136315138;
        v122 = v2;
        v123 = *(*v77 + 832);

        v125 = v123(v124);
        v2 = v122;
        v126 = v125;
        v128 = v127;

        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v249);

        *(v121 + 4) = v129;
        _os_log_impl(&dword_1DC659000, v117, v118, "Received TTResponseMessage when RC state: %s", v121, 0xCu);
        v130 = v221;
        __swift_destroy_boxed_opaque_existential_1Tm(v221);
        MEMORY[0x1E12A2F50](v130, -1, -1);
        v131 = v121;
        v73 = v222;
        MEMORY[0x1E12A2F50](v131, -1, -1);
      }

      v132 = v240;
      TTResponseMessage.mitigationDecision.getter();
      v133 = v241;
      v134 = isa;
      v135 = *(isa + 13);
      LODWORD(v222) = *MEMORY[0x1E69D0260];
      v136 = v243;
      v135(v241);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0290]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v137 = *(v134 + 1);
      v137(v133, v136);
      v138 = (v137)(v132, v136);
      if (v249 == v248)
      {

        v106 = Logger.logObject.getter();
        v139 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v106, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v249 = v141;
          *v140 = 136315138;
          v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v73, &v249);

          *(v140 + 4) = v142;
          v143 = "TTResponseMessage with TRP ID: %s has mitigationDecision as forceMitigate, not proceeding further";
LABEL_49:
          _os_log_impl(&dword_1DC659000, v106, v139, v143, v140, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v141);
          MEMORY[0x1E12A2F50](v141, -1, -1);
          MEMORY[0x1E12A2F50](v140, -1, -1);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      if ((*(*v246 + 312))(v138))
      {

        v106 = Logger.logObject.getter();
        v139 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v106, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v249 = v141;
          *v140 = 136315138;
          v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v73, &v249);

          *(v140 + 4) = v144;
          v143 = "Already received TTResponseMessage for this TRP ID: %s .. this happened because we received multiple NL outputs for the same TRP ID.";
          goto LABEL_49;
        }

LABEL_35:

        goto LABEL_39;
      }

      v145 = v236;
      v146 = v247;
      TTResponseMessage.tcuMappedNLResponse.getter();
      v147 = v238;
      v148 = v239;
      if ((*(v238 + 48))(v145, 1, v239) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v145, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v149 = v146;

        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v150, v151))
        {

LABEL_92:

          return;
        }

        v152 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v249 = v247;
        *v152 = 136315394;
        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v73, &v249);

        *(v152 + 4) = v153;
        *(v152 + 12) = 2080;
        v154 = v235;
        TTResponseMessage.mitigationDecision.getter();
        v156 = isa;
        v155 = v243;
        v157 = v224;
        (*(isa + 2))(v224, v154, v243);
        v158 = (*(v156 + 11))(v157, v155);
        if (v158 == *MEMORY[0x1E69D0270])
        {
          v159 = 0xE800000000000000;
          v160 = 0x64657463656C6573;
        }

        else if (v158 == *MEMORY[0x1E69D0278])
        {
          v159 = 0xE900000000000064;
          v160 = 0x657461676974696DLL;
        }

        else if (v158 == *MEMORY[0x1E69D0268])
        {
          v159 = 0xEE00646574616769;
          v160 = 0x74694D656279616DLL;
        }

        else
        {
          v218 = v158;
          v137(v235, v243);
          if (v218 == v222)
          {
            v159 = 0xED00006574616769;
            v160 = 0x74694D6563726F66;
LABEL_91:
            v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v159, &v249);

            *(v152 + 14) = v219;
            _os_log_impl(&dword_1DC659000, v150, v151, "TTResponseMessage with TRP ID: %s has no tcuMapedNLResponse and has mitigationDecision as %s... ignoring this message.", v152, 0x16u);
            v220 = v247;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v220, -1, -1);
            MEMORY[0x1E12A2F50](v152, -1, -1);
            goto LABEL_92;
          }

          v160 = 0;
          v159 = 0xE000000000000000;
          v235 = v224;
        }

        v137(v235, v243);
        goto LABEL_91;
      }

      (*(v147 + 32))(v237, v145, v148);
      v161 = TCUMappedNLResponse.nlResponse.getter();
      v162 = NLParseResponse.userParses.getter();

      v163 = v246;
      (*(*v246 + 320))(v162);
      v164 = TCUMappedNLResponse.nlResponse.getter();
      v165 = v225;
      NLParseResponse.fallbackParse.getter();

      (*(*v163 + 704))(v165);
      v166 = TCUMappedNLResponse.nlResponse.getter();
      v167 = v226;
      NLParseResponse.serverFallbackReason.getter();

      (*(*v163 + 728))(v167);
      (*(*v163 + 416))(5);
      v168 = v227;
      TTResponseMessage.mitigationDecision.getter();
      (*(isa + 7))(v168, 0, 1, v243);
      (*(*v163 + 560))(v168);
      v169 = TCUMappedNLResponse.nlResponse.getter();
      v170 = v228;
      NLParseResponse.responseStatusCode.getter();

      (*(*v163 + 608))(v170);
      v171 = TCUMappedNLResponse.nlResponse.getter();
      v172 = v229;
      NLParseResponse.languageVariantResult.getter();

      (*(*v163 + 344))(v172);
      v173 = TCUMappedNLResponse.nlResponse.getter();
      v174 = NLParseResponse.responseVariantResult.getter();
      v176 = v175;

      v177 = (*(*v163 + 368))(v174, v176);
      v178 = (*(*v163 + 904))(v177);
      if (v178)
      {
        v179 = v178;
        v180 = TCUMappedNLResponse.tcuId.getter();
        (*(*v179 + 224))(v180);
      }

      v181 = v230;
      TTResponseMessage.selectedUserAttributes.getter();
      v182 = (*(*v163 + 800))(v181);
      v183 = v231;
      (*(*v163 + 792))(v182);
      v184 = v234;
      v185 = (*(v234 + 48))(v183, 1, v6);
      v186 = v232;
      if (v185 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v183, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_1DC659000, v187, v188, "#user-session: Did not receive SelectedUserAttribute", v189, 2u);
          MEMORY[0x1E12A2F50](v189, -1, -1);
        }
      }

      else
      {
        v247 = v2;
        v190 = v233;
        (*(v184 + 32))(v233, v183, v6);
        (*(v184 + 16))(v186, v190, v6);
        v191 = Logger.logObject.getter();
        v192 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = v6;
          v194 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          v222 = v73;
          v243 = v195;
          v249 = v195;
          *v194 = 136315138;
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SelectedUserAttributes and conformance SelectedUserAttributes, MEMORY[0x1E69D0860], MEMORY[0x1E69D0868]);
          v196 = dispatch thunk of CustomStringConvertible.description.getter();
          v197 = v186;
          v198 = v184;
          v200 = v199;
          isa = *(v198 + 8);
          (isa)(v197, v193);
          v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v200, &v249);

          *(v194 + 4) = v201;
          _os_log_impl(&dword_1DC659000, v191, v192, "#user-session: Received SelectedUserAttributes=%s", v194, 0xCu);
          v202 = v243;
          __swift_destroy_boxed_opaque_existential_1Tm(v243);
          v73 = v222;
          MEMORY[0x1E12A2F50](v202, -1, -1);
          MEMORY[0x1E12A2F50](v194, -1, -1);

          (isa)(v233, v193);
        }

        else
        {

          v203 = *(v184 + 8);
          v203(v186, v6);
          v203(v233, v6);
        }

        v2 = v247;
      }

      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        v249 = v207;
        *v206 = 136315138;
        *(v206 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v73, &v249);
        _os_log_impl(&dword_1DC659000, v204, v205, "Cached NL output for TRP ID: %s", v206, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v207);
        MEMORY[0x1E12A2F50](v207, -1, -1);
        MEMORY[0x1E12A2F50](v206, -1, -1);
      }

      v208 = v223;
      ConversationRequestProcessor.maybeRunExecution(rcState:)(v163);
      v209 = *v208;
      if (*v208 >> 62 == 1)
      {
        v210 = v209 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v209 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == v244 && *((v209 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == v73)
        {

LABEL_79:
          v215 = Logger.logObject.getter();
          v216 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v215, v216))
          {
            v217 = swift_slowAlloc();
            *v217 = 0;
            _os_log_impl(&dword_1DC659000, v215, v216, "TTResponse for a finalizedTRP has been received, will handle StoppedListeningForText|SpeechContinuation now", v217, 2u);
            MEMORY[0x1E12A2F50](v217, -1, -1);
          }

          (*(v2->isa + 117))(v210);

          goto LABEL_82;
        }

        v214 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v214)
        {
          goto LABEL_79;
        }
      }

      else
      {
      }

      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        *v213 = 0;
        _os_log_impl(&dword_1DC659000, v211, v212, "StoppedListeningForText|SpeechContinuation has not yet been received or this TTResponse does not correspond to a finalized TRP.", v213, 2u);
        MEMORY[0x1E12A2F50](v213, -1, -1);

LABEL_83:
        (*(v238 + 8))(v237, v239);
        return;
      }

LABEL_82:

      goto LABEL_83;
    }

    v80 = v62;

    v247 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v247, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v249 = v84;
      *v82 = 138412546;
      *(v82 + 4) = v80;
      *v83 = v80;
      *(v82 + 12) = 2080;
      v85 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v87 = v244;
      v86 = v245;
      v88 = v246;
      (*(v245 + 16))(v244, v58 + v85, v246);
      v89 = v80;
      v90 = RequestType.rawValue.getter();
      v92 = v91;
      (*(v86 + 8))(v87, v88);
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v249);

      *(v82 + 14) = v93;
      _os_log_impl(&dword_1DC659000, v247, v81, "%@ is not supported for this requestType: %s", v82, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
      v94 = v82;
LABEL_25:
      MEMORY[0x1E12A2F50](v94, -1, -1);

      return;
    }

LABEL_26:

    v105 = v247;

    return;
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v247;
  if (v66)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_1DC659000, v64, v65, "TTResponseMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v68, 2u);
    MEMORY[0x1E12A2F50](v68, -1, -1);
  }

  v69 = (*(v2->isa + 52))(v250);
  ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v67 | 0x4000000000000000);
  v69(v250, 0);
}

void ConversationRequestProcessor.handleMultiUserStoppedListeningForSpeechContinuationMessage(_:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1DC659000, oslog, v4, "ConversationBridge received %s, dropping it.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

uint64_t ConversationRequestProcessor.handleTextBasedTRPCandidateMessage(_:)(void *a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t, uint64_t, unint64_t, void, uint64_t, id, uint64_t))
{
  v6 = v3;
  v8 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v11 = type metadata accessor for RequestType();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DCA66060;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69D0530], v11);

  v15 = a1;
  a3(v15, v8, v10, v14, 0xF000000000000007, 0, v6, v15, a2);

  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);

  return swift_deallocClassInstance();
}

uint64_t SiriXRedirectContext.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v39 = 0;
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  SiriXRedirectContext.reason.getter();
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == *MEMORY[0x1E69D0400])
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 32))(v8, v12, v5);
    v18 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
    MEMORY[0x1EEE9AC00](v18);
    *(&v35 - 2) = v8;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.NoMatchingTool and conformance SiriXRedirectContext.RedirectReason.NoMatchingTool, MEMORY[0x1E69CFA10], MEMORY[0x1E69CFA00]);
    static Buildable.withBuilder(_:)();
    (*(v14 + 104))(v16, *MEMORY[0x1E69CFA18], v13);
    (*(v6 + 8))(v8, v5);
    v19 = v14;
LABEL_10:
    v25 = type metadata accessor for SiriXRedirectContext();
    MEMORY[0x1EEE9AC00](v25);
    *(&v35 - 2) = v16;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext and conformance SiriXRedirectContext, MEMORY[0x1E69CFA50], MEMORY[0x1E69CF9F0]);
    v26 = v41;
    static Buildable.withBuilder(_:)();
    v27 = type metadata accessor for SiriXRedirectContext();
    (*(*(v27 - 8) + 8))(v40, v27);
    (*(v19 + 8))(v16, v13);
    return (*(*(v25 - 8) + 56))(v26, 0, 1, v25);
  }

  v35 = v14;
  if (v17 == *MEMORY[0x1E69D0408])
  {
    (*(v10 + 96))(v12, v9);
    v21 = v36;
    v20 = v37;
    v22 = v38;
    (*(v37 + 32))(v36, v12, v38);
    v23 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
    MEMORY[0x1EEE9AC00](v23);
    *(&v35 - 2) = v21;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.UnableToHandleRequest and conformance SiriXRedirectContext.RedirectReason.UnableToHandleRequest, MEMORY[0x1E69CFA38], MEMORY[0x1E69CFA28]);
    static Buildable.withBuilder(_:)();
    v19 = v35;
    (*(v35 + 104))(v16, *MEMORY[0x1E69CFA20], v13);
    (*(v20 + 8))(v21, v22);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x1E69D03F8])
  {
    v24 = MEMORY[0x1E69CF9F8];
LABEL_9:
    v19 = v35;
    (*(v35 + 104))(v16, *v24, v13);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x1E69D0410])
  {
    v24 = MEMORY[0x1E69CFA40];
    goto LABEL_9;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.conversationBridge);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DC659000, v30, v31, "SiriXRedirectContext has an invalid reason", v32, 2u);
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  v33 = type metadata accessor for SiriXRedirectContext();
  (*(*(v33 - 8) + 8))(v40, v33);
  (*(v10 + 8))(v12, v9);
  v34 = type metadata accessor for SiriXRedirectContext();
  return (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
}

uint64_t ConversationRequestProcessor.handleStoppedListeningForSpeechContinuationMessage(_:)(unint64_t a1)
{
  v2 = StoppedListeningForSpeechContinuationMessage.lastTRPId.getter();
  ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(a1, v2, v3, a1 | 0xA000000000000000);
}

uint64_t ConversationRequestProcessor.handleStoppedListeningForTextContinuationMessage(_:)(void *a1)
{
  v2 = StoppedListeningForTextContinuationMessage.lastTRPId.getter();
  ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(a1, v2, v3, 0xF000000000000007);
}

void ConversationRequestProcessor.handleStoppedListeningForContinuationMessage(_:trpId:messageToCacheIfNotInActiveTurn:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getObjectType();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  oslog = v11;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v109[0] = v99;
    *v14 = 136315394;
    v15 = _typeName(_:qualified:)();
    v101 = a4;
    v104 = v5;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v109);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = v11;
    v19 = [v18 description];
    v20 = a2;
    v21 = a3;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v5 = v104;
    v25 = v22;
    a3 = v21;
    a2 = v20;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v109);

    *(v14 + 14) = v26;
    a4 = v101;
    _os_log_impl(&dword_1DC659000, v12, v13, "ConversationBridge received %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v99, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v27 = (*(*v5 + 400))();
  v30 = v27;
  if (v29 == 2)
  {
    v31 = v28;

    outlined consume of ConversationRequestProcessor.State(v32, v31, 2);
    v33 = &v30[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId];
    v35 = *&v30[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId];
    v34 = *&v30[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8];

    if (v35 == RequestMessageBase.requestId.getter() && v34 == v36)
    {
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v39 = oslog;

        osloga = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(osloga, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v109[0] = v42;
          *v41 = 136315650;
          v43 = _typeName(_:qualified:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v109);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2080;
          v46 = RequestMessageBase.requestId.getter();
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v109);

          *(v41 + 14) = v48;
          *(v41 + 22) = 2080;
          v49 = *v33;
          v50 = v33[1];

          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v109);

          *(v41 + 24) = v51;
          _os_log_impl(&dword_1DC659000, osloga, v40, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v41, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v42, -1, -1);
          MEMORY[0x1E12A2F50](v41, -1, -1);

LABEL_37:

          return;
        }

        goto LABEL_39;
      }
    }

    v105 = v5;
    v58 = &v30[OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState];
    swift_beginAccess();
    v59 = *v58;
    v60 = v58[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v58, v60);
    v61 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(a2, a3, v59);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v59, v60);
    if (!v61)
    {

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = a2;
        v83 = swift_slowAlloc();
        v108 = v83;
        *v81 = 136315394;
        v84 = _typeName(_:qualified:)();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v108);

        *(v81 + 4) = v86;
        *(v81 + 12) = 2080;
        *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, a3, &v108);
        _os_log_impl(&dword_1DC659000, v79, v80, "Received %s before RC state was created for TRP ID: %s. Dropping it on the floor.", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v83, -1, -1);
        MEMORY[0x1E12A2F50](v81, -1, -1);
      }

      goto LABEL_37;
    }

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v108 = v102;
      *v64 = 136315394;
      v65 = _typeName(_:qualified:)();
      v100 = v63;
      v103 = a3;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v108);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = *(*v61 + 832);

      v70 = v68(v69);
      v72 = v71;

      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v108);
      a3 = v103;

      *(v64 + 14) = v73;
      _os_log_impl(&dword_1DC659000, v62, v100, "%s received for RC state: %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    else
    {
    }

    v87 = (*(*v61 + 408))();
    if (ResultCandidateProcessingStatus.rawValue.getter(v87) == 0x64656C65636E6163 && v88 == 0xE800000000000000)
    {
    }

    else
    {
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v90 & 1) == 0)
      {
        v91 = *v58;
        v92 = v58[1];
        *v58 = v61 | 0x4000000000000000;
        v58[1] = 0;

        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v91, v92);
        (*(*v105 + 936))(v61);

        goto LABEL_37;
      }
    }

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = a2;
      v98 = v96;
      v108 = v96;
      *v95 = 136315138;
      *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, a3, &v108);
      _os_log_impl(&dword_1DC659000, v93, v94, "TRP ID: %s already canceled. Not sending commit signal.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x1E12A2F50](v98, -1, -1);
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    goto LABEL_37;
  }

  outlined consume of ConversationRequestProcessor.State(v27, v28, v29);
  if ((~a4 & 0xF000000000000007) == 0)
  {
    osloga = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v109[0] = v54;
      *v53 = 136315138;
      v55 = _typeName(_:qualified:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v109);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1DC659000, osloga, v52, "%s received for an inactive request. Ignoring.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1E12A2F50](v54, -1, -1);
      MEMORY[0x1E12A2F50](v53, -1, -1);

      return;
    }

LABEL_39:

    return;
  }

  v74 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1DC659000, v75, v76, "StoppedListeningForSpeechContinuationMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v77, 2u);
    MEMORY[0x1E12A2F50](v77, -1, -1);
  }

  v78 = (*(*v5 + 416))(v109);
  ConversationRequestProcessor.State.cacheCandidateMessage(_:)(a4);
  v78(v109, 0);
  outlined consume of CandidateRequestMessage?(a4);
}

uint64_t ConversationRequestProcessor.canCommitExecution(for:)(uint64_t a1, double a2)
{
  v3 = v2;
  v67 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RequestType();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v57 - v21;
  if ((*(*v2 + 496))(v20))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_24;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Execution was already committed. will not call commit.";
    goto LABEL_17;
  }

  v28 = (*(*v2 + 608))();
  if (!v28)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_24;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "No active turn found. Will not call commit.";
LABEL_17:
    _os_log_impl(&dword_1DC659000, v24, v25, v27, v26, 2u);
    MEMORY[0x1E12A2F50](v26, -1, -1);
LABEL_24:

    return 0;
  }

  v66 = v28;
  if (((*(*a1 + 480))() & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "This is not the selectedRC. Will not call commit.";
    goto LABEL_22;
  }

  (*(*a1 + 552))();
  v29 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v30 = (*(*(v29 - 8) + 48))(v22, 1, v29);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  if (v30 == 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v24, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "MitigationDecision has not yet been received for for the selectedTRP. Will not call commit.";
LABEL_22:
    _os_log_impl(&dword_1DC659000, v24, v32, v34, v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
LABEL_23:

    goto LABEL_24;
  }

  v64 = a1;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v39 = v66;
  swift_beginAccess();
  v40 = v68;
  v41 = *(v68 + 2);
  v61 = v68 + 16;
  v62 = v38;
  v60 = v41;
  v41(v18, v39 + v38, v7);
  v42 = *MEMORY[0x1E69D0548];
  v58 = *(v40 + 13);
  v59 = (v40 + 104);
  v58(v15, v42, v7);
  v43 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v57 = v43;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v65 = v6;
  if (v71 == v69 && v72 == v70)
  {
    v63 = 1;
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v44 = *(v68 + 1);
  v44(v15, v7);
  v68 = v44;
  v44(v18, v7);

  v46 = v64;
  if (v63)
  {
    v47 = v65;
    if ((*(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v60(v12, v66 + v62, v7);
    v58(v9, *MEMORY[0x1E69D0530], v7);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v47 = v65;
    if (v71 == v69 && v72 == v70)
    {
      v48 = 1;
    }

    else
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v49 = v9;
    v50 = v68;
    v68(v49, v7);
    v50(v12, v7);

    if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) != 1 || (v48 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  (*(*v46 + 576))(v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = outlined destroy of RoutingDecision(v47, type metadata accessor for RoutingDecision);
  if (EnumCaseMultiPayload != 1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "NLRoutingDecision has not yet been received for the selectedTRP. Will not call commit.";
    goto LABEL_22;
  }

LABEL_39:
  v52 = (*(*v46 + 408))(v45);
  if (ResultCandidateProcessingStatus.rawValue.getter(v52) == 0xD000000000000013 && 0x80000001DCA7B530 == v53)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      __swift_project_value_buffer(v56, static Logger.conversationBridge);
      v24 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v24, v32))
      {
        goto LABEL_23;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Execution has not yet been kicked off. Will not call commit.";
      goto LABEL_22;
    }
  }

  return 1;
}

void ConversationRequestProcessor.reallyHandleStoppedListeningForContinuationMessage(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = (*(*v1 + 608))(v9);
  if (v12)
  {
    v13 = v12;
    (*(*a1 + 488))(1);
    v14 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v5 + 16))(v11, v13 + v14, v4);
    (*(v5 + 104))(v7, *MEMORY[0x1E69D0548], v4);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v30 == v32 && v31 == v33)
    {
      v15 = *(v5 + 8);
      v15(v7, v4);
      v15(v11, v4);
    }

    else
    {
      LODWORD(v29) = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v11, v4);

      if ((v29 & 1) == 0)
      {
        v23 = 0;
LABEL_17:
        v25 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
        swift_beginAccess();
        v26 = *v25;
        v27 = v25[1];
        *v25 = a1 | 0x4000000000000000;
        v25[1] = v23;

        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v26, v27);
        if ((*(*v2 + 928))(a1))
        {
          (*(*v2 + 1160))(a1);
        }

        return;
      }
    }

    v22 = (*(*a1 + 904))(v16);
    if (v22)
    {
      (*(*v22 + 152))(1, 0);
    }

    v23 = (*(*v2 + 1384))(a1, v13, 0, 0);
    v24 = v23;
    goto LABEL_17;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);
  v29 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v29, v18, "No active turn found. This is an error.", v19, 2u);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v20 = v29;
}

uint64_t ConversationRequestProcessor.waitForPommes(for:nlRoutingDecision:)(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v50 - v5;
  v6 = type metadata accessor for ConversationSessionKey();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - v14;
  v16 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v15, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
    goto LABEL_7;
  }

  v23 = *(v17 + 32);
  v23(v22, v15, v16);
  v23(v19, v22, v16);
  v24 = (*(v17 + 88))(v19, v16);
  if (v24 == *MEMORY[0x1E69D02E8] || v24 == *MEMORY[0x1E69D02D0] || v24 == *MEMORY[0x1E69D02C8])
  {
LABEL_6:
    (*(v17 + 8))(v19, v16);
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x1E69D02E0])
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  if (v24 == *MEMORY[0x1E69D02D8])
  {
LABEL_7:
    v25 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);
    if (!v25 || (*(v56 + 16) != *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID) || v25 != *(v56 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 1;
    }

    (*(*v2 + 424))(v57);
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v27 = v52;
    v26 = v53;
    (*(v52 + 104))(v8, *MEMORY[0x1E69D07D0], v53);
    dispatch thunk of ConversationSessionState.value(forKey:userId:)();
    (*(v27 + 8))(v8, v26);
    if (v59)
    {
      v28 = type metadata accessor for PommesContext();
      v29 = v55;
      v30 = swift_dynamicCast();
      (*(*(v28 - 8) + 56))(v29, v30 ^ 1u, 1, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      outlined destroy of ReferenceResolutionClientProtocol?(v58, &_sypSgMd, &_sypSgMR);
      v28 = type metadata accessor for PommesContext();
      v29 = v55;
      (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
    }

    v32 = v54;
    outlined init with copy of ReferenceResolutionClientProtocol?(v29, v54, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    type metadata accessor for PommesContext();
    v33 = *(v28 - 8);
    if ((*(v33 + 48))(v32, 1, v28) == 1)
    {
      v34 = &_s21SiriInformationSearch13PommesContextVSgMd;
      v35 = &_s21SiriInformationSearch13PommesContextVSgMR;
      v36 = v32;
    }

    else
    {
      v37 = v51;
      PommesContext.exportLegacyNLContext()();
      v38 = v28;
      v39 = v37;
      (*(v33 + 8))(v32, v38);
      v40 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) != 1)
      {
        v43 = MEMORY[0x1E129C390]();
        (*(v41 + 8))(v39, v40);
        v42 = v43;
        goto LABEL_21;
      }

      v34 = &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd;
      v35 = &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR;
      v36 = v39;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v36, v34, v35);
    v42 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v44 = *(v42 + 16);

    if (v44)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      return 1;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.conversationBridge);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v46, v47, "No need to wait for POMMES: POMMES is not expecting a gesture response", v48, 2u);
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    return 0;
  }

  if (v24 == *MEMORY[0x1E69D02F8])
  {
    return 0;
  }

  v49 = v24 == *MEMORY[0x1E69D02F0];
  result = 0;
  if (!v49)
  {
    goto LABEL_6;
  }

  return result;
}

void ConversationRequestProcessor.handlePommesTRPCandidateMessage(_:)(NSObject *a1)
{
  v3 = type metadata accessor for RequestType();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v160 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v153 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v162 = &v153 - v14;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v153 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v161 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v165 = &v153 - v23;
  v24 = (*(*v1 + 608))(v22);
  if (!v24)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.conversationBridge);
    v167 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v167, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v167, v43, "PommesTRPCandidateMessage received for an inactive request. Dropping it on the floor.", v44, 2u);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    goto LABEL_40;
  }

  v157 = v12;
  v158 = v8;
  v159 = v7;
  v166 = v24;
  v25 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v27 = *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v26 = *(v24 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  v167 = a1;
  if (v27 == RequestMessageBase.requestId.getter() && v26 == v28)
  {
  }

  else
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v30 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.conversationBridge);
      v32 = v167;

      v167 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v167, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v168[0] = v35;
        *v34 = 136315394;
        v36 = RequestMessageBase.requestId.getter();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v168);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = *v25;
        v40 = v25[1];

        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v168);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_1DC659000, v167, v33, "PommesTRPCandidateMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v35, -1, -1);
        MEMORY[0x1E12A2F50](v34, -1, -1);
LABEL_38:

        return;
      }

LABEL_39:

LABEL_40:
      v96 = v167;

      return;
    }
  }

  v45 = v166;
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.conversationBridge);
    v84 = v167;

    v167 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v167, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = v45;
      v89 = swift_slowAlloc();
      v169[0] = v89;
      *v86 = 138412546;
      *(v86 + 4) = v84;
      *v87 = v84;
      *(v86 + 12) = 2080;
      v90 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      (*(v4 + 16))(v6, v88 + v90, v3);
      v91 = v84;
      v92 = RequestType.rawValue.getter();
      v94 = v93;
      (*(v4 + 8))(v6, v3);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v169);

      *(v86 + 14) = v95;
      _os_log_impl(&dword_1DC659000, v167, v85, "%@ is not supported for this requestType: %s", v86, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v87, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v87, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x1E12A2F50](v89, -1, -1);
      MEMORY[0x1E12A2F50](v86, -1, -1);
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v46 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v48 = v47;
  v49 = (v45 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  if (*v49 >> 62 == 1)
  {
    v52 = *((v50 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = *((v50 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if ((v52 != v46 || v53 != v48) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v104 = v46;
      v105 = one-time initialization token for conversationBridge;

      if (v105 != -1)
      {
        swift_once();
      }

      v106 = type metadata accessor for Logger();
      __swift_project_value_buffer(v106, static Logger.conversationBridge);

      v77 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v107))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v169[0] = v100;
        *v99 = 136315394;
        v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v169);
        v109 = v48;
        v110 = v108;

        *(v99 + 4) = v110;
        *(v99 + 12) = 2080;
        v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v109, v169);

        *(v99 + 14) = v111;
        _os_log_impl(&dword_1DC659000, v77, v107, "TRP already finalized (TRP ID: %s).. Not handling PommesTRPCandidateMessage for TRP ID: %s", v99, 0x16u);
        swift_arrayDestroy();
        goto LABEL_60;
      }

LABEL_62:

      goto LABEL_63;
    }
  }

  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v50, v51);
  v54 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v46, v48, v50);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v50, v51);
  if (!v54)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.conversationBridge);

    v77 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v169[0] = v100;
      *v99 = 136315138;
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v169);

      *(v99 + 4) = v101;
      _os_log_impl(&dword_1DC659000, v77, v98, "Received PommesTRPCandidateMessage before TRP state is created for TRP ID: %s ..this may happen if no ASR or text input message was received before the Pommes output message is received from the message bus.", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
LABEL_60:
      MEMORY[0x1E12A2F50](v100, -1, -1);
      MEMORY[0x1E12A2F50](v99, -1, -1);
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v55 = (*(*v54 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v55) == 0x64656C65636E6163 && v56 == 0xE800000000000000)
  {

LABEL_48:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, static Logger.conversationBridge);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v169[0] = v80;
      *v79 = 136315138;
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v169);

      *(v79 + 4) = v103;
      v82 = "TRP ID: %s has already been cancelled. Not handling PommesTRPCandidateMessage any further";
      goto LABEL_52;
    }

LABEL_53:

    goto LABEL_54;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    goto LABEL_48;
  }

  v156 = v48;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = __swift_project_value_buffer(v59, static Logger.conversationBridge);

  v61 = v54;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.debug.getter();

  v64 = os_log_type_enabled(v62, v63);
  v154 = v46;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v169[0] = v153;
    *v65 = 136315138;
    v66 = *(*v61 + 832);

    v155 = v60;
    v68 = v63;
    v69 = v66(v67);
    v71 = v70;

    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v169);

    *(v65 + 4) = v72;
    v73 = v68;
    v60 = v155;
    _os_log_impl(&dword_1DC659000, v62, v73, "Received PommesTRPCandidateMessage when TRP state: %s", v65, 0xCu);
    v74 = v153;
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    MEMORY[0x1E12A2F50](v74, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  v75 = v61;
  if ((*(*v61 + 384))())
  {

    v76 = v156;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v169[0] = v80;
      *v79 = 136315138;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v76, v169);

      *(v79 + 4) = v81;
      v82 = "Already received PommesTRPCandidateMessage for this TRP ID: %s . Did Pommes post multiple PommesTRPCandidateMessage's with the same trpId?";
LABEL_52:
      _os_log_impl(&dword_1DC659000, v77, v78, v82, v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1E12A2F50](v80, -1, -1);
      MEMORY[0x1E12A2F50](v79, -1, -1);
LABEL_54:

LABEL_63:

      return;
    }

    goto LABEL_53;
  }

  PommesTRPCandidateMessage.pommesResult.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v113 = v158;
    v112 = v159;
    v114 = v165;
    (*(v158 + 32))(v165, v18, v159);
    (*(v113 + 56))(v114, 0, 1, v112);
    v115 = 0;
  }

  else
  {
    v115 = *v18;
    v114 = v165;
    (*(v158 + 56))(v165, 1, 1, v159);
    v116 = v115;
  }

  v117 = v114;
  v118 = v161;
  outlined init with copy of ReferenceResolutionClientProtocol?(v117, v161, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v119 = v162;
  PommesTRPCandidateMessage.searchReason.getter();
  v120 = type metadata accessor for PommesSearchReason();
  (*(*(v120 - 8) + 56))(v119, 0, 1, v120);
  type metadata accessor for PommesInfo(0);
  v121 = swift_allocObject();
  v167 = v115;
  *(v121 + 16) = v115;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v118, v121 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v119, v121 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v122 = (*(*v61 + 392))(v121);
  v123 = (*(*v61 + 904))(v122);
  if (v123)
  {
    v124 = v123;
    v125 = PommesTRPCandidateMessage.tcuId.getter();
    (*(*v124 + 248))(v125);
  }

  v126 = v156;

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.debug.getter();

  v129 = os_log_type_enabled(v127, v128);
  v155 = v60;
  if (v129)
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v169[0] = v131;
    *v130 = 136315138;
    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v126, v169);

    *(v130 + 4) = v132;
    _os_log_impl(&dword_1DC659000, v127, v128, "Cached Pommes output for TRP ID: %s", v130, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    MEMORY[0x1E12A2F50](v131, -1, -1);
    MEMORY[0x1E12A2F50](v130, -1, -1);
  }

  else
  {
  }

  v133 = v157;
  v134 = v163;
  PommesTRPCandidateMessage.pommesResult.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v135 = v158;
    v136 = v159;
    (*(v158 + 32))(v133, v134, v159);
    v137 = v160;
    (*(v135 + 16))(v160, v133, v136);
    v138 = Logger.logObject.getter();
    v139 = v133;
    v140 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v138, v140))
    {
      v141 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v169[0] = v164;
      *v141 = 136315138;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type PommesError and conformance PommesError, MEMORY[0x1E69D04F8], MEMORY[0x1E69D0500]);
      v142 = Error.localizedDescription.getter();
      v143 = v137;
      v144 = v75;
      v146 = v145;
      v147 = *(v135 + 8);
      v147(v143, v136);
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v146, v169);
      v75 = v144;

      *(v141 + 4) = v148;
      _os_log_impl(&dword_1DC659000, v138, v140, "Pommes encountered an error: %s", v141, 0xCu);
      v149 = v164;
      __swift_destroy_boxed_opaque_existential_1Tm(v164);
      MEMORY[0x1E12A2F50](v149, -1, -1);
      MEMORY[0x1E12A2F50](v141, -1, -1);

      v150 = v157;
    }

    else
    {

      v147 = *(v135 + 8);
      v147(v137, v136);
      v150 = v139;
    }

    v147(v150, v136);
    v152 = v165;
    v151 = v167;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v134, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
    v151 = v167;
    v152 = v165;
  }

  ConversationRequestProcessor.maybeRunExecution(rcState:)(v75);

  outlined destroy of ReferenceResolutionClientProtocol?(v152, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
}

void ConversationRequestProcessor.maybeRunExecution(rcState:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v173 = (&v158 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = &v158 - v11;
  v12 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v170 = *(v12 - 8);
  v171 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v174 = (&v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for RoutingDecision(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v169 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v158 - v21;
  v23 = *(*a1 + 408);
  v24 = v23(v20);
  if (v24 > 0xF)
  {
    goto LABEL_24;
  }

  if (((1 << v24) & 0xC060) == 0)
  {
    if (v24 == 7)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.conversationBridge);

      v174 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v174, v36))
      {
        goto LABEL_29;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v176[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v176);
      _os_log_impl(&dword_1DC659000, v174, v36, "Execution already in progress for TRP/RC %s, will not begin execution again", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      v39 = v37;
LABEL_28:
      MEMORY[0x1E12A2F50](v39, -1, -1);

      return;
    }

LABEL_24:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);

    v174 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v174, v47))
    {
      goto LABEL_29;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v176[0] = v49;
    *v48 = 136315138;
    v50 = (v23)();
    v51 = ResultCandidateProcessingStatus.rawValue.getter(v50);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v176);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1DC659000, v174, v47, "Not running execution, unexpected state %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x1E12A2F50](v49, -1, -1);
    v39 = v48;
    goto LABEL_28;
  }

  v25 = (*(*v1 + 400))();
  if (v27 != 2)
  {
    outlined consume of ConversationRequestProcessor.State(v25, v26, v27);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.conversationBridge);
    v174 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v174, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v174, v33, "Cannot run execution: No active turn?", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

LABEL_29:
    v54 = v174;

    return;
  }

  v167 = v26;
  v168 = v25;
  v28 = (v23)();
  v165 = v7;
  v166 = v5;
  if (v28 == 15)
  {
    v29 = *MEMORY[0x1E69D02D8];
    v30 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v22, v29, v30);
    (*(v31 + 56))(v22, 0, 1, v30);
  }

  else
  {
    (*(*a1 + 576))();
    RoutingDecision.value.getter(v22);
    outlined destroy of RoutingDecision(v16, type metadata accessor for RoutingDecision);
  }

  v40 = (*(*v2 + 944))(a1, v22);
  v41 = (*(*a1 + 384))();
  if (!v41)
  {
    if (v40)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.conversationBridge);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1DC659000, v43, v44, "POMMES result is not yet available. Holding off on running execution until Pommes results are received.", v45, 2u);
        MEMORY[0x1E12A2F50](v45, -1, -1);
      }

      goto LABEL_23;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.conversationBridge);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v163 = v4;
      v59 = v58;
      *v58 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "Proceeding without waiting for POMMES result", v58, 2u);
      v60 = v59;
      v41 = 0;
      v4 = v163;
      MEMORY[0x1E12A2F50](v60, -1, -1);
    }
  }

  v61 = (*(*a1 + 904))();
  if (v61)
  {
    v62 = v61;
    v163 = v4;
    v164 = v41;
    v63 = v22;
    v64 = *(*v61 + 216);
    v161 = *v61 + 216;
    v162 = v64;
    v65 = v64();
    if (!v66)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, static Logger.conversationBridge);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1DC659000, v73, v74, "Not running execution since TTResponseMessage has not been received yet", v75, 2u);
        MEMORY[0x1E12A2F50](v75, -1, -1);
      }

      else
      {
      }

      v138 = v22;
      goto LABEL_100;
    }

    v67 = v66;
    if (v40)
    {
      v68 = v65;
      v69 = *(*v62 + 240);
      v160 = *v62 + 240;
      v70 = v69();
      if (v71)
      {
        if (v68 == v70 && v67 == v71)
        {

LABEL_49:
          v22 = v63;
LABEL_50:
          v4 = v163;
          v41 = v164;
          goto LABEL_51;
        }

        v159 = v69;
        v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v63;
        if (v139)
        {

          goto LABEL_50;
        }
      }

      else
      {
        v159 = v69;

        v22 = v63;
      }

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v140 = type metadata accessor for Logger();
      __swift_project_value_buffer(v140, static Logger.conversationBridge);

      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v176[0] = v144;
        *v143 = 136315394;
        v145 = v159();
        if (v146)
        {
          v147 = v146;
        }

        else
        {
          v145 = 7104878;
          v147 = 0xE300000000000000;
        }

        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, v176);

        *(v143 + 4) = v148;
        *(v143 + 12) = 2080;
        v150 = (v162)(v149);
        if (v151)
        {
          v152 = v151;
        }

        else
        {
          v150 = 0x3E6C696E3CLL;
          v152 = 0xE500000000000000;
        }

        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v152, v176);

        *(v143 + 14) = v153;
        _os_log_impl(&dword_1DC659000, v141, v142, "Not running execution since PommesInfo points to tcuId: %s whereas selectedTCUId is %s", v143, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v144, -1, -1);
        MEMORY[0x1E12A2F50](v143, -1, -1);
      }

      else
      {
      }

      goto LABEL_98;
    }

    goto LABEL_49;
  }

LABEL_51:
  v76 = (v23)();
  if (ResultCandidateProcessingStatus.rawValue.getter(v76) == 0x64656C65636E6163 && v77 == 0xE800000000000000)
  {
    goto LABEL_53;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    goto LABEL_55;
  }

  v85 = (v23)(v79);
  if (ResultCandidateProcessingStatus.rawValue.getter(v85) == 0xD000000000000013 && 0x80000001DCA7B530 == v86)
  {
LABEL_53:

    goto LABEL_55;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v87)
  {
LABEL_55:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.conversationBridge);

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v176[0] = v84;
      *v83 = 136315138;
      *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v176);
      _os_log_impl(&dword_1DC659000, v81, v82, "Execution in progress for RC ID: %s. Not sending ConversationUserInput", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1E12A2F50](v84, -1, -1);
LABEL_59:
      MEMORY[0x1E12A2F50](v83, -1, -1);

      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  v89 = __swift_project_value_buffer(v88, static Logger.conversationBridge);

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();

  v92 = os_log_type_enabled(v90, v91);
  v163 = v4;
  v164 = v89;
  if (v92)
  {
    v93 = swift_slowAlloc();
    v94 = v41;
    v95 = swift_slowAlloc();
    v176[0] = v95;
    *v93 = 136315138;
    *(v93 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[2], a1[3], v176);
    _os_log_impl(&dword_1DC659000, v90, v91, "Attempting execution for RC ID: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    v96 = v95;
    v41 = v94;
    MEMORY[0x1E12A2F50](v96, -1, -1);
    MEMORY[0x1E12A2F50](v93, -1, -1);
  }

  v97 = (*(*a1 + 312))();
  if (!v97)
  {
    v81 = Logger.logObject.getter();
    v154 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v154))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1DC659000, v81, v154, "NL User parses is nil", v83, 2u);
      goto LABEL_59;
    }

LABEL_97:

    goto LABEL_98;
  }

  v98 = v97;
  (*(*a1 + 600))();
  v99 = *(*a1 + 336);

  v101 = v172;
  v102 = v99(v100);
  v103 = (*(*a1 + 360))(v102);
  v162 = v104;
  v105 = v173;
  (*(*a1 + 720))();
  v106 = v169;
  outlined init with copy of ReferenceResolutionClientProtocol?(v22, v169, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  type metadata accessor for NLResponse(0);
  v107 = swift_allocObject();
  *(v107 + 16) = v98;
  v108 = v107;
  (*(v170 + 32))(v107 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v174, v171);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v101, v108 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v109 = (v108 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
  v110 = v162;
  *v109 = v103;
  v109[1] = v110;
  *(&v108->isa + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = v41;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v105, v108 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v106, v108 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_1DC659000, v111, v112, "Constructing ConversationUserInput from unranked results", v113, 2u);
    MEMORY[0x1E12A2F50](v113, -1, -1);
  }

  v114 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v115 = v168;
  swift_beginAccess();
  v117 = v165;
  v116 = v166;
  v118 = v115 + v114;
  v119 = v163;
  (*(v166 + 16))(v165, v118, v163);
  v120 = (*(*v2 + 1288))(a1, v117, v108);
  v121 = v119;
  v122 = v120;
  (*(v116 + 8))(v117, v121);
  if (!v122)
  {
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v155, v156))
    {

LABEL_23:

LABEL_99:
      v138 = v22;
LABEL_100:
      outlined destroy of ReferenceResolutionClientProtocol?(v138, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
      return;
    }

    v157 = swift_slowAlloc();
    *v157 = 0;
    _os_log_impl(&dword_1DC659000, v155, v156, "Could not build ConversationUserInput", v157, 2u);
    MEMORY[0x1E12A2F50](v157, -1, -1);

LABEL_98:

    goto LABEL_99;
  }

  (*(**(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 136))(0, 3, 8, v2[10], v2[11], v2[8], v2[9], a1[2], a1[3], *(v167 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup));
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&dword_1DC659000, v123, v124, "Sending conversation user input to execution", v125, 2u);
    MEMORY[0x1E12A2F50](v125, -1, -1);
  }

  v127 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v126 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v127);
  (*(v126 + 24))(v122, *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v127, v126);

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v174 = v108;
    v131 = v130;
    v173 = swift_slowAlloc();
    v175 = v173;
    *v131 = 136315138;
    v132 = ConversationUserInput.debugDescription.getter();
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v175);

    *(v131 + 4) = v134;
    _os_log_impl(&dword_1DC659000, v128, v129, "Successfully sent: %s", v131, 0xCu);
    v135 = v173;
    __swift_destroy_boxed_opaque_existential_1Tm(v173);
    MEMORY[0x1E12A2F50](v135, -1, -1);
    MEMORY[0x1E12A2F50](v131, -1, -1);
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for InsightRequestSummaryLogger(0);
  v137 = __swift_project_value_buffer(v136, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v137, v2, a1);

  (*(*a1 + 416))(7);
  if ((*(*v2 + 928))(a1))
  {
    (*(*v2 + 1160))(a1);

    goto LABEL_98;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
}

void ConversationRequestProcessor.handleResultSelectedMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v87 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v79 - v10;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.conversationBridge);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1DC659000, v13, v14, "ConversationBridge handling message: %@", v15, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v18 = (*(*v2 + 608))();
  if (v18)
  {
    v19 = v18;
    v20 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v22 = v21;
    v23 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v25 = *v23;
    v24 = v23[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v25, v24);
    v84 = v20;
    v26 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(v20, v22, v25);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v25, v24);
    if (v26)
    {
      v82 = v22;
      v83 = v5;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      v29 = os_log_type_enabled(v27, v28);
      v81 = v2;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = v19;
        v92[0] = v79;
        *v30 = 136315138;
        v31 = v4;
        v32 = v12;
        v33 = *(*v26 + 832);

        v35 = v33(v34);
        v12 = v32;
        v4 = v31;
        v36 = v35;
        v38 = v37;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v92);
        v40 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;

        *(v30 + 4) = v39;
        _os_log_impl(&dword_1DC659000, v27, v28, "ResultSelected received for RC state: %s", v30, 0xCu);
        v41 = v79;
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        v19 = v80;
        MEMORY[0x1E12A2F50](v41, -1, -1);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      else
      {

        v40 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      }

      v50 = (*(*v26 + 408))();
      v52 = ResultCandidateProcessingStatus.rawValue.getter(v50) == 0x64656C65636E6163 && v51 == 0xE800000000000000;
      v53 = v82;
      v54 = v83;
      if (v52)
      {
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v55 & 1) == 0)
        {

          v56 = ResultSelectedMessageBase.isMitigated.getter();
          v57 = type metadata accessor for TTResponseMessage.MitigationDecision();
          v58 = v40;
          v59 = *(v57 - 8);
          v60 = MEMORY[0x1E69D0278];
          if ((v56 & 1) == 0)
          {
            v60 = MEMORY[0x1E69D0270];
          }

          v61 = v85;
          (*(*(v57 - 8) + 104))(v85, *v60, v57);
          (*(v59 + 56))(v61, 0, 1, v57);
          (*(*v26 + 560))(v61);
          v85 = v58;
          (*(*v26 + 488))(1);
          v62 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
          swift_beginAccess();
          v63 = v86;
          (*(v54 + 16))(v86, v19 + v62, v4);
          (*(v54 + 104))(v87, *MEMORY[0x1E69D0548], v4);
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v90 == v88 && v91 == v89)
          {
            v64 = *(v54 + 8);
            v64(v87, v4);
            v64(v63, v4);
          }

          else
          {
            v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v72 = *(v54 + 8);
            v72(v87, v4);
            v72(v63, v4);

            if ((v71 & 1) == 0)
            {
LABEL_37:
              v77 = v81;
              v78 = (*(*v81 + 1384))(v26, v19, 0, 0);
              (*(*v77 + 984))(v12, v19, v26, v78);

              return;
            }
          }

          v73 = (*(*v26 + 896))(v65);
          if (v73)
          {
            v74 = v73;
            v75 = ResultSelectedMessageBase.endpointMode.getter();
            (*(*v74 + 152))(v75, v76 & 1);
          }

          goto LABEL_37;
        }
      }

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v92[0] = v69;
        *v68 = 136315138;
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v53, v92);

        *(v68 + 4) = v70;
        _os_log_impl(&dword_1DC659000, v66, v67, "RC ID: %s already canceled. Not sending commit signal.", v68, 0xCu);
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

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v92[0] = v48;
        *v47 = 136315138;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v22, v92);

        *(v47 + 4) = v49;
        _os_log_impl(&dword_1DC659000, v45, v46, "Received ResultSelectedMessage before RC state was created for RC ID: %s. Dropping it on the floor.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v87 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v87, v42, "Request already canceled. Not handling ResultSelectedMessage.", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v44 = v87;
  }
}

void ConversationRequestProcessor.handleSpeechStopDetectedMessage(_:forTurn:withTRPCandidateState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v9);
    _os_log_impl(&dword_1DC659000, oslog, v5, "Not sending CommitResultCandidateId for TRP ID: %s yet: Will wait for TRPFinalized due to incomplete feature work.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }
}

void ConversationRequestProcessor.handleResultSelectedMessage(_:forTurn:withResultCandidateState:speechRecognizedCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v10 = v9;
  v11 = (*(*a3 + 408))();
  if (ResultCandidateProcessingStatus.rawValue.getter(v11) == 0xD000000000000013 && 0x80000001DCA7B530 == v12)
  {

    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_12:
    (*(*v4 + 1160))(a3);
    goto LABEL_13;
  }

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
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), v27);
    _os_log_impl(&dword_1DC659000, v16, v17, "Not sending CommitResultCandidateId for RC ID: %s yet", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

LABEL_13:
  v20 = (a2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v20, v22);
  v23.value._countAndFlagsBits = v8;
  v23.value._object = v10;
  ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(v23);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v21, v22);
  v24 = *v20;
  v25 = v20[1];
  *v20 = a3 | 0x4000000000000000;
  v20[1] = a4;
  v26 = a4;

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v24, v25);
}

uint64_t ConversationRequestProcessor.handleCancelRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v91 = type metadata accessor for RequestType();
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v86 - v6;
  v94 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v97 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v87 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v93);
  v9 = &v86 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v96 = (&v86 - v16);
  v17 = type metadata accessor for InputOrigin();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static Logger.conversationBridge);
  v23 = a1;
  v99 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v98 = v23;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v14;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v98;
    *(v27 + 4) = v98;
    *v28 = v29;
    v30 = v29;
    _os_log_impl(&dword_1DC659000, v24, v25, "ConversationBridge handling message: %@", v27, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    v31 = v27;
    v14 = v26;
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  v32 = (*(*v2 + 608))();
  if (v32)
  {
    v33 = v32;
    v34 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v100 = 0;
    v89 = v34;
    if (*v34 >> 62 == 1)
    {
      v100 = *v34 & 0x3FFFFFFFFFFFFFFFLL;
    }

    (*(v18 + 104))(v20, *MEMORY[0x1E69D04C0], v17);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0], MEMORY[0x1E69D04E8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v101 == v103[0] && v102 == v103[1])
    {
      (*(v18 + 8))(v20, v17);
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v18 + 8))(v20, v17);

      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v86 = v2;
    v40 = v96;
    if (v100)
    {
      (*(*v100 + 552))(v35);
      v41 = v94;
      v42 = v97;
    }

    else
    {
      v42 = v97;
      v41 = v94;
      (*(v97 + 56))(v96, 1, 1, v94);
    }

    (*(v42 + 104))(v14, *MEMORY[0x1E69D0270], v41);
    (*(v42 + 56))(v14, 0, 1, v41);
    v43 = *(v93 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v40, v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, &v9[v43], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v44 = *(v42 + 48);
    if (v44(v9, 1, v41) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v45 = v44(&v9[v43], 1, v41);
      v2 = v86;
      if (v45 == 1)
      {
        v35 = outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        goto LABEL_25;
      }
    }

    else
    {
      v46 = v88;
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v88, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (v44(&v9[v43], 1, v41) != 1)
      {
        v82 = v97;
        v83 = v87;
        (*(v97 + 32))(v87, &v9[v43], v41);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0288]);
        v84 = dispatch thunk of static Equatable.== infix(_:_:)();
        v85 = *(v82 + 8);
        v85(v83, v41);
        outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v85(v46, v41);
        v35 = outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v2 = v86;
        if (v84)
        {
LABEL_25:
          v97 = v33;
          if (!v100)
          {
            (*(*v2 + 1216))(v35);
            v50 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
            swift_beginAccess();
            v51 = v95;
            v53 = v90;
            v52 = v91;
            v96 = *(v95 + 16);
            (v96)(v90, v97 + v50, v91);
            v54 = *MEMORY[0x1E69D0528];
            v55 = v92;
            v94 = *(v51 + 104);
            (v94)(v92, v54, v52);
            v93 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
            v56 = dispatch thunk of static Equatable.== infix(_:_:)();
            v57 = *(v51 + 8);
            v57(v55, v52);
            v95 = v51 + 8;
            v57(v53, v52);
            if ((v56 & 1) == 0 || (v58 = v90, v59 = v91, (v96)(v90, v97 + v50, v91), v60 = v92, (v94)(v92, *MEMORY[0x1E69D0538], v59), v61 = dispatch thunk of static Equatable.== infix(_:_:)(), v57(v60, v59), v57(v58, v59), (v61 & 1) == 0))
            {
              v62 = Logger.logObject.getter();
              v63 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                *v64 = 0;
                _os_log_impl(&dword_1DC659000, v62, v63, "Request cancelled before receiving ResultSelectedMessage", v64, 2u);
                MEMORY[0x1E12A2F50](v64, -1, -1);
              }
            }
          }

          v65 = RequestMessageBase.requestId.getter();
          v67 = v66;
          v68 = CancelRequestMessage.reason.getter();
          type metadata accessor for CancelExecutionTurn();
          v69 = swift_allocObject();
          v69[2] = v65;
          v69[3] = v67;
          v69[4] = v68;
          v70 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
          v71 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v70);
          (*(v71 + 40))(v69, *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v70, v71);

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v103[0] = v75;
            *v74 = 136315138;
            v76 = CancelExecutionTurn.debugDescription.getter();
            v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v103);

            *(v74 + 4) = v78;
            _os_log_impl(&dword_1DC659000, v72, v73, "Successfully sent: %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            MEMORY[0x1E12A2F50](v75, -1, -1);
            MEMORY[0x1E12A2F50](v74, -1, -1);
          }

          v79 = *v89;
          v80 = v89[1];
          outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v89, v80);
          ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(0);
          outlined consume of ConversationRequestProcessorTurnState.SpeechState(v79, v80);

          return (*(*v2 + 408))(1, 0, 3);
        }

LABEL_24:
        v47 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
        v48 = v2[8];
        v49 = v2[9];
        (*(*v47 + 176))(v48, v49, 2);
        v35 = (*(*v47 + 232))(5, v48, v49);
        goto LABEL_25;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (*(v97 + 8))(v46, v41);
      v2 = v86;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    goto LABEL_24;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1DC659000, v36, v37, "Not sending CancelExecutionTurn to Execution since StartExecutionTurn was not sent either", v38, 2u);
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  return (*(*v2 + 408))(1, 0, 3);
}

void ConversationRequestProcessor.handleAceRemoteExecutionContextUpdate(_:executionContext:reply:)(NSObject *a1, uint64_t a2, void (*a3)(id, id), uint64_t a4)
{
  v216 = a4;
  v217 = a1;
  v201 = type metadata accessor for SelectedUserAttributes();
  v204 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v198 = v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v200 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v199 = v188 - v10;
  v211 = type metadata accessor for UserID();
  v209 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v207 = v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v208 = v188 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestType();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v206 = v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v205 = v188 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v210 = v188 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v188 - v26;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v31 = v188 - v30;
  v32 = *(*v4 + 608);
  v214 = v4;
  v33 = v32(v29);
  if (v33)
  {
    v212 = v17;
    v213 = a3;
    v202 = v15;
    v203 = v14;
    v34 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    v35 = v33;
    swift_beginAccess();
    v36 = *(v19 + 16);
    v215 = v35;
    v195 = v34;
    v197 = v36;
    v36(v31, &v34[v35], v18);
    (*(v19 + 104))(v27, *MEMORY[0x1E69D0548], v18);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v221 == v219)
    {
      v37 = 1;
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v196 = v19;
    v42 = *(v19 + 8);
    v42(v27, v18);
    v194 = v42;
    v42(v31, v18);

    if ((v37 & 1) != 0 && (v43 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState, v44 = v215, swift_beginAccess(), *(v44 + v43) >> 62 != 1))
    {
      v74 = 0x80000001DCA80660;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.conversationBridge);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      v95 = os_log_type_enabled(v93, v94);
      v79 = v216;
      v50 = v213;
      if (v95)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v221 = v97;
        *v96 = 136315138;
        *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x80000001DCA80660, &v221);
        _os_log_impl(&dword_1DC659000, v93, v94, "%s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        MEMORY[0x1E12A2F50](v97, -1, -1);
        MEMORY[0x1E12A2F50](v96, -1, -1);
      }

      if (v50)
      {
        v98 = objc_allocWithZone(MEMORY[0x1E69C7780]);

        v99 = [v98 init];
        v100 = v212;
        UUID.init()();
        v101 = UUID.uuidString.getter();
        v103 = v102;
        (*(v202 + 8))(v100, v203);
        v104 = MEMORY[0x1E12A1410](v101, v103);

        [v99 setAceId_];

        v89 = v99;
        v105 = [v217 aceId];
        [v89 setRefId_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        goto LABEL_35;
      }
    }

    else
    {
      v45 = [v217 executionContextUpdate];
      if (v45)
      {
        v46 = v45;
        v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        outlined init with copy of ReferenceResolutionClientProtocol?(v214 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &v219, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        v50 = v213;
        v193 = v49;
        if (v220)
        {
          outlined init with take of ReferenceResolutionClientProtocol(&v219, &v221);
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
          static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
          v192 = v47;
          if (v220)
          {
            type metadata accessor for ExecutionContextUpdate(0);
            if (swift_dynamicCast())
            {
              v191 = v218;
              v134 = v215;
              v190 = ConversationRequestProcessorTurnState.isServerFallback.getter();
              v197(v210, &v195[v134], v18);
              v135 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
              swift_beginAccess();
              v195 = *(v134 + v135);
              v136 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
              swift_beginAccess();
              v137 = 0;
              v138 = *(v134 + v136);
              if (v138 >> 62 == 1)
              {
                v137 = (v138 & 0x3FFFFFFFFFFFFFFFLL);
              }

              v140 = v208;
              v139 = v209;
              v141 = *(v209 + 16);
              v141(v208, v214 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v211);
              if (v137)
              {
                v142 = v205;
                v143 = v197;
                v197(v205, v210, v18);
                v143(v206, v142, v18);
                v141(v207, v137 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v211);
                v144 = (*v137 + 792);
                v145 = *v144;
                v146 = v195;
                v147 = v199;
                v197 = v144;
                v189 = v145;
                v145(v146);
                v148 = v204;
                v149 = *(v204 + 48);
                v150 = v201;
                if (v149(v147, 1, v201))
                {
                  v151 = outlined destroy of ReferenceResolutionClientProtocol?(v147, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  LODWORD(v199) = 0;
                }

                else
                {
                  v157 = *(v148 + 16);
                  v188[1] = v137;
                  v158 = v198;
                  v157(v198, v147, v150);
                  outlined destroy of ReferenceResolutionClientProtocol?(v147, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  LODWORD(v199) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
                  v151 = (*(v148 + 8))(v158, v150);
                }

                v159 = v200;
                v189(v151);
                if (v149(v159, 1, v150))
                {

                  v160 = v194;
                  v194(v205, v18);
                  v161 = v209;
                  v162 = v211;
                  (*(v209 + 8))(v208, v211);
                  v160(v210, v18);
                  outlined destroy of ReferenceResolutionClientProtocol?(v159, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  v163 = 0;
                }

                else
                {
                  v164 = v204;
                  v165 = v159;
                  v166 = v198;
                  (*(v204 + 16))(v198, v165, v150);
                  outlined destroy of ReferenceResolutionClientProtocol?(v165, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
                  v163 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

                  (*(v164 + 8))(v166, v150);
                  v167 = v194;
                  v194(v205, v18);
                  v161 = v209;
                  v162 = v211;
                  (*(v209 + 8))(v208, v211);
                  v167(v210, v18);
                }

                v155 = v212;
                v156 = v191;
                type metadata accessor for ConversationContextUpdateMetadata(0);
                v152 = swift_allocObject();
                *(v152 + 16) = v190 & 1;
                (*(v196 + 32))(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v206, v18);
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v195;
                (*(v161 + 32))(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v207, v162);
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v199 & 1;
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v163 & 1;
              }

              else
              {
                type metadata accessor for ConversationContextUpdateMetadata(0);
                v152 = swift_allocObject();
                *(v152 + 16) = v190 & 1;
                (*(v196 + 32))(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v210, v18);
                v153 = v195;
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v195;
                (*(v139 + 32))(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v140, v211);
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
                *(v152 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
                v154 = v153;
                v155 = v212;
                v156 = v191;
              }

              v168 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(*(v214 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled));
              if (one-time initialization token for conversationBridge != -1)
              {
                swift_once();
              }

              v169 = type metadata accessor for Logger();
              __swift_project_value_buffer(v169, static Logger.conversationBridge);
              v170 = Logger.logObject.getter();
              v171 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v170, v171))
              {
                v172 = swift_slowAlloc();
                *v172 = 0;
                _os_log_impl(&dword_1DC659000, v170, v171, "Submitting context update obtained from remote companion device", v172, 2u);
                MEMORY[0x1E12A2F50](v172, -1, -1);
              }

              v173 = v222;
              v174 = v223;
              __swift_project_boxed_opaque_existential_1(&v221, v222);
              (*(v174 + 8))(v156, v152, v168, v173, v174);
              v175 = Logger.logObject.getter();
              v176 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v175, v176))
              {
                v177 = swift_slowAlloc();
                *v177 = 0;
                _os_log_impl(&dword_1DC659000, v175, v176, "Successfully applied remote context update", v177, 2u);
                MEMORY[0x1E12A2F50](v177, -1, -1);
              }

              v178 = v213;
              if (v213)
              {
                v179 = objc_allocWithZone(MEMORY[0x1E69C7788]);
                v180 = v216;

                v181 = [v179 init];
                UUID.init()();
                v182 = UUID.uuidString.getter();
                v184 = v183;
                (*(v202 + 8))(v155, v203);
                v185 = MEMORY[0x1E12A1410](v182, v184);

                [v181 setAceId_];

                v186 = v181;
                v187 = [v217 aceId];
                [v186 setRefId_];

                v178(v186, 0);
                _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v178, v180);
              }

              outlined consume of Data._Representation(v192, v193);

              goto LABEL_52;
            }
          }

          else
          {
            outlined destroy of ReferenceResolutionClientProtocol?(&v219, &_sypSgMd, &_sypSgMR);
          }

          v51 = v216;
          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static Logger.conversationBridge);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          v55 = os_log_type_enabled(v53, v54);
          v56 = v212;
          if (v55)
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            *&v219 = v58;
            *v57 = 136315138;
            *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001DCA80630, &v219);
            _os_log_impl(&dword_1DC659000, v53, v54, "%s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v58);
            MEMORY[0x1E12A2F50](v58, -1, -1);
            MEMORY[0x1E12A2F50](v57, -1, -1);
          }

          if (v50)
          {
            v59 = objc_allocWithZone(MEMORY[0x1E69C7778]);

            v60 = [v59 init];
            UUID.init()();
            v61 = UUID.uuidString.getter();
            v63 = v62;
            (*(v202 + 8))(v56, v203);
            v64 = MEMORY[0x1E12A1410](v61, v63);

            [v60 setAceId_];

            v65 = v60;
            v66 = [v217 aceId];
            [v65 setRefId_];

            [v65 setErrorCode_];
            v67 = MEMORY[0x1E12A1410](0xD00000000000002CLL, 0x80000001DCA80630);
            [v65 setReason_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DCA66060;
            *(inited + 32) = 0x6567617373654DLL;
            v69 = inited + 32;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 40) = 0xE700000000000000;
            *(inited + 48) = 0xD00000000000002CLL;
            *(inited + 56) = 0x80000001DCA80630;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of ReferenceResolutionClientProtocol?(v69, &_sSS_yptMd, &_sSS_yptMR);
            v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v71 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v73 = [v70 initWithDomain:v71 code:-1 userInfo:isa];

            v50(v65, v73);
            outlined consume of Data._Representation(v192, v193);

            _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v50, v51);
LABEL_53:
            __swift_destroy_boxed_opaque_existential_1Tm(&v221);
            return;
          }

          outlined consume of Data._Representation(v192, v193);
LABEL_52:

          goto LABEL_53;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(&v219, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        __swift_project_value_buffer(v112, static Logger.conversationBridge);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();
        v115 = os_log_type_enabled(v113, v114);
        v79 = v216;
        if (v115)
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *&v221 = v117;
          *v116 = 136315138;
          *(v116 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000001DCA805F0, &v221);
          _os_log_impl(&dword_1DC659000, v113, v114, "%s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v117);
          MEMORY[0x1E12A2F50](v117, -1, -1);
          MEMORY[0x1E12A2F50](v116, -1, -1);
        }

        if (v50)
        {
          v118 = objc_allocWithZone(MEMORY[0x1E69C7778]);

          v119 = [v118 init];
          v120 = v212;
          UUID.init()();
          v121 = UUID.uuidString.getter();
          v123 = v122;
          (*(v202 + 8))(v120, v203);
          v124 = MEMORY[0x1E12A1410](v121, v123);

          [v119 setAceId_];

          v125 = v119;
          v126 = [v217 aceId];
          [v125 setRefId_];

          [v125 setErrorCode_];
          v127 = MEMORY[0x1E12A1410](0xD000000000000033, 0x80000001DCA805F0);
          [v125 setReason_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v128 = swift_initStackObject();
          *(v128 + 16) = xmmword_1DCA66060;
          *(v128 + 32) = 0x6567617373654DLL;
          v129 = v128 + 32;
          *(v128 + 72) = MEMORY[0x1E69E6158];
          *(v128 + 40) = 0xE700000000000000;
          *(v128 + 48) = 0xD000000000000033;
          *(v128 + 56) = 0x80000001DCA805F0;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v128);
          swift_setDeallocating();
          outlined destroy of ReferenceResolutionClientProtocol?(v129, &_sSS_yptMd, &_sSS_yptMR);
          v130 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v131 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
          v132 = Dictionary._bridgeToObjectiveC()().super.isa;

          v133 = [v130 initWithDomain:v131 code:-1 userInfo:v132];

          v50(v125, v133);
          outlined consume of Data._Representation(v47, v193);

          goto LABEL_43;
        }

        outlined consume of Data._Representation(v47, v193);
        goto LABEL_55;
      }

      v74 = 0x80000001DCA805A0;
      v50 = v213;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.conversationBridge);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v216;
      if (v78)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v221 = v81;
        *v80 = 136315138;
        *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x80000001DCA805A0, &v221);
        _os_log_impl(&dword_1DC659000, v76, v77, "%s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        MEMORY[0x1E12A2F50](v81, -1, -1);
        MEMORY[0x1E12A2F50](v80, -1, -1);
      }

      if (v50)
      {
        v82 = objc_allocWithZone(MEMORY[0x1E69C7778]);

        v83 = [v82 init];
        v84 = v212;
        UUID.init()();
        v85 = UUID.uuidString.getter();
        v87 = v86;
        (*(v202 + 8))(v84, v203);
        v88 = MEMORY[0x1E12A1410](v85, v87);

        [v83 setAceId_];

        v89 = v83;
        v90 = [v217 aceId];
        [v89 setRefId_];

        [v89 setErrorCode_];
        v91 = MEMORY[0x1E12A1410](0xD00000000000004CLL, 0x80000001DCA805A0);
        [v89 setReason_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
LABEL_35:
        v106 = swift_initStackObject();
        *(v106 + 16) = xmmword_1DCA66060;
        *(v106 + 32) = 0x6567617373654DLL;
        v107 = v106 + 32;
        *(v106 + 72) = MEMORY[0x1E69E6158];
        *(v106 + 40) = 0xE700000000000000;
        *(v106 + 48) = 0xD00000000000004CLL;
        *(v106 + 56) = v74;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v106);
        swift_setDeallocating();
        outlined destroy of ReferenceResolutionClientProtocol?(v107, &_sSS_yptMd, &_sSS_yptMR);
        v108 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v109 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
        v110 = Dictionary._bridgeToObjectiveC()().super.isa;

        v111 = [v108 initWithDomain:v109 code:-1 userInfo:v110];

        v50(v89, v111);
LABEL_43:

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v50, v79);
        return;
      }
    }

LABEL_55:

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.conversationBridge);
  v217 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v217, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1DC659000, v217, v39, "Ignoring RemoteExecutionContextUpdate as we are not in a turn.", v40, 2u);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  v41 = v217;
}

uint64_t ConversationRequestProcessor.handleFlowOutputResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1DC659000, v10, v11, "ExecutionBridge received message: %@", v12, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v15 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
  FlowOutputResponseMessage.outputId.getter();
  v16 = FlowOutputResponseMessage.commandResult.getter();
  (*(*v15 + 312))(v7, v16, 0);

  return (*(v5 + 8))(v7, v4);
}

void ConversationRequestProcessor.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void), char *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v143 = v136 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v148 = v136 - v11;
  v12 = type metadata accessor for SelectedUserAttributes();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v144 = v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v145 = v136 - v18;
  v19 = type metadata accessor for UserID();
  v155 = *(v19 - 8);
  v156 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v154 = v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RequestType();
  v152 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v151 = v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v150 = v136 - v24;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.conversationBridge);
  v27 = a1;
  v157 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v149 = v13;
  v153 = v21;
  v147 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v160[0] = v32;
    *v31 = 136315138;
    v33 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0xB0))();
    v35 = a2;
    v36 = a3;
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v160);

    *(v31 + 4) = v37;
    a3 = v36;
    a2 = v35;
    _os_log_impl(&dword_1DC659000, v28, v29, "<<<--- %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  v38 = *(v27 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
  v39 = *(v27 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
  v41 = *(v4 + 8);
  v40 = *(v4 + 9);
  if (v38 == v41 && v39 == v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v38 == *(v4 + 10) && v39 == *(v4 + 11) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v42 = (*(*v4 + 608))();
    if (v42)
    {
      v43 = v42;
      v142 = v41;
      v44 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v45 = *(v43 + v44);
      if (v45 >> 62 == 1)
      {
        v141 = v40;
        v139 = v4;
        v157 = a2;
        v143 = a3;
        v46 = (v45 & 0x3FFFFFFFFFFFFFFFLL);
        v47 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
        swift_beginAccess();
        v48 = v153;
        v49 = *(v152 + 16);
        v50 = v150;
        v49(v150, v43 + v47, v153);
        v51 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
        swift_beginAccess();
        v140 = v43;
        v52 = *((*MEMORY[0x1E69E7D40] & *v27) + 0xB8);
        v138 = *(v43 + v51);
        v53 = v138;

        v137 = v52(v54);
        v49(v151, v50, v48);
        (*(v155 + 16))(v154, v46 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v156);
        v55 = (*v46 + 792);
        v56 = *v55;

        v58 = v145;
        v59 = v46;
        v136[1] = v55;
        v56(v57);
        v60 = v149;
        v61 = *(v149 + 48);
        v62 = v147;
        if (v61(v58, 1, v147))
        {
          v63 = outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v145) = 0;
        }

        else
        {
          v102 = v144;
          (*(v60 + 16))(v144, v58, v62);
          outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v145) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
          v63 = (*(v60 + 8))(v102, v62);
        }

        v103 = v146;
        v56(v63);
        v104 = v103;
        v105 = v61(v103, 1, v62);
        v106 = v140;
        v107 = v152;
        v108 = v139;
        if (v105)
        {

          v109 = v153;
          (*(v107 + 8))(v150, v153);
          outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v110 = 0;
        }

        else
        {
          v111 = v149;
          v112 = v144;
          (*(v149 + 16))(v144, v104, v62);
          outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v110 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

          (*(v111 + 8))(v112, v62);
          v109 = v153;
          (*(v107 + 8))(v150, v153);
        }

        v136[2] = v59;
        type metadata accessor for ConversationContextUpdateMetadata(0);
        v113 = swift_allocObject();
        *(v113 + 16) = 0;
        (*(v107 + 32))(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v151, v109);
        *(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v138;
        (*(v155 + 32))(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v154, v156);
        *(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v137 & 1;
        *(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v145 & 1;
        *(v113 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v110 & 1;
        v114 = *(v27 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);

        specialized ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(v114, v113);

        (*(**&v108[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker] + 256))(*(v27 + OBJC_IVAR___SKRExecutionOutput_command));
        if (one-time initialization token for insightRequestSummaryLogger != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for InsightRequestSummaryLogger(0);
        v116 = __swift_project_value_buffer(v115, static Logger.insightRequestSummaryLogger);
        v117 = v27;

        specialized InsightRequestSummaryLogger.emitDebug(_:)(v116, v108, v117);

        v118 = *&v108[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
        v119 = *(v108 + 10);
        v155 = *(v108 + 11);
        v156 = v119;
        v121 = *(v108 + 12);
        v120 = *(v108 + 13);
        v153 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
        v154 = v121;
        v152 = v120;
        v122 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
        v123 = type metadata accessor for UUID();
        v124 = *(v123 - 8);
        v125 = v148;
        (*(v124 + 16))(v148, &v108[v122], v123);
        (*(v124 + 56))(v125, 0, 1, v123);
        v126 = swift_allocObject();
        v126[2] = v108;
        v126[3] = v106;
        v127 = v157;
        v126[4] = v117;
        v126[5] = v127;
        v126[6] = v143;
        v128 = *(*v118 + 296);
        v129 = v117;

        v128(v129, v142, v141, v156, v155, &v108[v153], 0, v113, v154, v152, v125, 0, 0, partial apply for closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v126);

        outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v69 = *(v27 + OBJC_IVAR___SKRExecutionOutput_command);
        if (!v69)
        {
          goto LABEL_30;
        }

        v70 = one-time initialization token for warmUpSignals;
        v71 = v69;
        if (v70 != -1)
        {
          swift_once();
        }

        v72 = static ConversationRequestProcessor.warmUpSignals;
        v159[0] = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCmMd, &_sSo13SABaseCommandCmMR);
        LODWORD(v72) = [v72 containsObject_];

        swift_unknownObjectRelease();
        if (v72)
        {
          v141 = v40;
          v73 = v27;
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.debug.getter();
          v154 = v73;

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v157 = a2;
            v77 = v76;
            v78 = a3;
            v79 = swift_slowAlloc();
            v159[0] = v79;
            *v77 = 136315138;
            v158 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
            v80 = Optional.debugDescription.getter();
            v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v159);

            *(v77 + 4) = v82;
            _os_log_impl(&dword_1DC659000, v74, v75, "Sending warmUp command: %s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            v83 = v79;
            a3 = v78;
            MEMORY[0x1E12A2F50](v83, -1, -1);
            v84 = v77;
            a2 = v157;
            MEMORY[0x1E12A2F50](v84, -1, -1);
          }

          v85 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
          v86 = *(v4 + 10);
          v87 = *(v4 + 11);
          v88 = type metadata accessor for UUID();
          v89 = v148;
          (*(*(v88 - 8) + 56))(v148, 1, 1, v88);
          v90 = v143;
          (*(v155 + 56))(v143, 1, 1, v156);
          (*(*v85 + 328))(v69, v142, v141, v86, v87, 0, 0, 0, v89, v90, 0, a2, a3);
          outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for insightRequestSummaryLogger != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for InsightRequestSummaryLogger(0);
          v92 = __swift_project_value_buffer(v91, static Logger.insightRequestSummaryLogger);
          v93 = v154;

          specialized InsightRequestSummaryLogger.emitDebug(_:)(v92, v4, v93);
        }

        else
        {
LABEL_30:
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            _os_log_impl(&dword_1DC659000, v94, v95, "EXECUTION IS TRYING TO SUBMIT FLOWOUTPUT BEFORE ENDPOINTING!! THIS MUST NOT HAPPEN", v96, 2u);
            MEMORY[0x1E12A2F50](v96, -1, -1);
          }

          if (one-time initialization token for insightRequestSummaryLogger != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for InsightRequestSummaryLogger(0);
          v98 = __swift_project_value_buffer(v97, static Logger.insightRequestSummaryLogger);
          v99 = v27;

          specialized InsightRequestSummaryLogger.emitDebug(_:)(v98, v4, v99);

          lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
          v100 = swift_allocError();
          *v101 = 8;
          a2(0, v100);
        }
      }

      return;
    }

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DC659000, v64, v65, "Request already canceled. Not submitting flow output", v66, 2u);
      MEMORY[0x1E12A2F50](v66, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v67 = swift_allocError();
    *v68 = 1;
  }

  else
  {
    v141 = v40;
    v130 = v27;

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v160[0] = v134;
      *v133 = 136315394;
      *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v160);
      *(v133 + 12) = 2080;
      *(v133 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v141, v160);
      _os_log_impl(&dword_1DC659000, v131, v132, "Received FlowOutput for requestId:%s on ConversationRequestProcessor with requestId:%s .. dropping it on the floor", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v134, -1, -1);
      MEMORY[0x1E12A2F50](v133, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v67 = swift_allocError();
    *v135 = 0;
  }

  a2(0, v67);
}

uint64_t closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - v14;
  v16 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);

  v32 = a4;

  v18 = a2;
  v19 = a2;
  v20 = one-time initialization token for shared;
  v21 = a5;
  v22 = a7;

  v23 = a1;
  v24 = a1;
  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = static MessageBusActor.shared;
  v26 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v26;
  v29 = v32;
  v28 = v33;
  v27[4] = a3;
  v27[5] = v29;
  v27[6] = v18;
  v27[7] = v21;
  v27[8] = v28;
  v27[9] = v22;
  v27[10] = v23;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v27);
  (*(*v16 + 120))();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v12;
  v8[14] = v13;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:), v9, 0);
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  (*(*v5 + 160))(*(v3 + v6), 1, v2 != 0, v4[8], v4[9], v4[10], v4[11], v1);
  v7 = *(v3 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + v6) = v9;
  if (v2)
  {
    if (one-time initialization token for insightRequestSummaryLogger == -1)
    {
LABEL_4:
      v10 = *(v0 + 88);
      v11 = *(v0 + 64);
      v12 = type metadata accessor for InsightRequestSummaryLogger(0);
      v13 = __swift_project_value_buffer(v12, static Logger.insightRequestSummaryLogger);

      specialized InsightRequestSummaryLogger.emitDebug(_:)(v13, v11, v10);
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for insightRequestSummaryLogger != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = type metadata accessor for InsightRequestSummaryLogger(0);
  v17 = __swift_project_value_buffer(v16, static Logger.insightRequestSummaryLogger);

  specialized InsightRequestSummaryLogger.emitDebug(_:)(v17, v15, v14);
LABEL_8:
  v18 = *(v0 + 112);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);

  v19(v18, v20);
  v21 = *(v0 + 8);

  return v21();
}

void ConversationRequestProcessor.close(withExecutionOutput:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "<<<--- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v3, 0, 0, 0);
}

void ConversationRequestProcessor.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xB0))();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "<<<--- %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v19);
    _os_log_impl(&dword_1DC659000, v15, v16, "There was an error while running execution: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v7, a2, a3, 0);
}

void ConversationRequestProcessor.close(withExecutionOutput:errorString:shouldFailRequest:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v12 = 136315138;
    v13 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v10, v11, "<<<--- %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v9, a2, a3, a4 & 1);
}

void ConversationRequestProcessor.close(withExecutionOutput:needsUserInput:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v4, v5, "<<<--- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  ConversationRequestProcessor.closeInternal(_:_:_:)(v3, 0, 0, 0);
}

void ConversationRequestProcessor.fallbackToServer(forResultCandidateId:serverFallbackReason:)()
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Execution cannot fallback to server since it is not implemented", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall ConversationRequestProcessor.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "Execution cannot fallback to info domain results since it is not implemented", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

void ConversationRequestProcessor.fetchSpeechInfo(reply:)(void (*a1)(void))
{
  v3 = (*(*v1 + 608))();
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v4 >> 62 == 1)
    {
      v5 = v4[1];
      if (v5)
      {
        v6 = objc_allocWithZone(MEMORY[0x1E698D218]);
        v7 = v5;
        v8 = [v6 initWithSpeechRecognizedCommand_];
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.conversationBridge);
        v10 = v8;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = v28;
          *v13 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12AFSpeechInfoCSgMd, &_sSo12AFSpeechInfoCSgMR);
          v14 = Optional.debugDescription.getter();
          v16 = a1;
          v17 = v8;
          v18 = v10;
          v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v29);

          *(v13 + 4) = v19;
          v10 = v18;
          v8 = v17;
          a1 = v16;
          _os_log_impl(&dword_1DC659000, v11, v12, "Replying with speechInfo: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          MEMORY[0x1E12A2F50](v28, -1, -1);
          MEMORY[0x1E12A2F50](v13, -1, -1);
        }

        a1(v8);
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.conversationBridge);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1DC659000, v25, v26, "Cannot fetch speechInfo since SpeechRecognized is nil", v27, 2u);
          MEMORY[0x1E12A2F50](v27, -1, -1);
        }

        a1(0);
      }

      return;
    }
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
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v21, v22, "Cannot fetch speechInfo before endpointing", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  a1(0);
}

void ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for RequestType();
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1DC659000, v12, v13, "Received FlowPluginInfo: %@", v14, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v17 = (*(*v2 + 608))();
  if (v17)
  {
    v18 = v17;
    v19 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
    swift_beginAccess();
    v20 = *(v18 + v19);
    *(v18 + v19) = v11;

    v21 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    v22 = swift_beginAccess();
    v23 = *(v18 + v21);
    if (v23 >> 62 == 1)
    {
      if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) == 1)
      {
        v24 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        MEMORY[0x1EEE9AC00](v22);
        *(&v50 - 4) = v2;
        *(&v50 - 3) = v25;
        v48 = v24;
        v49 = v11;
        v26 = objc_allocWithZone(type metadata accessor for FlowPluginInfoMessage());
        v27 = v11;

        v28 = FlowPluginInfoMessage.init(build:)();

        if (v28)
        {
          __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
          dispatch thunk of MessagePublishing.postMessage(_:)();
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_1DC659000, v29, v30, "Posted FlowPluginInfo message to the bus", v31, 2u);
            MEMORY[0x1E12A2F50](v31, -1, -1);
          }

          goto LABEL_21;
        }

        v29 = Logger.logObject.getter();
        v36 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v29, v36))
        {
          goto LABEL_20;
        }

        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Could not init FlowPluginInfoMessage";
        goto LABEL_19;
      }

      v39 = v2[10];
      v50 = v2[11];
      v51 = v39;
      v40 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v41 = v52;
      (v52[2].isa)(v9, v18 + v40, v7);
      v42 = v11[OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest];
      v43 = v11;
      LOBYTE(v40) = ConversationRequestProcessorTurnState.isServerFallback.getter();
      v44 = type metadata accessor for UserID();
      (*(*(v44 - 8) + 56))(v6, 1, 1, v44);
      v45 = specialized static ConversationMUXUtils.voiceIdentificationSignal(withRefId:requestType:isPersonalRequest:isServerFallback:voiceIdClassification:voiceIdOverridden:selectedUserId:)(v51, v50, v9, v42, v40 & 1, 0, 1, 0, v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (v41[1].isa)(v9, v7);
      if (v45)
      {
        v46 = v2[2];
        aBlock[4] = closure #2 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:);
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_8;
        v47 = _Block_copy(aBlock);
        v29 = v45;
        [v46 handleCommand:v29 completion:v47];

        _Block_release(v47);

        goto LABEL_21;
      }

      v29 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "VoiceIdentificationSignal was not initialized. Refer to RequestDispatcher logs to understand why.";
        goto LABEL_19;
      }
    }

    else
    {
      v35 = v11;
      v29 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "Received FlowPluginInfo from Conversation before endpointing. FlowPluginInfo is not supposed to be sent eagerly.";
LABEL_19:
        _os_log_impl(&dword_1DC659000, v29, v36, v38, v37, 2u);
        MEMORY[0x1E12A2F50](v37, -1, -1);
      }
    }

LABEL_20:

LABEL_21:

    return;
  }

  v52 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1DC659000, v52, v32, "Ignoring FlowPluginInfo as we are not in a turn", v33, 2u);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  v34 = v52;
}

uint64_t closure #1 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x1E69D0460];
  v13 = type metadata accessor for MessageSource();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  FlowPluginInfoMessage.Builder.source.setter();

  FlowPluginInfoMessage.Builder.assistantId.setter();
  v15 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v8, &a2[v15], v16);
  (*(v17 + 56))(v8, 0, 1, v16);
  FlowPluginInfoMessage.Builder.sessionId.setter();

  FlowPluginInfoMessage.Builder.requestId.setter();

  FlowPluginInfoMessage.Builder.resultCandidateId.setter();
  FlowPluginInfoMessage.Builder.supportsOnDeviceNL.setter();
  return FlowPluginInfoMessage.Builder.isPersonalRequest.setter();
}

uint64_t ConversationRequestProcessor.getSelfReflectionDecision()@<X0>(_BYTE *a1@<X8>)
{
  (*(**(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 320))(v4);
  result = outlined destroy of SelfReflectionResponse(v4);
  *a1 = v4[0];
  return result;
}

void ConversationRequestProcessor.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitting an External activation request", v11, 2u);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v12 = *(v4 + 16);
  if ([v12 respondsToSelector_])
  {
    v14[4] = a2;
    v14[5] = a3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v14[3] = &block_descriptor_8;
    v13 = _Block_copy(v14);

    [v12 submitExternalActivationRequest:a1 completion:v13];
    _Block_release(v13);
  }
}

void ConversationRequestProcessor.postToMessageBus(message:completion:)(void *a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  type metadata accessor for RequestMessageBase();
  if (swift_dynamicCastClass())
  {
    v24 = a1;
    if (RequestMessageBase.requestId.getter() == v3[8] && v6 == v3[9])
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
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
          v25 = v13;
          *v12 = 136315138;
          *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v25);
          _os_log_impl(&dword_1DC659000, v10, v11, "Skipping: %s,  Message requestId doesn't match current requestId", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v13);
          MEMORY[0x1E12A2F50](v13, -1, -1);
          MEMORY[0x1E12A2F50](v12, -1, -1);
        }

        v14 = 0;
LABEL_23:
        a2(v14, 0);

        return;
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "Posting message received from Flow", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
    v14 = 1;
    goto LABEL_23;
  }

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
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x80000001DCA7EE30, &v25);
    _os_log_impl(&dword_1DC659000, v16, v17, "Skipping: %s,  Message from flow is not of type RequestMessageBase", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  a2(0, 0);
}

void ConversationRequestProcessor.closeInternal(_:_:_:)(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!(*(*v4 + 608))())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v16))
    {
      goto LABEL_19;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v16, "Request already canceled. Not closing.", v17, 2u);
    goto LABEL_18;
  }

  v9 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v10 = *&a1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8];
  v11 = v4[8];
  v12 = v4[9];
  v13 = v9 == v11 && v10 == v12;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = *(*v4 + 1136);

    v14(a1, a2, a3, a4 & 1);
    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v19 = a1;

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v20))
  {
    v17 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);
    _os_log_impl(&dword_1DC659000, oslog, v20, "Received close() for requestId:%s on ConversationRequestProcessor with requestId:%s .. ignoring.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v21, -1, -1);
LABEL_18:
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

LABEL_19:
}

void ConversationRequestProcessor.synchronizedClose(_:_:_:)(void *a1, uint64_t a2, void (**a3)(char *, uint64_t), int a4)
{
  v5 = v4;
  LODWORD(v166) = a4;
  v167 = a3;
  v161 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v147 - v8;
  v155 = type metadata accessor for OSSignpostID();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v147 - v13;
  v15 = type metadata accessor for SelectedUserAttributes();
  v160 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v157 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v147 - v20;
  v165 = type metadata accessor for UserID();
  v21 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v172 = (&v147 - v24);
  v170 = type metadata accessor for RequestType();
  v25 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v163 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v159 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v169 = &v147 - v30;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.conversationBridge);
  v33 = a1;
  v171 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v151 = v11;
  v153 = v9;
  v162 = v14;
  v168 = v33;
  v158 = v15;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v175 = v38;
    *v37 = 136315138;
    v39 = [v33 debugDescription];
    v40 = v5;
    v41 = v25;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v42;
    v25 = v41;
    v5 = v40;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v175);

    *(v37 + 4) = v46;
    _os_log_impl(&dword_1DC659000, v34, v35, "synchronizedClose with ExecutionOutput: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  v47 = (*(*v5 + 608))();
  v48 = v172;
  if (v47)
  {
    v49 = v47;
    if (v166)
    {
      v50 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
      v51 = v5[11];
      v170 = v5[10];
      v52 = v161;
      specialized static ConversationBridgeUtils.failRequest(serviceHelper:executionRequestId:reason:)(v50, v170, v51, v161, v167);
      v53 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v54 = *(v49 + v53);
      v55 = 0xE000000000000000;
      v150 = v49;
      if (v54 >> 62 == 1)
      {
        v56 = v54 & 0x3FFFFFFFFFFFFFFFLL;
        v57 = *(v56 + 24);
        v172 = *(v56 + 16);
      }

      else
      {
        v172 = 0;
        v57 = 0xE000000000000000;
      }

      if (v167)
      {
        v79 = v52;
      }

      else
      {
        v79 = 0;
      }

      if (v167)
      {
        v55 = v167;
      }

      v80 = v5[8];
      v81 = v5[9];
      v82 = *(**(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) + 152);

      v83 = v79;
      v84 = v170;
      v170 = v80;
      v85 = v80;
      v86 = v81;
      v87 = v172;
      v82(v83, v55, v84, v51, v85, v81, v172, v57);

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v174 = v91;
        *v90 = 136315394;
        *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v86, &v174);
        *(v90 + 12) = 2080;
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v57, &v174);

        *(v90 + 14) = v92;
        _os_log_impl(&dword_1DC659000, v88, v89, "Failed the request for requestId: %s for rcId : %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v91, -1, -1);
        MEMORY[0x1E12A2F50](v90, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v61 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      v167 = v25;
      v62 = v25[2];
      v62(v169, v49 + v61, v170);
      v63 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
      swift_beginAccess();
      v64 = *((*MEMORY[0x1E69E7D40] & *v168) + 0xB8);
      v149 = *(v49 + v63);
      LODWORD(v161) = v64(v149);
      v65 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v66 = 0;
      v166 = v65;
      v67 = *(v49 + v65);
      if (v67 >> 62 == 1)
      {
        v66 = v67 & 0x3FFFFFFFFFFFFFFFLL;
      }

      v68 = *(v21 + 16);
      v69 = v165;
      v68(v48, v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v165);
      if (v66)
      {
        v148 = v21;
        v70 = v159;
        v71 = v170;
        v62(v159, v169, v170);
        v62(v163, v70, v71);
        v72 = (v68)(v164, v66 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v69);
        v73 = *(*v66 + 792);
        v74 = v156;
        v147 = *v66 + 792;
        v73(v72);
        v75 = v160;
        v76 = *(v160 + 48);
        v77 = v158;
        if (v76(v74, 1, v158))
        {
          v78 = outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v156) = 0;
        }

        else
        {
          v96 = v152;
          (*(v75 + 16))(v152, v74, v77);
          outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          LODWORD(v156) = SelectedUserAttributes.meetsUserSessionThreshold.getter();
          v97 = v96;
          v70 = v159;
          v78 = (*(v75 + 8))(v97, v77);
        }

        v159 = v5;
        v98 = v157;
        v73(v78);
        v99 = v98;
        v100 = v76(v98, 1, v77);
        v101 = v168;
        if (v100)
        {

          v102 = v167;
          v103 = v167[1];
          v104 = v170;
          v103(v70, v170);
          v105 = v148;
          v106 = v165;
          (*(v148 + 8))(v172, v165);
          v103(v169, v104);
          outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v107 = 0;
          v95 = v101;
        }

        else
        {
          v108 = v160;
          v109 = v152;
          (*(v160 + 16))(v152, v99, v77);
          outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
          v107 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

          (*(v108 + 8))(v109, v77);
          v102 = v167;
          v110 = v167[1];
          v111 = v170;
          v110(v70, v170);
          v105 = v148;
          v106 = v165;
          (*(v148 + 8))(v172, v165);
          v110(v169, v111);
          v104 = v111;
          v95 = v168;
        }

        v94 = v162;
        type metadata accessor for ConversationContextUpdateMetadata(0);
        v93 = swift_allocObject();
        *(v93 + 16) = 0;
        v102[4](v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v163, v104);
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v149;
        (*(v105 + 32))(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v164, v106);
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v161 & 1;
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v156 & 1;
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v107 & 1;
        v5 = v159;
      }

      else
      {
        type metadata accessor for ConversationContextUpdateMetadata(0);
        v93 = swift_allocObject();
        *(v93 + 16) = 0;
        (v167[4])(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v169, v170);
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v149;
        (*(v21 + 32))(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v48, v69);
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v161 & 1;
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
        *(v93 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
        v94 = v162;
        v95 = v168;
      }

      v112 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
      v113 = type metadata accessor for TaskPriority();
      (*(*(v113 - 8) + 56))(v94, 1, 1, v113);
      v114 = one-time initialization token for shared;
      v115 = v95;

      if (v114 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v116 = static MessageBusActor.shared;
      v117 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
      v118 = swift_allocObject();
      v118[2] = v116;
      v118[3] = v117;
      v118[4] = v5;
      v118[5] = v115;
      v118[6] = v93;
      v118[7] = v49;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v94, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v118);
      (*(*v112 + 120))();

      v119 = *(v49 + v166);
      if (v119 >> 62 == 1)
      {
        v150 = v49;
        v172 = v93;
        v120 = (v119 & 0x3FFFFFFFFFFFFFFFLL);
        v121 = *(*(v119 & 0x3FFFFFFFFFFFFFFFLL) + 416);

        v121(9);
        v122 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
        v124 = v5[10];
        v123 = v5[11];
        v126 = v5[8];
        v125 = v5[9];
        v127 = v120[3];
        v170 = v120[2];
        v128 = *(*v122 + 144);

        v168 = v125;
        v169 = v124;
        v128(v124, v123, v126, v125, v170, v127);

        v130 = v153;
        (*(*v120 + 864))(v129);
        v131 = v154;
        v132 = v155;
        if ((*(v154 + 48))(v130, 1, v155) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
        }

        else
        {
          v136 = v151;
          (*(v131 + 32))(v151, v130, v132);
          static os_signpost_type_t.end.getter();
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          os_signpost(_:dso:log:name:signpostID:)();
          (*(v131 + 8))(v136, v132);
        }

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v173 = v140;
          *v139 = 136315650;
          *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v168, &v173);
          *(v139 + 12) = 2080;
          *(v139 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v123, &v173);
          *(v139 + 22) = 2080;
          v141 = *(*v120 + 832);

          v143 = v141(v142);
          v145 = v144;

          v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v173);

          *(v139 + 24) = v146;
          _os_log_impl(&dword_1DC659000, v137, v138, "Done handling on-device request for requestId: %s, rootRequestId: %s for: %s", v139, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v140, -1, -1);
          MEMORY[0x1E12A2F50](v139, -1, -1);
        }
      }

      else
      {
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_1DC659000, v133, v134, "Close called before an RC was selected. Cannot send ResultCandidateSelected to server", v135, 2u);
          MEMORY[0x1E12A2F50](v135, -1, -1);
        }
      }
    }
  }

  else
  {
    v172 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v172, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1DC659000, v172, v58, "Ignoring synchronizedClosed as we are not in a turn", v59, 2u);
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    v60 = v172;
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v7[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v8, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)()
{
  v1 = *(v0 + 96);
  v2 = static MessageBusActor.shared;
  *(v0 + 120) = static MessageBusActor.shared;
  v3 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *(v4 + 16) = *(v0 + 80);
  *(v4 + 32) = v1;

  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
  *(v0 + 144) = v6;
  *v5 = v0;
  v5[1] = closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:);

  return MEMORY[0x1EEE6DDE0](v0 + 64, v2, v3, 0xD000000000000019, 0x80000001DCA808C0, partial apply for closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v4, v6);
}

{
  v1 = *(*v0 + 112);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v1, 0);
}

{
  v23 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[8];
  v5 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  (*(*v5 + 160))(*(v1 + v6), 1, v4 != 0, v3[8], v3[9], v3[10], v3[11], v2);
  v7 = *(v1 + v6);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v6) = v9;
    if (one-time initialization token for conversationBridge == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = v4;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v0[9] = v4;
    v16 = Optional.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v12, v13, "Submitted FlowOutput with error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v19 = v0[10];
  ConversationRequestProcessor.synchronizedCloseRequest()();
  (*(*v19 + 408))(1, 0, 3);

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = *&a2[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
  v13 = *(a2 + 8);
  v29 = *(a2 + 9);
  v30 = v13;
  v14 = *(a2 + 10);
  v27 = *(a2 + 11);
  v28 = v14;
  v16 = *(a2 + 12);
  v15 = *(a2 + 13);
  v24 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
  v25 = v16;
  v23 = v15;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, &a2[v17], v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  (*(v6 + 16))(v8, v26, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v20, v8, v5);
  (*(*v12 + 296))(v31, v30, v29, v28, v27, &a2[v24], 0, v32, v25, v23, v11, 0, 0, partial apply for closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:), v21);

  return outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationRequestProcessor.handledMitigation(rcState:turn:ruleType:ruleDecision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v57[-v11];
  v13 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v57[-v16];
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v57[-v19];
  (*(*a1 + 512))(a4, v18);
  (*(*a1 + 536))(a3);
  v21 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler);
  v22 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v23 = type metadata accessor for InputOrigin();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v72 = a2;
  v69 = v22;
  v66 = v25;
  v67 = v24 + 16;
  v25(v12, a2 + v22, v23);
  v26 = *(v24 + 56);
  v70 = v23;
  v68 = v24 + 56;
  v65 = v26;
  v26(v12, 0, 1, v23);
  v27 = *(*v21 + 136);
  v64 = v21;
  v27(a1, v12);
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.conversationBridge);
  v31 = v62;
  v30 = v63;
  v32 = *(v63 + 16);
  v73 = v20;
  v32(v62, v20, v13);

  v60 = v29;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v61 = v13;
    v36 = v35;
    v59 = swift_slowAlloc();
    v75 = v59;
    *v36 = 134218242;
    v37 = TTResponseMessage.MitigationDecision.rawValue.getter();
    v58 = v34;
    v38 = v37;
    v39 = *(v30 + 8);
    v40 = v39(v31, v61);
    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v41 = (*(*a1 + 832))(v40);
    v43 = v30;
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v75);

    *(v36 + 14) = v44;
    v30 = v43;
    _os_log_impl(&dword_1DC659000, v33, v58, "[ConversationRequestProcessor] PreExecution Migitation Decision %ld State %s", v36, 0x16u);
    v45 = v59;
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x1E12A2F50](v45, -1, -1);
    v46 = v36;
    v13 = v61;
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  else
  {
    v39 = *(v30 + 8);
    v39(v31, v13);
  }

  v47 = v71;
  (*(v30 + 104))(v71, *MEMORY[0x1E69D0278], v13);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0290]);
  v48 = v73;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v39(v47, v13);
  specialized static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(v75 == v74, v5[12], v5[13], v5 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v5[8], v5[9], v5 + 3);
  v49 = v5[10];
  v50 = v5[11];
  v51 = v70;
  v66(v12, v72 + v69, v70);
  v65(v12, 0, 1, v51);
  v52 = (*(*v64 + 144))(a1, v49, v50, v12);
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  if (v52)
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v53, v54, "Acted upon pre-execution decision. Not committing..", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }
  }

  v39(v48, v13);
  return v52 & 1;
}

void ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v71[-v5];
  v6 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v86 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
  MEMORY[0x1EEE9AC00](v82);
  v9 = &v71[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71[-v13];
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v85 = &v71[-v17];
  (*(*v1 + 504))(1, v16);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v87[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), v87);
    _os_log_impl(&dword_1DC659000, v19, v20, "Attempting commit logic for RC ID: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  v23 = (*(*v2 + 400))();
  if (v25 == 2)
  {
    v26 = v23;
    v83 = v24;
    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    swift_bridgeObjectRetain_n();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v79 = v26;
    v77 = v28;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v28;
      v35 = v33;
      v87[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v27, v87);
      _os_log_impl(&dword_1DC659000, v29, v30, "Calling CheckExecutionOverride for RC ID: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v32, -1, -1);
    }

    v36 = (*(*a1 + 896))();
    v78 = v27;
    v76 = v36;
    if (v36)
    {
      v37 = (*(*v36 + 144))();
      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v37;
      }

      v75 = v39;
    }

    else
    {
      v75 = 0;
    }

    v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
    v44 = (*v2 + 1328);
    v45 = *v44;
    v46 = (*v44)(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId);
    if (v46)
    {
      v74 = *(v46 + 16);
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }

    v47 = v45(a1 + v43);
    if (v47)
    {
      v73 = *(v47 + 24);
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
    }

    v48 = v85;
    v72 = v83[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup];
    (*(*a1 + 552))(v47);
    v49 = v86;
    (v86[13].isa)(v14, *MEMORY[0x1E69D0278], v6);
    (v49[7].isa)(v14, 0, 1, v6);
    v50 = *(v82 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v48, v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v14, &v9[v50], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
    v51 = v48;
    isa = v49[6].isa;
    if (isa(v9, 1, v6) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v53 = isa(&v9[v50], 1, v6);
      v54 = v84;
      if (v53 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v55 = 1;
LABEL_32:
        v60 = v79;
        type metadata accessor for ExecutionOverrideContext();
        v61 = swift_allocObject();
        v62 = v73;
        *(v61 + 16) = v74;
        *(v61 + 24) = v62;
        *(v61 + 32) = v72;
        *(v61 + 33) = v55 & 1;
        *(v61 + 40) = v75;
        *(v61 + 48) = 1;
        v63 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
        v64 = type metadata accessor for TaskPriority();
        (*(*(v64 - 8) + 56))(v54, 1, 1, v64);
        v65 = one-time initialization token for shared;

        if (v65 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v66 = static MessageBusActor.shared;
        v67 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
        v68 = swift_allocObject();
        v68[2] = v66;
        v68[3] = v67;
        v70 = v77;
        v69 = v78;
        v68[4] = v2;
        v68[5] = v70;
        v68[6] = v69;
        v68[7] = v61;
        v68[8] = a1;
        v68[9] = v60;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v54, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.commit(rcState:), v68);
        (*(*v63 + 120))();

        return;
      }
    }

    else
    {
      v56 = v81;
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v81, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      if (isa(&v9[v50], 1, v6) != 1)
      {
        v57 = v86;
        v58 = v80;
        (v86[4].isa)(v80, &v9[v50], v6);
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type TTResponseMessage.MitigationDecision and conformance TTResponseMessage.MitigationDecision, MEMORY[0x1E69D0280], MEMORY[0x1E69D0288]);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = v57[1].isa;
        v59(v58, v6);
        outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v59(v81, v6);
        outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
        v54 = v84;
        goto LABEL_32;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (v86[1].isa)(v56, v6);
      v54 = v84;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSg_AFtMR);
    v55 = 0;
    goto LABEL_32;
  }

  outlined consume of ConversationRequestProcessor.State(v23, v24, v25);
  v86 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v86, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1DC659000, v86, v40, "Ignoring commit() call as we are not in a turn", v41, 2u);
    MEMORY[0x1E12A2F50](v41, -1, -1);
  }

  v42 = v86;
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v8[11] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.commit(rcState:), v9, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v2);
  v4 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  v10 = (*(v3 + 56) + **(v3 + 56));
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = closure #1 in ConversationRequestProcessor.commit(rcState:);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  return v10(v8, v6, v7, v4, &protocol witness table for ConversationBridgeProcessorDelegate, v2, v3);
}

{
  v31 = v0;
  v1 = *(v0 + 104);

  if (!v1)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "Cannot act on execution override decision as ExecutionOverrideResult is nil", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = one-time initialization token for conversationBridge;
  v3 = *(v0 + 104);
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315394;
    *(v0 + 112) = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v0 + 113) = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v30);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DC659000, v6, v7, "ExecutionOverride result type: %s decision: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = ExecutionOverrideType.asPreExecutionType()();
  v19 = ExecutionOverrideDecision.asPreExecutionDecision()();
  v20 = ConversationRequestProcessor.handledMitigation(rcState:turn:ruleType:ruleDecision:)(v17, v16, v18, v19);

  if ((v20 & 1) == 0)
  {
LABEL_13:
    v5 = *(v0 + 104);
    v25 = *(v0 + 72);
    v27 = *(v0 + 48);
    v26 = *(v0 + 56);
    (*(**(v0 + 40) + 1336))(v25, *(v0 + 80));
    ConversationRequestProcessor.sendCommitToExecution(_:_:)(v27, v26, v25);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.commit(rcState:), v2, 0);
}

Swift::Void __swiftcall ConversationRequestProcessor.handleRuntimeError(error:)(NSError *error)
{
  v2 = v1;
  p_super = &error->super;
  v3 = type metadata accessor for UUID();
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RequestType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v58 = v3;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[8], v2[9], aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[10], v2[11], aBlock);
    _os_log_impl(&dword_1DC659000, v13, v14, "Handling Runtime error for requestId: %s, rootRequestId: %s", v15, 0x16u);
    swift_arrayDestroy();
    v3 = v58;
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  v18 = (*(*v2 + 608))();
  if (v18)
  {
    v19 = v18;
    v20 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v6 + 16))(v11, v19 + v20, v5);
    (*(v6 + 104))(v8, *MEMORY[0x1E69D0528], v5);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v6 + 8);
    v21(v8, v5);
    v21(v11, v5);
    if (v20)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DC659000, v22, v23, "Understanding is running on server. Ignoring assistant_service crash", v24, 2u);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }
    }

    else
    {
      (*(*v2 + 408))(1, 0, 3);
      v28 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      v29 = v59;
      UUID.init()();
      v30 = UUID.uuidString.getter();
      v32 = v31;
      (*(v60 + 8))(v29, v3);
      v33 = MEMORY[0x1E12A1410](v30, v32);

      [v28 setAceId_];

      v34 = v2[10];
      v35 = v2[11];
      v36 = v28;
      v37 = MEMORY[0x1E12A1410](v34, v35);
      [v36 setRefId_];

      v38 = p_super;
      v39 = [p_super description];
      if (!v39)
      {
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = MEMORY[0x1E12A1410](v40);
      }

      [v36 setReason_];

      [v36 setErrorCode_];
      v41 = v36;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136315394;
        v46 = [v41 debugDescription];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, aBlock);

        *(v44 + 4) = v50;
        *(v44 + 12) = 2048;
        v51 = [v41 errorCode];

        *(v44 + 14) = v51;
        _os_log_impl(&dword_1DC659000, v42, v43, "Sending %s, errorCode: %ld", v44, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x1E12A2F50](v45, -1, -1);
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      else
      {
      }

      v52 = v2[2];
      aBlock[4] = closure #1 in ConversationRequestProcessor.handleRuntimeError(error:);
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_19;
      v53 = _Block_copy(aBlock);
      [v52 handleCommand:v41 completion:v53];
      _Block_release(v53);

      v54 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v56 = *v54;
      v55 = v54[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v56, v55);
      ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(0);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v56, v55);
    }
  }

  else
  {
    p_super = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(p_super, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, p_super, v25, "Not handling runtime error since request has already been cancelled", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v27 = p_super;
  }
}

void closure #2 in ConversationRequestProcessor.flowPluginWillExecute(flowPluginInfo:)(uint64_t a1, void *a2, uint64_t (*a3)(void), const char *a4, ...)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = a3();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DC659000, oslog, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t ConversationRequestProcessor.acquireConversationUserInput(forUserId:requestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
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
    _os_log_impl(&dword_1DC659000, v7, v8, "%s not implemented yet", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  return a5(0);
}

void ConversationRequestProcessor.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v52 = a3;
  v53 = a1;
  v16 = type metadata accessor for UserID();
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = a8;
    v48 = a6;
    v22 = a7;
    v23 = v21;
    v24 = a5;
    v25 = swift_slowAlloc();
    v54 = v25;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, a2, &v54);
    *(v23 + 12) = 2080;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, a4, &v54);
    _os_log_impl(&dword_1DC659000, v19, v20, "Execution asked to re-trigger requestId: %s with userId: %s", v23, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    a5 = v24;
    MEMORY[0x1E12A2F50](v26, -1, -1);
    v27 = v23;
    a7 = v22;
    a8 = v47;
    a6 = v48;
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  if (*(v9 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) != 1)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "Ignoring re-trigger request from SKE since MUX is not enabled", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v35 = swift_allocError();
    v36 = 14;
    goto LABEL_17;
  }

  if (!(*(*v9 + 608))())
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DC659000, v37, v38, "Current request already canceled. Not re-triggering another request.", v39, 2u);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v35 = swift_allocError();
    v36 = 1;
LABEL_17:
    *v34 = v36;
    a7();
    goto LABEL_18;
  }

  v48 = a7;

  v28 = v9[8];
  v29 = v9[9];
  if (v28 == a5 && v29 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v30 = v49;
    UserID.init(sharedUserId:)();
    ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(v53, a2, v30, v48, a8);
    (*(v50 + 8))(v30, v51);
    return;
  }

  v40 = a5;

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = a6;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = v45;
    *v44 = 136315394;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v54);
    *(v44 + 12) = 2080;
    *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, &v54);
    _os_log_impl(&dword_1DC659000, v41, v42, "Current requestId: %s does not match executionRequestId: %s. Not re-triggering another request", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v45, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v35 = swift_allocError();
  *v46 = 0;
  v48();
LABEL_18:
}

Swift::Void __swiftcall ConversationRequestProcessor.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v2, "closeServerRequest() cannot be handled by ConversationRequestProcessor.", v3, 2u);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }
}

uint64_t closure #1 in static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v21 = a7;
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = *MEMORY[0x1E69D0460];
  v15 = type metadata accessor for MessageSource();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  ConversationMitigationMessage.Builder.source.setter();

  ConversationMitigationMessage.Builder.assistantId.setter();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v10, a4, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  ConversationMitigationMessage.Builder.sessionId.setter();

  ConversationMitigationMessage.Builder.requestId.setter();
  return ConversationMitigationMessage.Builder.isMitigated.setter();
}

void ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for UserID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationRequestProcessor.synchronizedCloseRequest()();
  v36 = v5;
  v37 = a1;
  v35 = a1;
  v38 = a2;
  v39 = a3;
  v15 = objc_allocWithZone(type metadata accessor for InitiateMUXStateRollbackMessage());
  v16 = InitiateMUXStateRollbackMessage.init(build:)();
  if (v16)
  {
    v17 = v16;
    v33[1] = a5;
    v34 = a4;
    __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
    dispatch thunk of MessagePublishing.postMessage(_:)();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    (*(v12 + 16))(v14, a3, v11);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136315394;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, a2, &v40);
      *(v21 + 12) = 2080;
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v12 + 8))(v14, v11);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v40);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v19, v20, "Posted InitiateMUXStateRollbackMessage for requestId: %s, userId: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    (v34)(0);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "Could not create InitiateMUXStateRollbackMessage", v30, 2u);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v31 = swift_allocError();
    *v32 = 13;
    a4();
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedRetriggerOriginalRequest(rollbackRequestId:userId:reply:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = *MEMORY[0x1E69D0460];
  v16 = type metadata accessor for MessageSource();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  InitiateMUXStateRollbackMessage.Builder.source.setter();

  InitiateMUXStateRollbackMessage.Builder.assistantId.setter();
  v18 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, &a2[v18], v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  InitiateMUXStateRollbackMessage.Builder.sessionId.setter();

  InitiateMUXStateRollbackMessage.Builder.originalRequestId.setter();

  InitiateMUXStateRollbackMessage.Builder.rollbackRequestId.setter();
  v21 = type metadata accessor for UserID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v8, v25, v21);
  (*(v22 + 56))(v8, 0, 1, v21);
  return InitiateMUXStateRollbackMessage.Builder.userId.setter();
}

void ConversationRequestProcessor.synchronizedCloseRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - v4;
  v6 = (*(*v0 + 1216))(v3);
  if ((*(*v0 + 472))(v6))
  {

    ConversationRequestProcessor.completeRequest(completion:)(0, 0);
  }

  else
  {
    v7 = (*(*v0 + 608))();
    if (v7)
    {
      v8 = v7;
      v9 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
      swift_beginAccess();
      v10 = *(v8 + v9);
      if (v10 >> 62 == 1)
      {
        v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        v12 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
        v13 = type metadata accessor for TaskPriority();
        (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
        v14 = one-time initialization token for shared;
        swift_retain_n();

        if (v14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v15 = static MessageBusActor.shared;
        v16 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
        v17 = swift_allocObject();
        v17[2] = v15;
        v17[3] = v16;
        v17[4] = v1;
        v17[5] = v11;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v17);
        (*(*v12 + 120))();
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.conversationBridge);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1DC659000, v23, v24, "Close called before an RC was selected.", v25, 2u);
          MEMORY[0x1E12A2F50](v25, -1, -1);
        }

        ConversationRequestProcessor.completeRequest(completion:)(0, 0);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.conversationBridge);
      v27 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DC659000, v27, v19, "Ignoring synchronizedCloseRequest as we are not in a turn", v20, 2u);
        MEMORY[0x1E12A2F50](v20, -1, -1);
      }

      v21 = v27;
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v5[7] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v6, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()()
{
  v1 = static MessageBusActor.shared;
  *(v0 + 64) = static MessageBusActor.shared;
  v2 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = closure #1 in ConversationRequestProcessor.synchronizedCloseRequest();
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v1, v2, 0xD00000000000001ALL, 0x80000001DCA808A0, partial apply for closure #1 in closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v3, v5);
}

{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.synchronizedCloseRequest(), v1, 0);
}

{

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.conversationBridge);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "ResultCandidateSelected sent. Now submitting RequestCompleted.", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  ConversationRequestProcessor.completeRequest(completion:)(0, 0);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  (*(v7 + 16))(&v16 - v9, a1, v6, v8);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  (*(*a2 + 1312))(v12, v11, 0, partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed(), v14);
}

Swift::Void __swiftcall ConversationRequestProcessor.safelyCloseContextUpdater()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = one-time initialization token for shared;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v9 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v10);
  (*(*v5 + 120))();
}

uint64_t closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 128) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v5, 0);
}

uint64_t ConversationRequestProcessor.makeResultCandidateState(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v79 = &v68 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v82 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - v5;
  v75 = &v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - v8;
  v77 = &v68 - v8;
  v10 = type metadata accessor for UserID();
  v81 = v10;
  v78 = *(v10 - 8);
  v11 = v78;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v13;
  v14 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v73 = v18;
  v74 = v17;
  v19 = DirectActionResultCandidateMessage.directAction.getter();
  v21 = v20;
  v22 = DirectActionResultCandidateMessage.requestExecutionParameters.getter();
  *v16 = v19;
  v16[1] = v21;
  v16[2] = v22;
  v69 = v16;
  swift_storeEnumTagMultiPayload();
  v76 = *(v11 + 16);
  v76(v13, v72 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v10);
  v23 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v24 = *(*(v23 - 8) + 56);
  v24(v9, 1, 1, v23);
  v25 = type metadata accessor for ExecutionLocation();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  v26 = type metadata accessor for ServerFallbackReason();
  v27 = *(*(v26 - 8) + 56);
  v27(v82, 1, 1, v26);
  type metadata accessor for ResultCandidateState(0);
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v29 = 0;
  v29[1] = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v30 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v31 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v31 - 8) + 56))(v28 + v30, 1, 1, v31);
  v32 = (v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v32 = 0;
  v32[1] = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v33 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v34 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v34 - 8) + 56))(v28 + v33, 1, 1, v34);
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v35 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v24((v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v23);
  v27(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v26);
  v36 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v37 = type metadata accessor for SiriXRedirectContext();
  (*(*(v37 - 8) + 56))(v28 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v71 = type metadata accessor for SelectedUserAttributes();
  v39 = *(v71 - 8);
  v70 = *(v39 + 56);
  v72 = v39 + 56;
  v40 = v70(v28 + v38, 1, 1, v71);
  v41 = v73;
  *(v28 + 16) = v74;
  *(v28 + 24) = v41;
  outlined init with copy of ResultCandidateType(v16, v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v40);
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v43 = *MEMORY[0x1E69D0AA0];
  v44 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v44 - 8) + 104))(v28 + v42, v43, v44);
  *(v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v45 = v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v46 = type metadata accessor for UUID();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  v47 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v48 = type metadata accessor for OSSignpostID();
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  v76((v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId), v80, v81);
  swift_beginAccess();
  v49 = v77;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v77, v28 + v35, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v50 = v75;
  outlined init with copy of ReferenceResolutionClientProtocol?(v75, v28 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v51 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v52 = v82;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v82, v28 + v51, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v53 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v54 = *MEMORY[0x1E69D02D8];
  v55 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v55 - 8) + 104))(v28 + v53, v54, v55);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v56 = v79;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v78 + 8))(v80, v81);
  outlined destroy of RoutingDecision(v69, type metadata accessor for ResultCandidateType);
  v70(v56, 0, 1, v71);
  v57 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v56, v28 + v57);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.conversationBridge);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v83[0] = v62;
    *v61 = 136315138;

    v63 = ResultCandidateState.description.getter();
    v65 = v64;

    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v83);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_1DC659000, v59, v60, "Created %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1E12A2F50](v62, -1, -1);
    MEMORY[0x1E12A2F50](v61, -1, -1);
  }

  return v28;
}

uint64_t ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsrResultCandidateMessage();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TextBasedResultCandidateMessage();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for GestureBasedResultCandidateMessage();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for DirectActionResultCandidateMessage();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for TextBasedTRPCandidateMessage();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for TRPCandidateRequestMessage();
            if (!swift_dynamicCastClass())
            {
              type metadata accessor for NLRoutingDecisionMessage();
              if (!swift_dynamicCastClass())
              {
                if (one-time initialization token for conversationBridge != -1)
                {
                  swift_once();
                }

                v87 = type metadata accessor for Logger();
                __swift_project_value_buffer(v87, static Logger.conversationBridge);
                v88 = a1;
                v89 = Logger.logObject.getter();
                v90 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v89, v90))
                {
                  v91 = swift_slowAlloc();
                  v92 = swift_slowAlloc();
                  v104[0] = v92;
                  *v91 = 136315138;
                  swift_getObjectType();
                  v93 = _typeName(_:qualified:)();
                  v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v104);

                  *(v91 + 4) = v95;
                  _os_log_impl(&dword_1DC659000, v89, v90, "These set of prerequisite checks are not valid for RC type: %s", v91, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v92);
                  MEMORY[0x1E12A2F50](v92, -1, -1);
                  MEMORY[0x1E12A2F50](v91, -1, -1);
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  v13 = (*(*v4 + 608))();
  if (v13)
  {
    v14 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v14 >> 62 == 1)
    {
      v100 = a2;
      v15 = v10;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.conversationBridge);
      v17 = a1;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v101 = v11;
        v21 = v20;
        v98 = swift_slowAlloc();
        v103 = v98;
        *v21 = 136315394;
        v99 = a3;
        v22 = v102;
        v97 = v19;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v96 = v18;
        v10 = v15;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = v22;
        a3 = v99;
        (*(v101 + 8))(v26, v10);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v103);

        *(v21 + 4) = v27;
        *(v21 + 12) = 2080;
        swift_getObjectType();
        v28 = _typeName(_:qualified:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v103);

        *(v21 + 14) = v30;
        v31 = v96;
        _os_log_impl(&dword_1DC659000, v96, v97, "RC already selected. Not handling Message id %s of type %s", v21, 0x16u);
        v32 = v98;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v32, -1, -1);
        v33 = v21;
        v11 = v101;
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }

      else
      {

        v10 = v15;
      }

      a2 = v100;
    }

    if ((*(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) & 1) != 0 || (v66 = *v14, v67 = v14[1], outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v14, v67), v68 = a2, v69 = ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(a2, a3, v66), outlined consume of ConversationRequestProcessorTurnState.SpeechState(v66, v67), !v69) || (, type metadata accessor for RewrittenUtteranceCandidateMessage(), swift_dynamicCastClass()))
    {

      return 1;
    }

    v101 = v11;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.conversationBridge);
    v72 = a1;

    v36 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v73))
    {
      v74 = v68;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = a3;
      v78 = v76;
      v103 = v76;
      *v75 = 136315650;
      *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v77, &v103);
      *(v75 + 12) = 2080;
      v79 = v102;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v101 + 8))(v79, v10);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v103);

      *(v75 + 14) = v83;
      *(v75 + 22) = 2080;
      swift_getObjectType();
      v84 = _typeName(_:qualified:)();
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v103);

      *(v75 + 24) = v86;
      _os_log_impl(&dword_1DC659000, v36, v73, "Receive multiple RC inputs for the same RC ID: %s, not handling Message id %s of type %s", v75, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }
  }

  else
  {
    if ((~a4 & 0xF000000000000007) != 0)
    {
      v101 = v11;
      v49 = one-time initialization token for conversationBridge;
      v50 = (a4 & 0x1FFFFFFFFFFFFFFFLL);
      if (v49 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.conversationBridge);
      v52 = a1;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v104[0] = v100;
        *v55 = 136315394;
        v56 = v102;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        (*(v101 + 8))(v56, v10);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v104);

        *(v55 + 4) = v60;
        *(v55 + 12) = 2080;
        swift_getObjectType();
        v61 = _typeName(_:qualified:)();
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v104);

        *(v55 + 14) = v63;
        _os_log_impl(&dword_1DC659000, v53, v54, "Message id %s of type %s received for an inactive request. Will cache it for when we get a start-turn signal.", v55, 0x16u);
        v64 = v100;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v64, -1, -1);
        MEMORY[0x1E12A2F50](v55, -1, -1);
      }

      v65 = (*(*v5 + 416))(v104);
      ConversationRequestProcessor.State.cacheCandidateMessage(_:)(a4);
      v65(v104, 0);
      outlined consume of CandidateRequestMessage?(a4);
      return 0;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.conversationBridge);
    v35 = a1;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v104[0] = v39;
      *v38 = 136315394;
      v40 = v102;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v11;
      v44 = v43;
      (*(v42 + 8))(v40, v10);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v44, v104);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      swift_getObjectType();
      v46 = _typeName(_:qualified:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v104);

      *(v38 + 14) = v48;
      _os_log_impl(&dword_1DC659000, v36, v37, "Request already canceled. Not handling Message id %s of type %s.", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v39, -1, -1);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }
  }

  return 0;
}