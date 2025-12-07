char *ConversationRequestProcessor.buildConversationUserInput(rcState:requestType:nlResponse:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v142 = a3;
  v146 = a2;
  v141 = type metadata accessor for UUID();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v147 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v131 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v127 - v14;
  v148 = type metadata accessor for ExecutionLocation();
  v152 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v133 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v127 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v132 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v128 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v151 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v135 = &v127 - v31;
  v32 = type metadata accessor for RequestType();
  v144 = *(v32 - 8);
  v145 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v143 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v127 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v139 = &v127 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v153 = &v127 - v43;
  v44 = type metadata accessor for ConversationSessionKey();
  v45 = *(v44 - 8);
  v46.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v3 + 424))(v155, v46);
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  (*(v45 + 104))(v48, *MEMORY[0x1E69D0808], v44);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  (*(v45 + 8))(v48, v44);
  if (v157)
  {
    if (swift_dynamicCast())
    {
      v138 = v154;
      v49 = __swift_destroy_boxed_opaque_existential_1Tm(v155);
      goto LABEL_7;
    }

    v49 = __swift_destroy_boxed_opaque_existential_1Tm(v155);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v155);
    v49 = outlined destroy of ReferenceResolutionClientProtocol?(v156, &_sypSgMd, &_sypSgMR);
  }

  v138 = 0;
LABEL_7:
  v50 = v147;
  v51 = v148;
  v52 = v152;
  (*(*a1 + 744))(v49);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v39, v36, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v53 = type metadata accessor for SiriXRedirectContext();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v36, 1, v53) == 1)
  {
    v55 = type metadata accessor for FlowRedirectContext();
    (*(*(v55 - 8) + 56))(v153, 1, 1, v55);
  }

  else
  {
    v56 = v153;
    (*(v54 + 32))(v153, v36, v53);
    v57 = *MEMORY[0x1E69CFB30];
    v58 = type metadata accessor for FlowRedirectContext();
    v59 = *(v58 - 8);
    (*(v59 + 104))(v56, v57, v58);
    (*(v59 + 56))(v56, 0, 1, v58);
  }

  v60 = v149;
  v62 = v143;
  v61 = v144;
  v63 = v145;
  (*(v144 + 16))(v143, v146, v145);
  v64 = (*(v61 + 88))(v62, v63);
  if (v64 == *MEMORY[0x1E69D0548])
  {
    v65 = (*(*a1 + 896))();
    if (v65)
    {
      v66 = v136;
      v67 = v135;
      v68 = (*(*v65 + 112))();
      v146 = (*(*v4 + 1304))(a1, [v68 speechProfileUsed]);
      v145 = (*(*v4 + 1296))(a1);
      v69 = a1[3];
      v136 = a1[2];
      v70 = *(*a1 + 552);

      v151 = v67;
      v72 = v70(v71);
      v73 = (*(*a1 + 888))(v72);
      v143 = v74;
      v144 = v73;
      v75 = v137;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v137, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v76 = v152;
      v77 = *(v152 + 48);
      v78 = v77(v75, 1, v51);
      v150 = v66;
      if (v78 == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v77(v75, 1, v51) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v76 + 32))(v66, v75, v51);
      }

      v60 = v149;
      static ExecutionLocation.device.getter();
      v93 = v139;
      outlined init with copy of ReferenceResolutionClientProtocol?(v153, v139, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      type metadata accessor for ConversationUserInput(0);
      v92 = swift_allocObject();
      *(v92 + 2) = v136;
      *(v92 + 3) = v69;
      v50 = v147;
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v95;

      v51 = v148;
LABEL_28:
      v52 = v152;
      goto LABEL_48;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  }

  else
  {
    if (v64 == *MEMORY[0x1E69D0530])
    {
      goto LABEL_16;
    }

    if (v64 == *MEMORY[0x1E69D0510] || v64 == *MEMORY[0x1E69D0508])
    {
      goto LABEL_38;
    }

    if (v64 == *MEMORY[0x1E69D0538])
    {
      v151 = v128;
      v146 = (*(*v4 + 1304))(a1, 0);
      v145 = (*(*v4 + 1296))(a1);
      v88 = a1[3];
      v150 = a1[2];
      v89 = *(*a1 + 896);

      v91 = v89(v90);
      if (v91)
      {
        v68 = (*(*v91 + 112))(v91);
      }

      else
      {
        v68 = 0;
      }

      v116 = v130;
      v117 = v129;
      v118 = (*(*a1 + 552))(v91);
      v119 = (*(*a1 + 888))(v118);
      v143 = v120;
      v144 = v119;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v117, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v121 = v152;
      v122 = *(v152 + 48);
      if (v122(v117, 1, v51) == 1)
      {
        static ExecutionLocation.unknown.getter();
        v123 = v122(v117, 1, v51) == 1;
        v124 = v117;
        v125 = v116;
        if (!v123)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v124, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v121 + 32))(v116, v117, v51);
        v125 = v116;
      }

      v60 = v149;
      static ExecutionLocation.device.getter();
      v93 = v139;
      outlined init with copy of ReferenceResolutionClientProtocol?(v153, v139, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      type metadata accessor for ConversationUserInput(0);
      v92 = swift_allocObject();
      *(v92 + 2) = v150;
      *(v92 + 3) = v88;
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v126;
      v150 = v125;
      goto LABEL_28;
    }

    if (v64 == *MEMORY[0x1E69D0528] || v64 == *MEMORY[0x1E69D0558] || v64 == *MEMORY[0x1E69D0540] || v64 == *MEMORY[0x1E69D0560] || v64 == *MEMORY[0x1E69D0518])
    {
LABEL_38:
      v98 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID + 8);
      if (!v98 || ((v99 = a1[2], v100 = a1[3], v99 != *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID)) || v98 != v100) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v108 = 0;
        v109 = 0;
        v92 = 0;
LABEL_49:
        (*(*a1 + 296))(v108, v109);
        outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
        return v92;
      }

      v101 = *(*a1 + 552);

      v103 = v101(v102);
      v104 = (*(*a1 + 888))(v103);
      v143 = v105;
      v144 = v104;
      v106 = v131;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v131, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v107 = *(v52 + 48);
      if (v107(v106, 1, v51) == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v107(v106, 1, v51) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v52 + 32))(v133, v106, v51);
      }

      static ExecutionLocation.device.getter();
      v93 = v139;
      outlined init with copy of ReferenceResolutionClientProtocol?(v153, v139, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      type metadata accessor for ConversationUserInput(0);
      v92 = swift_allocObject();
      *(v92 + 2) = v99;
      *(v92 + 3) = v100;
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v110;
      v68 = 0;
      v145 = 0;
      v146 = 0;
      v151 = v132;
      v150 = v133;
LABEL_48:
      (*(v140 + 8))(v50, v141);
      *(v92 + 4) = v94;
      *(v92 + 5) = v96;
      *(v92 + 6) = v68;
      *(v92 + 7) = v142;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v151, &v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      v111 = v145;
      *&v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = v146;
      *&v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = v111;
      *&v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
      v112 = &v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
      v113 = v143;
      *v112 = v144;
      v112[1] = v113;
      v114 = *(v52 + 32);
      v114(&v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v150, v51);
      v114(&v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v60, v51);
      v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = v138;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v93, &v92[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v108 = *(v92 + 4);
      v109 = *(v92 + 5);

      goto LABEL_49;
    }

    if (v64 == *MEMORY[0x1E69D0520])
    {
LABEL_16:
      v146 = (*(*v4 + 1304))(a1, 0);
      v145 = (*(*v4 + 1296))(a1);
      v80 = a1[2];
      v79 = a1[3];
      v81 = *(*a1 + 552);

      v83 = v81(v82);
      v84 = (*(*a1 + 888))(v83);
      v143 = v85;
      v144 = v84;
      v86 = v134;
      outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, v134, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v87 = *(v52 + 48);
      if (v87(v86, 1, v51) == 1)
      {
        static ExecutionLocation.unknown.getter();
        if (v87(v86, 1, v51) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
        }
      }

      else
      {
        (*(v52 + 32))(v150, v86, v51);
      }

      static ExecutionLocation.device.getter();
      v93 = v139;
      outlined init with copy of ReferenceResolutionClientProtocol?(v153, v139, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      type metadata accessor for ConversationUserInput(0);
      v92 = swift_allocObject();
      *(v92 + 2) = v80;
      *(v92 + 3) = v79;
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v97;
      v68 = 0;
      goto LABEL_48;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v153, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
    (*(v61 + 8))(v62, v63);
  }

  return 0;
}

void closure #1 in ConversationRequestProcessor.sendResultCandidateSelected(selectedResultCandidateId:isServerFallback:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v12 = Optional.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "Sent ResultCandidateSelected to server, error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  if (a3)
  {
    a3(a1, a2);
  }
}

void ConversationRequestProcessor.completeRequest(completion:)(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 416))(v14);
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) == 1)
  {
    v17 = objc_allocWithZone(type metadata accessor for FlowCompletedMessage());
    v18 = FlowCompletedMessage.init(build:)();
    if (v18)
    {
      v19 = v18;
      __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
      dispatch thunk of MessagePublishing.postMessage(_:)();
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.conversationBridge);
      v42 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DC659000, v42, v21, "Posted FlowCompletedMessage to message bus", v22, 2u);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.conversationBridge);
      v42 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v42, v38, "Error building FlowCompletedMessage", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }
    }

    v40 = v42;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E69C79C0]) init];
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v42 = a2;
    v26 = v25;
    (*(v13 + 8))(v16, v12);
    v27 = MEMORY[0x1E12A1410](v24, v26);

    [v23 setAceId_];

    v28 = *(v3 + 64);
    v29 = *(v3 + 72);
    v30 = v23;
    v31 = MEMORY[0x1E12A1410](v28, v29);
    [v30 setRefId_];

    v32 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    (*(v13 + 56))(v11, 1, 1, v12);
    v33 = type metadata accessor for UserID();
    (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
    v34 = swift_allocObject();
    v35 = v42;
    *(v34 + 16) = a1;
    *(v34 + 24) = v35;
    v36 = *(*v32 + 328);
    sub_1DC680C50(a1);
    v36(v30, v28, v29, 0, 0, 0, 0, 0, v11, v8, 0, partial apply for closure #2 in ConversationRequestProcessor.completeRequest(completion:), v34);

    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }
}

uint64_t closure #1 in ConversationRequestProcessor.completeRequest(completion:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = *MEMORY[0x1E69D0460];
  v10 = type metadata accessor for MessageSource();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  FlowCompletedMessage.Builder.source.setter();

  FlowCompletedMessage.Builder.assistantId.setter();
  v12 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, &a2[v12], v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  FlowCompletedMessage.Builder.sessionId.setter();

  return FlowCompletedMessage.Builder.requestId.setter();
}

void closure #2 in ConversationRequestProcessor.completeRequest(completion:)(void *a1, void *a2, void (*a3)(void *, void *))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationBridge);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v13 = Optional.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v16 = Optional.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v19);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitted RequestCompleted with error: %s and command: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  if (a3)
  {
    a3(a1, a2);
  }
}

uint64_t ConversationRequestProcessor.fetchCachedAnnounceContext(forUserId:)(uint64_t a1)
{
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConversationSessionKey();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v32[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 424))(v32, v9);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  (*(v8 + 104))(v11, *MEMORY[0x1E69D07E0], v7);
  dispatch thunk of ConversationSessionState.value(forKey:userId:)();
  (*(v8 + 8))(v11, v7);
  if (v33[3])
  {
    type metadata accessor for AnnounceContext();
    if (swift_dynamicCast())
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
    v12 = 0;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  (*(v4 + 16))(v6, a1, v3);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32[0] = v17;
    *v16 = 136315650;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v4 + 8))(v6, v3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v32);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    if (v12)
    {
    }

    else
    {
      v22 = 0;
    }

    v33[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMR);
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v32);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2080;
    if (v12)
    {
    }

    else
    {
      v26 = 0;
    }

    v33[0] = v26;
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v32);

    *(v16 + 24) = v29;
    _os_log_impl(&dword_1DC659000, v14, v15, "Fetched the following for userId: %s from cachedSessionContext: activeTasks: %s, executedTasks: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return v12;
}

uint64_t ConversationRequestProcessor.revealAsrTranscription(for:turn:)(uint64_t a1, uint64_t a2)
{
  v59[0] = a2;
  v3 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - v16;
  v18 = (*(*a1 + 896))(v15);
  if (!v18)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v47, v48, "Only speech-based RC can reveal ASR transcription. Not revealing ASR for RCID %s.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x1E12A2F50](v50, -1, -1);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    return 0;
  }

  v19 = *(*v18 + 120);
  v60 = v18;
  v20 = v19();
  if (!v20)
  {
    goto LABEL_23;
  }

  if (!*(v20 + 16))
  {

LABEL_23:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.conversationBridge);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "ASR is not to be revealed.", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);
    }

    return 0;
  }

  (*(v4 + 16))(v6, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  Siri_Nlu_External_RepetitionResult.repetitionType.getter();
  (*(v4 + 8))(v6, v3);
  v21 = v8;
  v22 = *(v8 + 32);
  v23 = v7;
  v22(v17, v13, v7);
  (*(v21 + 104))(v10, *MEMORY[0x1E69D0B68], v7);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, MEMORY[0x1E69D0B78], MEMORY[0x1E69D0B80]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v24 = *(v21 + 8);
  v25 = v24(v10, v7);
  if (aBlock[0] != aBlock[6])
  {
    v24(v17, v7);
    goto LABEL_23;
  }

  v26 = (*(*v60 + 112))(v25);
  v27 = [v26 recognition];

  if (!v27 || (v28 = [v27 aceRecognition], v27, !v28))
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.conversationBridge);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "Failed to get ASR Recognition object for ASR reveal. ASR is NOT to be revealed.", v58, 2u);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    v24(v17, v7);
    return 0;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.conversationBridge);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v59[1];
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1DC659000, v30, v31, "Preparing ACE command for ASR reveal.", v34, 2u);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E69C7BA0]) init];
  v36 = *(v33 + 80);
  v37 = *(v33 + 88);
  v38 = v35;
  v39 = MEMORY[0x1E12A1410](v36, v37);
  [v38 setRefId_];

  [v38 setRecognition_];
  v40 = (v59[0] + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  if (*v40 >> 62 != 1 || (v41 = v40[1]) == 0 || (v42 = [v41 aceId]) == 0)
  {
    v42 = 0;
  }

  [v38 setSpeechRecognizedAceId_];

  v43 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  aBlock[4] = closure #1 in ConversationRequestProcessor.revealAsrTranscription(for:turn:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_32;
  v44 = _Block_copy(aBlock);
  [v43 handleCommand:v38 completion:v44];

  _Block_release(v44);

  v24(v17, v23);
  return 1;
}

void closure #1 in ConversationRequestProcessor.revealAsrTranscription(for:turn:)()
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
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "UIRevealRecognizedSpeech handled", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

void ConversationRequestProcessor.sendCommitToExecution(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v90 - v9;
  v91 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = AFIsInternalInstall();
  if (v12)
  {
    type metadata accessor for ConversationBridge(0);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = *(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
    swift_getObjectType();
    swift_unknownObjectRetain();
    specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(v13, v15, v16, 0, 0, 0, 0);

    v12 = swift_unknownObjectRelease();
  }

  v17 = (*(*a3 + 288))(v12);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v94 = v10;
    type metadata accessor for CommitResultCandidateId();
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = v19;
    v21[5] = v20;
    v22 = one-time initialization token for conversationBridge;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = __swift_project_value_buffer(v23, static Logger.conversationBridge);

    v93 = v24;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v90 = v21;
      v28 = v27;
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
      *(v28 + 12) = 2080;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, aBlock);

      *(v28 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v25, v26, "Sending CommitResultCandidateId for RC ID: %s and conversationUserInputId: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v29, -1, -1);
      v31 = v28;
      v21 = v90;
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    else
    {
    }

    v44 = v94;
    v45 = (*(*v4 + 608))();
    if (!v45)
    {
      goto LABEL_30;
    }

    v46 = v45;
    v47 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    swift_beginAccess();
    v48 = *(v46 + v47);
    if (v48 >> 62 == 1)
    {
      v49 = v48 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = *(*(v48 & 0x3FFFFFFFFFFFFFFFLL) + 904);

      v52 = v50(v51);
      if (v52)
      {
        v54 = (*(*v52 + 216))();
        if (v55)
        {
          v56 = v54;
          v57 = v55;
          v58 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
          v90 = v21;
          v59 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);
          v60 = *(v49 + 24);
          v91 = *(v49 + 16);
          v92 = v58;
          v61 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;

          v62 = v49 + v61;
          v44 = v94;
          ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(v92, v59, v91, v60, v56, v57, v62);

          v21 = v90;
        }

        else
        {
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1DC659000, v73, v74, "Sending commit to conversation bridge, but selected TCU ID is unknown. This can happen if we didn't get a well-formed TTResponseMessage. ExecutionFinalizedMessage will fail to send.", v75, 2u);
            MEMORY[0x1E12A2F50](v75, -1, -1);
          }
        }
      }

      else
      {
        v63 = v92;
        outlined init with copy of ResultCandidateType(v49 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v92, v53);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          outlined destroy of RoutingDecision(v63, type metadata accessor for ResultCandidateType);
          goto LABEL_30;
        }

        v64 = v63[3];
        v65 = v63[5];
        if (!v64)
        {

          goto LABEL_30;
        }

        if (v65)
        {
          v90 = v21;
          v66 = v63[2];
          v92 = v63[4];

          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_1DC659000, v67, v68, "Posting ExecutionFinalizedMessage for text request", v69, 2u);
            MEMORY[0x1E12A2F50](v69, -1, -1);
          }

          v70 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
          v71 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);
          v72 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;

          ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(v70, v71, v66, v64, v92, v65, v49 + v72);

          v21 = v90;
          v44 = v94;
          goto LABEL_30;
        }
      }
    }

LABEL_30:
    (*(**(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) + 392))(a3);
    v76 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24);
    v77 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient), v76);
    (*(v77 + 48))(v21, *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate), &protocol witness table for ConversationBridgeProcessorDelegate, v76, v77);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v78 = static Log.executor;
    OSSignpostID.init(log:)();
    v79 = static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v79, &dword_1DC659000, v78, "CommitToCloseTime", 17, 2, v44, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
    v80 = type metadata accessor for OSSignpostID();
    (*(*(v80 - 8) + 56))(v44, 0, 1, v80);
    (*(*a3 + 872))(v44);
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for InsightRequestSummaryLogger(0);
    v82 = __swift_project_value_buffer(v81, static Logger.insightRequestSummaryLogger);

    specialized InsightRequestSummaryLogger.emitDebug(_:)(v82, v4, a3);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v95 = v86;
      *v85 = 136315138;
      v87 = CommitResultCandidateId.debugDescription.getter();
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v95);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_1DC659000, v83, v84, "Successfully sent: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x1E12A2F50](v86, -1, -1);
      MEMORY[0x1E12A2F50](v85, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.conversationBridge);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "Trying to commit RCState without a conversationUserInputId - this means we did not create a ConversationUserInput for this RC which is an error. Sending CommandFailed.", v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  v36 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
  [v36 setErrorCode_];
  v37 = MEMORY[0x1E12A1410](0xD000000000000036, 0x80000001DCA80860);
  [v36 setReason_];

  v38 = v4[8];
  v39 = v4[9];
  v40 = v36;
  v41 = MEMORY[0x1E12A1410](v38, v39);
  [v40 setRefId_];

  v42 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  aBlock[4] = closure #1 in ConversationRequestProcessor.sendCommitToExecution(_:_:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_74;
  v43 = _Block_copy(aBlock);
  [v42 handleCommand:v40 completion:v43];
  _Block_release(v43);
}

void ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(type metadata accessor for ExecutionFinalizedMessage());
  v14 = ExecutionFinalizedMessage.init(build:)();
  if (v14)
  {
    v15 = v14;
    if (one-time initialization token for insightRequestSummaryLogger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for InsightRequestSummaryLogger(0);
    v17 = __swift_project_value_buffer(v16, static Logger.insightRequestSummaryLogger);

    specialized InsightRequestSummaryLogger.emitDebug(_:)(v17, v8, a3, a4, a5, a6);

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
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Posting ExecutionFinalizedMessage to message bus", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v8 + 3, v8[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v15 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v15, v23, "Error building ExecutionFinalizedMessage", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.postExecutionFinalizedMessage(requestId:selectedTrpId:selectedTcuId:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[1] = a5;
  v28[2] = a7;
  v29 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v28 - v17;

  ExecutionFinalizedMessage.Builder.requestId.setter();
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v18, a4 + v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  ExecutionFinalizedMessage.Builder.sessionId.setter();

  ExecutionFinalizedMessage.Builder.assistantId.setter();
  ExecutionFinalizedMessage.Builder.flowPluginId.setter();
  v22 = *MEMORY[0x1E69D0460];
  v23 = type metadata accessor for MessageSource();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v15, v22, v23);
  (*(v24 + 56))(v15, 0, 1, v23);
  ExecutionFinalizedMessage.Builder.source.setter();

  ExecutionFinalizedMessage.Builder.tcuId.setter();

  ExecutionFinalizedMessage.Builder.trpCandidateId.setter();
  v25 = type metadata accessor for UserID();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v12, v29, v25);
  (*(v26 + 56))(v12, 0, 1, v25);
  return ExecutionFinalizedMessage.Builder.userId.setter();
}

void closure #1 in ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v8 = Optional.debugDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, oslog, v5, "Error applying empty NativeFlowContextUpdate: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationRequestProcessor.actionCandidatesGenerated(_:rcId:)(Swift::OpaquePointer _, Swift::String rcId)
{
  v3 = objc_allocWithZone(type metadata accessor for SiriXActionCandidatesGeneratedMessage());
  v4 = SiriXActionCandidatesGeneratedMessage.init(build:)();
  if (v4)
  {
    v5 = v4;
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.executor);
    v5 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v5, v7, "Could not generate SiriXActionCandidatesGeneratedMessage. Missing fields?", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.actionCandidatesGenerated(_:rcId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65[3] = a5;
  v65[2] = a4;
  v89 = a3;
  v7 = type metadata accessor for CamParse();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = v65 - v10;
  v87 = type metadata accessor for SiriXParse();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v77 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v65 - v15;
  v70 = type metadata accessor for SiriXActionCandidate();
  v16 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v78 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ActionCandidate();
  v18 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v82 = v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v65 - v26;

  SiriXActionCandidatesGeneratedMessage.Builder.requestId.setter();
  v28 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v27, &a2[v28], v29);
  (*(v30 + 56))(v27, 0, 1, v29);
  SiriXActionCandidatesGeneratedMessage.Builder.sessionId.setter();
  v31 = *MEMORY[0x1E69D0460];
  v32 = type metadata accessor for MessageSource();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v24, v31, v32);
  (*(v33 + 56))(v24, 0, 1, v32);
  SiriXActionCandidatesGeneratedMessage.Builder.source.setter();

  v65[1] = a1;
  SiriXActionCandidatesGeneratedMessage.Builder.assistantId.setter();
  v34 = *(v89 + 16);
  if (v34)
  {
    v36 = *(v18 + 16);
    v35 = v18 + 16;
    v75 = v36;
    v37 = v89 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v73 = (v84 + 6);
    v74 = v38;
    v67 = (v84 + 4);
    v85 = (v16 + 48);
    v86 = (v35 - 8);
    v66 = (v84 + 1);
    v84 = (v16 + 32);
    v72 = (v16 + 56);
    v83 = MEMORY[0x1E69E7CC0];
    v39 = v87;
    v40 = v88;
    v41 = v70;
    v42 = v90;
    v43 = v82;
    v68 = v16;
    v76 = v35;
    while (1)
    {
      v89 = v34;
      v44 = v75;
      v75(v43, v37, v42);
      v44(v40, v43, v42);
      v45 = v81;
      ActionCandidate.parse.getter();
      v46 = v45;
      v47 = v80;
      SiriXParse.init(fromCamParse:)(v46, v80);
      v48 = (*v73)(v47, 1, v39);
      v49 = v85;
      if (v48 == 1)
      {
        v50 = *v86;
        v51 = v90;
        (*v86)(v43, v90);
        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s16SiriMessageTypes0A6XParseOSgMd, &_s16SiriMessageTypes0A6XParseOSgMR);
        v52 = v79;
        v53 = v51;
      }

      else
      {
        v71 = v37;
        v54 = v85;
        v55 = v77;
        v56 = (*v67)(v77, v47, v39);
        MEMORY[0x1EEE9AC00](v56);
        v65[-2] = v40;
        v65[-1] = v55;
        v57 = v69;
        SiriXActionCandidate.init(build:)();
        v50 = *v86;
        (*v86)(v43, v90);
        v58 = *v54;
        if (!(*v54)(v57, 1, v41))
        {
          v52 = v79;
          v41 = v70;
          (*v84)(v79, v57, v70);
          (*v66)(v77, v87);
          (*v72)(v52, 0, 1, v41);
          v50(v40, v90);
          v16 = v68;
          v37 = v71;
          goto LABEL_10;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
        (*v66)(v77, v87);
        v52 = v79;
        v41 = v70;
        v37 = v71;
        v16 = v68;
        v49 = v85;
        v53 = v90;
      }

      v50(v88, v53);
      (*v72)(v52, 1, 1, v41);
      v58 = *v49;
LABEL_10:
      if (v58(v52, 1, v41) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s16SiriMessageTypes0A16XActionCandidateVSgMd, &_s16SiriMessageTypes0A16XActionCandidateVSgMR);
      }

      else
      {
        v59 = *v84;
        (*v84)(v78, v52, v41);
        v60 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
        }

        v62 = v60[2];
        v61 = v60[3];
        if (v62 >= v61 >> 1)
        {
          v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v60);
        }

        v60[2] = v62 + 1;
        v63 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v83 = v60;
        v59(v60 + v63 + *(v16 + 72) * v62, v78, v41);
      }

      v39 = v87;
      v40 = v88;
      v42 = v90;
      v43 = v82;
      v37 += v74;
      v34 = v89 - 1;
      if (v89 == 1)
      {
        goto LABEL_18;
      }
    }
  }

  v83 = MEMORY[0x1E69E7CC0];
LABEL_18:
  SiriXActionCandidatesGeneratedMessage.Builder.actionCandidates.setter();

  return SiriXActionCandidatesGeneratedMessage.Builder.rcId.setter();
}

void *ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:)(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v84 = a4;
  v7 = type metadata accessor for UUID();
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RequestType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  (*(v11 + 16))(v16, a2 + v17, v10);
  (*(v11 + 104))(v13, *MEMORY[0x1E69D0548], v10);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
  LOBYTE(v17) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if ((v17 & 1) == 0)
  {
    if (a3)
    {
      a3(0, 0);
    }

    return 0;
  }

  v80 = a3;
  v19 = (a2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  v20 = swift_beginAccess();
  if (*v19 >> 62 == 1 && v19[1])
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_30;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "SpeechRecognized is already sent. Not sending again..";
LABEL_29:
    _os_log_impl(&dword_1DC659000, v22, v23, v25, v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
LABEL_30:

    if (v80)
    {
      v80(0, 0);
    }

    return 0;
  }

  v26 = a1;
  v27 = (*(*a1 + 896))(v20);
  if (!v27)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.conversationBridge);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_30;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "ResultCandidateState is not of the right type. Cannot send SpeechRecognized";
    goto LABEL_29;
  }

  v28 = v27;
  v29 = *(v27 + 24);
  if (!v29)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Logger.conversationBridge);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock[0] = v78;
      *v77 = 136315138;
      *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v75, v76, "RC:%s does not contain an ASR output. Not sending SpeechRecognized.", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    if (v80)
    {
      v80(0, 0);
    }

    return 0;
  }

  v30 = one-time initialization token for conversationBridge;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.conversationBridge);
  v33 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v29;
    v38 = v33;
    _os_log_impl(&dword_1DC659000, v34, v35, "Rec = %@", v36, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v39 = [v33 utterances];
  if (!v39 || ((v40 = v39, type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SASUtterance, 0x1E69C7A30), v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v40, v41 >> 62) ? (v42 = __CocoaSet.count.getter()) : (v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v42))
  {

    v69 = Logger.logObject.getter();
    v70 = v26;
    v71 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v69, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v70 + 16), *(v70 + 24), aBlock);
      _os_log_impl(&dword_1DC659000, v69, v71, "RC:%s consists of empty recognition. Not sending SpeechRecognized.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x1E12A2F50](v73, -1, -1);
      MEMORY[0x1E12A2F50](v72, -1, -1);
    }

    if (v80)
    {
      v80(0, 0);
    }

    return 0;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1DC659000, v43, v44, "Sending SpeechRecognized command", v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  v46 = [objc_allocWithZone(MEMORY[0x1E69C7A00]) init];
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v48;
  (*(v81 + 8))(v9, v82);
  v50 = MEMORY[0x1E12A1410](v47, v49);

  [v46 setAceId_];

  v51 = v83;
  v52 = *(v83 + 80);
  v53 = *(v83 + 88);
  v54 = v46;
  v55 = MEMORY[0x1E12A1410](v52, v53);
  [v54 setRefId_];

  [v54 setEager_];
  [v54 setRecognition_];
  v56 = MEMORY[0x1E12A1410](v52, v53);
  [v54 setSessionId_];

  v57 = MEMORY[0x1E12A1410](*(v26 + 16), *(v26 + 24));
  v58 = v54;
  [v54 setResultId_];

  v59 = *(v51 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
  if ([v59 respondsToSelector_])
  {
    v60 = swift_allocObject();
    v83 = v28;
    v61 = v33;
    v62 = v80;
    v63 = v84;
    *(v60 + 16) = v80;
    *(v60 + 24) = v63;
    aBlock[4] = partial apply for closure #1 in ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:);
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_38;
    v64 = _Block_copy(aBlock);
    v65 = v58;
    v66 = v62;
    v33 = v61;
    sub_1DC680C50(v66);

    [v59 handleSpeechRecognized:v65 completion:v64];
    _Block_release(v64);
  }

  return v58;
}

void closure #1 in ConversationRequestProcessor.makeAndSendSpeechRecognizedCommand(rcState:turn:reply:)(uint64_t a1, void *a2, void (*a3)(uint64_t, void *))
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationBridge);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v12 = Optional.debugDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1DC659000, v8, v9, "Sent SpeechRecognized command with error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    if (a3)
    {
LABEL_7:
      a3(a1, a2);
    }
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
      _os_log_impl(&dword_1DC659000, v16, v17, "Sent SpeechRecognized command successfully", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    if (a3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for TimeoutError();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v2[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v5, 0);
}

uint64_t ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)()
{
  v1 = (*(**(v0 + 56) + 520))();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v9 = static Log.executor;
    *(v0 + 120) = static Log.executor;
    v10 = v9;
    OSSignpostID.init(log:)();
    v11 = static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v11, &dword_1DC659000, v10, "RRaaSEntityCollectionTime", 25, 2, v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
    v12 = DispatchTimeInterval.seconds.getter();

    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    *v13 = v0;
    v13[1] = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
    v15 = *(v0 + 56);
    v16.n128_f64[0] = v12;

    return MEMORY[0x1EEE40F70](v0 + 144, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v15, v14, v16);
  }

  else
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
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "The task already finished. Returning", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  *(v2 + 136) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
  }

  else
  {

    v4 = ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v1 = *(v0 + 136);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

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
      _os_log_impl(&dword_1DC659000, v4, v5, "Timed out waiting for RRaaS entity collection", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);

    (*(v8 + 8))(v7, v9);
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 136);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Unknown error waiting for RRaaS entity collection", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }

  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v18 = *(v0 + 88);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v17 + 8))(v16, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), v0, 0);
}

{
  *(v0 + 56) = *(*(v0 + 48) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:);
    v3 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v2, v1, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

void closure #1 in ConversationRequestProcessor.donateUtteranceRREntity(rrEntity:)(void *a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.conversationBridge);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, oslog, v5, "#donateUtteranceForReferenceResolution: utterance Entity donation to SRR was unsuccessful as %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v12, "#donateUtteranceForReferenceResolution: utterance Entity donation to SRR was successful", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

uint64_t ConversationRequestProcessor.State.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      return 0x617473206E727574;
    }

    else if (a1 | a2)
    {
      return 0x6574656C706D6F63;
    }

    else
    {
      return 1701602409;
    }
  }

  else if (a3)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t ConversationRequestProcessor.__ivar_destroyer()
{

  outlined consume of ConversationRequestProcessor.State(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 8), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v2 = type metadata accessor for UserID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient));
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator));

  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v4 = type metadata accessor for SessionConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v6 = type metadata accessor for UserSessionState();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

uint64_t ConversationRequestProcessor.__deallocating_deinit()
{
  ConversationRequestProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in SiriXRedirectContext.init(from:)(double a1)
{
  swift_getKeyPath();
  SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
  return Builder.subscript.setter();
}

uint64_t closure #2 in SiriXRedirectContext.init(from:)(double a1)
{
  swift_getKeyPath();
  SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  return Builder.subscript.setter();
}

uint64_t closure #3 in SiriXRedirectContext.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMd, &_s11SiriKitFlow0A16XRedirectContextV14RedirectReasonOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  v6 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return Builder.subscript.setter();
}

void specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(void *a1, char *a2, int a3, char *a4)
{
  v116 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v113 - v10;
  v11 = type metadata accessor for RequestType();
  v130 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v113 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v113 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v113 - v23;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.conversationBridge);
  v26 = a1;

  v127 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v131 = v26;
  v118 = v19;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v139[0] = v126;
    *v30 = 138412802;
    *(v30 + 4) = v131;
    *v31 = v131;
    *(v30 + 12) = 2080;
    v32 = v131;
    v33 = RequestMessageBase.requestId.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v139);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v139);

    *(v30 + 24) = v38;
    _os_log_impl(&dword_1DC659000, v27, v28, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v30, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v39 = v126;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v40 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v40 + 376))();
  v41 = *(a4 + 8);
  v42 = *(a4 + 9);
  v43 = (*(*v40 + 384))(v41, v42);
  v44 = (*(*a4 + 400))(v43);
  v47 = v44;
  if (v46)
  {
    outlined consume of ConversationRequestProcessor.State(v44, v45, v46);
    v47 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v126 = v47;
  if (started)
  {
    v49 = started;
    v50 = *(a4 + 12);
    v51 = *(a4 + 13);
    v52 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;

    v53 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(&a4[v52]);
    v54 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v54)
    {
      LOBYTE(v54) = MUXContextMessage.isRMVEnabled.getter();
    }

    v55 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0tdU4BaseC_Tt3g5(v131, v50, v51, v53 & 1, v54 & 1);
  }

  else
  {
    v56 = *(*a4 + 408);

    v56(a2, v47, 1);
    v55 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v137, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v138)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v137, v139);
    v57 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v58 = v130;
    v59 = *(v130 + 16);
    v122 = v57;
    v121 = v130 + 16;
    v120 = v59;
    v59(v128, &a2[v57], v11);
    v60 = *MEMORY[0x1E69D0528];
    v119 = *(v58 + 104);
    v119(v129, v60, v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v117 = v55;
    if (v135 == v133 && v136 == v134)
    {
      v61 = 1;
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v70 = v130 + 8;
    v71 = *(v130 + 8);
    v71(v129, v11);
    v130 = v70;
    v71(v128, v11);

    if ((v61 & 1) == 0)
    {
      v72 = v118;
      v120(v118, &a2[v122], v11);
      v119(v123, *MEMORY[0x1E69D0558], v11);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v135 == v133 && v136 == v134)
      {
        v71(v123, v11);
        v71(v72, v11);
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v71(v123, v11);
        v71(v72, v11);

        if ((v73 & 1) == 0)
        {
          v129 = a2;
          v123 = RequestMessageBase.requestId.getter();
          v118 = v88;
          v89 = *(a4 + 11);
          v131 = *(a4 + 10);
          v128 = v89;
          v90 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v91 = type metadata accessor for UUID();
          v92 = *(v91 - 8);
          v93 = v114;
          (*(v92 + 16))(v114, &a4[v90], v91);
          (*(v92 + 56))(v93, 0, 1, v91);
          v94 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v95 = type metadata accessor for SessionConfiguration();
          v96 = *(v95 - 8);
          v97 = v115;
          (*(v96 + 16))(v115, &a4[v94], v95);
          (*(v96 + 56))(v97, 0, 1, v95);
          v98 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v99 = type metadata accessor for StartExecutionTurn(0);
          v100 = objc_allocWithZone(v99);
          v101 = &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v102 = v118;
          *v101 = v123;
          v101[1] = v102;
          v103 = &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v104 = v128;
          *v103 = v131;
          v103[1] = v104;
          outlined init with copy of ReferenceResolutionClientProtocol?(v93, &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v116 & 1;
          v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v98;
          v132.receiver = v100;
          v132.super_class = v99;

          v105 = objc_msgSendSuper2(&v132, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v106 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v107 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v106);
          (*(v107 + 8))(v105, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v106, v107);
          v108 = v105;
          v74 = Logger.logObject.getter();
          v109 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v74, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v110 = 138412290;
            *(v110 + 4) = v108;
            *v111 = v108;
            v112 = v108;
            _os_log_impl(&dword_1DC659000, v74, v109, "Successfully sent: %@", v110, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v111, -1, -1);
            MEMORY[0x1E12A2F50](v110, -1, -1);

            v74 = v112;
          }

          else
          {
          }

          a2 = v129;
          goto LABEL_27;
        }
      }
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC659000, v74, v75, "Not sending StartExecutionTurn for Understanding-on-server use case", v76, 2u);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

LABEL_27:

    v77 = v124;
    v120(v124, &a2[v122], v11);
    v78 = v125;
    v119(v125, *MEMORY[0x1E69D0538], v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v71(v78, v11);
    v71(v77, v11);
    if (v79)
    {
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = v117;
      v84 = v126;
      if (v82)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1DC659000, v80, v81, "Not updating server context for StartLocalRequest", v85, 2u);
        MEMORY[0x1E12A2F50](v85, -1, -1);
      }

      if (!v83)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v86 = v140;
      v87 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      (*(v87 + 24))(v86, v87);
      v83 = v117;
      v84 = v126;
      if (!v117)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v83, a2, v84);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v137, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v62 = v131;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v139[0] = v66;
    *v65 = 136315138;
    v67 = RequestMessageBase.requestId.getter();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v139);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v63, v64, "Cannot handle request as contextUpdater is nil. requestId: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v41, v42, 0, 0);
}

{
  v116 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v115 = &v113 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v113 - v10;
  v11 = type metadata accessor for RequestType();
  v130 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v113 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v113 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v113 - v23;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.conversationBridge);
  v26 = a1;

  v127 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v131 = v26;
  v118 = v19;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v139[0] = v126;
    *v30 = 138412802;
    *(v30 + 4) = v131;
    *v31 = v131;
    *(v30 + 12) = 2080;
    v32 = v131;
    v33 = RequestMessageBase.requestId.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v139);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v139);

    *(v30 + 24) = v38;
    _os_log_impl(&dword_1DC659000, v27, v28, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v30, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v39 = v126;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v40 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v40 + 376))();
  v41 = *(a4 + 8);
  v42 = *(a4 + 9);
  v43 = (*(*v40 + 384))(v41, v42);
  v44 = (*(*a4 + 400))(v43);
  v47 = v44;
  if (v46)
  {
    outlined consume of ConversationRequestProcessor.State(v44, v45, v46);
    v47 = MEMORY[0x1E69E7CC0];
  }

  started = StartRequestMessageBase.optionalRequestContextData.getter();
  v126 = v47;
  if (started)
  {
    v49 = started;
    v50 = *(a4 + 12);
    v51 = *(a4 + 13);
    v52 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;

    v53 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(&a4[v52]);
    v54 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
    if (v54)
    {
      LOBYTE(v54) = MUXContextMessage.isRMVEnabled.getter();
    }

    v55 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t4TextdU0C_Tt3g5(v131, v50, v51, v53 & 1, v54 & 1);
  }

  else
  {
    v56 = *(*a4 + 408);

    v56(a2, v47, 1);
    v55 = 0;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v137, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v138)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v137, v139);
    v57 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v58 = v130;
    v59 = *(v130 + 16);
    v122 = v57;
    v121 = v130 + 16;
    v120 = v59;
    v59(v128, &a2[v57], v11);
    v60 = *MEMORY[0x1E69D0528];
    v119 = *(v58 + 104);
    v119(v129, v60, v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v117 = v55;
    if (v135 == v133 && v136 == v134)
    {
      v61 = 1;
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v70 = v130 + 8;
    v71 = *(v130 + 8);
    v71(v129, v11);
    v130 = v70;
    v71(v128, v11);

    if ((v61 & 1) == 0)
    {
      v72 = v118;
      v120(v118, &a2[v122], v11);
      v119(v123, *MEMORY[0x1E69D0558], v11);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v135 == v133 && v136 == v134)
      {
        v71(v123, v11);
        v71(v72, v11);
      }

      else
      {
        v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v71(v123, v11);
        v71(v72, v11);

        if ((v73 & 1) == 0)
        {
          v129 = a2;
          v123 = RequestMessageBase.requestId.getter();
          v118 = v88;
          v89 = *(a4 + 11);
          v131 = *(a4 + 10);
          v128 = v89;
          v90 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v91 = type metadata accessor for UUID();
          v92 = *(v91 - 8);
          v93 = v114;
          (*(v92 + 16))(v114, &a4[v90], v91);
          (*(v92 + 56))(v93, 0, 1, v91);
          v94 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v95 = type metadata accessor for SessionConfiguration();
          v96 = *(v95 - 8);
          v97 = v115;
          (*(v96 + 16))(v115, &a4[v94], v95);
          (*(v96 + 56))(v97, 0, 1, v95);
          v98 = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v99 = type metadata accessor for StartExecutionTurn(0);
          v100 = objc_allocWithZone(v99);
          v101 = &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          v102 = v118;
          *v101 = v123;
          v101[1] = v102;
          v103 = &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          v104 = v128;
          *v103 = v131;
          v103[1] = v104;
          outlined init with copy of ReferenceResolutionClientProtocol?(v93, &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v97, &v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v116 & 1;
          v100[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v98;
          v132.receiver = v100;
          v132.super_class = v99;

          v105 = objc_msgSendSuper2(&v132, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v106 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v107 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v106);
          (*(v107 + 8))(v105, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v106, v107);
          v108 = v105;
          v74 = Logger.logObject.getter();
          v109 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v74, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v110 = 138412290;
            *(v110 + 4) = v108;
            *v111 = v108;
            v112 = v108;
            _os_log_impl(&dword_1DC659000, v74, v109, "Successfully sent: %@", v110, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v111, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v111, -1, -1);
            MEMORY[0x1E12A2F50](v110, -1, -1);

            v74 = v112;
          }

          else
          {
          }

          a2 = v129;
          goto LABEL_27;
        }
      }
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC659000, v74, v75, "Not sending StartExecutionTurn for Understanding-on-server use case", v76, 2u);
      MEMORY[0x1E12A2F50](v76, -1, -1);
    }

LABEL_27:

    v77 = v124;
    v120(v124, &a2[v122], v11);
    v78 = v125;
    v119(v125, *MEMORY[0x1E69D0538], v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v71(v78, v11);
    v71(v77, v11);
    if (v79)
    {
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = v117;
      v84 = v126;
      if (v82)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_1DC659000, v80, v81, "Not updating server context for StartLocalRequest", v85, 2u);
        MEMORY[0x1E12A2F50](v85, -1, -1);
      }

      if (!v83)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v86 = v140;
      v87 = v141;
      __swift_project_boxed_opaque_existential_1(v139, v140);
      (*(v87 + 24))(v86, v87);
      v83 = v117;
      v84 = v126;
      if (!v117)
      {
LABEL_34:

        __swift_destroy_boxed_opaque_existential_1Tm(v139);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v83, a2, v84);

    goto LABEL_34;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v137, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v62 = v131;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v139[0] = v66;
    *v65 = 136315138;
    v67 = RequestMessageBase.requestId.getter();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v139);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v63, v64, "Cannot handle request as contextUpdater is nil. requestId: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v41, v42, 0, 0);
}

void specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(void *a1, uint64_t a2, int a3, char *a4)
{
  v120 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = &v118 - v10;
  v11 = type metadata accessor for RequestType();
  v136 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v118 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v118 - v23;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.conversationBridge);
  v26 = a1;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v131 = a2;
  v133 = v25;
  v123 = v19;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v144[0] = v132;
    *v30 = 138412802;
    *(v30 + 4) = v26;
    *v31 = v26;
    *(v30 + 12) = 2080;
    v32 = v26;
    v33 = RequestMessageBase.requestId.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v144);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    type metadata accessor for UUID();
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v144);

    *(v30 + 24) = v38;
    _os_log_impl(&dword_1DC659000, v27, v28, "ConversationBridge handling message: %@, requestId: %s, sessionId: %s", v30, 0x20u);
    outlined destroy of ReferenceResolutionClientProtocol?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v39 = v132;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v40 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent];
  (*(*v40 + 376))();
  v41 = *(a4 + 8);
  v42 = *(a4 + 9);
  v43 = (*(*v40 + 384))(v41, v42);
  v44 = (*(*a4 + 400))(v43);
  if (v46)
  {
    outlined consume of ConversationRequestProcessor.State(v44, v45, v46);
    v132 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v132 = v44;
  }

  started = StartIFRequestMessage.requestContextData.getter();
  v48 = *(a4 + 12);
  v49 = *(a4 + 13);
  v50 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;

  v51 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)(&a4[v50]);
  v52 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage];
  if (v52)
  {
    LOBYTE(v52) = MUXContextMessage.isRMVEnabled.getter();
  }

  v53 = v26;
  v54 = _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t9IFRequestU0C_Tt3g5Tf4gnnn_n(v53, v48, v49, v51 & 1, v52 & 1);

  outlined init with copy of ReferenceResolutionClientProtocol?(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], &v142, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (v143)
  {
    v121 = v54;
    outlined init with take of ReferenceResolutionClientProtocol(&v142, v144);
    v55 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    v56 = v131;
    swift_beginAccess();
    v57 = v136;
    v58 = *(v136 + 16);
    v128 = v55;
    v127 = v136 + 16;
    v126 = v58;
    v58(v134, v56 + v55, v11);
    v59 = *MEMORY[0x1E69D0528];
    v60 = *(v57 + 104);
    v125 = v57 + 104;
    v124 = v60;
    v60(v135, v59, v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v140 == v138 && v141 == v139)
    {
      v61 = 1;
    }

    else
    {
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v71 = v136 + 8;
    v70 = *(v136 + 8);
    v70(v135, v11);
    v135 = v70;
    v136 = v71;
    v70(v134, v11);

    v72 = v121;
    v73 = v56;
    if ((v61 & 1) == 0)
    {
      v74 = v56 + v128;
      v75 = v123;
      v126(v123, v74, v11);
      v76 = v122;
      v124(v122, *MEMORY[0x1E69D0558], v11);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v140 == v138 && v141 == v139)
      {
        v77 = v135;
        (v135)(v76, v11);
        v77(v75, v11);
      }

      else
      {
        LODWORD(v134) = _stringCompareWithSmolCheck(_:_:expecting:)();
        v78 = v72;
        v79 = v73;
        v80 = v135;
        (v135)(v76, v11);
        v80(v75, v11);
        v73 = v79;
        v72 = v78;

        if ((v134 & 1) == 0)
        {
          v134 = v11;
          v84 = RequestMessageBase.requestId.getter();
          v86 = v85;
          v87 = *(a4 + 11);
          v123 = *(a4 + 10);
          v88 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
          v89 = type metadata accessor for UUID();
          v90 = *(v89 - 8);
          v91 = v118;
          (*(v90 + 16))(v118, &a4[v88], v89);
          (*(v90 + 56))(v91, 0, 1, v89);
          v92 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
          v93 = type metadata accessor for SessionConfiguration();
          v94 = *(v93 - 8);
          v95 = v119;
          (*(v94 + 16))(v119, &a4[v92], v93);
          (*(v94 + 56))(v95, 0, 1, v93);
          LOBYTE(v92) = a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled];
          v96 = type metadata accessor for StartExecutionTurn(0);
          v97 = objc_allocWithZone(v96);
          v98 = &v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_executionRequestId];
          *v98 = v84;
          v98[1] = v86;
          v99 = &v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_rootRequestId];
          *v99 = v123;
          v99[1] = v87;
          outlined init with copy of ReferenceResolutionClientProtocol?(v91, &v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionId], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v95, &v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_sessionConfiguration], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isTapToEdit] = v120 & 1;
          v97[OBJC_IVAR____TtC14SiriKitRuntime18StartExecutionTurn_isMUXEnabled] = v92;
          v137.receiver = v97;
          v137.super_class = v96;

          v100 = objc_msgSendSuper2(&v137, sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v101 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 24];
          v102 = *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient + 32];
          __swift_project_boxed_opaque_existential_1(&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient], v101);
          (*(v102 + 8))(v100, *&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate], &protocol witness table for ConversationBridgeProcessorDelegate, v101, v102);
          v103 = v100;
          v81 = Logger.logObject.getter();
          v104 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v81, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *v105 = 138412290;
            *(v105 + 4) = v103;
            *v106 = v103;
            v107 = v103;
            _os_log_impl(&dword_1DC659000, v81, v104, "Successfully sent: %@", v105, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v106, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v106, -1, -1);
            MEMORY[0x1E12A2F50](v105, -1, -1);

            v81 = v107;
          }

          else
          {
          }

          v73 = v131;
          v11 = v134;
          goto LABEL_29;
        }
      }
    }

    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1DC659000, v81, v82, "Not sending StartExecutionTurn for Understanding-on-server use case", v83, 2u);
      MEMORY[0x1E12A2F50](v83, -1, -1);
    }

LABEL_29:

    v108 = v129;
    v126(v129, v73 + v128, v11);
    v109 = v130;
    v124(v130, *MEMORY[0x1E69D0538], v11);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
    v110 = dispatch thunk of static Equatable.== infix(_:_:)();
    v111 = v135;
    (v135)(v109, v11);
    v111(v108, v11);
    if (v110)
    {
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1DC659000, v112, v113, "Not updating server context for StartLocalRequest", v114, 2u);
        MEMORY[0x1E12A2F50](v114, -1, -1);
      }

      v115 = v132;
      if (!v72)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v116 = v145;
      v117 = v146;
      __swift_project_boxed_opaque_existential_1(v144, v145);
      (*(v117 + 24))(v116, v117);
      v115 = v132;
      if (!v72)
      {
LABEL_36:

        __swift_destroy_boxed_opaque_existential_1Tm(v144);
        return;
      }
    }

    ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v72, v73, v115);

    goto LABEL_36;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(&v142, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  v62 = v53;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v144[0] = v66;
    *v65 = 136315138;
    v67 = RequestMessageBase.requestId.getter();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v144);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1DC659000, v63, v64, "Cannot handle request as contextUpdater is nil. requestId: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1E12A2F50](v66, -1, -1);
    MEMORY[0x1E12A2F50](v65, -1, -1);
  }

  (*(**&a4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil] + 152))(0xD000000000000024, 0x80000001DCA808E0, *(a4 + 10), *(a4 + 11), v41, v42, 0, 0);
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0tdU4BaseC_Tt3g5(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v78 = a4;
  v79 = a5;
  v83 = a3;
  v76 = a2;
  v6 = type metadata accessor for RequestPositionInSession();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Restrictions();
  v77 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v75 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for ResponseMode();
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v56 - v20;
  v22 = type metadata accessor for InputOrigin();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v27 = started;
    v82 = v6;
    v28 = a1;
    StartRequestMessageBase.inputOrigin.getter();
    v29 = InputOrigin.aceInputOrigin.getter();
    v72 = v30;
    v73 = v29;
    (*(v23 + 8))(v25, v22);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v31 = v84;
    v32 = *(v84 + 48);
    if (v32(v13, 1, v14) == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v32(v13, 1, v14) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v31 + 32))(v86, v13, v14);
    }

    v56 = v14;
    v60 = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    v74 = v28;
    v58 = swift_dynamicCastClass() != 0;
    v57 = RequestContextData.isVoiceTriggerEnabled.getter();
    v40 = RequestContextData.isTextToSpeechEnabled.getter();
    v59 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v41 = v75;
    Restrictions.init(aceValue:)();
    v42 = RequestContextData.isTriggerlessFollowup.getter();
    type metadata accessor for StartSpeechRequestMessage();
    v62 = swift_dynamicCastClass() != 0;
    v66 = RequestContextData.voiceTriggerEventInfo.getter();
    v67 = RequestContextData.voiceAudioSessionId.getter();
    v65 = RequestContextData.isSystemApertureEnabled.getter();
    v63 = RequestContextData.isLiveActivitiesSupported.getter();
    v61 = RequestContextData.isInAmbient.getter();
    v70 = RequestContextData.conjunctionInfo.getter();
    v69 = RequestContextData.isDeviceShowingLockScreen.getter();
    v68 = RequestContextData.isDeviceLocked.getter();
    v43 = v81;
    (*(v81 + 104))(v85, *MEMORY[0x1E69CE5A0], v82);
    v44 = type metadata accessor for RequestContextData(0);
    v45 = objc_allocWithZone(v44);
    v46 = &v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v47 = v72;
    *v46 = v73;
    v46[1] = v47;
    v71 = v21;
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, &v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v64 = v18;
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, &v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v48 = v84;
    (*(v84 + 16))(&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v86, v14);
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v60 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v58;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v57 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v40 & 1;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v59;
    outlined init with copy of ReferenceResolutionClientProtocol?(v87, &v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v49 = v77;
    v50 = v80;
    (*(v77 + 16))(&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v41, v80);
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v51 = &v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v52 = v83;
    *v51 = v76;
    v51[1] = v52;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v42 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v78 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = v62;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v66;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v79 & 1;
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v67;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v65 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v63 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v61 & 1;
    v53 = v85;
    v54 = v82;
    (*(v43 + 16))(&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v85, v82);
    *&v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v70;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v69 & 1;
    v45[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v68 & 1;
    v88.receiver = v45;
    v88.super_class = v44;
    v39 = objc_msgSendSuper2(&v88, sel_init);
    (*(v43 + 8))(v53, v54);
    (*(v49 + 8))(v41, v50);
    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (*(v48 + 8))(v86, v56);
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v33 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = v33;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v35, v36, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    return 0;
  }

  return v39;
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t4TextdU0C_Tt3g5(void *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v77 = a4;
  v78 = a5;
  v82 = a3;
  v75 = a2;
  v6 = type metadata accessor for RequestPositionInSession();
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Restrictions();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for ResponseMode();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v55 - v20;
  v22 = type metadata accessor for InputOrigin();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = StartRequestMessageBase.optionalRequestContextData.getter();
  if (started)
  {
    v27 = started;
    v81 = v6;
    StartRequestMessageBase.inputOrigin.getter();
    v28 = InputOrigin.aceInputOrigin.getter();
    v71 = v29;
    v72 = v28;
    (*(v23 + 8))(v25, v22);
    RequestContextData.audioSource.getter();
    AudioSource.init(aceValue:)();
    RequestContextData.audioDestination.getter();
    AudioDestination.init(aceValue:)();
    RequestContextData.responseMode.getter();
    ResponseMode.init(aceValue:)();
    v30 = v83;
    v31 = *(v83 + 48);
    if (v31(v13, 1, v14) == 1)
    {
      static ResponseMode.displayForward.getter();
      if (v31(v13, 1, v14) != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      }
    }

    else
    {
      (*(v30 + 32))(v85, v13, v14);
    }

    v56 = v14;
    v60 = RequestContextData.isEyesFree.getter();
    type metadata accessor for StartDirectActionRequestMessage();
    v73 = a1;
    v58 = swift_dynamicCastClass() != 0;
    v57 = RequestContextData.isVoiceTriggerEnabled.getter();
    v39 = RequestContextData.isTextToSpeechEnabled.getter();
    v59 = RequestContextData.bargeInModes.getter();
    RequestContextData.approximatePreviousTTSInterval.getter();
    RequestContextData.deviceRestrictions.getter();
    v40 = v74;
    Restrictions.init(aceValue:)();
    v61 = RequestContextData.isTriggerlessFollowup.getter();
    v66 = RequestContextData.voiceTriggerEventInfo.getter();
    v41 = RequestContextData.voiceAudioSessionId.getter();
    v65 = RequestContextData.isSystemApertureEnabled.getter();
    v63 = RequestContextData.isLiveActivitiesSupported.getter();
    v62 = RequestContextData.isInAmbient.getter();
    v69 = RequestContextData.conjunctionInfo.getter();
    v68 = RequestContextData.isDeviceShowingLockScreen.getter();
    v67 = RequestContextData.isDeviceLocked.getter();
    v42 = v80;
    (*(v80 + 104))(v84, *MEMORY[0x1E69CE5A0], v81);
    v43 = type metadata accessor for RequestContextData(0);
    v44 = objc_allocWithZone(v43);
    v45 = &v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
    v46 = v71;
    *v45 = v72;
    v45[1] = v46;
    v70 = v21;
    outlined init with copy of ReferenceResolutionClientProtocol?(v21, &v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v64 = v18;
    outlined init with copy of ReferenceResolutionClientProtocol?(v18, &v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    v47 = v83;
    (*(v83 + 16))(&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v85, v14);
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v60 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = v58;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v57 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v39 & 1;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v59;
    outlined init with copy of ReferenceResolutionClientProtocol?(v86, &v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v48 = v76;
    v49 = v79;
    (*(v76 + 16))(&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v40, v79);
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
    v50 = &v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
    v51 = v82;
    *v50 = v75;
    v50[1] = v51;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v61 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v77 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = 0;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v66;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v78 & 1;
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v41;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v65 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v63 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v62 & 1;
    v52 = v84;
    v53 = v81;
    (*(v42 + 16))(&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v84, v81);
    *&v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v69;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v68 & 1;
    v44[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v67 & 1;
    v87.receiver = v44;
    v87.super_class = v43;
    v38 = objc_msgSendSuper2(&v87, sel_init);
    (*(v42 + 8))(v52, v53);
    (*(v48 + 8))(v40, v49);
    outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    (*(v47 + 8))(v85, v56);
    outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    v32 = a1;

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.executor);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = v32;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v34, v35, "RequestContextData.init(startSpeechRequest: StartSpeechRequestMessage) - missing requestContextData", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    return 0;
  }

  return v38;
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v66 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - v11;
  v13 = type metadata accessor for UserID();
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TRPContext();
  swift_allocObject();
  v19 = TRPContext.init(requestMessage:)(a1);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v66 = v22;
  v67 = v21;
  v78 = v18;
  *v18 = v20;
  swift_storeEnumTagMultiPayload();

  TRPCandidateRequestMessageBase.userId.getter();
  v23 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v71 = v13;
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v74 = v12;
  v25(v12, 1, 1, v23);
  v72 = v9;
  static ExecutionLocation.device.getter();
  v26 = type metadata accessor for ExecutionLocation();
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  v27 = type metadata accessor for ServerFallbackReason();
  v75 = v20;
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = v6;
  v73 = v6;
  v31 = *(v29 + 56);
  v31(v30, 1, 1, v28);
  type metadata accessor for ResultCandidateState(0);
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v33 = 0;
  v33[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v35 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
  v36 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v36 = 0;
  v36[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v38 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v38 - 8) + 56))(v32 + v37, 1, 1, v38);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v25((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v24);
  v31((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v28);
  v40 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v41 = type metadata accessor for SiriXRedirectContext();
  (*(*(v41 - 8) + 56))(v32 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v69 = type metadata accessor for SelectedUserAttributes();
  v43 = *(v69 - 8);
  v68 = *(v43 + 56);
  v70 = v43 + 56;
  v44 = v68(v32 + v42, 1, 1, v69);
  v45 = v66;
  *(v32 + 16) = v67;
  *(v32 + 24) = v45;
  outlined init with copy of ResultCandidateType(v78, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v44);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v47 = *MEMORY[0x1E69D0AA0];
  v48 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v48 - 8) + 104))(v32 + v46, v47, v48);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v49 = v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v50 = type metadata accessor for UUID();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  v51 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v52 = type metadata accessor for OSSignpostID();
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  v53 = v77;
  v54 = v71;
  (*(v77 + 16))(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v15, v71);
  swift_beginAccess();
  v55 = v32 + v39;
  v56 = v74;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v74, v55, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v57 = v72;
  outlined init with copy of ReferenceResolutionClientProtocol?(v72, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v59 = v73;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v73, v32 + v58, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v60 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v61 = *MEMORY[0x1E69D02D8];
  v62 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v62 - 8) + 104))(v32 + v60, v61, v62);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v63 = v76;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v53 + 8))(v15, v54);
  outlined destroy of RoutingDecision(v78, type metadata accessor for ResultCandidateType);
  v68(v63, 0, 1, v69);
  v64 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v63, v32 + v64);
  swift_endAccess();
  return v32;
}

void specialized static ConversationRequestProcessor.postMitigationMessage(mitigated:assistantId:sessionId:requestId:messagePublisher:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = objc_allocWithZone(type metadata accessor for ConversationMitigationMessage());
  v10 = ConversationMitigationMessage.init(build:)();
  if (v10)
  {
    v11 = v10;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1 & 1;
      _os_log_impl(&dword_1DC659000, v13, v14, "[ConversationRequestProcessor] post MitigationMessage %{BOOL}d", v15, 8u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v11, v17, "[ConversationRequestProcessor] Error building ConversationMitigationMessage. Missing fields?", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }
  }
}

uint64_t type metadata accessor for ConversationRequestProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationRequestProcessor;
  if (!type metadata singleton initialization cache for ConversationRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:asrOnServer:)(uint64_t a1, int a2)
{
  LODWORD(v78) = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v76 - v10;
  v12 = type metadata accessor for UserID();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v79 = v19;
  v80 = v18;
  v20 = AsrResultCandidateMessage.speechPackage.getter();
  type metadata accessor for SpeechContext();
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  *(v21 + 48) = 1;
  *(v21 + 16) = v20;
  v22 = v20;
  v23 = [v22 recognition];
  v24 = [v23 aceRecognition];

  *(v21 + 24) = v24;
  *v17 = v21;
  v90 = v17;
  swift_storeEnumTagMultiPayload();
  v85 = v14;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v83 = AsrResultCandidateMessage.voiceIdScore.getter();
  v82 = AsrResultCandidateMessage.voiceIdClassification.getter();
  v81 = v25;
  v26 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v27 = *(*(v26 - 8) + 56);
  v88 = v11;
  v27(v11, 1, 1, v26);
  if (v78)
  {
    static ExecutionLocation.server.getter();
  }

  else
  {
    static ExecutionLocation.device.getter();
  }

  v28 = type metadata accessor for ExecutionLocation();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  v29 = type metadata accessor for ServerFallbackReason();
  v30 = *(*(v29 - 8) + 56);
  v31 = v84;
  v30(v84, 1, 1, v29);
  type metadata accessor for ResultCandidateState(0);
  v32 = swift_allocObject();
  v33 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v33 = 0;
  v33[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v35 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
  v36 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v36 = 0;
  v36[1] = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v38 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v38 - 8) + 56))(v32 + v37, 1, 1, v38);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v27((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v26);
  v30((v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v29);
  v40 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v41 = type metadata accessor for SiriXRedirectContext();
  (*(*(v41 - 8) + 56))(v32 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v77 = type metadata accessor for SelectedUserAttributes();
  v43 = *(v77 - 8);
  v76 = *(v43 + 56);
  v78 = v43 + 56;
  v44 = v76(v32 + v42, 1, 1, v77);
  v45 = v79;
  *(v32 + 16) = v80;
  *(v32 + 24) = v45;
  outlined init with copy of ResultCandidateType(v90, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v44);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v47 = *MEMORY[0x1E69D0AA0];
  v48 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v48 - 8) + 104))(v32 + v46, v47, v48);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v49 = v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v50 = type metadata accessor for UUID();
  (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
  v51 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v52 = type metadata accessor for OSSignpostID();
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  v54 = v85;
  v53 = v86;
  v55 = v87;
  (*(v86 + 16))(v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v85, v87);
  swift_beginAccess();
  v56 = v32 + v39;
  v57 = v88;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v88, v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v8, v32 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  outlined assign with copy of ReferenceResolutionClientProtocol?(v31, v32 + v58, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v59 = v8;
  v60 = v31;
  v61 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v62 = *MEMORY[0x1E69D02D8];
  v63 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v63 - 8) + 104))(v32 + v61, v62, v63);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v64 = v89;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v53 + 8))(v54, v55);
  outlined destroy of RoutingDecision(v90, type metadata accessor for ResultCandidateType);
  v76(v64, 0, 1, v77);
  v65 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v64, v32 + v65);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.conversationBridge);

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v91[0] = v70;
    *v69 = 136315138;

    v71 = ResultCandidateState.description.getter();
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, v91);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_1DC659000, v67, v68, "Created %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x1E12A2F50](v70, -1, -1);
    MEMORY[0x1E12A2F50](v69, -1, -1);
  }

  return v32;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v107 = a8;
  LODWORD(v108) = a6;
  v109 = a4;
  v113 = a2;
  v12 = type metadata accessor for UUID();
  v110 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RequestType();
  v112 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v111 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.conversationBridge);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v105[1] = v18;
    v106 = a7;
    v23 = v14;
    v24 = a5;
    v25 = v22;
    v26 = a3;
    v27 = v12;
    v28 = v15;
    v29 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v19;
    *v29 = v19;
    v30 = v19;
    _os_log_impl(&dword_1DC659000, v20, v21, "ConversationBridge handling message: %@", v25, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v31 = v29;
    v15 = v28;
    v12 = v27;
    a3 = v26;
    MEMORY[0x1E12A2F50](v31, -1, -1);
    v32 = v25;
    a5 = v24;
    v14 = v23;
    a7 = v106;
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v19, v113, a3, a5) & 1) == 0)
  {
    v55 = v19;
    v113 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v113, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v115[0] = v58;
      *v57 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v110 + 8))(v14, v12);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v115);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      swift_getObjectType();
      v63 = _typeName(_:qualified:)();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v115);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_1DC659000, v113, v56, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v58, -1, -1);
      v66 = v57;
LABEL_43:
      MEMORY[0x1E12A2F50](v66, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v102 = v113;

    return;
  }

  v33 = (*(*a7 + 608))();
  if (!v33)
  {
    v67 = v19;

    v113 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v113, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v115[0] = v70;
      *v69 = 136315394;
      swift_getObjectType();
      v71 = _typeName(_:qualified:)();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v115);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v75 = (*(*a7 + 400))(v74);
      if (v77 > 1u)
      {
        if (v77 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v75, v76, 2);
          v78 = 0xEC00000064657472;
          v79 = 0x617473206E727574;
        }

        else
        {
          v103 = (v75 | v76) == 0;
          if (v75 | v76)
          {
            v79 = 0x6574656C706D6F63;
          }

          else
          {
            v79 = 1701602409;
          }

          if (v103)
          {
            v78 = 0xE400000000000000;
          }

          else
          {
            v78 = 0xE800000000000000;
          }
        }
      }

      else if (v77)
      {
        v78 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v75, v76, 1);
        v79 = 0xD00000000000001DLL;
      }

      else
      {
        v78 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v75, v76, 0);
        v79 = 0xD000000000000011;
      }

      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, v115);

      *(v69 + 14) = v104;
      _os_log_impl(&dword_1DC659000, v113, v68, "Got %s when in state %s: Ignoring", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v70, -1, -1);
      v66 = v69;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v34 = v33;
  v35 = (v33 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v37 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v36 = *(v33 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v37 == RequestMessageBase.requestId.getter() && v36 == v38)
  {

    v41 = v112;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v112;
    if ((v40 & 1) == 0)
    {
      v42 = v19;

      v113 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v113, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v115[0] = v45;
        *v44 = 136315650;
        swift_getObjectType();
        v46 = _typeName(_:qualified:)();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v115);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v49 = RequestMessageBase.requestId.getter();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v115);

        *(v44 + 14) = v51;
        *(v44 + 22) = 2080;
        v52 = *v35;
        v53 = v35[1];

        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v115);

        *(v44 + 24) = v54;
        _os_log_impl(&dword_1DC659000, v113, v43, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v45, -1, -1);
        MEMORY[0x1E12A2F50](v44, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v80 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v81 = *(v41 + 16);
  v82 = v111;
  v81(v111, v34 + v80, v15);
  v83 = specialized Sequence<>.contains(_:)(v82, v109);
  v85 = *(v41 + 8);
  v84 = v41 + 8;
  v113 = v85;
  (v85)(v82, v15);
  if (v83)
  {
    v86 = specialized ConversationRequestProcessor.makeResultCandidateState(from:asrOnServer:)(v107, *(v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer));
    (*(*v86 + 416))(4);
    if (v108)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v86);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v86);
    }
  }

  else
  {
    v112 = v84;
    v110 = v15;
    v87 = v19;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v108 = v91;
      v109 = swift_slowAlloc();
      v114 = v109;
      *v90 = 138412546;
      *(v90 + 4) = v87;
      *v91 = v87;
      *(v90 + 12) = 2080;
      v93 = v110;
      v92 = v111;
      v81(v111, v34 + v80, v110);
      v94 = v87;
      v95 = v88;
      v96 = RequestType.rawValue.getter();
      v98 = v97;
      (v113)(v92, v93);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v114);

      *(v90 + 14) = v99;
      _os_log_impl(&dword_1DC659000, v95, v89, "%@ is not supported for this requestType: %s", v90, 0x16u);
      v100 = v108;
      outlined destroy of ReferenceResolutionClientProtocol?(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v100, -1, -1);
      v101 = v109;
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v90, -1, -1);
    }

    else
    {
    }
  }
}

void specialized ConversationRequestProcessor.makeResultCandidateStatesForMultiUser(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v128 = &v119 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = &v119 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v119 - v9;
  v127 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v127);
  v148 = (&v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for UserID();
  v11 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v149 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v130 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v119 - v19;
  v20 = MEMORY[0x1E69E7CC0];
  v152 = MEMORY[0x1E69E7CC0];
  v21 = MUXAsrResultCandidateMessage.speechPackageDict.getter();
  v23 = 0;
  v25 = v21 + 64;
  v24 = *(v21 + 64);
  v121 = v21;
  v26 = 1 << *(v21 + 32);
  v124 = *MEMORY[0x1E69D0AA0];
  v27 = -1;
  v123 = *MEMORY[0x1E69D02D8];
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v131 = (v11 + 16);
  v132 = (v11 + 32);
  v120 = v11;
  v143 = (v11 + 8);
  *&v22 = 136315394;
  v119 = v22;
  v147 = a1;
  v125 = v21 + 64;
  v122 = v29;
  v126 = v13;
  v142 = v20;
  if ((v27 & v24) != 0)
  {
    while (1)
    {
      v30 = v23;
LABEL_13:
      v35 = __clz(__rbit64(v28));
      v36 = (v28 - 1) & v28;
      v37 = v35 | (v30 << 6);
      v38 = v121;
      v39 = v120;
      v40 = v149;
      v41 = v150;
      (*(v120 + 16))(v149, *(v121 + 48) + *(v120 + 72) * v37, v150);
      v42 = *(*(v38 + 56) + 8 * v37);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      v44 = *(v43 + 48);
      v45 = *(v39 + 32);
      v46 = v130;
      v45(v130, v40, v41);
      *&v46[v44] = v42;
      (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
      v47 = v42;
      v33 = v46;
      v34 = v129;
LABEL_14:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v33, v34, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      if ((*(*(v48 - 8) + 48))(v34, 1, v48) == 1)
      {

        return;
      }

      v49 = *(v34 + *(v48 + 48));
      (*v132)(v13, v34, v150);
      v50 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
      v51 = [v50 spIdKnownUserScores];

      if (!v51)
      {
        goto LABEL_36;
      }

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = UserID.sharedUserId.getter();
      if (!*(v52 + 16))
      {
        break;
      }

      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_20;
      }

      v58 = *(*(v52 + 56) + 8 * v55);

      v59 = [v58 intValue];

LABEL_21:
      v60 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
      v61 = [v60 lowScoreThreshold];

      LODWORD(v142) = v59;
      v141 = v36;
      if (v61)
      {

        v62 = MUXAsrResultCandidateMessage.voiceIdScoreCard.getter();
        v63 = [v62 lowScoreThreshold];

        if (!v63)
        {
          goto LABEL_37;
        }

        v139 = [v63 intValue];
      }

      else
      {
        v139 = static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
      }

      v151[0] = [v49 resultCandidateId];
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v65;
      v137 = v64;
      type metadata accessor for SpeechContext();
      v66 = swift_allocObject();
      *(v66 + 32) = 0;
      *(v66 + 40) = 0;
      *(v66 + 48) = 1;
      *(v66 + 16) = v49;
      v140 = v49;
      v67 = [v140 recognition];
      v68 = [v67 aceRecognition];

      *(v66 + 24) = v68;
      *v148 = v66;
      swift_storeEnumTagMultiPayload();
      v138 = *v131;
      v138(v149, v13, v150);
      v69 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v70 = *(*(v69 - 8) + 56);
      v70(v144, 1, 1, v69);
      v71 = type metadata accessor for ExecutionLocation();
      (*(*(v71 - 8) + 56))(v145, 1, 1, v71);
      v72 = type metadata accessor for ServerFallbackReason();
      v73 = *(*(v72 - 8) + 56);
      v73(v146, 1, 1, v72);
      type metadata accessor for ResultCandidateState(0);
      v74 = swift_allocObject();
      v75 = (v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
      *v75 = 0;
      v75[1] = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
      v76 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
      v77 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
      (*(*(v77 - 8) + 56))(v74 + v76, 1, 1, v77);
      v78 = (v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
      *v78 = 0;
      v78[1] = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
      v79 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
      v80 = type metadata accessor for TTResponseMessage.MitigationDecision();
      (*(*(v80 - 8) + 56))(v74 + v79, 1, 1, v80);
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
      v81 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
      v70(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse, 1, 1, v69);
      v73(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v72);
      v82 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
      v83 = type metadata accessor for SiriXRedirectContext();
      (*(*(v83 - 8) + 56))(v74 + v82, 1, 1, v83);
      v84 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
      v134 = type metadata accessor for SelectedUserAttributes();
      v85 = *(v134 - 8);
      v133 = *(v85 + 56);
      v135 = v85 + 56;
      v86 = v133(v74 + v84, 1, 1, v134);
      v87 = v136;
      *(v74 + 16) = v137;
      *(v74 + 24) = v87;
      outlined init with copy of ResultCandidateType(v148, v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v86);
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
      v88 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
      v89 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
      (*(*(v89 - 8) + 104))(v74 + v88, v124, v89);
      *(v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
      v90 = v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
      v91 = type metadata accessor for UUID();
      (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
      v92 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
      v93 = type metadata accessor for OSSignpostID();
      (*(*(v93 - 8) + 56))(v90 + v92, 1, 1, v93);
      v138((v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId), v149, v150);
      swift_beginAccess();
      v94 = v144;
      outlined assign with copy of ReferenceResolutionClientProtocol?(v144, v74 + v81, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      swift_endAccess();
      v95 = v145;
      outlined init with copy of ReferenceResolutionClientProtocol?(v145, v74 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      v96 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
      swift_beginAccess();
      v97 = v146;
      outlined assign with copy of ReferenceResolutionClientProtocol?(v146, v74 + v96, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      swift_endAccess();
      v98 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
      v99 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
      (*(*(v99 - 8) + 104))(v74 + v98, v123, v99);
      type metadata accessor for RoutingDecision(0);
      swift_storeEnumTagMultiPayload();
      v100 = v128;
      SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v97, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v95, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v101 = *v143;
      (*v143)(v149, v150);
      outlined destroy of RoutingDecision(v148, type metadata accessor for ResultCandidateType);
      v133(v100, 0, 1, v134);
      v102 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
      swift_beginAccess();
      outlined assign with take of SelectedUserAttributes?(v100, v74 + v102);
      swift_endAccess();
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      __swift_project_value_buffer(v103, static Logger.conversationBridge);
      v104 = v147;

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();

      v107 = os_log_type_enabled(v105, v106);
      v28 = v141;
      if (v107)
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v151[0] = v109;
        *v108 = v119;
        v110 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, v151);

        *(v108 + 4) = v112;
        *(v108 + 12) = 2080;

        v113 = ResultCandidateState.description.getter();
        v115 = v114;

        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, v151);

        *(v108 + 14) = v116;
        _os_log_impl(&dword_1DC659000, v105, v106, "For top level rcId %s, created %s", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v109, -1, -1);
        MEMORY[0x1E12A2F50](v108, -1, -1);
      }

      v13 = v126;

      MEMORY[0x1E12A1680](v117);
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v101(v13, v150);
      v25 = v125;
      v29 = v122;
      v142 = v152;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

LABEL_20:

    v59 = -1;
    goto LABEL_21;
  }

LABEL_5:
  if (v29 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 - 1;
  v33 = v130;
  v34 = v129;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v29)
    {
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
      (*(*(v118 - 8) + 56))(v33, 1, 1, v118);
      v36 = 0;
      v23 = v32;
      goto LABEL_14;
    }

    v28 = *(v25 + 8 * v30);
    ++v23;
    if (v28)
    {
      v23 = v30;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t specialized ConversationRequestProcessor.makeResultCandidateState(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v75 = &v65 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v65 - v3;
  v71 = &v65 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - v6;
  v72 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v65 - v9;
  v74 = &v65 - v9;
  v11 = type metadata accessor for UserID();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v66 = v17;
  v67 = v16;
  *v15 = TextBasedResultCandidateMessage.utterance.getter();
  *(v15 + 1) = v18;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  v65 = v15;
  swift_storeEnumTagMultiPayload();
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v19 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  v21 = type metadata accessor for ExecutionLocation();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = type metadata accessor for ServerFallbackReason();
  v23 = *(*(v22 - 8) + 56);
  v23(v4, 1, 1, v22);
  type metadata accessor for ResultCandidateState(0);
  v24 = swift_allocObject();
  v25 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v25 = 0;
  v25[1] = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v26 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v27 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v27 - 8) + 56))(v24 + v26, 1, 1, v27);
  v28 = (v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v28 = 0;
  v28[1] = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v29 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v30 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v30 - 8) + 56))(v24 + v29, 1, 1, v30);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v31 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v20((v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v19);
  v23((v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v22);
  v32 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v33 = type metadata accessor for SiriXRedirectContext();
  (*(*(v33 - 8) + 56))(v24 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v69 = type metadata accessor for SelectedUserAttributes();
  v35 = *(v69 - 8);
  v68 = *(v35 + 56);
  v70 = v35 + 56;
  v36 = v68(v24 + v34, 1, 1, v69);
  v37 = v66;
  *(v24 + 16) = v67;
  *(v24 + 24) = v37;
  outlined init with copy of ResultCandidateType(v15, v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v36);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v39 = *MEMORY[0x1E69D0AA0];
  v40 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v40 - 8) + 104))(v24 + v38, v39, v40);
  *(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v41 = v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  v43 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v44 = type metadata accessor for OSSignpostID();
  (*(*(v44 - 8) + 56))(v41 + v43, 1, 1, v44);
  v45 = v73;
  (*(v76 + 16))(v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v73, v77);
  swift_beginAccess();
  v46 = v74;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v74, v24 + v31, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v47 = v72;
  outlined init with copy of ReferenceResolutionClientProtocol?(v72, v24 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v49 = v71;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v71, v24 + v48, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v50 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v51 = *MEMORY[0x1E69D02D8];
  v52 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v52 - 8) + 104))(v24 + v50, v51, v52);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v53 = v75;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v46, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v76 + 8))(v45, v77);
  outlined destroy of RoutingDecision(v65, type metadata accessor for ResultCandidateType);
  v68(v53, 0, 1, v69);
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v53, v24 + v54);
  swift_endAccess();
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
    v59 = swift_slowAlloc();
    v78[0] = v59;
    *v58 = 136315138;

    v60 = ResultCandidateState.description.getter();
    v62 = v61;

    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v78);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_1DC659000, v56, v57, "Created %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x1E12A2F50](v59, -1, -1);
    MEMORY[0x1E12A2F50](v58, -1, -1);
  }

  return v24;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v72 = &v63 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v63 - v3;
  v69 = &v63 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v63 - v6;
  v70 = &v63 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v71 = &v63 - v9;
  v11 = type metadata accessor for UserID();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v64 = v17;
  v65 = v16;
  GestureBasedResultCandidateMessage.gesture.getter();
  v63 = v15;
  swift_storeEnumTagMultiPayload();
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v18 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v20 = type metadata accessor for ExecutionLocation();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = type metadata accessor for ServerFallbackReason();
  v22 = *(*(v21 - 8) + 56);
  v22(v4, 1, 1, v21);
  type metadata accessor for ResultCandidateState(0);
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v24 = 0;
  v24[1] = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v25 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v26 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v27 = 0;
  v27[1] = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v28 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v29 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v30 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v19((v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v18);
  v22((v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason), 1, 1, v21);
  v31 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v32 = type metadata accessor for SiriXRedirectContext();
  (*(*(v32 - 8) + 56))(v23 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v67 = type metadata accessor for SelectedUserAttributes();
  v34 = *(v67 - 8);
  v66 = *(v34 + 56);
  v68 = v34 + 56;
  v35 = v66(v23 + v33, 1, 1, v67);
  v36 = v64;
  *(v23 + 16) = v65;
  *(v23 + 24) = v36;
  outlined init with copy of ResultCandidateType(v15, v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v35);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v37 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v38 = *MEMORY[0x1E69D0AA0];
  v39 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v39 - 8) + 104))(v23 + v37, v38, v39);
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v40 = v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v41 = type metadata accessor for UUID();
  (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
  v42 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v43 = type metadata accessor for OSSignpostID();
  (*(*(v43 - 8) + 56))(v40 + v42, 1, 1, v43);
  (*(v74 + 16))(v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v73, v75);
  swift_beginAccess();
  v44 = v71;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v71, v23 + v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v45 = v70;
  outlined init with copy of ReferenceResolutionClientProtocol?(v70, v23 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v47 = v69;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v69, v23 + v46, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v48 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v49 = *MEMORY[0x1E69D02D8];
  v50 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v50 - 8) + 104))(v23 + v48, v49, v50);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v51 = v72;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v44, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v74 + 8))(v73, v75);
  outlined destroy of RoutingDecision(v63, type metadata accessor for ResultCandidateType);
  v66(v51, 0, 1, v67);
  v52 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v51, v23 + v52);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.conversationBridge);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v76[0] = v57;
    *v56 = 136315138;

    v58 = ResultCandidateState.description.getter();
    v60 = v59;

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v76);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_1DC659000, v54, v55, "Created %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1E12A2F50](v57, -1, -1);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  return v23;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v77 = &v69 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - v5;
  v75 = &v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v69 - v8;
  v76 = &v69 - v8;
  v81 = type metadata accessor for UserID();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResultCandidateType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v73 = v15;
  v74 = v14;
  v16 = TextBasedTRPCandidateMessage.utterance.getter();
  v18 = v17;
  v19 = TRPCandidateRequestMessageBase.trpCandidateId.getter();
  v21 = v20;
  v22 = TextBasedTRPCandidateMessage.tcuId.getter();
  *v13 = v16;
  v13[1] = v18;
  v13[2] = v19;
  v13[3] = v21;
  v13[4] = v22;
  v13[5] = v23;
  swift_storeEnumTagMultiPayload();
  TRPCandidateRequestMessageBase.userId.getter();
  v24 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v25 = *(*(v24 - 8) + 56);
  v25(v9, 1, 1, v24);
  v26 = type metadata accessor for ExecutionLocation();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = type metadata accessor for ServerFallbackReason();
  v28 = *(*(v27 - 8) + 56);
  v28(v80, 1, 1, v27);
  type metadata accessor for ResultCandidateState(0);
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_conversationUserInputId);
  *v30 = 0;
  v30[1] = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlUserParses) = 0;
  v31 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlLanguageVariantResult;
  v32 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult();
  (*(*(v32 - 8) + 56))(v29 + v31, 1, 1, v32);
  v33 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseVariantResult);
  *v33 = 0;
  v33[1] = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_pommesInfo) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_flowOutputList) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverContextUpdateCandidate) = 0;
  v34 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_mitigationDecision;
  v35 = type metadata accessor for TTResponseMessage.MitigationDecision();
  (*(*(v35 - 8) + 56))(v29 + v34, 1, 1, v35);
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_overrideFTMAsPerServer) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallback) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_infoDomainFallback) = 0;
  v36 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse;
  v25((v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_fallbackParse), 1, 1, v24);
  v28(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason, 1, 1, v27);
  v37 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_siriXRedirectContext;
  v38 = type metadata accessor for SiriXRedirectContext();
  (*(*(v38 - 8) + 56))(v29 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  v71 = type metadata accessor for SelectedUserAttributes();
  v40 = *(v71 - 8);
  v70 = *(v40 + 56);
  v72 = v40 + 56;
  v41 = v70(v29 + v39, 1, 1, v71);
  v42 = v73;
  *(v29 + 16) = v74;
  *(v29 + 24) = v42;
  outlined init with copy of ResultCandidateType(v13, v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_resultCandidateType, v41);
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_processingStatus) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selected) = 0;
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExecutionDecision) = 11;
  v43 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_nlResponseStatusCode;
  v44 = *MEMORY[0x1E69D0AA0];
  v45 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v45 - 8) + 104))(v29 + v43, v44, v45);
  *(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_preExcutionRuleType) = 7;
  v46 = v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_loggingMetadata;
  v47 = type metadata accessor for UUID();
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  v48 = *(type metadata accessor for ResultCandidateState.LoggingMetadata(0) + 20);
  v49 = type metadata accessor for OSSignpostID();
  (*(*(v49 - 8) + 56))(v46 + v48, 1, 1, v49);
  (*(v79 + 16))(v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v78, v81);
  swift_beginAccess();
  v50 = v76;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v76, v29 + v36, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  swift_endAccess();
  v51 = v75;
  outlined init with copy of ReferenceResolutionClientProtocol?(v75, v29 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_asrLocation, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  v52 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_serverFallbackReason;
  swift_beginAccess();
  v53 = v80;
  outlined assign with copy of ReferenceResolutionClientProtocol?(v80, v29 + v52, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  swift_endAccess();
  v54 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_routingDecision;
  v55 = *MEMORY[0x1E69D02D8];
  v56 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  (*(*(v56 - 8) + 104))(v29 + v54, v55, v56);
  type metadata accessor for RoutingDecision(0);
  swift_storeEnumTagMultiPayload();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  v57 = v77;
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s13SiriUtilities17ExecutionLocationVSgMd, &_s13SiriUtilities17ExecutionLocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  (*(v79 + 8))(v78, v81);
  outlined destroy of RoutingDecision(v13, type metadata accessor for ResultCandidateType);
  v70(v57, 0, 1, v71);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_selectedUserAttribute;
  swift_beginAccess();
  outlined assign with take of SelectedUserAttributes?(v57, v29 + v58);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.conversationBridge);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v82[0] = v63;
    *v62 = 136315138;

    v64 = ResultCandidateState.description.getter();
    v66 = v65;

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v82);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_1DC659000, v60, v61, "Created %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1E12A2F50](v63, -1, -1);
    MEMORY[0x1E12A2F50](v62, -1, -1);
  }

  return v29;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v115) = a6;
  v116 = a4;
  v120 = a2;
  v113 = a9;
  v114 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RequestType();
  v18 = *(v17 - 8);
  v118 = v17;
  v119 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v111 = v21;
    v112 = a7;
    v26 = v16;
    v27 = a5;
    v28 = v25;
    v29 = a3;
    v30 = v14;
    v31 = v13;
    v32 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v22;
    *v32 = v22;
    v33 = v22;
    _os_log_impl(&dword_1DC659000, v23, v24, "ConversationBridge handling message: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = v32;
    v13 = v31;
    v14 = v30;
    a3 = v29;
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v35 = v28;
    a5 = v27;
    v16 = v26;
    a7 = v112;
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v22, v120, a3, a5) & 1) == 0)
  {
    v58 = v22;
    v120 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v120, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v122[0] = v61;
      *v60 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v14 + 8))(v16, v13);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v122);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      swift_getObjectType();
      v66 = _typeName(_:qualified:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v122);

      *(v60 + 14) = v68;
      _os_log_impl(&dword_1DC659000, v120, v59, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v61, -1, -1);
      v69 = v60;
LABEL_43:
      MEMORY[0x1E12A2F50](v69, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v108 = v120;

    return;
  }

  v36 = (*(*a7 + 608))();
  if (!v36)
  {
    v70 = v22;

    v120 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v122[0] = v73;
      *v72 = 136315394;
      swift_getObjectType();
      v74 = _typeName(_:qualified:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v122);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v78 = (*(*a7 + 400))(v77);
      if (v80 > 1u)
      {
        if (v80 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v78, v79, 2);
          v81 = 0xEC00000064657472;
          v82 = 0x617473206E727574;
        }

        else
        {
          v109 = (v78 | v79) == 0;
          if (v78 | v79)
          {
            v82 = 0x6574656C706D6F63;
          }

          else
          {
            v82 = 1701602409;
          }

          if (v109)
          {
            v81 = 0xE400000000000000;
          }

          else
          {
            v81 = 0xE800000000000000;
          }
        }
      }

      else if (v80)
      {
        v81 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 1);
        v82 = 0xD00000000000001DLL;
      }

      else
      {
        v81 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 0);
        v82 = 0xD000000000000011;
      }

      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v122);

      *(v72 + 14) = v110;
      _os_log_impl(&dword_1DC659000, v120, v71, "Got %s when in state %s: Ignoring", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v73, -1, -1);
      v69 = v72;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v37 = v36;
  v38 = (v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v40 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v39 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v40 == RequestMessageBase.requestId.getter() && v39 == v41)
  {

    v44 = v119;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v119;
    if ((v43 & 1) == 0)
    {
      v45 = v22;

      v120 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v120, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v122[0] = v48;
        *v47 = 136315650;
        swift_getObjectType();
        v49 = _typeName(_:qualified:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v122);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = RequestMessageBase.requestId.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v122);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        v55 = *v38;
        v56 = v38[1];

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v122);

        *(v47 + 24) = v57;
        _os_log_impl(&dword_1DC659000, v120, v46, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v83 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v84 = v117;
  v85 = v118;
  v120 = *(v44 + 16);
  (v120)(v117, v37 + v83, v118);
  v86 = specialized Sequence<>.contains(_:)(v84, v116);
  v89 = *(v44 + 8);
  v87 = v44 + 8;
  v88 = v89;
  v89(v84, v85);
  if (v86)
  {
    v90 = specialized ConversationRequestProcessor.makeResultCandidateState(from:)();
    (*(*v90 + 416))(2);
    v91 = v90[3];
    v92 = (v114 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
    *v92 = v90[2];
    v92[1] = v91;

    if (v115)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v90);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v90);
    }
  }

  else
  {
    v119 = v87;
    v93 = v22;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v115 = v97;
      v116 = swift_slowAlloc();
      v121 = v116;
      *v96 = 138412546;
      *(v96 + 4) = v93;
      *v97 = v93;
      *(v96 + 12) = 2080;
      v98 = v117;
      v99 = v118;
      (v120)(v117, v37 + v83, v118);
      v100 = v93;
      v101 = v94;
      v102 = RequestType.rawValue.getter();
      v104 = v103;
      v88(v98, v99);
      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v121);

      *(v96 + 14) = v105;
      _os_log_impl(&dword_1DC659000, v101, v95, "%@ is not supported for this requestType: %s", v96, 0x16u);
      v106 = v115;
      outlined destroy of ReferenceResolutionClientProtocol?(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v106, -1, -1);
      v107 = v116;
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x1E12A2F50](v107, -1, -1);
      MEMORY[0x1E12A2F50](v96, -1, -1);
    }

    else
    {
    }
  }
}

{
  LODWORD(v113) = a6;
  v114 = a4;
  v118 = a2;
  v111 = a9;
  v112 = a8;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RequestType();
  v18 = *(v17 - 8);
  v116 = v17;
  v117 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v109 = v21;
    v110 = a7;
    v26 = v16;
    v27 = a5;
    v28 = v25;
    v29 = a3;
    v30 = v14;
    v31 = v13;
    v32 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v22;
    *v32 = v22;
    v33 = v22;
    _os_log_impl(&dword_1DC659000, v23, v24, "ConversationBridge handling message: %@", v28, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v34 = v32;
    v13 = v31;
    v14 = v30;
    a3 = v29;
    MEMORY[0x1E12A2F50](v34, -1, -1);
    v35 = v28;
    a5 = v27;
    v16 = v26;
    a7 = v110;
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v22, v118, a3, a5) & 1) == 0)
  {
    v58 = v22;
    v118 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v118, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v120[0] = v61;
      *v60 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      (*(v14 + 8))(v16, v13);
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v120);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      swift_getObjectType();
      v66 = _typeName(_:qualified:)();
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v120);

      *(v60 + 14) = v68;
      _os_log_impl(&dword_1DC659000, v118, v59, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v61, -1, -1);
      v69 = v60;
LABEL_43:
      MEMORY[0x1E12A2F50](v69, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v106 = v118;

    return;
  }

  v36 = (*(*a7 + 608))();
  if (!v36)
  {
    v70 = v22;

    v118 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v118, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v120[0] = v73;
      *v72 = 136315394;
      swift_getObjectType();
      v74 = _typeName(_:qualified:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v120);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v78 = (*(*a7 + 400))(v77);
      if (v80 > 1u)
      {
        if (v80 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v78, v79, 2);
          v81 = 0xEC00000064657472;
          v82 = 0x617473206E727574;
        }

        else
        {
          v107 = (v78 | v79) == 0;
          if (v78 | v79)
          {
            v82 = 0x6574656C706D6F63;
          }

          else
          {
            v82 = 1701602409;
          }

          if (v107)
          {
            v81 = 0xE400000000000000;
          }

          else
          {
            v81 = 0xE800000000000000;
          }
        }
      }

      else if (v80)
      {
        v81 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 1);
        v82 = 0xD00000000000001DLL;
      }

      else
      {
        v81 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v78, v79, 0);
        v82 = 0xD000000000000011;
      }

      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v120);

      *(v72 + 14) = v108;
      _os_log_impl(&dword_1DC659000, v118, v71, "Got %s when in state %s: Ignoring", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v73, -1, -1);
      v69 = v72;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v37 = v36;
  v38 = (v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v40 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v39 = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v40 == RequestMessageBase.requestId.getter() && v39 == v41)
  {

    v44 = v117;
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v44 = v117;
    if ((v43 & 1) == 0)
    {
      v45 = v22;

      v118 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v118, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v120[0] = v48;
        *v47 = 136315650;
        swift_getObjectType();
        v49 = _typeName(_:qualified:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v120);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = RequestMessageBase.requestId.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v120);

        *(v47 + 14) = v54;
        *(v47 + 22) = 2080;
        v55 = *v38;
        v56 = v38[1];

        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v120);

        *(v47 + 24) = v57;
        _os_log_impl(&dword_1DC659000, v118, v46, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v47, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v83 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v84 = v115;
  v85 = v116;
  v118 = *(v44 + 16);
  (v118)(v115, v37 + v83, v116);
  v86 = specialized Sequence<>.contains(_:)(v84, v114);
  v89 = *(v44 + 8);
  v87 = v44 + 8;
  v88 = v89;
  v89(v84, v85);
  if (v86)
  {
    v90 = ConversationRequestProcessor.makeResultCandidateState(from:)();
    (*(*v90 + 416))(3);
    if (v113)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v90);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v90);
    }
  }

  else
  {
    v117 = v87;
    v91 = v22;

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v113 = v95;
      v114 = swift_slowAlloc();
      v119 = v114;
      *v94 = 138412546;
      *(v94 + 4) = v91;
      *v95 = v91;
      *(v94 + 12) = 2080;
      v96 = v115;
      v97 = v116;
      (v118)(v115, v37 + v83, v116);
      v98 = v91;
      v99 = v92;
      v100 = RequestType.rawValue.getter();
      v102 = v101;
      v88(v96, v97);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v119);

      *(v94 + 14) = v103;
      _os_log_impl(&dword_1DC659000, v99, v93, "%@ is not supported for this requestType: %s", v94, 0x16u);
      v104 = v113;
      outlined destroy of ReferenceResolutionClientProtocol?(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v104, -1, -1);
      v105 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x1E12A2F50](v105, -1, -1);
      MEMORY[0x1E12A2F50](v94, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(a1, v4, v5, v6);
}

unint64_t outlined copy of ConversationRequestProcessorTurnState.SpeechState(unint64_t result, void *a2)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v3 = a2;
  }
}

id _s14SiriKitRuntime18RequestContextDataC05startD011assistantId29didPreviouslyFallbackToServer25isRecognizeMyVoiceEnabledACSgAA05StartD22MessageForConversation_p_SSS2btcfCTf4ennnn_n0aU5Types0t9IFRequestU0C_Tt3g5Tf4gnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v67 = a4;
  v68 = a5;
  v65 = a2;
  v66 = a3;
  v5 = type metadata accessor for RequestPositionInSession();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Restrictions();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v48[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48[-v12];
  v14 = type metadata accessor for ResponseMode();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v48[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48[-v21];
  v23 = type metadata accessor for InputOrigin();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = StartIFRequestMessage.requestContextData.getter();
  StartIFRequestMessage.inputOrigin.getter();
  v28 = InputOrigin.aceInputOrigin.getter();
  v61 = v29;
  v62 = v28;
  (*(v24 + 8))(v26, v23);
  RequestContextData.audioSource.getter();
  v74 = v22;
  AudioSource.init(aceValue:)();
  RequestContextData.audioDestination.getter();
  v76 = v19;
  AudioDestination.init(aceValue:)();
  RequestContextData.responseMode.getter();
  ResponseMode.init(aceValue:)();
  v30 = *(v15 + 48);
  v31 = v30(v13, 1, v14);
  v73 = v14;
  if (v31 == 1)
  {
    static ResponseMode.displayForward.getter();
    if (v30(v13, 1, v14) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    (*(v15 + 32))(v77, v13, v14);
  }

  v32 = RequestContextData.isEyesFree.getter();
  v49 = RequestContextData.isVoiceTriggerEnabled.getter();
  v33 = RequestContextData.isTextToSpeechEnabled.getter();
  v50 = RequestContextData.bargeInModes.getter();
  RequestContextData.approximatePreviousTTSInterval.getter();
  RequestContextData.deviceRestrictions.getter();
  v34 = v63;
  Restrictions.init(aceValue:)();
  v52 = RequestContextData.isTriggerlessFollowup.getter();
  v56 = RequestContextData.voiceTriggerEventInfo.getter();
  v57 = RequestContextData.voiceAudioSessionId.getter();
  v55 = RequestContextData.isSystemApertureEnabled.getter();
  v54 = RequestContextData.isLiveActivitiesSupported.getter();
  v53 = RequestContextData.isInAmbient.getter();
  v60 = RequestContextData.conjunctionInfo.getter();
  v59 = RequestContextData.isDeviceShowingLockScreen.getter();
  v58 = RequestContextData.isDeviceLocked.getter();
  v36 = v71;
  v35 = v72;
  v37 = v64;
  (*(v71 + 104))(v64, *MEMORY[0x1E69CE5A0], v72);
  v51 = type metadata accessor for RequestContextData(0);
  v38 = objc_allocWithZone(v51);
  v39 = &v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v40 = v61;
  *v39 = v62;
  v39[1] = v40;
  outlined init with copy of ReferenceResolutionClientProtocol?(v74, &v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v76, &v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  (*(v15 + 16))(&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode], v77, v73);
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = v32 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = 0;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = v49 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = v33 & 1;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = 0;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = 0;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = 0;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = v50;
  v41 = v75;
  outlined init with copy of ReferenceResolutionClientProtocol?(v75, &v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v42 = v69;
  v43 = v70;
  (*(v69 + 16))(&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions], v34, v70);
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = 0;
  v44 = &v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  v45 = v66;
  *v44 = v65;
  v44[1] = v45;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = v52 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = v67 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = 0;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = 0;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = v56;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = v68 & 1;
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = v57;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = v55 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = v54 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = v53 & 1;
  (*(v36 + 16))(&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession], v37, v35);
  *&v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = v60;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = v59 & 1;
  v38[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = v58 & 1;
  v78.receiver = v38;
  v78.super_class = v51;
  v46 = objc_msgSendSuper2(&v78, sel_init);
  (*(v36 + 8))(v37, v35);
  (*(v42 + 8))(v34, v43);
  outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v15 + 8))(v77, v73);
  outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);

  return v46;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  LODWORD(v110) = a6;
  v111 = a4;
  v115 = a2;
  v108 = a9;
  v109 = a8;
  v13 = type metadata accessor for UUID();
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RequestType();
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v106 = v19;
    v107 = a7;
    v24 = v15;
    v25 = a5;
    v26 = v23;
    v27 = a3;
    v28 = v13;
    v29 = v16;
    v30 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v20;
    *v30 = v20;
    v31 = v20;
    _os_log_impl(&dword_1DC659000, v21, v22, "ConversationBridge handling message: %@", v26, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = v30;
    v16 = v29;
    v13 = v28;
    a3 = v27;
    MEMORY[0x1E12A2F50](v32, -1, -1);
    v33 = v26;
    a5 = v25;
    v15 = v24;
    a7 = v107;
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v20, v115, a3, a5) & 1) == 0)
  {
    v56 = v20;
    v115 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v115, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v117[0] = v59;
      *v58 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v112 + 8))(v15, v13);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v117);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      swift_getObjectType();
      v64 = _typeName(_:qualified:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v117);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1DC659000, v115, v57, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v59, -1, -1);
      v67 = v58;
LABEL_43:
      MEMORY[0x1E12A2F50](v67, -1, -1);
      goto LABEL_44;
    }

LABEL_32:
    v103 = v115;

    return;
  }

  v34 = (*(*a7 + 608))();
  if (!v34)
  {
    v68 = v20;

    v115 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v117[0] = v71;
      *v70 = 136315394;
      swift_getObjectType();
      v72 = _typeName(_:qualified:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v117);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v76 = (*(*a7 + 400))(v75);
      if (v78 > 1u)
      {
        if (v78 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v76, v77, 2);
          v79 = 0xEC00000064657472;
          v80 = 0x617473206E727574;
        }

        else
        {
          v104 = (v76 | v77) == 0;
          if (v76 | v77)
          {
            v80 = 0x6574656C706D6F63;
          }

          else
          {
            v80 = 1701602409;
          }

          if (v104)
          {
            v79 = 0xE400000000000000;
          }

          else
          {
            v79 = 0xE800000000000000;
          }
        }
      }

      else if (v78)
      {
        v79 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v76, v77, 1);
        v80 = 0xD00000000000001DLL;
      }

      else
      {
        v79 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v76, v77, 0);
        v80 = 0xD000000000000011;
      }

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, v117);

      *(v70 + 14) = v105;
      _os_log_impl(&dword_1DC659000, v115, v69, "Got %s when in state %s: Ignoring", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v71, -1, -1);
      v67 = v70;
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v35 = v34;
  v36 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v38 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v37 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v38 == RequestMessageBase.requestId.getter() && v37 == v39)
  {

    v42 = v114;
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v42 = v114;
    if ((v41 & 1) == 0)
    {
      v43 = v20;

      v115 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v117[0] = v46;
        *v45 = 136315650;
        swift_getObjectType();
        v47 = _typeName(_:qualified:)();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v117);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v50 = RequestMessageBase.requestId.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v117);

        *(v45 + 14) = v52;
        *(v45 + 22) = 2080;
        v53 = *v36;
        v54 = v36[1];

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v117);

        *(v45 + 24) = v55;
        _os_log_impl(&dword_1DC659000, v115, v44, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v46, -1, -1);
        MEMORY[0x1E12A2F50](v45, -1, -1);

LABEL_44:

        return;
      }

      goto LABEL_32;
    }
  }

  v81 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v82 = *(v42 + 16);
  v83 = v113;
  v82(v113, v35 + v81, v16);
  v84 = specialized Sequence<>.contains(_:)(v83, v111);
  v86 = *(v42 + 8);
  v85 = v42 + 8;
  v115 = v86;
  (v86)(v83, v16);
  if (v84)
  {
    v87 = v108(v109);
    (*(*v87 + 416))(1);
    if (v110)
    {
      ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v87);
    }

    else
    {
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v87);
    }
  }

  else
  {
    v114 = v85;
    v112 = v16;
    v88 = v20;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v110 = v92;
      v111 = swift_slowAlloc();
      v116 = v111;
      *v91 = 138412546;
      *(v91 + 4) = v88;
      *v92 = v88;
      *(v91 + 12) = 2080;
      v94 = v112;
      v93 = v113;
      v82(v113, v35 + v81, v112);
      v95 = v88;
      v96 = v89;
      v97 = RequestType.rawValue.getter();
      v99 = v98;
      (v115)(v93, v94);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v116);

      *(v91 + 14) = v100;
      _os_log_impl(&dword_1DC659000, v96, v90, "%@ is not supported for this requestType: %s", v91, 0x16u);
      v101 = v110;
      outlined destroy of ReferenceResolutionClientProtocol?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      v102 = v111;
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v91, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t specialized closure #1 in ConversationRequestProcessor.handleRewrittenUtteranceCandidateMessage(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v43 - v6);
  v8 = type metadata accessor for SiriXRedirectContext();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v43 - v13;
  v14 = type metadata accessor for SiriXRedirectContext();
  v51 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v43 - v17;
  v50 = a1;
  v18 = specialized ConversationRequestProcessor.makeResultCandidateState(from:)();
  (*(*v18 + 416))(1);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v46 = v4;
    v43 = v24;
    v52 = v24;
    *v23 = 136315138;
    v25 = *v18;
    v45 = v11;
    v26 = v14;
    v27 = v9;
    v28 = v8;
    v29 = *(v25 + 832);

    v31 = v29(v30);
    v8 = v28;
    v9 = v27;
    v14 = v26;
    v32 = v31;
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v52);
    v11 = v45;

    *(v23 + 4) = v35;
    _os_log_impl(&dword_1DC659000, v20, v21, "Received RewrittenUtteranceCandidateMessage when RC state: %s", v23, 0xCu);
    v36 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v4 = v46;
    MEMORY[0x1E12A2F50](v36, -1, -1);
    v37 = v23;
    v7 = v44;
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  v38 = v49;
  RewrittenUtteranceCandidateMessage.siriXRedirectContext.getter();
  v39 = v51;
  if ((*(v51 + 48))(v38, 1, v14) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  }

  else
  {
    v40 = v48;
    (*(v39 + 32))(v48, v38, v14);
    v41 = v47;
    (*(v39 + 16))(v47, v40, v14);
    SiriXRedirectContext.init(from:)(v41, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v39 + 8))(v40, v14);
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      (*(v9 + 16))(v4, v11, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      (*(*v18 + 752))(v4);
      (*(v9 + 8))(v11, v8);
      (*(v39 + 8))(v40, v14);
    }
  }

  return v18;
}

void specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(void *a1, NSObject *a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, void *a8, uint64_t (*a9)(void *))
{
  v110 = a8;
  v111 = a4;
  v108 = a6;
  v115 = a2;
  v109 = a9;
  v13 = type metadata accessor for UUID();
  v112 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RequestType();
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v106 = v19;
    v107 = a7;
    v24 = v15;
    v25 = a5;
    v26 = v23;
    v27 = a3;
    v28 = v13;
    v29 = v16;
    v30 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v20;
    *v30 = v20;
    v31 = v20;
    _os_log_impl(&dword_1DC659000, v21, v22, "ConversationBridge handling message: %@", v26, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v32 = v30;
    v16 = v29;
    v13 = v28;
    a3 = v27;
    MEMORY[0x1E12A2F50](v32, -1, -1);
    v33 = v26;
    a5 = v25;
    v15 = v24;
    a7 = v107;
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  if ((ConversationRequestProcessor.checkPrerequisitesAndMaybeCacheCandidateMessage(forRCInput:resultCandidateId:messageToCacheIfNotInActiveTurn:)(v20, v115, a3, a5) & 1) == 0)
  {
    v56 = v20;
    v115 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v115, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v117[0] = v59;
      *v58 = 136315394;
      MessageBase.messageId.getter();
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v112 + 8))(v15, v13);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v117);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      swift_getObjectType();
      v64 = _typeName(_:qualified:)();
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v117);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_1DC659000, v115, v57, "Message id %s of type %s did not meet pre-requisites for handleCandidateMessage: Ignoring", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v59, -1, -1);
      v67 = v58;
LABEL_46:
      MEMORY[0x1E12A2F50](v67, -1, -1);
      goto LABEL_47;
    }

LABEL_32:
    v103 = v115;

    return;
  }

  v34 = (*(*a7 + 608))();
  if (!v34)
  {
    v68 = v20;

    v115 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v117[0] = v71;
      *v70 = 136315394;
      swift_getObjectType();
      v72 = _typeName(_:qualified:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v117);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v76 = (*(*a7 + 400))(v75);
      if (v78 > 1u)
      {
        if (v78 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v76, v77, 2);
          v79 = 0xEC00000064657472;
          v80 = 0x617473206E727574;
        }

        else
        {
          v104 = (v76 | v77) == 0;
          if (v76 | v77)
          {
            v80 = 0x6574656C706D6F63;
          }

          else
          {
            v80 = 1701602409;
          }

          if (v104)
          {
            v79 = 0xE400000000000000;
          }

          else
          {
            v79 = 0xE800000000000000;
          }
        }
      }

      else if (v78)
      {
        v79 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v76, v77, 1);
        v80 = 0xD00000000000001DLL;
      }

      else
      {
        v79 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v76, v77, 0);
        v80 = 0xD000000000000011;
      }

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v79, v117);

      *(v70 + 14) = v105;
      _os_log_impl(&dword_1DC659000, v115, v69, "Got %s when in state %s: Ignoring", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v71, -1, -1);
      v67 = v70;
      goto LABEL_46;
    }

    goto LABEL_32;
  }

  v35 = v34;
  v36 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v38 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v37 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

  if (v38 == RequestMessageBase.requestId.getter() && v37 == v39)
  {

    v42 = v114;
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v42 = v114;
    if ((v41 & 1) == 0)
    {
      v43 = v20;

      v115 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v117[0] = v46;
        *v45 = 136315650;
        swift_getObjectType();
        v47 = _typeName(_:qualified:)();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v117);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v50 = RequestMessageBase.requestId.getter();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v117);

        *(v45 + 14) = v52;
        *(v45 + 22) = 2080;
        v53 = *v36;
        v54 = v36[1];

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v117);

        *(v45 + 24) = v55;
        _os_log_impl(&dword_1DC659000, v115, v44, "%s request ID %s does not match this turn's: %s. Dropping it on the floor.", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v46, -1, -1);
        MEMORY[0x1E12A2F50](v45, -1, -1);

LABEL_47:

        return;
      }

      goto LABEL_32;
    }
  }

  v81 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v82 = *(v42 + 16);
  v83 = v113;
  v82(v113, v35 + v81, v16);
  v84 = specialized Sequence<>.contains(_:)(v83, v111);
  v86 = *(v42 + 8);
  v85 = v42 + 8;
  v115 = v86;
  (v86)(v83, v16);
  if (v84)
  {
    v87 = v109(v110);
    if (v87)
    {
      if (v108)
      {
        ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(v87);
      }

      else
      {
        ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v87);
      }
    }
  }

  else
  {
    v114 = v85;
    v112 = v16;
    v88 = v20;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v110 = v92;
      v111 = swift_slowAlloc();
      v116 = v111;
      *v91 = 138412546;
      *(v91 + 4) = v88;
      *v92 = v88;
      *(v91 + 12) = 2080;
      v94 = v112;
      v93 = v113;
      v82(v113, v35 + v81, v112);
      v95 = v88;
      v96 = v89;
      v97 = RequestType.rawValue.getter();
      v99 = v98;
      (v115)(v93, v94);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, &v116);

      *(v91 + 14) = v100;
      _os_log_impl(&dword_1DC659000, v96, v90, "%@ is not supported for this requestType: %s", v91, 0x16u);
      v101 = v110;
      outlined destroy of ReferenceResolutionClientProtocol?(v110, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      v102 = v111;
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x1E12A2F50](v102, -1, -1);
      MEMORY[0x1E12A2F50](v91, -1, -1);
    }

    else
    {
    }
  }
}

void specialized ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for RequestSummary.ExecutionSource();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v77 - v15;
  updated = type metadata accessor for ContextUpdateScope();
  v17 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v77 - v27;
  if (a1 && *(a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) == 1)
  {
    v84 = v7;
    v85 = a2;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v86 = v2;
    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.conversationBridge);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "Trying to apply an empty NativeFlowContextUpdate since we received an ExecutionContextUpdate without a nativeFlowContextCommand", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E69C7990]) init];
    v33 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
    v34 = type metadata accessor for PommesContext();
    (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
    (*(v17 + 104))(v19, *MEMORY[0x1E69CFF00], updated);
    v35 = type metadata accessor for ExecutionContextUpdate(0);
    v36 = objc_allocWithZone(v35);
    outlined init with copy of ReferenceResolutionClientProtocol?(v25, v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v22, v32);
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v32;
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v36[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v36[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v36[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v17 + 16))(&v36[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v19, updated);
    v37 = &v36[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v37 = 0;
    v37[1] = 0;
    v36[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v95.receiver = v36;
    v95.super_class = v35;
    v79 = objc_msgSendSuper2(&v95, sel_init);
    (*(v17 + 8))(v19, updated);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v38 = *(v86 + 64);
    v39 = *(v86 + 72);
    v40 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v41 = v88;
    (*(*(v40 - 8) + 56))(v88, 1, 1, v40);
    v43 = v91;
    v42 = v92;
    v44 = v89;
    (*(v91 + 104))(v89, *MEMORY[0x1E69D0678], v92);
    v45 = *(v43 + 16);
    v46 = v90;
    v45(v90, v44, v42);
    v47 = v87;
    outlined init with copy of ReferenceResolutionClientProtocol?(v41, v87, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v78 = type metadata accessor for ExecutionOutput(0);
    v48 = objc_allocWithZone(v78);
    v49 = &v48[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v82 = v38;
    *v49 = v38;
    *(v49 + 1) = v39;
    v50 = v79;
    v51 = &v48[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v51 = 0;
    *(v51 + 1) = 0;
    v52 = &v48[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v52 = 0;
    *(v52 + 1) = 0;
    v53 = &v48[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v53 = 0;
    *(v53 + 1) = 0;
    v54 = &v48[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v54 = 0;
    *(v54 + 1) = 0;
    v45(&v48[OBJC_IVAR___SKRExecutionOutput_executionSource], v46, v42);
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, &v48[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v55 = one-time initialization token for executor;
    v80 = v50;
    v81 = v39;

    if (v55 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v83, static Logger.executor);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v93 = v60;
      *v58 = 136315394;
      *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v93);
      *(v58 + 12) = 2112;
      *(v58 + 14) = 0;
      *v59 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v58, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      v61 = v60;
      v62 = v86;
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    else
    {

      v62 = v86;
    }

    *&v48[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v48[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v50;
    v94.receiver = v48;
    v94.super_class = v78;
    v63 = objc_msgSendSuper2(&v94, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v64 = *(v91 + 8);
    v65 = v92;
    v64(v90, v92);
    v64(v89, v65);
    outlined destroy of ReferenceResolutionClientProtocol?(v88, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v66 = *(v62 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter);
    v67 = *(v62 + 88);
    v92 = *(v62 + 80);
    v68 = v62;
    v69 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
    v71 = *(v68 + 96);
    v70 = *(v68 + 104);
    v72 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
    v73 = type metadata accessor for UUID();
    v74 = *(v73 - 8);
    v75 = v68 + v72;
    v76 = v84;
    (*(v74 + 16))(v84, v75, v73);
    (*(v74 + 56))(v76, 0, 1, v73);
    (*(*v66 + 296))(v63, v82, v81, v92, v67, v68 + v69, 0, v85, v71, v70, v76, 0, 0, closure #1 in ConversationRequestProcessor.applyEmptyNativeFlowContextUpdateIfRequired(_:selectedResultCandidateId:metadata:), 0);

    outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.commit(rcState:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(a1, v1);
}

uint64_t type metadata completion function for ConversationRequestProcessor(uint64_t a1)
{
  result = type metadata accessor for UserID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionConfiguration();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for UserSessionState();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)()
{
  v2 = *(v0 + 592);

  return v2();
}

uint64_t dispatch thunk of ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)()
{
  v2 = *(v0 + 600);

  return v2();
}

uint64_t dispatch thunk of ConversationRequestProcessor.waitForSalientEntityCollection(timeout:)(uint64_t a1)
{
  v6 = (*(*v1 + 1392) + **(*v1 + 1392));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t initializeBufferWithCopyOfBuffer for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ConversationRequestProcessor.State(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of ConversationRequestProcessor.State(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of ConversationRequestProcessor.State(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for ConversationRequestProcessor.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of ConversationRequestProcessor.State(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationRequestProcessor.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationRequestProcessor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ConversationRequestProcessor.State(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for ConversationRequestProcessor.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t outlined init with copy of ResultCandidateType(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for ResultCandidateType(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of RoutingDecision(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_25Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined assign with take of SelectedUserAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationRequestProcessor.synchronizedCloseRequest()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys5Error_pSgs5NeverOGMd, &_sScCys5Error_pSgs5NeverOGMR);

  return closure #1 in closure #1 in closure #1 in ConversationRequestProcessor.synchronizedClose(_:_:_:)(a1, a2);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationRequestProcessor.submit(executionOutput:completion:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(requestType:requestId:asrOnServer:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v12 = type metadata accessor for RequestType();
  (*(*(v12 - 8) + 32))(v10 + v11, a1, v12);
  v13 = (v10 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v13 = a2;
  v13[1] = a3;
  *(v10 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = a4;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v15 = type metadata accessor for InputOrigin();
  (*(*(v15 - 8) + 32))(v10 + v14, a5, v15);
  return v10;
}

void *ConversationRequestProcessorTurnState.SpeechState.speechRecognizedCommand.getter(unint64_t a1, void *a2)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v2 = a2;
  v3 = a2;
  return v2;
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(startDirectActionRequestMessage:)(void *a1, unsigned int *a2)
{
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RequestType();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a2, v8, v10);
  v13 = a1;
  v14 = RequestMessageBase.requestId.getter();
  v16 = v15;

  v17 = v13;
  StartRequestMessageBase.inputOrigin.getter();

  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v9 + 32))(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v12, v8);
  v19 = (v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v19 = v14;
  v19[1] = v16;
  *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v5 + 32))(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v7, v4);
  return v18;
}

uint64_t ConversationRequestProcessorTurnState.__allocating_init(startIFRequestMessage:)(void *a1)
{
  v2 = type metadata accessor for InputOrigin();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D0530], v6, v8);
  v11 = RequestMessageBase.requestId.getter();
  v13 = v12;
  StartIFRequestMessage.inputOrigin.getter();

  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v10, v6);
  v15 = (v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v15 = v11;
  v15[1] = v13;
  *(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v3 + 32))(v14 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v5, v2);
  return v14;
}

void ConversationRequestProcessorTurnState.updateResultCandidateState(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v6 = *v5;
  if (*v5 >> 62)
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
      v26 = swift_slowAlloc();
      v38[0] = v26;
      *v25 = 136315138;
      v27 = *v5 >> 62;
      if (v27)
      {
        if (v27 == 1)
        {
          v28 = 0xEA00000000006465;
          v29 = 0x7463656C65536372;
        }

        else
        {
          v28 = 0xE400000000000000;
          v29 = 1701602409;
        }
      }

      else
      {
        v28 = 0x80000001DCA80910;
        v29 = 0xD000000000000019;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v38);

      *(v25 + 4) = v36;
      _os_log_impl(&dword_1DC659000, v23, v24, "Got an ASRResultCandidateMessge/TRPCandidateRequestMessage in state %s: Ignoring", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E12A2F50](v26, -1, -1);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }
  }

  else
  {
    v7 = v5[1];
    v8 = *(*v6 + 88);
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

    if (*(v8(v9) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
      v11 = v10;

      if (v11)
      {
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
          v38[0] = v16;
          *v15 = 136315138;
          *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v38);
          _os_log_impl(&dword_1DC659000, v13, v14, "Updating ResultCandidateState with rcId %s to rcStateHolder.", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
          MEMORY[0x1E12A2F50](v16, -1, -1);
          MEMORY[0x1E12A2F50](v15, -1, -1);
        }

        v17 = *(*v6 + 104);

        v18 = v17(v38);
        v20 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *v20;
        *v20 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v4, v3, isUniquelyReferenced_nonNull_native);

        *v20 = v37;
        v18(v38, 0);
        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.conversationBridge);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v33 = 136315138;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v38);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_1DC659000, v31, v32, "Got a Conversation state update for RC ID %s that does not exist in the cache yet. Dropping the update.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

LABEL_20:
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
      return;
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
  }
}

void ConversationRequestProcessorTurnState.addResultCandidateState(_:)(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v1 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  swift_beginAccess();
  v6 = *v5;
  v7 = *v5 >> 62;
  if (v7)
  {
    if (v7 == 1)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.conversationBridge);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v39[0] = v12;
        *v11 = 136315138;
        v13 = *v5 >> 62;
        if (v13)
        {
          if (v13 == 1)
          {
            v14 = 0xEA00000000006465;
            v15 = 0x7463656C65536372;
          }

          else
          {
            v14 = 0xE400000000000000;
            v15 = 1701602409;
          }
        }

        else
        {
          v14 = 0x80000001DCA80910;
          v15 = 0xD000000000000019;
        }

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, v39);

        *(v11 + 4) = v37;
        _os_log_impl(&dword_1DC659000, v9, v10, "Got an ASRResultCandidateMessge in state %s: Ignoring", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1E12A2F50](v12, -1, -1);
        MEMORY[0x1E12A2F50](v11, -1, -1);
      }

      return;
    }

    type metadata accessor for ConversationRequestProcessorTurnState.ResultCandidateStateHolder();
    v6 = swift_allocObject();
    v6[2] = MEMORY[0x1E69E7CC8];
    *v5 = v6;
    *(v5 + 8) = 0;

    goto LABEL_18;
  }

  v16 = *(v5 + 8);
  v17 = *(*v6 + 88);
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

  if (!*(v17(v18) + 16))
  {

    goto LABEL_17;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v4, v3);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_17:
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
LABEL_18:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationBridge);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v39);
      _os_log_impl(&dword_1DC659000, v28, v29, "Adding ResultCandidateState with rcId %s to rcStateHolder.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    v32 = *(*v6 + 104);

    v33 = v32(v39);
    v35 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v35;
    *v35 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v4, v3, isUniquelyReferenced_nonNull_native);

    *v35 = v38;
    v33(v39, 0);

    return;
  }

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
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, v39);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v22, v23, "Got the same RC ID %s multiple times this turn. Ignoring.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A2F50](v25, -1, -1);
    MEMORY[0x1E12A2F50](v24, -1, -1);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  }

  else
  {
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v16);
  }
}

Swift::Bool __swiftcall ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()()
{
  v1 = type metadata accessor for RequestType();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v22 = v2[2];
  v50 = v2 + 2;
  v51 = v0;
  v55 = v21;
  v53 = v22;
  v22(v20, v0 + v21, v1);
  v23 = *MEMORY[0x1E69D0548];
  v52 = v2[13];
  v52(v17, v23, v1);
  v24 = lazy protocol witness table accessor for type RequestType and conformance RequestType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v54 = v24;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v26 = v2[1];
  v26(v17, v1);
  v56 = v26;
  v26(v20, v1);

  if (v25)
  {
    goto LABEL_11;
  }

  v27 = v51;
  v53(v14, v51 + v55, v1);
  v28 = v49;
  v52(v49, *MEMORY[0x1E69D0530], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v29 = v56;
    v56(v28, v1);
    v30 = v14;
LABEL_9:
    v29(v30, v1);

LABEL_11:
    v34 = 1;
    return v34 & 1;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v32 = v28;
  v33 = v56;
  v56(v32, v1);
  v33(v14, v1);

  if (v31)
  {
    goto LABEL_11;
  }

  v36 = v48;
  v53(v48, v27 + v55, v1);
  v37 = v47;
  v52(v47, *MEMORY[0x1E69D0520], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v29 = v56;
    v56(v37, v1);
    v30 = v36;
    goto LABEL_9;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v39 = v37;
  v40 = v56;
  v56(v39, v1);
  v40(v36, v1);

  if (v38)
  {
    goto LABEL_11;
  }

  v41 = v45;
  v53(v45, v27 + v55, v1);
  v42 = v46;
  v52(v46, *MEMORY[0x1E69D0538], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v43 = v42;
  v44 = v56;
  v56(v43, v1);
  v44(v41, v1);

  return v34 & 1;
}

unint64_t ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    v7 = (*(*a3 + 88))();
    if (*(v7 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v9)
      {
        v3 = *(*(v7 + 56) + 8 * v8);

        return v3;
      }
    }

    return 0;
  }

  if (a3 >> 62 != 1)
  {
    return 0;
  }

  v3 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == a1 && *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == a2;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return v3;
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.selectedResultCandidate.getter(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.getPendingRcState(rcId:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    return 0;
  }

  v5 = (*(*a3 + 88))();
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    return 0;
  }
}

Swift::Void __swiftcall ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(Swift::String_optional exceptResultCandidateId)
{
  v31 = v2;
  v32 = v1;
  countAndFlagsBits = exceptResultCandidateId.value._countAndFlagsBits;
  if (!(v1 >> 62))
  {
    object = exceptResultCandidateId.value._object;
    v4 = *(*v1 + 88);

    v5 = v4();
    v6 = 0;
    v7 = v5 + 64;
    v34 = v5;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
LABEL_10:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v6 << 6);
      v15 = *(*(v34 + 56) + 8 * v14);
      if (object)
      {
        v16 = (*(v34 + 48) + 16 * v14);
        v17 = *v16 == countAndFlagsBits && v16[1] == object;
        if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          continue;
        }
      }

      v18 = one-time initialization token for conversationBridge;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationBridge);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v35 = v30;
        *v29 = 136315138;
        v22 = *(*v15 + 832);

        v28 = v21;
        v24 = v22(v23);
        v26 = v25;

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v35);

        *(v29 + 4) = v27;
        _os_log_impl(&dword_1DC659000, v20, v28, "Cancelling RC: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1E12A2F50](v30, -1, -1);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      (*(*v15 + 416))(17);
    }

    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v12 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        v6 = v12;
        goto LABEL_10;
      }
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v32, v31);
  }
}

uint64_t ConversationRequestProcessorTurnState.isServerFallback.getter()
{
  v1 = type metadata accessor for RequestType();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v13 = v2[2];
  v54 = v0;
  v51 = v12;
  v49 = v13;
  v13(v11, v0 + v12, v1);
  v14 = *MEMORY[0x1E69D0528];
  v48 = v2[13];
  v48(v8, v14, v1);
  v15 = lazy protocol witness table accessor for type RequestType and conformance RequestType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v50 = v15;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v55 == v57 && v56 == v58)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v17 = v2[1];
  v17(v8, v1);
  v17(v11, v1);

  if (v16)
  {
    goto LABEL_10;
  }

  v18 = v53;
  v49(v53, v54 + v51, v1);
  v19 = v52;
  v48(v52, *MEMORY[0x1E69D0558], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v55 == v57 && v56 == v58)
  {
    v17(v19, v1);
    v17(v18, v1);

LABEL_10:
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
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v22, v23, "Server fallback is always true for this requestType", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v25 = 1;
    return v25 & 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v17(v19, v1);
  v17(v18, v1);

  if (v20)
  {
    goto LABEL_10;
  }

  v27 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  v28 = v54;
  swift_beginAccess();
  v29 = *(v28 + v27);
  if (v29 >> 62 == 1)
  {
    v30 = v29 & 0x3FFFFFFFFFFFFFFFLL;
    v31 = one-time initialization token for conversationBridge;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.conversationBridge);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57 = v36;
      *v35 = 136315138;
      v37 = *(*v30 + 832);

      v39 = v37(v38);
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v57);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_1DC659000, v33, v34, "Selected ResultCandidateState: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A2F50](v36, -1, -1);
      MEMORY[0x1E12A2F50](v35, -1, -1);
    }

    v25 = (*(*v30 + 648))();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.conversationBridge);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v44, v45, "No selected RC found", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

    v25 = 0;
  }

  return v25 & 1;
}

uint64_t ConversationRequestProcessorTurnState.requestType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v4 = type metadata accessor for RequestType();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ConversationRequestProcessorTurnState.requestType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v4 = type metadata accessor for RequestType();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ConversationRequestProcessorTurnState.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);

  return v1;
}

uint64_t ConversationRequestProcessorTurnState.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ConversationRequestProcessorTurnState.flowPluginInfo.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationRequestProcessorTurnState.flowPluginInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConversationRequestProcessorTurnState.outputCounter.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessorTurnState.outputCounter.setter(int a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t ConversationRequestProcessorTurnState.speechState.getter()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v1, *(v1 + 8));
  return v2;
}

void ConversationRequestProcessorTurnState.speechState.setter(unint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v6, v7);
}

uint64_t ConversationRequestProcessorTurnState.init(requestType:requestId:asrOnServer:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  v11 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v12 = type metadata accessor for RequestType();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = (v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v13 = a2;
  v13[1] = a3;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = a4;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v15 = type metadata accessor for InputOrigin();
  (*(*(v15 - 8) + 32))(v5 + v14, a5, v15);
  return v5;
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ConversationRequestProcessorTurnState.SpeechState.description.getter(unint64_t a1)
{
  v1 = 1701602409;
  if (a1 >> 62 == 1)
  {
    v1 = 0x7463656C65536372;
  }

  if (a1 >> 62)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationRequestProcessorTurnState.SpeechState()
{
  v1 = *v0 >> 62;
  v2 = 1701602409;
  if (v1 == 1)
  {
    v2 = 0x7463656C65536372;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.byRcId.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessorTurnState.ResultCandidateStateHolder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ConversationRequestProcessorTurnState.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
  v4 = type metadata accessor for InputOrigin();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined consume of ConversationRequestProcessorTurnState.SpeechState(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState + 8));
  return v0;
}

uint64_t specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(void *a1)
{
  v2 = type metadata accessor for InputOrigin();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  type metadata accessor for StartTextRequestMessage();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pMd, &_s16SiriMessageTypes20RoutingDecisionAware_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  outlined destroy of RoutingDecisionAware?(v19);
  (*(v7 + 104))(v9, *MEMORY[0x1E69D0530], v6);
  v11 = v10;
  v12 = RequestMessageBase.requestId.getter();
  v14 = v13;

  v15 = v11;
  StartRequestMessageBase.inputOrigin.getter();

  type metadata accessor for ConversationRequestProcessorTurnState(0);
  v16 = swift_allocObject();
  *(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v7 + 32))(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v9, v6);
  v17 = (v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v17 = v12;
  v17[1] = v14;
  *(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v3 + 32))(v16 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v5, v2);
  return v16;
}

unint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType()
{
  result = lazy protocol witness table cache variable for type RequestType and conformance RequestType;
  if (!lazy protocol witness table cache variable for type RequestType and conformance RequestType)
  {
    type metadata accessor for RequestType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestType and conformance RequestType);
  }

  return result;
}

uint64_t type metadata completion function for ConversationRequestProcessorTurnState(uint64_t a1)
{
  result = type metadata accessor for RequestType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InputOrigin();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t *assignWithCopy for ConversationRequestProcessorTurnState.SpeechState(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v5, v6);
  return a1;
}

unint64_t *assignWithTake for ConversationRequestProcessorTurnState.SpeechState(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConversationRequestProcessorTurnState.SpeechState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConversationRequestProcessorTurnState.SpeechState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t getEnumTag for ConversationRequestProcessorTurnState.SpeechState(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *destructiveInjectEnumTag for ConversationRequestProcessorTurnState.SpeechState(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

void *ConversationRuntimeClient.__allocating_init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(a1, a2);

  return v4;
}

unint64_t ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000019;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError(uint64_t a1)
{
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationRuntimeClient.ConversationRuntimeClientError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConversationRuntimeClient.ConversationRuntimeClientError@<X0>(unint64_t *a1@<X8>)
{
  result = ConversationRuntimeClient.ConversationRuntimeClientError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ConversationRuntimeClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationRuntimeClient.init()();
  return v0;
}

void *ConversationRuntimeClient.init()()
{
  v1 = v0;
  v0[2] = 0;
  type metadata accessor for ConversationHandlerLocator();
  v2 = ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);
  type metadata accessor for ServerFallbackDisablingUtils();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v3 = swift_allocObject();
  v3[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v3[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v3[4] = 0;
  type metadata accessor for ConversationService();
  v4 = swift_allocObject();
  specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(v2, v11, 0, 0, 1, closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:), 0, v3, v4);
  v5 = ConversationService.serialFacade.getter();
  v7 = v6;
  v9 = v8;

  v1[3] = v5;
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

void *ConversationRuntimeClient.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(a1, a2);

  return v2;
}

void *ConversationRuntimeClient.__allocating_init(overrideConversationService:)()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v1 = ConversationService.serialFacade.getter();
  v3 = v2;
  v5 = v4;

  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v5;
  return v0;
}

void *ConversationRuntimeClient.init(overrideConversationService:)()
{
  v0[2] = 0;
  v1 = ConversationService.serialFacade.getter();
  v3 = v2;
  v5 = v4;

  v0[3] = v1;
  v0[4] = v3;
  v0[5] = v5;
  return v0;
}

uint64_t ConversationRuntimeClient.sendCancelExecutionTurn(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:);
  *(v14 + 24) = v10;
  *(v14 + 32) = "bridge(didReceiveCancelRequest:from:)";
  *(v14 + 40) = 37;
  *(v14 + 48) = 2;
  v15 = *(*v7 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doStartTurnWork(function:work:)partial apply, v14);
}

uint64_t ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[10] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), v5, 0);
}

uint64_t ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationRuntimeClient.swift", 46, 2, "checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)", 73, 2);
  v0[11] = v1[3];
  v0[12] = v1[4];
  v0[13] = v1[5];

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = *(v0 + 88);
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23ExecutionOverrideResultCSgMd, &_s14SiriKitRuntime23ExecutionOverrideResultCSgMR);
  *v6 = v0;
  v6[1] = ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:);

  return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD000000000000033, 0x80000001DCA80B80, partial apply for closure #1 in ConversationServiceSerialFacade.checkExecutionOverrides(context:resultCandidateId:), v5, v7);
}

{

  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), 0, 0);
}

{
  v1 = v0[10];
  v0[16] = v0[5];
  return MEMORY[0x1EEE6DFA0](ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:), v1, 0);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t ConversationRuntimeClient.sendCommitResultCandidateId(_:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  swift_unknownObjectRetain();
  v11 = StaticString.description.getter();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = "bridge(didReceiveCommitResultCandidateId:from:)";
  *(v14 + 48) = 47;
  *(v14 + 56) = 2;
  *(v14 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:);
  *(v14 + 72) = v10;
  v15 = *(*v8 + 208);

  v15(v11, v13, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v14);
}

uint64_t ConversationRuntimeClient.sendSiriKitPluginSignal(_:withBridgeDelegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = a3;

  v11 = a1;
  swift_unknownObjectRetain();
  v12 = StaticString.description.getter();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v9;
  *(v15 + 40) = "bridge(didReceiveSiriKitPluginSignal:from:)";
  *(v15 + 48) = 43;
  *(v15 + 56) = 2;
  *(v15 + 64) = &async function pointer to partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:);
  *(v15 + 72) = v10;
  v16 = *(*v8 + 208);

  v16(v12, v14, &closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)partial apply, v15);
}

Swift::Int ConversationRuntimeClient.ConnectionInterruptedError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t ConversationRuntimeClient.deinit()
{

  return v0;
}

uint64_t ConversationRuntimeClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ConversationRuntimeClientProtocol.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:) in conformance ConversationRuntimeClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(**v5 + 184) + **(**v5 + 184));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v91 = a7;
  v92 = a2;
  v86 = a6;
  v87 = a4;
  v88 = a5;
  LODWORD(v79) = a3;
  v90 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = &v77 - v11;
  v12 = type metadata accessor for DispatchTimeInterval();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerFallbackDisablingUtils();
  v100[4] = &protocol witness table for ServerFallbackDisablingUtils;
  v82 = v18;
  v100[3] = v18;
  v100[0] = a8;
  *(a9 + 104) = MEMORY[0x1E69E7CD0];
  *(a9 + 112) = 1;
  *(a9 + 120) = 0;
  *(a9 + 136) = 0;
  v81 = type metadata accessor for CorrectionsPlatformClient();
  swift_allocObject();
  *(a9 + 184) = CorrectionsPlatformClient.init()();
  type metadata accessor for TaskService();
  v19 = swift_allocObject();
  v19[2] = closure #1 in default argument 1 of TaskService.init(initialTask:taskIdGenerator:);
  v19[3] = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v19[4] = MEMORY[0x1E69E7CC0];
  *(a9 + 192) = v19;
  v80 = type metadata accessor for ConcurrentTaskPool();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v21 + 24) = v22;
  *(a9 + 200) = v21;
  type metadata accessor for ConversationService.ExecutionTaskContext();
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v20;
  v23[4] = 0;
  static ConversationService.ExecutionTaskContext.expirationInNanoSeconds = 60000000000;
  *(a9 + 208) = v23;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, static Logger.executor);
  v25 = *(v15 + 16);
  v78 = v24;
  v25(v17);
  type metadata accessor for AsyncSerialQueue(0);
  v26 = swift_allocObject();
  v26[2] = v20;
  v26[3] = 0;
  v26[4] = 0;
  v26[5] = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v26[6] = v27;
  v26[7] = 0xD000000000000021;
  v26[8] = 0x80000001DCA80DD0;
  (*(v15 + 32))(v26 + OBJC_IVAR____TtC14SiriKitRuntime16AsyncSerialQueue_logger, v17, v14);
  *(a9 + 216) = v26;
  v28 = type metadata accessor for ExperimentationAnalyticsManager();
  *(a9 + 224) = [objc_allocWithZone(v28) init];
  *(a9 + 272) = 0;
  *(a9 + 280) = 0;
  *(a9 + 320) = 0;
  *(a9 + 328) = 0;
  *(a9 + 312) = 0;
  outlined init with copy of ReferenceResolutionClientProtocol?(v92, &v97, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v98)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v97, v99);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v97);
    v29 = type metadata accessor for ReferenceResolutionClient();
    v30 = ReferenceResolutionClient.__allocating_init()();
    v99[3] = v29;
    v99[4] = MEMORY[0x1E69D01B0];
    v99[0] = v30;
  }

  v31 = v90;
  outlined init with copy of ReferenceResolutionClientProtocol(v99, a9 + 144);
  if (v79)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = static StubCamBridge.shared;
    v33 = type metadata accessor for StubCamBridge();
    v34 = &protocol witness table for StubCamBridge;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = static CamBridgeImpl.shared;
    v33 = type metadata accessor for CamBridgeImpl();
    v34 = &protocol witness table for CamBridgeImpl;
  }

  *(a9 + 88) = v33;
  *(a9 + 96) = v34;
  *(a9 + 64) = v32;

  *(a9 + 56) = v31;

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1DC659000, v35, v36, "[ConversationService] Ambiguity handling Feature Flag is on. Using DecisionEngine", v37, 2u);
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  outlined init with copy of ReferenceResolutionClientProtocol(v99, &v97);
  v38 = *(a9 + 184);
  v39 = type metadata accessor for LinkMetadataProvider();
  v40 = swift_allocObject();
  v41 = objc_allocWithZone(MEMORY[0x1E69ACF60]);

  v42 = v38;

  *(v40 + 16) = [v41 init];
  type metadata accessor for LinkExpansionContextBuilder();
  v43 = swift_allocObject();
  v79 = v39;
  v43[6] = v39;
  v43[7] = &protocol witness table for LinkMetadataProvider;
  v43[11] = &type metadata for LinkViewActionProvider;
  v43[12] = &protocol witness table for LinkViewActionProvider;
  v43[2] = 0;
  v43[3] = v40;
  v43[13] = 0;
  v44 = *(a9 + 200);
  outlined init with copy of ReferenceResolutionClientProtocol(a9 + 64, v96);
  v45 = one-time initialization token for instance;

  if (v45 != -1)
  {
    swift_once();
  }

  v77 = static DecisionEngineCurareDonator.instance;
  v90 = type metadata accessor for DecisionEngine();
  v46 = swift_allocObject();
  v95[4] = &protocol witness table for CorrectionsPlatformClient;
  v95[3] = v81;
  v94[4] = &protocol witness table for ConcurrentTaskPool;
  v95[0] = v42;
  v78 = v42;
  v94[3] = v80;
  v94[0] = v44;
  *(v46 + 176) = 0;
  *(v46 + 184) = 0;
  v47 = swift_allocObject();
  v48 = objc_allocWithZone(v28);
  swift_retain_n();
  swift_retain_n();

  v47[2] = [v48 init];
  v47[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v47[4] = 0;
  *(v46 + 192) = v47;
  *(v46 + 200) = 0u;
  *(v46 + 216) = 0u;
  *(v46 + 232) = 0;
  *(v46 + 24) = v31;
  outlined init with copy of ReferenceResolutionClientProtocol(&v97, v46 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v94, v93);
  type metadata accessor for ConversationHelper();
  v49 = swift_allocObject();
  *(v49 + 16) = v31;
  outlined init with take of ReferenceResolutionClientProtocol(v93, v49 + 24);
  *(v46 + 32) = v49;
  v50 = v79;
  v51 = swift_allocObject();
  v52 = objc_allocWithZone(MEMORY[0x1E69ACF60]);
  swift_retain_n();
  *(v51 + 16) = [v52 init];
  v53 = type metadata accessor for AppShortcutStateProvider();
  v54 = swift_allocObject();
  v82 = v44;
  v55 = v54;
  type metadata accessor for AppShortcutExpansionContextBuilder();
  v56 = swift_allocObject();
  v56[9] = v50;
  v56[10] = &protocol witness table for LinkMetadataProvider;
  v56[6] = v51;
  v56[14] = v53;
  v56[15] = &protocol witness table for AppShortcutStateProvider;
  v56[11] = v55;
  type metadata accessor for ConditionalIntentMetadataStore();
  v56[4] = 0;
  v56[5] = 0;
  v56[3] = 0;
  v57 = swift_allocObject();
  *(v57 + 16) = MEMORY[0x1E69E7CC8];
  v56[2] = v57;
  type metadata accessor for ActionGenerator();
  v58 = swift_allocObject();
  v58[3] = v56;
  v58[4] = v31;
  v58[2] = v43;
  *(v46 + 16) = v58;
  outlined init with copy of ReferenceResolutionClientProtocol(v95, v93);
  type metadata accessor for CorrectionsService();
  v59 = swift_allocObject();
  outlined init with take of ReferenceResolutionClientProtocol(v93, v59 + 16);
  *(v59 + 56) = v31;
  *(v46 + 40) = v59;
  *(v46 + 88) = v77;
  v60 = type metadata accessor for AppShortcutProvider();
  v61 = MEMORY[0x1E69CFFA8];
  *(v46 + 120) = v60;
  *(v46 + 128) = v61;
  __swift_allocate_boxed_opaque_existential_0((v46 + 96));
  AppShortcutProvider.init()();

  __swift_destroy_boxed_opaque_existential_1Tm(&v97);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  outlined init with take of ReferenceResolutionClientProtocol(v96, v46 + 136);
  *(a9 + 40) = v90;
  *(a9 + 48) = &protocol witness table for DecisionEngine;
  *(a9 + 16) = v46;
  type metadata accessor for OS_dispatch_queue();
  v62 = static OS_dispatch_queue.main.getter();
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v63 = v85;
  v64 = __swift_project_value_buffer(v85, static JetsamHelper.defaultTimeout);
  v66 = v83;
  v65 = v84;
  (*(v84 + 16))(v83, v64, v63);
  type metadata accessor for JetsamHelper(0);
  v67 = swift_allocObject();
  v68 = (v67 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  *v68 = 0;
  v68[1] = 0;
  v67[2] = 0xD00000000000002CLL;
  v67[3] = 0x80000001DCA80E00;
  v67[4] = dispatch_semaphore_create(1);
  v67[5] = v62;
  (*(v65 + 32))(v67 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v66, v63);
  *(a9 + 128) = v67;
  v69 = v91;
  *(a9 + 288) = v86;
  *(a9 + 296) = v69;
  *(a9 + 304) = v87 & 1;
  outlined init with copy of ReferenceResolutionClientProtocol(v100, a9 + 232);
  v70 = v89;
  if (v88)
  {
    v71 = type metadata accessor for TaskPriority();
    (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
    v72 = one-time initialization token for shared;

    if (v72 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v73 = static MessageBusActor.shared;
    v74 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
    v75 = swift_allocObject();
    v75[2] = v73;
    v75[3] = v74;
    v75[4] = a9;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v70, &async function pointer to partial apply for closure #1 in ConversationService.warmup(), v75);

    outlined destroy of ReferenceResolutionClientProtocol?(v92);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v92);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  return a9;
}

void *specialized ConversationRuntimeClient.init(onConnectionInterrupted:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = 0;
  type metadata accessor for ConversationHandlerLocator();

  v6 = ConversationHandlerLocator.__allocating_init(onConnectionInterrupted:)(a1, a2);
  type metadata accessor for ServerFallbackDisablingUtils();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager());

  v7[2] = [v8 init];
  v7[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v7[4] = 0;
  type metadata accessor for ConversationService();
  v9 = swift_allocObject();
  specialized ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(v6, v16, 0, 0, 1, closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:), 0, v7, v9);
  v10 = ConversationService.serialFacade.getter();
  v12 = v11;
  v14 = v13;

  v3[3] = v10;
  v3[4] = v12;
  v3[5] = v14;
  return v3;
}

unint64_t specialized ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationRuntimeClient.ConversationRuntimeClientError.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveInput:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCancelRequest:from:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveCommitResultCandidateId:from:)(v2, v3, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ConversationServiceSerialFacade.bridge(didReceiveSiriKitPluginSignal:from:)(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError()
{
  result = lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError;
  if (!lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationRuntimeClient.ConversationRuntimeClientError and conformance ConversationRuntimeClient.ConversationRuntimeClientError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError()
{
  result = lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError;
  if (!lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationRuntimeClient.ConnectionInterruptedError and conformance ConversationRuntimeClient.ConnectionInterruptedError);
  }

  return result;
}

uint64_t dispatch thunk of ConversationRuntimeClient.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 184) + **(*v5 + 184));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t outlined destroy of ReferenceResolutionClientProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ConversationRuntimeClientProtocol.checkExecutionOverride(rcId:executionOverrideContext:withBridgeDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 56) + **(a7 + 56));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t static ConversationSearchResult.supported(_:identifierForFoundFlow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ConversationSearchResult(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Input();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  outlined init with copy of ReferenceResolutionClientProtocol?(a2, a3 + *(v6 + 28), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *a3 = a1;
  *(a3 + 8) = 1;
}

uint64_t static ConversationSearchResult.reformTo(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConversationSearchResult(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Input();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2 + v5, a1, v6);
  (*(v7 + 56))(a2 + v5, 0, 1, v6);
  v8 = *(v4 + 28);
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t static ConversationSearchResult.unsupported(exclude:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ConversationSearchResult(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for Input();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(v4 + 28);
  v8 = type metadata accessor for UUID();
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  *a2 = 0;
  *(a2 + 8) = a1;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConversationSearchResult(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for Input();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(a2 + v8, 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      memcpy((v7 + v8), a2 + v8, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    v13 = *(a3 + 28);
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      memcpy((v7 + v13), a2 + v13, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(v7 + v13, a2 + v13, v14);
      (*(v15 + 56))(v7 + v13, 0, 1, v14);
    }
  }

  return v7;
}

uint64_t initializeWithCopy for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(a2 + v6, 1, v7))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v11 = *(a3 + 28);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a2 + v11, 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v11), (a2 + v11), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a1 + v11, a2 + v11, v12);
    (*(v13 + 56))(a1 + v11, 0, 1, v12);
  }

  return a1;
}

uint64_t assignWithCopy for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(a1 + v6, v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(a1 + v6, a2 + v6, v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      return a1;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    return a1;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
  return a1;
}

uint64_t initializeWithTake for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = *(a3 + 28);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a2 + v10, 1, v11))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 32))(a1 + v10, a2 + v10, v11);
    (*(v12 + 56))(a1 + v10, 0, 1, v11);
  }

  return a1;
}

uint64_t assignWithTake for ConversationSearchResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 32))(a1 + v6, a2 + v6, v7);
      (*(v8 + 56))(a1 + v6, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(a1 + v6, v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 40))(a1 + v6, a2 + v6, v7);
LABEL_7:
  v13 = *(a3 + 28);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 40))(a1 + v13, a2 + v13, v14);
      return a1;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    return a1;
  }

  (*(v15 + 32))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
  return a1;
}

void type metadata completion function for ConversationSearchResult(uint64_t a1)
{
  _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for Input?, MEMORY[0x1E69D0100]);
  if (v1 <= 0x3F)
  {
    _s11SiriKitFlow5InputVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

Swift::Void __swiftcall ConversationSELFHelper.emitActionCandidatesGenerated(rcId:actionCandidates:)(Swift::String rcId, Swift::OpaquePointer actionCandidates)
{
  v3 = v2;
  v43 = rcId;
  v5 = *v3;
  v44 = v3;
  v42 = v5;
  v6 = type metadata accessor for ActionCandidate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UUID();
  v9 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SiriCam15ActionCandidateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v13 = *(actionCandidates._rawValue + 2);
  if (v13)
  {
    v14 = v9;
    v15 = actionCandidates._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = (v7 + 16);
    v17 = *(v7 + 72);
    v46 = (v7 + 32);
    v47 = v14 + 16;
    v48 = v14;
    v49 = (v14 + 8);
    v45 = (v7 + 40);
    while (1)
    {
      UUID.init()();
      v18 = v6;
      (*v16)(v51, v15, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v12;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v22 = v12[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        swift_once();
LABEL_19:
        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.instrumentation);
        v37 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1DC659000, v37, v40, "[ConversationSELFHelper] buildActionCandidatesGeneratedMessage failed to be emitted", v41, 2u);
          MEMORY[0x1E12A2F50](v41, -1, -1);
        }

        goto LABEL_21;
      }

      v26 = v21;
      if (v12[3] < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v34 = v20;
      specialized _NativeDictionary.copy()();
      v20 = v34;
      v12 = v52;
      if (v26)
      {
LABEL_3:
        v6 = v18;
        (*v45)(v12[7] + v20 * v17, v51, v18);
        (*v49)(v11, v50);
        goto LABEL_4;
      }

LABEL_11:
      v12[(v20 >> 6) + 8] |= 1 << v20;
      v28 = v48;
      v29 = v20;
      v30 = v50;
      (*(v48 + 16))(v12[6] + *(v48 + 72) * v20, v11, v50);
      v31 = v12[7] + v29 * v17;
      v6 = v18;
      (*v46)(v31, v51, v18);
      (*(v28 + 8))(v11, v30);
      v32 = v12[2];
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v12[2] = v33;
LABEL_4:
      v15 += v17;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if ((v26 & 1) != (v27 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_10:
    v12 = v52;
    if (v26)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v35 = swift_allocObject();
  v36 = v42;
  *(v35 + 16) = v12;
  *(v35 + 24) = v36;

  v37 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  if (!v37)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  dispatch thunk of ConversationSELFHelper.emit(_:)();
  *(swift_allocObject() + 16) = v12;
  v38 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  if (v38)
  {
    dispatch thunk of ConversationSELFHelper.emit(_:)();
  }

LABEL_21:
}

uint64_t ConversationSELFHelper.buildActionCandidatesGeneratedMessage(rcId:actionCandidates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;

  v7 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  return v7;
}

uint64_t ConversationSELFHelper.buildActionCandidatesGeneratedTier1Message(rcId:actionCandidates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a3;

  v3 = dispatch thunk of ConversationSELFHelper.makeClientEvent(rcId:_:)();

  return v3;
}

id closure #1 in ConversationSELFHelper.buildActionCandidatesGeneratedMessage(rcId:actionCandidates:)(void *a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v148 = a1;
  v166 = type metadata accessor for Siri_Nlu_External_UUID();
  v177 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for Siri_Nlu_External_UserParse();
  v174 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v146 - v10;
  v11 = type metadata accessor for CamUSOParse();
  v172 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for CamParse();
  v14 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = (&v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ActionCandidate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v173 = &v146 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v153 = &v146 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v146 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v188 = &v146 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v187 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v183 = &v146 - v34;
  v35 = [objc_allocWithZone(MEMORY[0x1E69CE960]) init];
  if (v35)
  {
    v193 = v19;
    v147 = v35;
    v160 = v13;
    v161 = v11;
    v151 = v8;
    v180 = MEMORY[0x1E69E7CC0];
    v198 = MEMORY[0x1E69E7CC0];
    v36 = *(a2 + 64);
    v181 = a2 + 64;
    v37 = 1 << *(a2 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v189 = v38 & v36;
    v154 = (v37 + 63) >> 6;
    v171 = v23 + 16;
    v170 = v17 + 16;
    v190 = (v23 + 32);
    v186 = (v17 + 32);
    v192 = (v23 + 8);
    v149 = "conversational_action_manager";
    v176 = (v14 + 88);
    v175 = *MEMORY[0x1E69CE300];
    v159 = *MEMORY[0x1E69CE2F8];
    v152 = (v14 + 8);
    v169 = (v14 + 96);
    v182 = v23;
    v167 = (v23 + 48);
    v158 = (v172 + 32);
    v157 = (v174 + 8);
    v156 = v177 + 1;
    v155 = (v172 + 8);
    v172 = v17;
    v177 = (v17 + 8);
    v174 = a2;

    v39 = 0;
    v184 = v16;
    v185 = v22;
    v40 = v16;
    v41 = v22;
    while (1)
    {
      v42 = v187;
      v43 = v189;
      if (!v189)
      {
        if (v154 <= v39 + 1)
        {
          v47 = v39 + 1;
        }

        else
        {
          v47 = v154;
        }

        v48 = v47 - 1;
        v46 = v182;
        while (1)
        {
          v45 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v45 >= v154)
          {
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
            (*(*(v100 - 8) + 56))(v42, 1, 1, v100);
            v189 = 0;
            v39 = v48;
            goto LABEL_16;
          }

          v43 = *(v181 + 8 * v45);
          ++v39;
          if (v43)
          {
            v44 = v40;
            v39 = v45;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v44 = v40;
      v45 = v39;
      v46 = v182;
LABEL_15:
      v189 = (v43 - 1) & v43;
      v49 = __clz(__rbit64(v43)) | (v45 << 6);
      v50 = v174;
      v51 = v41;
      v52 = v46;
      (*(v46 + 16))(v188, *(v174 + 48) + *(v46 + 72) * v49, v51);
      v53 = v172;
      v54 = v173;
      (*(v172 + 16))(v173, *(v50 + 56) + *(v172 + 72) * v49, v44);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
      v56 = *(v55 + 48);
      v57 = *(v52 + 32);
      v41 = v185;
      v42 = v187;
      v57();
      v58 = *(v53 + 32);
      v40 = v44;
      v58(&v42[v56], v54, v44);
      (*(*(v55 - 8) + 56))(v42, 0, 1, v55);
LABEL_16:
      v59 = v42;
      v60 = v183;
      outlined init with take of (key: UUID, value: ActionCandidate)?(v59, v183);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMd, &_s10Foundation4UUIDV3key_7SiriCam15ActionCandidateV5valuetMR);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
      {

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CNVSchemaCNVActionCandidate, 0x1E69CE950);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v138 = v147;
        [v147 setActionCandidates_];

        v139 = v148;
        [v148 setActionCandidatesGenerated_];

        v140 = v139;
        return v139;
      }

      v62 = *(v61 + 48);
      v63 = v41;
      v64 = *v190;
      (*v190)(v191, v60, v41);
      v65 = v193;
      (*v186)(v193, v60 + v62, v40);
      v66 = [objc_allocWithZone(MEMORY[0x1E69CE950]) init];
      if (!v66)
      {

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v142 = type metadata accessor for Logger();
        __swift_project_value_buffer(v142, static Logger.instrumentation);
        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v143, v144))
        {
          v145 = swift_slowAlloc();
          *v145 = 0;
          _os_log_impl(&dword_1DC659000, v143, v144, "[ConversationSELFHelper] Could not create CNVSchemaCNVActionCandidate message for logging ", v145, 2u);
          MEMORY[0x1E12A2F50](v145, -1, -1);
        }

        (*v177)(v65, v40);
        (*v192)(v191, v63);
        return 0;
      }

      v67 = v66;
      v68 = v188;
      ActionCandidate.loggingId.getter();
      v69 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v70 = UUID._bridgeToObjectiveC()().super.isa;
      v71 = [v69 initWithNSUUID_];

      v72 = *v192;
      (*v192)(v68, v63);
      [v67 setActionCandidateId_];

      v73 = ActionCandidate.affinityScore.getter();
      v74 = v73;
      if (v73 < 0)
      {
        v74 = -v73;
        if (__OFSUB__(0, v73))
        {
          goto LABEL_73;
        }

        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }
      }

      if (HIDWORD(v74))
      {
        goto LABEL_72;
      }

      [v67 setAffinityScore_];
      v194 = ActionCandidate.flowHandlerId.getter();
      v195 = v75;
      v196 = 46;
      v197 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v76 = StringProtocol.components<A>(separatedBy:)();

      v77 = *(v76 + 16);
      if (!v77)
      {
        break;
      }

      v78 = (v76 + 16 + 16 * v77);
      v80 = *v78;
      v79 = v78[1];

      v194 = v80;
      v195 = v79;
      v40 = v184;
      v194 = String.init<A>(_:)();
      v195 = v81;

      MEMORY[0x1E12A1580](0x656C646E75622ELL, 0xE700000000000000);

      v82 = static ConversationSELFHelper.convert(fromPlugin:)();

      [v67 setPlugin_];
      v83 = v193;
      if (v82 == 23)
      {
        v84 = [objc_allocWithZone(MEMORY[0x1E69CEA90]) init];
        if (v84)
        {
          v85 = v84;
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          __swift_project_value_buffer(v86, static Logger.instrumentation);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&dword_1DC659000, v87, v88, "[ConversationSELFHelper] Trying to log link information", v89, 2u);
            MEMORY[0x1E12A2F50](v89, -1, -1);
          }

          v90 = ActionCandidate.userData.getter();
          if (v90)
          {
            v91 = v90;
            if (*(v90 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, v149 | 0x8000000000000000), (v93 & 1) != 0))
            {
              outlined init with copy of Any(*(v91 + 56) + 32 * v92, &v194);

              if (swift_dynamicCast())
              {
                v95 = v196;
                v94 = v197;
                v96 = Logger.logObject.getter();
                v97 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v96, v97))
                {
                  v98 = swift_slowAlloc();
                  *v98 = 0;
                  _os_log_impl(&dword_1DC659000, v96, v97, "[ConversationSELFHelper] Logging link action", v98, 2u);
                  MEMORY[0x1E12A2F50](v98, -1, -1);
                }

                v99 = MEMORY[0x1E12A1410](v95, v94);

                [v85 setLinkActionId_];
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

          v99 = Logger.logObject.getter();
          v101 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v99, v101))
          {
            v102 = swift_slowAlloc();
            *v102 = 0;
            _os_log_impl(&dword_1DC659000, v99, v101, "[ConversationSELFHelper] Unable to log link action id as it's missing from userData", v102, 2u);
            MEMORY[0x1E12A2F50](v102, -1, -1);
          }

LABEL_41:

          v103 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v104 = UUID._bridgeToObjectiveC()().super.isa;
          v105 = [v103 initWithNSUUID_];

          [v85 setLinkId_];
          [v67 setLinkMetadata_];

          v40 = v184;
LABEL_42:
          v83 = v193;
        }
      }

      v106 = v178;
      ActionCandidate.parse.getter();
      v107 = v179;
      v108 = (*v176)(v106, v179);
      if (v108 == v175)
      {
        (*v169)(v106, v107);
        v109 = v160;
        v110 = v161;
        (*v158)(v160, v106, v161);
        v111 = v163;
        CamUSOParse.userParse.getter();
        v112 = v165;
        Siri_Nlu_External_UserParse.id.getter();
        (*v157)(v111, v164);
        v113 = v162;
        static ConversionUtils.convertProtoToUuid(protoUuid:)();
        (*v156)(v112, v166);
        v114 = v185;
        if ((*v167)(v113, 1, v185) == 1)
        {
          (*v155)(v109, v110);
          outlined destroy of UUID?(v113);
        }

        else
        {
          v120 = v153;
          v64(v153, v113, v114);
          v121 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v122 = UUID._bridgeToObjectiveC()().super.isa;
          v123 = [v121 initWithNSUUID_];

          [v67 setParseHypothesisId_];
          v72(v120, v114);
          (*v155)(v109, v110);
        }

        v83 = v193;
        v41 = v114;
        v40 = v184;
      }

      else
      {
        if (v108 == v159)
        {
          (*v169)(v106, v107);
          v115 = *v106;
          PommesResponse.requestId.getter();
          if (v116)
          {
            v180 = v72;
            v117 = v40;
            v118 = v151;
            UUID.init(uuidString:)();

            v119 = v185;
            if ((*v167)(v118, 1, v185) == 1)
            {

              outlined destroy of UUID?(v118);
              v41 = v119;
              v40 = v117;
              v72 = v180;
            }

            else
            {
              v125 = v150;
              v64(v150, v118, v119);
              v126 = objc_opt_self();
              v127 = UUID._bridgeToObjectiveC()().super.isa;
              v128 = [v126 derivedIdentifierForComponent:21 fromSourceIdentifier:v127];

              v129 = v188;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v130 = objc_allocWithZone(MEMORY[0x1E69CF638]);
              v131 = UUID._bridgeToObjectiveC()().super.isa;
              v132 = [v130 initWithNSUUID_];

              v72 = v180;
              v180(v129, v119);
              [v67 setPommesId_];

              v40 = v184;
              v72(v125, v119);
              v41 = v119;
            }

            goto LABEL_55;
          }
        }

        else
        {
          (*v152)(v106, v107);
        }

        v41 = v185;
      }

LABEL_55:
      v124 = v67;
      MEMORY[0x1E12A1680]();
      if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v177)(v83, v40);
      v72(v191, v41);
      v180 = v198;
    }

    goto LABEL_42;
  }

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_74:
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  __swift_project_value_buffer(v133, static Logger.instrumentation);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_1DC659000, v134, v135, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesGenerated SELF objects", v136, 2u);
    MEMORY[0x1E12A2F50](v136, -1, -1);
  }

  return 0;
}