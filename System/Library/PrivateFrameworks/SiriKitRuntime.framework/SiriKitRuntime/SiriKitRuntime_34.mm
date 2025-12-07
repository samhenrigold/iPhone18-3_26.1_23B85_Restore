void ServerFallbackCapableRequestProcessor.sendExecuteNLOnServerCommand(executeNLOnServer:rcState:turn:)(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a1;
  v6 = type metadata accessor for ServerFallbackReason();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for UUID();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RequestType();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v3;
  v18 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) == 1)
  {
    swift_beginAccess();
    (*(v15 + 16))(v17, a3 + v18, v14);
    v19 = ExecuteNLOnServerMessage.toSARDMUXExecuteNLOnServer(rcState:requestType:refId:)(a2, v17, *(v49 + 80), *(v49 + 88));
  }

  else
  {
    swift_beginAccess();
    (*(v15 + 16))(v17, a3 + v18, v14);
    v20 = *(v49 + 80);
    v21 = *(v49 + 88);
    v19 = [objc_allocWithZone(MEMORY[0x1E69C7978]) init];
    aBlock[0] = v19;
    specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(aBlock, a2, v17, v20, v21);
  }

  (*(v15 + 8))(v17, v14);
  v22 = v19;
  v23 = v46;
  UUID.init()();
  v24 = v47;
  v25 = v48;
  (*(v47 + 16))(v11, v23, v48);
  (*(v24 + 56))(v11, 0, 1, v25);
  (*(*a2 + 848))(v11);
  v26 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v27 = [v22 refId];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = a2[3];
    v33 = a2[2];
    ExecuteNLOnServerMessageBase.fallbackReason.getter();
    v34 = *(*v26 + 200);
    v45 = v32;
    v34(v29, v31, v33, v32, v23, v8);

    (*(v43 + 8))(v8, v44);
    v35 = v49;
    v36 = *(v49 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
    aBlock[4] = closure #1 in ServerFallbackCapableRequestProcessor.sendExecuteNLOnServerCommand(executeNLOnServer:rcState:turn:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_22;
    v37 = _Block_copy(aBlock);
    [v36 handleCommand:v22 completion:v37];
    _Block_release(v37);

    if (((*(*a2 + 480))() & 1) == 0)
    {
      (*(v47 + 8))(v23, v48);
      goto LABEL_9;
    }

    if ((*(*v35 + 472))())
    {
      (*(v47 + 8))(v46, v48);
LABEL_9:

      return;
    }

    v38 = v46;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.conversationBridge);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v40, v41, "Sending ResultCandidateSelected with ExecuteNLOnServer itself", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    (*(*v35 + 1312))(v33, v45, 1, 0, 0);
    (*(v47 + 8))(v38, v48);
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ServerFallbackCapableRequestProcessor.sendExecuteNLOnServerCommand(executeNLOnServer:rcState:turn:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = v9;
    }

    else
    {
      v10 = 0xE400000000000000;
      v8 = 1701736302;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, oslog, v5, "Sent ExecuteNLOnServer command to server, error:%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall ServerFallbackCapableRequestProcessor.shouldNotProceedWithServerFallback(preExecutionDecision:)(SiriKitRuntime::PreExecutionDecision preExecutionDecision)
{
  if (PreExecutionDecision.rawValue.getter(preExecutionDecision) == 0xD000000000000017 && 0x80000001DCA7AF40 == v2)
  {
    goto LABEL_3;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
LABEL_6:
    v3 = 1;
    return v3 & 1;
  }

  if (PreExecutionDecision.rawValue.getter(preExecutionDecision) != 0xD000000000000024 || 0x80000001DCA7AFE0 != v6)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      goto LABEL_6;
    }

    if (PreExecutionDecision.rawValue.getter(preExecutionDecision) != 0xD000000000000024 || 0x80000001DCA7B010 != v8)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_6;
      }

      if (PreExecutionDecision.rawValue.getter(preExecutionDecision) != 0xD000000000000024 || 0x80000001DCA7B040 != v10)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v11)
        {
          goto LABEL_6;
        }

        if (PreExecutionDecision.rawValue.getter(preExecutionDecision) != 0xD000000000000015 || 0x80000001DCA7B0C0 != v12)
        {
          v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_4;
        }
      }
    }
  }

LABEL_3:
  v3 = 1;
LABEL_4:

  return v3 & 1;
}

void ServerFallbackCapableRequestProcessor.handleAceFlowOutputCandidate(_:executionContextInfo:reply:)(void *a1, void *a2, void (*a3)(id, id), uint64_t a4)
{
  v5 = v4;
  v232 = a3;
  v226 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v231 = &v215[-v9];
  v10 = type metadata accessor for UUID();
  v233 = *(v10 - 8);
  v234 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v215[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v230 = &v215[-v14];
  v15 = type metadata accessor for RequestType();
  v228 = *(v15 - 8);
  v229 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v227 = &v215[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
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
    v23 = a4;
    v24 = v18;
    v25 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v25 = v19;
    v26 = v19;
    _os_log_impl(&dword_1DC659000, v20, v21, "Received %@", v22, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = v25;
    v18 = v24;
    a4 = v23;
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  if (*(v5 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) == 1)
  {
    MEMORY[0x1EEE9AC00](v28);
    *&v215[-16] = v5;
    *&v215[-8] = v19;
    v29 = objc_allocWithZone(type metadata accessor for MUXFlowOutputCandidateMessage());
    v30 = MUXFlowOutputCandidateMessage.init(build:)();
    if (v30)
    {
      v31 = v30;
      __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
      dispatch thunk of MessagePublishing.postMessage(_:)();
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1DC659000, v31, v32, "Could not create MUXFlowOutputCandidateMessage.", v33, 2u);
        MEMORY[0x1E12A2F50](v33, -1, -1);
      }
    }
  }

  v34 = [v19 resultCandidateId];
  if (v34)
  {
    v35 = v34;
    v225 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = *(*v5 + 608);
    v224 = v5;
    v39 = v38();
    if (v39)
    {
      v40 = v39;
      v223 = a4;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      v43 = os_log_type_enabled(v41, v42);
      v220 = v12;
      if (v43)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v222 = v18;
        v217 = v45;
        v237[0] = v45;
        *v44 = 136315138;
        v216 = v42;
        v46 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
        swift_beginAccess();
        v47 = v228;
        v48 = v40 + v46;
        v49 = v227;
        v50 = v37;
        v51 = v229;
        (*(v228 + 16))(v227, v48, v229);
        v52 = RequestType.rawValue.getter();
        v218 = v19;
        v53 = v40;
        v55 = v54;
        v56 = v51;
        v37 = v50;
        (*(v47 + 8))(v49, v56);
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, v237);
        v40 = v53;
        v19 = v218;

        *(v44 + 4) = v57;
        _os_log_impl(&dword_1DC659000, v41, v216, "RequestType = %s", v44, 0xCu);
        v58 = v217;
        __swift_destroy_boxed_opaque_existential_1Tm(v217);
        v18 = v222;
        MEMORY[0x1E12A2F50](v58, -1, -1);
        MEMORY[0x1E12A2F50](v44, -1, -1);
      }

      v59 = (v40 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v61 = *v59;
      v60 = v59[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v61, v60);
      v62 = v225;
      v63 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v225, v37, v61);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v61, v60);
      v64 = v231;
      if (v63)
      {
        (*(*v63 + 840))();
        v66 = v233;
        v65 = v234;
        v67 = (*(v233 + 48))(v64, 1, v234);
        v219 = v37;
        if (v67 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_1DC659000, v68, v69, "Skipping logging of ServerFallback response in SELF as contextId is missing", v70, 2u);
            MEMORY[0x1E12A2F50](v70, -1, -1);
          }
        }

        else
        {
          v222 = v18;
          (*(v66 + 32))(v230, v64, v65);
          v122 = *(v224 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
          v123 = [v226 requestID];
          if (!v123)
          {
            __break(1u);
            return;
          }

          v124 = v123;
          v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;

          v128 = [v19 resultCandidateId];
          if (v128)
          {
            v129 = v40;
            v130 = v128;
            v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v133 = v132;

            v40 = v129;
          }

          else
          {
            v131 = 0;
            v133 = 0;
          }

          v134 = v125;
          v135 = v230;
          (*(*v122 + 208))(v134, v127, v230, v131, v133);

          (*(v233 + 8))(v135, v234);
          v18 = v222;
        }

        v136 = (*v63 + 408);
        v137 = *v136;
        v138 = (*v136)();
        if (ResultCandidateProcessingStatus.rawValue.getter(v138) == 0x64656C65636E6163 && v139 == 0xE800000000000000)
        {

          goto LABEL_43;
        }

        v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v140)
        {
LABEL_43:
          v141 = v219;

          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v235 = v145;
            *v144 = 136315138;
            v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v225, v141, &v235);

            *(v144 + 4) = v146;
            _os_log_impl(&dword_1DC659000, v142, v143, "RC ID:%s has already been canceled. Not handling FlowOutputCandidate any further.", v144, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v145);
            MEMORY[0x1E12A2F50](v145, -1, -1);
            MEMORY[0x1E12A2F50](v144, -1, -1);
          }

          else
          {
          }

          v147 = v232;
          if (v232)
          {
            v148 = objc_allocWithZone(MEMORY[0x1E69C7780]);
            v149 = v19;
            v221 = v40;
            v150 = v223;

            v151 = [v148 init];
            v152 = v220;
            UUID.init()();
            v153 = UUID.uuidString.getter();
            v155 = v154;
            (*(v233 + 8))(v152, v234);
            v156 = MEMORY[0x1E12A1410](v153, v155);

            [v151 setAceId_];

            v157 = v151;
            v158 = [v149 aceId];
            [v157 setRefId_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DCA66060;
            *(inited + 32) = 0x6567617373654DLL;
            v160 = inited + 32;
            *(inited + 72) = MEMORY[0x1E69E6158];
            *(inited + 40) = 0xE700000000000000;
            *(inited + 48) = 0xD000000000000014;
            *(inited + 56) = 0x80000001DCA87C40;
            _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
            swift_setDeallocating();
            outlined destroy of ReferenceResolutionClientProtocol?(v160, &_sSS_yptMd, &_sSS_yptMR);
            v161 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v162 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v164 = [v161 initWithDomain:v162 code:-1 userInfo:isa];

            v147(v157, v164);

            v120 = v147;
            v121 = v150;
            goto LABEL_48;
          }

          goto LABEL_62;
        }

        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.debug.getter();

        v167 = os_log_type_enabled(v165, v166);
        v221 = v40;
        if (v167)
        {
          v168 = swift_slowAlloc();
          v222 = v18;
          v169 = v168;
          v231 = swift_slowAlloc();
          v235 = v231;
          *v169 = 136315138;
          v170 = *(*v63 + 832);

          LODWORD(v230) = v166;
          v172 = v170(v171);
          v174 = v173;

          v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v174, &v235);

          *(v169 + 4) = v175;
          _os_log_impl(&dword_1DC659000, v165, v230, "Received FlowOutputCandidate when RC state: %s", v169, 0xCu);
          v176 = v231;
          __swift_destroy_boxed_opaque_existential_1Tm(v231);
          MEMORY[0x1E12A2F50](v176, -1, -1);
          MEMORY[0x1E12A2F50](v169, -1, -1);
        }

        v177 = v137();
        if (ResultCandidateProcessingStatus.rawValue.getter(v177) == 0xD000000000000018 && 0x80000001DCA7B580 == v178)
        {

          v179 = v223;
LABEL_55:
          v181 = [v19 payload];
          if (v181)
          {
            v182 = v181;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
            v183 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v183 = 0;
          }

          (*(*v63 + 440))(v183);
          (*(*v63 + 464))([v19 serverContextUpdateCandidate]);
          (*(*v63 + 632))([v19 shouldNotMitigateAsFalseTrigger]);
          v184 = (*(*v63 + 416))(12);
          if ((*(*v63 + 480))(v184))
          {
            (*(*v224 + 1160))(v63);
          }

          v185 = v232;
          if (v232)
          {
            v186 = objc_allocWithZone(MEMORY[0x1E69C7788]);

            v187 = [v186 init];
            v188 = v220;
            UUID.init()();
            v189 = UUID.uuidString.getter();
            v191 = v190;
            (*(v233 + 8))(v188, v234);
            v192 = MEMORY[0x1E12A1410](v189, v191);

            [v187 setAceId_];

            v193 = v187;
            v194 = [v19 aceId];
            [v193 setRefId_];

            v185(v193, 0);
            _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v185, v179);
          }

LABEL_62:

          return;
        }

        v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v179 = v223;
        if (v180)
        {
          goto LABEL_55;
        }

        v218 = v19;
        v195 = Logger.logObject.getter();
        v196 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          *v197 = 0;
          _os_log_impl(&dword_1DC659000, v195, v196, "FlowOutputCandidate received for an RC with unexpected state", v197, 2u);
          MEMORY[0x1E12A2F50](v197, -1, -1);
        }

        v198 = v232;
        if (!v232)
        {
          goto LABEL_62;
        }

        v199 = objc_allocWithZone(MEMORY[0x1E69C7778]);

        v200 = [v199 init];
        v201 = v220;
        UUID.init()();
        v202 = UUID.uuidString.getter();
        v204 = v203;
        (*(v233 + 8))(v201, v234);
        v205 = MEMORY[0x1E12A1410](v202, v204);

        [v200 setAceId_];

        v206 = v200;
        v207 = [v218 aceId];
        [v206 setRefId_];

        [v206 setErrorCode_];
        v208 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA87C20);
        [v206 setReason_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        v209 = swift_initStackObject();
        *(v209 + 16) = xmmword_1DCA66060;
        v90 = v179;
        *(v209 + 32) = 0x6567617373654DLL;
        v210 = v209 + 32;
        *(v209 + 72) = MEMORY[0x1E69E6158];
        *(v209 + 40) = 0xE700000000000000;
        *(v209 + 48) = 0xD000000000000013;
        *(v209 + 56) = 0x80000001DCA87C20;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v209);
        swift_setDeallocating();
        outlined destroy of ReferenceResolutionClientProtocol?(v210, &_sSS_yptMd, &_sSS_yptMR);
        v211 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v212 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
        v213 = Dictionary._bridgeToObjectiveC()().super.isa;

        v214 = [v211 initWithDomain:v212 code:-1 userInfo:v213];

        v198(v206, v214);

        v120 = v198;
LABEL_32:
        v121 = v90;
LABEL_48:
        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v120, v121);
        return;
      }

      v235 = 0;
      v236 = 0xE000000000000000;
      _StringGuts.grow(_:)(97);
      MEMORY[0x1E12A1580](0xD000000000000043, 0x80000001DCA87BB0);
      MEMORY[0x1E12A1580](v62, v37);

      MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA87C00);
      v99 = v235;
      v98 = v236;

      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      v102 = os_log_type_enabled(v100, v101);
      v221 = v40;
      if (v102)
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v235 = v104;
        *v103 = 136315138;
        *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, &v235);
        _os_log_impl(&dword_1DC659000, v100, v101, "%s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        MEMORY[0x1E12A2F50](v104, -1, -1);
        MEMORY[0x1E12A2F50](v103, -1, -1);
      }

      v90 = v223;
      v78 = v232;
      if (!v232)
      {

        return;
      }

      v105 = objc_allocWithZone(MEMORY[0x1E69C7778]);

      v106 = [v105 init];
      v107 = v220;
      UUID.init()();
      v108 = UUID.uuidString.getter();
      v110 = v109;
      (*(v233 + 8))(v107, v234);
      v111 = MEMORY[0x1E12A1410](v108, v110);

      [v106 setAceId_];

      v112 = v106;
      v113 = [v19 aceId];
      [v112 setRefId_];

      [v112 setErrorCode_];
      v114 = MEMORY[0x1E12A1410](v99, v98);
      [v112 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v115 = swift_initStackObject();
      *(v115 + 16) = xmmword_1DCA66060;
      *(v115 + 32) = 0x6567617373654DLL;
      *(v115 + 72) = MEMORY[0x1E69E6158];
      *(v115 + 40) = 0xE700000000000000;
      *(v115 + 48) = v99;
      *(v115 + 56) = v98;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v115);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v115 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v116 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v117 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      v118 = Dictionary._bridgeToObjectiveC()().super.isa;

      v119 = [v116 initWithDomain:v117 code:-1 userInfo:v118];

      v78(v112, v119);

LABEL_31:
      v120 = v78;
      goto LABEL_32;
    }

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1DC659000, v95, v96, "Received FlowOutputCandidate while not in a turn. Ignoring.", v97, 2u);
      MEMORY[0x1E12A2F50](v97, -1, -1);
    }
  }

  else
  {
    v71 = v12;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = a4;
      v76 = swift_slowAlloc();
      v237[0] = v76;
      *v74 = 136315138;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x80000001DCA87B80, v237);
      _os_log_impl(&dword_1DC659000, v72, v73, "%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      v77 = v76;
      a4 = v75;
      MEMORY[0x1E12A2F50](v77, -1, -1);
      MEMORY[0x1E12A2F50](v74, -1, -1);
    }

    v78 = v232;
    if (v232)
    {
      v79 = objc_allocWithZone(MEMORY[0x1E69C7778]);

      v80 = [v79 init];
      UUID.init()();
      v81 = UUID.uuidString.getter();
      v83 = v82;
      (*(v233 + 8))(v71, v234);
      v84 = MEMORY[0x1E12A1410](v81, v83);

      [v80 setAceId_];

      v85 = v80;
      v86 = [v19 aceId];
      [v85 setRefId_];

      [v85 setErrorCode_];
      v87 = MEMORY[0x1E12A1410](0xD00000000000002ELL, 0x80000001DCA87B80);
      [v85 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v88 = swift_initStackObject();
      *(v88 + 16) = xmmword_1DCA66060;
      *(v88 + 32) = 0x6567617373654DLL;
      v89 = v88 + 32;
      v90 = a4;
      *(v88 + 72) = MEMORY[0x1E69E6158];
      *(v88 + 40) = 0xE700000000000000;
      *(v88 + 48) = 0xD00000000000002ELL;
      *(v88 + 56) = 0x80000001DCA87B80;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v88);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v89, &_sSS_yptMd, &_sSS_yptMR);
      v91 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v92 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      v93 = Dictionary._bridgeToObjectiveC()().super.isa;

      v94 = [v91 initWithDomain:v92 code:-1 userInfo:v93];

      v78(v85, v94);
      goto LABEL_31;
    }
  }
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.handleAceFlowOutputCandidate(_:executionContextInfo:reply:)(uint64_t a1, char *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  MUXFlowOutputCandidateMessage.Builder.source.setter();

  MUXFlowOutputCandidateMessage.Builder.assistantId.setter();
  v14 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, &a2[v14], v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  MUXFlowOutputCandidateMessage.Builder.sessionId.setter();

  MUXFlowOutputCandidateMessage.Builder.requestId.setter();
  v17 = [a3 resultCandidateId];
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return MUXFlowOutputCandidateMessage.Builder.resultCandidateId.setter();
}

void ServerFallbackCapableRequestProcessor.handleAceServerContextUpdateCandidate(_:executionContextInfo:reply:)(void *a1, uint64_t a2, void (*a3)(id, void), uint64_t a4)
{
  v99 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for SelectedUserAttributes();
  v98 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v11 = &v85[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85[-v15];
  v17 = type metadata accessor for UserID();
  v106 = *(v17 - 8);
  v107 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v85[-v20];
  v21 = type metadata accessor for RequestType();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v85[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v85[-v25];
  v27.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v29 = &v85[-v28];
  v30 = *(v4->isa + 76);
  v108 = v4;
  v31 = v30(v27);
  if (v31)
  {
    v88 = v11;
    v92 = v8;
    v89 = v7;
    v93 = a1;
    v94 = a3;
    v32 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    v33 = v31;
    swift_beginAccess();
    v90 = v22;
    v34 = *(v22 + 16);
    v100 = v29;
    v34(v29, v33 + v32, v21);
    v35 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
    swift_beginAccess();
    v101 = *(v33 + v35);
    v36 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
    swift_beginAccess();
    v37 = 0;
    v91 = v33;
    v38 = *(v33 + v36);
    if (v38 >> 62 == 1)
    {
      v37 = v38 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v39 = v105;
    v40 = v106;
    v41 = *(v106 + 16);
    v42 = v107;
    v41(v105, &v108[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId], v107);
    if (v37)
    {
      v43 = v102;
      v34(v102, v100, v21);
      v87 = v21;
      v34(v103, v43, v21);
      v41(v104, (v37 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId), v42);
      v44 = *(*v37 + 792);
      v44(v101);
      v45 = v98;
      v46 = *(v98 + 48);
      v47 = v96;
      if (v46(v16, 1, v96))
      {
        v48 = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v86 = 0;
        v49 = v90;
        v50 = v88;
      }

      else
      {
        v50 = v88;
        (*(v45 + 16))(v88, v16, v47);
        outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v86 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
        v48 = (*(v45 + 8))(v50, v47);
        v49 = v90;
      }

      v62 = v95;
      v44(v48);
      if (v46(v62, 1, v47))
      {

        v63 = *(v49 + 8);
        v64 = v87;
        v63(v102, v87);
        v65 = v106;
        v66 = v62;
        v67 = v107;
        (*(v106 + 8))(v105, v107);
        v63(v100, v64);
        outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v68 = 0;
        v61 = v99;
        v58 = v94;
        v69 = v49;
      }

      else
      {
        v70 = v98;
        (*(v98 + 16))(v50, v62, v47);
        outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v68 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();

        (*(v70 + 8))(v50, v47);
        v71 = *(v49 + 8);
        v64 = v87;
        v71(v102, v87);
        v69 = v49;
        v72 = v106;
        v67 = v107;
        (*(v106 + 8))(v105, v107);
        v71(v100, v64);
        v65 = v72;
        v61 = v99;
        v58 = v94;
      }

      v73 = v93;
      v60 = v92;
      type metadata accessor for ConversationContextUpdateMetadata(0);
      v55 = swift_allocObject();
      *(v55 + 16) = 1;
      (*(v69 + 32))(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v103, v64);
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v101;
      (*(v65 + 32))(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v104, v67);
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v86 & 1;
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v68 & 1;
      v59 = v73;
    }

    else
    {
      type metadata accessor for ConversationContextUpdateMetadata(0);
      v55 = swift_allocObject();
      *(v55 + 16) = 1;
      (*(v90 + 32))(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v100, v21);
      v56 = v101;
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v101;
      (*(v40 + 32))(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v39, v42);
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = 0;
      *(v55 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = 0;
      v57 = v56;
      v58 = v94;
      v59 = v93;
      v60 = v92;
      v61 = v99;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(&v108[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater], v109, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    v74 = v110;
    if (v110)
    {
      v75 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      (*(v75 + 16))(v59, v55, v74, v75);
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      if (!v58)
      {
LABEL_23:

        return;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      if (!v58)
      {
        goto LABEL_23;
      }
    }

    v76 = objc_allocWithZone(MEMORY[0x1E69C7788]);

    v77 = [v76 init];
    v78 = v97;
    UUID.init()();
    v79 = UUID.uuidString.getter();
    v81 = v80;
    (*(v60 + 8))(v78, v89);
    v82 = MEMORY[0x1E12A1410](v79, v81);

    [v77 setAceId_];

    v83 = v77;
    v84 = [v59 aceId];
    [v83 setRefId_];

    v58(v83, 0);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v58, v61);
    goto LABEL_23;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logger.conversationBridge);
  v108 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v108, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DC659000, v108, v52, "Received ServerContextUpdateCandidate while not in a turn. Ignoring.", v53, 2u);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }

  v54 = v108;
}

uint64_t ServerFallbackCapableRequestProcessor.handlePommesResultCandidateMessage(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = (*(*v3 + 608))();
  if (v7)
  {
    v8 = (v7 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v9 = *v8;
    v10 = v8[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v8, v10);

    v12 = a2(v11);
    v14 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v12, v13, v9);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v9, v10);
    if (v14)
    {
      v15 = (*(*v14 + 408))();
      if (ResultCandidateProcessingStatus.rawValue.getter(v15) == 0xD000000000000018 && 0x80000001DCA7B5E0 == v16)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      (*(*v14 + 416))(14);
LABEL_11:
    }
  }

  return a3(a1);
}

void ServerFallbackCapableRequestProcessor.handleResultSelectedMessage(_:forTurn:withResultCandidateState:speechRecognizedCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = (*a3 + 408);
  v10 = *v9;
  v11 = (*v9)();
  if (ResultCandidateProcessingStatus.rawValue.getter(v11) == 0xD000000000000016 && 0x80000001DCA7B5C0 == v12)
  {

    goto LABEL_13;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_13:
    (*(*v4 + 1160))(a3);
    goto LABEL_14;
  }

  v16 = (v10)(v15);
  if (ResultCandidateProcessingStatus.rawValue.getter(v16) == 0xD000000000000018 && 0x80000001DCA7B580 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v20 = (*(*v4 + 472))(v20);
  if ((v20 & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.conversationBridge);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v10;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1DC659000, v45, v46, "Sending ResultCandidateSelected with ResultSelected", v48, 2u);
      v49 = v48;
      v10 = v47;
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    (*(*v5 + 1312))(*(a3 + 16), *(a3 + 24), 1, 0, 0);
    goto LABEL_14;
  }

LABEL_27:
  v39 = (v10)(v20);
  if (ResultCandidateProcessingStatus.rawValue.getter(v39) == 0xD000000000000013 && 0x80000001DCA7B5A0 == v40)
  {

    goto LABEL_39;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v42 & 1) == 0)
  {
LABEL_14:
    v21 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v23 = v22;
    v24 = v10();
    if (ResultCandidateProcessingStatus.rawValue.getter(v24) == 0xD000000000000013 && 0x80000001DCA7B530 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
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
          v63[0] = v31;
          *v30 = 136315138;
          *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), v63);
          _os_log_impl(&dword_1DC659000, v28, v29, "Not sending CommitResultCandidateId for RC ID: %s yet", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x1E12A2F50](v31, -1, -1);
          MEMORY[0x1E12A2F50](v30, -1, -1);
        }

        goto LABEL_24;
      }
    }

    (*(*v5 + 1160))(a3);
LABEL_24:
    v32 = (a2 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v32, v34);
    v35.value._countAndFlagsBits = v21;
    v35.value._object = v23;
    ConversationRequestProcessorTurnState.SpeechState.cancelAll(exceptResultCandidateId:)(v35);

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v33, v34);
    v36 = *v32;
    v37 = v32[1];
    *v32 = a3 | 0x4000000000000000;
    v32[1] = a4;
    v38 = a4;

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v36, v37);
    return;
  }

LABEL_39:
  v50 = (*(*v4 + 1560))(v43);
  v51 = v50;
  if (v50 >> 62)
  {
    v52 = __CocoaSet.count.getter();
    if (v52)
    {
      goto LABEL_41;
    }

LABEL_55:

    goto LABEL_14;
  }

  v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v52)
  {
    goto LABEL_55;
  }

LABEL_41:
  v60 = v10;
  v61 = a2;
  v62 = a4;
  if (v52 >= 1)
  {
    v53 = 0;
    v55 = *(a3 + 16);
    v54 = *(a3 + 24);
    while (1)
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x1E12A1FE0](v53, v51);
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      if (ResultCandidateRequestMessageBase.resultCandidateId.getter() == v55 && v58 == v54)
      {
      }

      else
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v59 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      ServerFallbackCapableRequestProcessor.attemptServerFallback(executeNLOnServer:rcState:)(v57, a3);
LABEL_45:
      ++v53;

      if (v52 == v53)
      {

        a2 = v61;
        a4 = v62;
        v10 = v60;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
}

void ServerFallbackCapableRequestProcessor.reallyHandleStoppedListeningForContinuationMessage(for:)(void *a1)
{
  v2 = v1;
  v4 = (*(*a1 + 488))(1);
  v5 = (*a1 + 408);
  v6 = *v5;
  v7 = (*v5)(v4);
  if (ResultCandidateProcessingStatus.rawValue.getter(v7) == 0xD000000000000016 && 0x80000001DCA7B5C0 == v8)
  {

    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_13:
    (*(*v1 + 1160))(a1);
    goto LABEL_14;
  }

  v12 = v6(v11);
  if (ResultCandidateProcessingStatus.rawValue.getter(v12) == 0xD000000000000018 && 0x80000001DCA7B580 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = (*(*v1 + 472))(v16);
  if ((v16 & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.conversationBridge);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v23, v24, "Sending ResultCandidateSelected with StoppedListeningForSpeechContinuationMessage", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    (*(*v2 + 1312))(a1[2], a1[3], 1, 0, 0);
    goto LABEL_14;
  }

LABEL_19:
  v17 = v6(v16);
  if (ResultCandidateProcessingStatus.rawValue.getter(v17) == 0xD000000000000013 && 0x80000001DCA7B5A0 == v18)
  {

    goto LABEL_31;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
LABEL_14:

    ConversationRequestProcessor.reallyHandleStoppedListeningForContinuationMessage(for:)(a1);
    return;
  }

LABEL_31:
  v26 = (*(*v1 + 1560))(v21);
  v27 = v26;
  if (v26 >> 62)
  {
    v28 = __CocoaSet.count.getter();
    if (v28)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_47:

    goto LABEL_14;
  }

LABEL_33:
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = a1[2];
    v31 = a1[3];
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E12A1FE0](v29, v27);
      }

      else
      {
        v32 = *(v27 + 8 * v29 + 32);
      }

      v33 = v32;
      if (ResultCandidateRequestMessageBase.resultCandidateId.getter() == v30 && v34 == v31)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      ServerFallbackCapableRequestProcessor.attemptServerFallback(executeNLOnServer:rcState:)(v33, a1);
LABEL_37:
      ++v29;

      if (v28 == v29)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
}

void ServerFallbackCapableRequestProcessor.synchronizedClose(_:_:_:)(void *a1, uint64_t a2, void (**a3)(char *, uint64_t), char a4)
{
  v5 = v4;
  if ((*(*v4 + 1464))())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + 64), *(v5 + 72), v19);
      _os_log_impl(&dword_1DC659000, v11, v12, "This request: %s was handled on server", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v15 = (*(*v5 + 608))();
    if (v15)
    {
      v16 = (v15 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v17 = *v16;
      v18 = v16[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v17, v18);

      if (v17 >> 62 == 1)
      {

        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v17, v18);
        (*(*(v17 & 0x3FFFFFFFFFFFFFFFLL) + 416))(9);
      }

      else
      {
        outlined consume of ConversationRequestProcessorTurnState.SpeechState(v17, v18);
      }
    }

    (*(*v5 + 1216))();
    (*(*v5 + 408))(1, 0, 3);
  }

  else
  {

    ConversationRequestProcessor.synchronizedClose(_:_:_:)(a1, a2, a3, a4 & 1);
  }
}

void ServerFallbackCapableRequestProcessor.commit(rcState:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SelectedUserAttributes();
  v123 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v122 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v110 - v9;
  v10 = type metadata accessor for UserID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RequestType();
  v15 = *(v14 - 8);
  v126 = v14;
  v127 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v124 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v120 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v110 - v26;
  v28 = (*(*a1 + 408))(v25);
  if (ResultCandidateProcessingStatus.rawValue.getter(v28) == 0xD000000000000016 && 0x80000001DCA7B5C0 == v29)
  {

    goto LABEL_5;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
LABEL_5:
    v32 = (*(*v1 + 608))(v30);
    if (v32)
    {
      v33 = v32;
      v114 = v4;
      v115 = v13;
      v118 = v11;
      v116 = v10;
      v34 = ServerFallbackCapableRequestProcessor.makePreExecutionRules(_:)(a1);
      v35 = *(**(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) + 88);
      v117 = v34;
      v36 = v35();
      (*(*a1 + 512))(BYTE1(v36));
      (*(*a1 + 536))(v36);
      v37 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler);
      v39 = v2[8];
      v38 = v2[9];
      v128 = v33;
      v40 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin;
      v41 = type metadata accessor for InputOrigin();
      v42 = *(v41 - 8);
      v43 = v128 + v40;
      v44 = v128;
      (*(v42 + 16))(v27, v43, v41);
      (*(v42 + 56))(v27, 0, 1, v41);
      v45 = *(*v37 + 144);
      v113 = v39;
      v112 = v38;
      LOBYTE(v37) = v45(a1, v39, v38, v27);
      outlined destroy of ReferenceResolutionClientProtocol?(v27, &_s16SiriMessageTypes11InputOriginOSgMd, &_s16SiriMessageTypes11InputOriginOSgMR);
      if (v37)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        __swift_project_value_buffer(v46, static Logger.conversationBridge);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_1DC659000, v47, v48, "Acted upon pre-execution decision. Not committing..", v49, 2u);
          MEMORY[0x1E12A2F50](v49, -1, -1);
        }
      }

      else
      {
        (*(*v2 + 1336))(a1, v44);
        v59 = AFIsInternalInstall();
        v60 = v116;
        v61 = v118;
        v62 = v126;
        if (v59)
        {
          v63 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
          swift_beginAccess();
          v64 = v127;
          (*(v127 + 16))(v23, v44 + v63, v62);
          v65 = v60;
          v66 = v120;
          (*(v64 + 104))(v120, *MEMORY[0x1E69D0558], v62);
          _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0570]);
          LOBYTE(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
          v67 = *(v64 + 8);
          v68 = v66;
          v60 = v65;
          v61 = v118;
          v67(v68, v62);
          v59 = (v67)(v23, v62);
          v44 = v128;
          if ((v63 & 1) == 0)
          {
            type metadata accessor for ConversationBridge(0);
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;
            v72 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper);
            swift_getObjectType();
            swift_unknownObjectRetain();
            specialized static ConversationBridge.sendShowRequestHandlingStatus(withStatus:serviceHelper:requestId:completion:)(v69, v71, v72, 0, 0, 0, 0);

            v61 = v118;
            v59 = swift_unknownObjectRelease();
          }
        }

        if (((*(*v2 + 472))(v59) & 1) == 0)
        {
          (*(*v2 + 1312))(*(a1 + 16), *(a1 + 24), 1, 0, 0);
        }

        v73 = ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(a1, v44);
        v74 = (*(*a1 + 456))(v73);
        if (v74)
        {
          v120 = v74;
          v75 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
          swift_beginAccess();
          v76 = v44;
          v77 = *(v127 + 16);
          v78 = v124;
          v77(v124, v76 + v75, v62);
          v79 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
          swift_beginAccess();
          v80 = *(&v76->isa + v79);
          v77(v125, v78, v62);
          (*(v61 + 16))(v115, a1 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v60);
          v81 = *(*a1 + 792);
          v111 = v80;
          v82 = v80;
          v83 = v121;
          v81(v82);
          v84 = v123;
          v85 = *(v123 + 48);
          v86 = v114;
          if (v85(v83, 1, v114))
          {
            v87 = outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            v88 = 0;
          }

          else
          {
            v89 = v119;
            (*(v84 + 16))(v119, v83, v86);
            outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            v88 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
            v87 = (*(v84 + 8))(v89, v86);
          }

          v90 = v122;
          v81(v87);
          if (v85(v90, 1, v86))
          {
            v91 = v126;
            v92 = v127;
            (*(v127 + 8))(v124, v126);
            outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            v93 = 0;
          }

          else
          {
            v94 = v123;
            v95 = v119;
            (*(v123 + 16))(v119, v90, v86);
            outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            v93 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
            (*(v94 + 8))(v95, v86);
            v91 = v126;
            v92 = v127;
            (*(v127 + 8))(v124, v126);
          }

          v96 = v118;
          v97 = v120;
          type metadata accessor for ConversationContextUpdateMetadata(0);
          v98 = swift_allocObject();
          *(v98 + 16) = 1;
          (*(v92 + 32))(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v125, v91);
          *(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v111;
          (*(v96 + 32))(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v115, v116);
          *(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
          *(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v88 & 1;
          *(v98 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v93 & 1;
          outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, v129, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
          v99 = v130;
          if (v130)
          {
            v100 = v131;
            __swift_project_boxed_opaque_existential_1(v129, v130);
            (*(v100 + 16))(v97, v98, v99, v100);
            v101 = __swift_destroy_boxed_opaque_existential_1Tm(v129);
          }

          else
          {
            v101 = outlined destroy of ReferenceResolutionClientProtocol?(v129, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
          }

          (*(*v2 + 1216))(v101);
        }

        (*(*a1 + 416))(9);
        (*(*v2 + 1472))(1);
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Logger();
        __swift_project_value_buffer(v102, static Logger.conversationBridge);

        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v129[0] = v106;
          *v105 = 136315394;
          *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v112, v129);
          *(v105 + 12) = 2080;
          v107 = (*(*a1 + 832))();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v129);

          *(v105 + 14) = v109;
          _os_log_impl(&dword_1DC659000, v103, v104, "Done handling server-fallback request for requestId: %s for: %s", v105, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v106, -1, -1);
          MEMORY[0x1E12A2F50](v105, -1, -1);
        }
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.conversationBridge);
      v128 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v128, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DC659000, v128, v51, "ConversationBridge: commit received while we're not in a turn. Ignoring.", v52, 2u);
        MEMORY[0x1E12A2F50](v52, -1, -1);
      }

      v53 = v128;
    }

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.conversationBridge);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v129[0] = v58;
    *v57 = 136315138;
    *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), v129);
    _os_log_impl(&dword_1DC659000, v55, v56, "Chosen RC ID: %s is not handled by server", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1E12A2F50](v58, -1, -1);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  ConversationRequestProcessor.commit(rcState:)(a1);
}

void ServerFallbackCapableRequestProcessor.fallbackToServer(forResultCandidateId:serverFallbackReason:)(uint64_t a1, unint64_t a2, NSObject *a3)
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
    oslog = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136315650;
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 7104878;
    }

    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 64), *(v4 + 72), v28);
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 80), *(v4 + 88), v28);
    _os_log_impl(&dword_1DC659000, v9, v10, "Execution asked to fallback to server for rcId: %s, requestId: %s, rootRequestId: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    v16 = v11;
    a3 = oslog;
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  if ((*(*v4 + 472))())
  {
    osloga = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, osloga, v17, "ResultCandidateSelected has already been sent to server. Cannot fallback to server any more", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }
  }

  else
  {
    v19 = (*(*v4 + 608))();
    if (v19)
    {
      v20 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v22 = *v20;
      v21 = v20[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v22, v21);

      if (a2)
      {
        v23 = a1;
      }

      else
      {
        v23 = 7104878;
      }

      if (a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = 0xE300000000000000;
      }

      v25 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v23, v24, v22);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v22, v21);
    }

    else
    {
      v25 = 0;
    }

    (*(*v4 + 1648))(v25, a3);
  }
}

Swift::Void __swiftcall ServerFallbackCapableRequestProcessor.fallbackToInfoDomainResults(forResultCandidateId:)(Swift::String_optional forResultCandidateId)
{
  v2 = v1;
  object = forResultCandidateId.value._object;
  countAndFlagsBits = forResultCandidateId.value._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v31[-1] - v6);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v11 = os_log_type_enabled(v9, v10);
  v30 = object;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31[0] = v13;
    *v12 = 136315138;
    v14 = v7;
    v15 = countAndFlagsBits;
    if (object)
    {
      v16 = object;
    }

    else
    {
      countAndFlagsBits = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, v16, v31);

    *(v12 + 4) = v17;
    countAndFlagsBits = v15;
    v7 = v14;
    _os_log_impl(&dword_1DC659000, v9, v10, "Execution asked to fallback to Pommes for rcId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v18 = (*(*v2 + 504))(0);
  if ((*(*v2 + 472))(v18))
  {
    v30 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "ResultCandidateSelected has already been sent to server. Cannot fallback to POMMES any more";
LABEL_19:
      _os_log_impl(&dword_1DC659000, v30, v19, v21, v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v22 = v30;
  if (!v30)
  {
    v30 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Cannot fallback to Pommes without rcId";
      goto LABEL_19;
    }

LABEL_20:
    v29 = v30;

    return;
  }

  v23 = (*(*v2 + 608))();
  if (v23 && (v24 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState), swift_beginAccess(), v26 = *v24, v25 = v24[1], outlined copy of ConversationRequestProcessorTurnState.SpeechState(v26, v25), , v27 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(countAndFlagsBits, v22, v26), outlined consume of ConversationRequestProcessorTurnState.SpeechState(v26, v25), v27))
  {

    ResultCandidateState.pommesCandidateId.getter(v7);
  }

  else
  {
    v28 = type metadata accessor for PommesCandidateId();
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    v27 = 0;
  }

  (*(*v2 + 1656))(v27, v7);

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
}

Swift::Void __swiftcall ServerFallbackCapableRequestProcessor.handleRuntimeError(error:)(NSError *error)
{
  v3 = (*(*v1 + 1488))();
  if (v3)
  {
    (*(*v3 + 528))(error);
  }

  else
  {

    ConversationRequestProcessor.handleRuntimeError(error:)(error);
  }
}

uint64_t ServerFallbackCapableRequestProcessor.handleCancelRequestMessage(_:)(void *a1)
{
  v2 = ConversationRequestProcessor.handleCancelRequestMessage(_:)(a1);
  result = (*(*v1 + 1488))(v2);
  if (result)
  {
    (*(*result + 520))(result);
  }

  return result;
}

Swift::Void __swiftcall ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  v2 = v1;
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-1] - v6;
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
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v26);
    _os_log_impl(&dword_1DC659000, v9, v10, "Execution asked to close server request. Cannot fallback to server after this point for requestId: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v13 = (*(*v2 + 608))();
  if (v13)
  {
    v14 = v13;
    v15 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = one-time initialization token for shared;

    if (v18 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = static MessageBusActor.shared;
    v20 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v17;
    v21[5] = v14;
    v21[6] = countAndFlagsBits;
    v21[7] = object;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:), v21);
    (*(*v15 + 120))();
  }

  else
  {
    v25 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v25, v22, "ConversationBridge: commit received while we're not in a turn. Ignoring.", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v24 = v25;
  }
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:), v8, 0);
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)()
{
  v41 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
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
      _os_log_impl(&dword_1DC659000, v12, v13, "This ServerFallbackCapableRequestProcessor instance is already out of scope", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    goto LABEL_38;
  }

  v2 = Strong;
  v3 = v0[12];
  if ((*(v3 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) & 1) == 0)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1DC659000, v16, v17, "Not an AsrOnServer request. Ignoring closeServerRequest() call", v18, 2u);
    goto LABEL_21;
  }

  if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId) != v0[13] || *(v3 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8) != v0[14])
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v3 = v0[12];
      goto LABEL_9;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);

    v16 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v16, v24))
    {
LABEL_22:

      goto LABEL_23;
    }

    v26 = v0[13];
    v25 = v0[14];
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v40);
    *(v18 + 12) = 2080;
    v28 = v2[8];
    v29 = v2[9];

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v40);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v16, v24, "Unexpectedly received closeServerRequest call for executionRequestId: %s on processor with requestId: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v27, -1, -1);
LABEL_21:
    MEMORY[0x1E12A2F50](v18, -1, -1);
    goto LABEL_22;
  }

LABEL_9:
  v5 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState;
  swift_beginAccess();
  v6 = *(v3 + v5);
  if (v6 >> 62 == 1)
  {
    v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(*v2 + 472);

    v10 = v8(v9);

    if (v10)
    {

LABEL_23:

      goto LABEL_38;
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationBridge);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DC659000, v32, v33, "Sending ResultCandidateSelected since execution asked to close server request", v34, 2u);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v35 = *(v7 + 16);
    v36 = *(v7 + 24);
    v37 = *(*v2 + 1312);

    v37(v35, v36, 0, 0, 0);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "Unexpectedly received closeServerRequest() from Execution before an RC has been selected. This is not allowed because the flow can still choose to fallback to server.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }

LABEL_38:
  v38 = v0[1];

  return v38();
}

uint64_t key path getter for Collection.first : [Siri_Nlu_External_UserDialogAct]@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = *(v5 - 8);
  if (v4)
  {
    v10 = *(v5 - 8);
    (*(v10 + 16))(a2, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5);
    v6 = v10;
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, v5);
}

uint64_t key path setter for Siri_Nlu_External_UserDialogAct.delegated : Siri_Nlu_External_UserDialogAct(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return Siri_Nlu_External_UserDialogAct.delegated.setter();
}

void ServerFallbackCapableRequestProcessor.synchronizedFallbackToServer(rcState:serverFallbackReason:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v76 - v7;
  v9 = type metadata accessor for ServerFallbackReason();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    goto LABEL_3;
  }

  v17 = (*(*v2 + 608))(v11);
  if (v17)
  {
    v76 = v10;
    v18 = v9;
    v19 = v13;
    v20 = (v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v20, v22);

    if (v21 >> 62 == 1)
    {
      v14 = (v21 & 0x3FFFFFFFFFFFFFFFLL);

      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v21, v22);
      v13 = v19;
      v9 = v18;
      v10 = v76;
LABEL_3:
      outlined init with copy of ReferenceResolutionClientProtocol?(a2, v8, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v15 = *(v10 + 6);
      if (v15(v8, 1, v9) == 1)
      {
        (*(v10 + 13))(v13, *MEMORY[0x1E69D0780], v9);
        v16 = v15(v8, 1, v9);

        if (v16 != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        }
      }

      else
      {
        (*(v10 + 4))(v13, v8, v9);
      }

      v23 = specialized static ServerFallbackCapableRequestProcessor.getDelegatedUDA(rcState:)(v14);
      v24 = (*(*v14 + 896))();
      v25 = v24;
      if (*(v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled))
      {
        if (v24)
        {
          MEMORY[0x1EEE9AC00](v24);
          *(&v76 - 4) = v3;
          *(&v76 - 3) = v14;
          *(&v76 - 2) = v23;
          *(&v76 - 1) = v13;
          v26 = objc_allocWithZone(type metadata accessor for MUXServerFallbackMessage());
          v27 = MEMORY[0x1E129F040](partial apply for closure #1 in ServerFallbackCapableRequestProcessor.synchronizedFallbackToServer(rcState:serverFallbackReason:), &v76 - 6);

          if (v27)
          {
            v76 = v13;
            __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
            dispatch thunk of MessagePublishing.postMessage(_:)();
            if (one-time initialization token for conversationBridge != -1)
            {
              swift_once();
            }

            v28 = type metadata accessor for Logger();
            __swift_project_value_buffer(v28, static Logger.conversationBridge);

            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *v31 = 136315138;
              v77 = v25;
              v78 = v32;
              v34 = *(v14 + 2);
              v33 = *(v14 + 3);

              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v78);

              *(v31 + 4) = v35;
              _os_log_impl(&dword_1DC659000, v29, v30, "Posted MUXServerFallbackMessage on the message bus for RC:%s", v31, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v32);
              MEMORY[0x1E12A2F50](v32, -1, -1);
              MEMORY[0x1E12A2F50](v31, -1, -1);
            }

            else
            {
            }

            v13 = v76;
            goto LABEL_44;
          }

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          __swift_project_value_buffer(v72, static Logger.conversationBridge);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_1DC659000, v73, v74, "Could not create MUXServerFallbackMessage. Cannot fallback to server", v75, 2u);
            MEMORY[0x1E12A2F50](v75, -1, -1);
          }

LABEL_43:

LABEL_44:
          (*(v10 + 1))(v13, v9);
          return;
        }
      }

      else if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtGMR);
        v36 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtMd, &_s16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtMR) - 8);
        v37 = *(*v36 + 80);
        v76 = v10;
        v38 = v9;
        v39 = v13;
        v40 = (v37 + 32) & ~v37;
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1DCA66060;
        v42 = v41 + v40;
        v43 = v36[14];
        v44 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
        v45 = type metadata accessor for UserID();
        v46 = (*(*(v45 - 8) + 16))(v42, &v14[v44], v45);
        v47 = *(*v25 + 112);
        v77 = v25;
        *(v42 + v43) = v47(v46);
        v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_So15AFSpeechPackageCTt0g5Tf4g_n(v41);
        swift_setDeallocating();
        v49 = v42;
        v13 = v39;
        v9 = v38;
        v10 = v76;
        outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtMd, &_s16SiriMessageTypes6UserIDV_So15AFSpeechPackageCtMR);
        v50 = swift_deallocClassInstance();
        goto LABEL_20;
      }

      v77 = v24;
      v50 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_So15AFSpeechPackageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v48 = v50;
LABEL_20:
      MEMORY[0x1EEE9AC00](v50);
      *(&v76 - 6) = v3;
      *(&v76 - 5) = v14;
      *(&v76 - 4) = v23;
      *(&v76 - 3) = v13;
      *(&v76 - 2) = v48;
      v51 = objc_allocWithZone(type metadata accessor for ExecuteNLOnServerMessage());
      v52 = ExecuteNLOnServerMessage.init(build:)();

      if (v52)
      {
        __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
        dispatch thunk of MessagePublishing.postMessage(_:)();
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.conversationBridge);
        v54 = v52;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v76 = v13;
          v58 = v57;
          v59 = swift_slowAlloc();
          v78 = v59;
          *v58 = 136315138;
          v60 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v78);

          *(v58 + 4) = v62;
          _os_log_impl(&dword_1DC659000, v55, v56, "Posted ExecuteNLOnServerMessage on the message bus for RC:%s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x1E12A2F50](v59, -1, -1);
          v63 = v58;
          v13 = v76;
          MEMORY[0x1E12A2F50](v63, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        __swift_project_value_buffer(v64, static Logger.conversationBridge);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_1DC659000, v65, v66, "Could not create ExecuteNLOnServerMessage. Cannot fallback to server", v67, 2u);
          MEMORY[0x1E12A2F50](v67, -1, -1);
        }
      }

      goto LABEL_43;
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v21, v22);
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.conversationBridge);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1DC659000, v69, v70, "Cannot fall back to server as no RC was selected", v71, 2u);
    MEMORY[0x1E12A2F50](v71, -1, -1);
  }
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.synchronizedFallbackToServer(rcState:serverFallbackReason:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
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
  ExecuteNLOnServerMessageBase.Builder.source.setter();

  ExecuteNLOnServerMessageBase.Builder.assistantId.setter();
  v18 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v11, &a2[v18], v19);
  (*(v20 + 56))(v11, 0, 1, v19);
  ExecuteNLOnServerMessageBase.Builder.sessionId.setter();

  ExecuteNLOnServerMessageBase.Builder.requestId.setter();

  ExecuteNLOnServerMessageBase.Builder.resultCandidateId.setter();

  ExecuteNLOnServerMessageBase.Builder.delegatedUserDialogActs.setter();
  v21 = type metadata accessor for ServerFallbackReason();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v8, v25, v21);
  (*(v22 + 56))(v8, 0, 1, v21);
  return ExecuteNLOnServerMessageBase.Builder.fallbackReason.setter();
}

uint64_t closure #2 in ServerFallbackCapableRequestProcessor.synchronizedFallbackToServer(rcState:serverFallbackReason:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[0] = a5;
  v25[1] = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v25 - v14;
  v16 = *MEMORY[0x1E69D0460];
  v17 = type metadata accessor for MessageSource();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  ExecuteNLOnServerMessage.Builder.source.setter();

  ExecuteNLOnServerMessage.Builder.assistantId.setter();
  v19 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, &a2[v19], v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  ExecuteNLOnServerMessage.Builder.sessionId.setter();

  ExecuteNLOnServerMessage.Builder.requestId.setter();

  ExecuteNLOnServerMessage.Builder.resultCandidateId.setter();

  ExecuteNLOnServerMessage.Builder.delegatedUserDialogActs.setter();
  v22 = type metadata accessor for ServerFallbackReason();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v9, v25[0], v22);
  (*(v23 + 56))(v9, 0, 1, v22);
  ExecuteNLOnServerMessage.Builder.fallbackReason.setter();

  return ExecuteNLOnServerMessage.Builder.sharedUserIdToSpeechPackage.setter();
}

void ServerFallbackCapableRequestProcessor.synchronizedFallbackToPommes(rcState:pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v92 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Siri_Nlu_External_UserParse();
  v108 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v92 - v13;
  v15 = type metadata accessor for PommesCandidateId();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v92 - v21;
  v100 = v7;
  if (a1)
  {
    v97 = v2;
    v99 = a1;
    goto LABEL_3;
  }

  KeyPath = 0;
  v27 = (*(*v2 + 608))(v20);
  if (v27)
  {
    v97 = v2;
    v28 = (v27 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v29 = *v28;
    v30 = v28[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v29, v30);

    if (v29 >> 62 == 1)
    {
      v99 = v29 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = v100;
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v29, v30);
LABEL_3:
      outlined init with copy of ReferenceResolutionClientProtocol?(a2, v14, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
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
          *v26 = 0;
          _os_log_impl(&dword_1DC659000, v24, v25, "Cannot fallback to Pommes because PommesCandidateId is nil", v26, 2u);
          MEMORY[0x1E12A2F50](v26, -1, -1);
        }

        return;
      }

      v95 = v18;
      v31 = *(v16 + 32);
      v98 = v22;
      v31(v22, v14, v15);
      v32 = v99;
      v33 = *(*v99 + 416);

      v33(13);
      (*(*v32 + 680))(1);
      v34 = (*(*v32 + 392))(0);
      v35 = (*(*v32 + 904))(v34);
      v36 = v16;
      if (v35)
      {
        (*(*v35 + 248))(0, 0);
      }

      v37 = (*(*v32 + 312))(v35);
      v96 = v37;
      v38 = v102;
      if (v37)
      {
        v93 = v15;
        v94 = v16;
        KeyPath = swift_getKeyPath();
        v39 = *(v96 + 16);
        if (v39)
        {
          v40 = *(v108 + 16);
          v41 = v96 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
          v103 = *(v108 + 72);
          v104 = v40;
          v108 += 16;
          v42 = (v108 - 8);
          v43 = (v101 + 48);
          v44 = (v101 + 32);
          v45 = MEMORY[0x1E69E7CC0];
          do
          {
            v46 = v106;
            v104(v11, v41, v106);
            swift_getAtKeyPath();
            (*v42)(v11, v46);
            if ((*v43)(v7, 1, v38) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
            }

            else
            {
              v47 = *v44;
              (*v44)(v107, v7, v38);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
              }

              v49 = *(v45 + 2);
              v48 = *(v45 + 3);
              if (v49 >= v48 >> 1)
              {
                v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v45);
              }

              *(v45 + 2) = v49 + 1;
              v38 = v102;
              v47(&v45[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v49], v107, v102);
              v7 = v100;
            }

            v41 += v103;
            --v39;
          }

          while (v39);
        }

        else
        {
          v45 = MEMORY[0x1E69E7CC0];
        }

        v15 = v93;
        v36 = v94;
        v32 = v99;
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1EEE9AC00](v37);
      v55 = v97;
      v54 = v98;
      *(&v92 - 4) = v97;
      *(&v92 - 3) = v54;
      *(&v92 - 2) = v32;
      *(&v92 - 1) = v45;
      v56 = objc_allocWithZone(type metadata accessor for FallbackToPommesMessage());
      v57 = FallbackToPommesMessage.init(build:)();

      if (!v57)
      {
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        __swift_project_value_buffer(v71, static Logger.conversationBridge);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        v74 = os_log_type_enabled(v72, v73);
        v61 = v98;
        if (v74)
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_1DC659000, v72, v73, "Could not create FallbackToPommesMessage. Cannot fallback to server", v75, 2u);
          MEMORY[0x1E12A2F50](v75, -1, -1);
        }

        goto LABEL_60;
      }

      __swift_project_boxed_opaque_existential_1(v55 + 3, v55[6]);
      dispatch thunk of MessagePublishing.postMessage(_:)();
      if (one-time initialization token for insightRequestSummaryLogger != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for InsightRequestSummaryLogger(0);
      v59 = __swift_project_value_buffer(v58, static Logger.insightRequestSummaryLogger);

      specialized InsightRequestSummaryLogger.emitDebug(_:)(v59, v55, v32);

      v60 = v95;
      v61 = v98;
      (*(v36 + 16))(v95, v98, v15);
      v62 = (*(v36 + 88))(v60, v15);
      if (v62 == *MEMORY[0x1E69CE638])
      {
        (*(v36 + 96))(v60, v15);
        v64 = *v60;
        v63 = v60[1];
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        __swift_project_value_buffer(v65, static Logger.conversationBridge);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v109 = v69;
          *v68 = 136315138;
          v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &v109);

          *(v68 + 4) = v70;
          _os_log_impl(&dword_1DC659000, v66, v67, "Posted FallbackToPommesMessage on the message bus for RC:%s", v68, 0xCu);
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
        if (v62 != *MEMORY[0x1E69CE640])
        {
          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          __swift_project_value_buffer(v88, static Logger.conversationBridge);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            *v91 = 0;
            _os_log_impl(&dword_1DC659000, v89, v90, "Posted FallbackToPommesMessage on the message bus with unknown pommesCandidateId", v91, 2u);
            MEMORY[0x1E12A2F50](v91, -1, -1);
          }

          (*(v36 + 8))(v95, v15);
          goto LABEL_60;
        }

        v99 = v32;
        (*(v36 + 96))(v60, v15);
        v77 = *v60;
        v76 = v60[1];
        v79 = v60[2];
        v78 = v60[3];
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, static Logger.conversationBridge);

        v66 = Logger.logObject.getter();
        v81 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v94 = v36;
          v84 = v83;
          v109 = v83;
          *v82 = 136315394;
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, &v109);

          *(v82 + 4) = v85;
          *(v82 + 12) = 2080;
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, &v109);

          *(v82 + 14) = v86;
          _os_log_impl(&dword_1DC659000, v66, v81, "Posted FallbackToPommesMessage on the message bus for trpId:%s tcuId:%s", v82, 0x16u);
          swift_arrayDestroy();
          v87 = v84;
          v36 = v94;
          MEMORY[0x1E12A2F50](v87, -1, -1);
          MEMORY[0x1E12A2F50](v82, -1, -1);
        }

        else
        {
        }
      }

      v61 = v98;
LABEL_60:
      (*(v36 + 8))(v61, v15);
      return;
    }

    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v29, v30);
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logger.conversationBridge);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DC659000, v51, v52, "Cannot fallback to Pommes as no RC was selected", v53, 2u);
    MEMORY[0x1E12A2F50](v53, -1, -1);
  }
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.synchronizedFallbackToPommes(rcState:pommesCandidateId:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  v21 = *MEMORY[0x1E69D0460];
  v22 = type metadata accessor for MessageSource();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  FallbackToPommesMessage.Builder.source.setter();

  FallbackToPommesMessage.Builder.assistantId.setter();
  v24 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v17, &a2[v24], v25);
  (*(v26 + 56))(v17, 0, 1, v25);
  FallbackToPommesMessage.Builder.sessionId.setter();

  FallbackToPommesMessage.Builder.requestId.setter();
  v27 = type metadata accessor for PommesCandidateId();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v14, v37, v27);
  (*(v28 + 56))(v14, 0, 1, v27);
  FallbackToPommesMessage.Builder.pommesCandidateId.setter();
  v29 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v30 = type metadata accessor for UserID();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v11, v38 + v29, v30);
  (*(v31 + 56))(v11, 0, 1, v30);
  FallbackToPommesMessage.Builder.userId.setter();

  FallbackToPommesMessage.Builder.delegatedUserDialogActs.setter();
  v32 = *MEMORY[0x1E69D0780];
  v33 = type metadata accessor for ServerFallbackReason();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v8, v32, v33);
  (*(v34 + 56))(v8, 0, 1, v33);
  return FallbackToPommesMessage.Builder.fallbackReason.setter();
}

unint64_t ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_18:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v17);
    _os_log_impl(&dword_1DC659000, v5, v6, "Submitting all flowOutputs received from server for RC ID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  result = (*(*a1 + 432))();
  if (result)
  {
    v10 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_7:
        v13 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x1E12A1FE0](v13, v10);
            v14 = result;
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_15:
              __break(1u);
              return result;
            }
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              __break(1u);
              goto LABEL_18;
            }

            v14 = *(v10 + 8 * v13 + 32);
            result = swift_unknownObjectRetain();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_15;
            }
          }

          v17 = v14;
          closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(&v17, v16, a2, a1);
          swift_unknownObjectRelease();
          ++v13;
        }

        while (v15 != v12);
      }
    }
  }

  return result;
}

uint64_t closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(void **a1, char *a2, uint64_t a3, uint64_t a4)
{
  v233 = a4;
  v226 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v210 = &v186 - v7;
  v208 = type metadata accessor for SelectedUserAttributes();
  v212 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v201 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ContextUpdateScope();
  v199 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v198 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v197 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v196 = &v186 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v195 = &v186 - v15;
  v16 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v191 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v194 = &v186 - v19;
  v193 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v20 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v22 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v190 = &v186 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v206 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v205 = &v186 - v28;
  v29 = type metadata accessor for UserID();
  v224 = *(v29 - 8);
  v225 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v223 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for RequestType();
  v221 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227 - 8);
  v220 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v219 = &v186 - v33;
  v218 = type metadata accessor for RequestSummary.ExecutionSource();
  v34 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v217 = &v186 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v213 = &v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v215 = &v186 - v42;
  v43 = *a1;
  v44 = MEMORY[0x1E12A1410](*(a2 + 10), *(a2 + 11), v41);
  [v43 setRefId_];

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  v209 = v43;
  v192 = v20;
  v189 = v22;
  if (v45)
  {
    v46 = v45;
    swift_unknownObjectRetain();
    v202 = v46;
  }

  else
  {
    v202 = 0;
  }

  v47 = *(a2 + 8);
  v48 = *(a2 + 9);
  v211 = a2;
  v49 = type metadata accessor for FlowOutputMessage.InAppResponse();
  v50 = v215;
  (*(*(v49 - 8) + 56))(v215, 1, 1, v49);
  v51 = v217;
  v52 = v218;
  (*(v34 + 104))(v217, *MEMORY[0x1E69D0678], v218);
  v204 = v34;
  v53 = *(v34 + 16);
  v54 = v216;
  v53(v216, v51, v52);
  v55 = v50;
  v56 = v213;
  outlined init with copy of ReferenceResolutionClientProtocol?(v55, v213, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v203 = type metadata accessor for ExecutionOutput(0);
  v57 = objc_allocWithZone(v203);
  v58 = &v57[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v207 = v47;
  *v58 = v47;
  *(v58 + 1) = v48;
  v222 = v48;
  v59 = &v57[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &v57[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v60 = 0;
  *(v60 + 1) = 0;
  v61 = &v57[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = &v57[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = v52;
  v64 = v57;
  v53(&v57[OBJC_IVAR___SKRExecutionOutput_executionSource], v54, v63);
  outlined init with copy of ReferenceResolutionClientProtocol?(v56, &v64[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v65 = v202;
  if (v202)
  {
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (v66)
    {
      v67 = v66;
      v68 = one-time initialization token for executor;

      v69 = v65;
      if (v68 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Logger.executor);
      v71 = v69;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();

      v74 = os_log_type_enabled(v72, v73);
      v202 = v67;
      v187 = v71;
      if (v74)
      {
        v75 = v71;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v229 = v78;
        *v76 = 136315394;
        *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v229);
        *(v76 + 12) = 2112;
        *(v76 + 14) = v202;
        *v77 = v202;
        v79 = v75;
        _os_log_impl(&dword_1DC659000, v72, v73, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v76, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v77, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v80 = v77;
        v67 = v202;
        MEMORY[0x1E12A2F50](v80, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x1E12A2F50](v78, -1, -1);
        MEMORY[0x1E12A2F50](v76, -1, -1);
      }

      v81 = v194;
      v82 = [v67 promptContextProto];
      v188 = v64;
      if (v82)
      {
        v83 = v82;
        v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v231 = 0;
        v229 = 0u;
        v230 = 0u;
        outlined copy of Data._Representation(v84, v86);
        BinaryDecodingOptions.init()();
        _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        v87 = v193;
        v88 = v214;
        Message.init(serializedData:extensions:partial:options:)();
        if (!v88)
        {
          v194 = v86;
          v214 = 0;
          v172 = v192;
          (*(v192 + 56))(v81, 0, 1, v87);
          v173 = v190;
          (*(v172 + 32))(v190, v81, v87);
          v174 = v189;
          (*(v172 + 16))(v189, v173, v87);
          v175 = Logger.logObject.getter();
          v176 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v175, v176))
          {
            v177 = swift_slowAlloc();
            v178 = swift_slowAlloc();
            LODWORD(v191) = v176;
            v179 = v178;
            *&v229 = v178;
            *v177 = 136315394;
            *(v177 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v229);
            *(v177 + 12) = 2080;
            v180 = Message.textFormatString()();
            v181 = *(v172 + 8);
            v182 = v174;
            v183 = v87;
            v181(v182, v87);
            v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180._countAndFlagsBits, v180._object, &v229);

            *(v177 + 14) = v184;
            _os_log_impl(&dword_1DC659000, v175, v191, "ExecutionOutput: %s: NFCU has prompt context %s", v177, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v179, -1, -1);
            MEMORY[0x1E12A2F50](v177, -1, -1);

            outlined consume of Data._Representation(v84, v194);
            v181(v190, v183);
          }

          else
          {

            outlined consume of Data._Representation(v84, v194);
            v185 = *(v172 + 8);
            v185(v174, v87);
            v185(v173, v87);
          }

LABEL_16:
          v93 = type metadata accessor for Parse.DirectInvocation();
          v94 = v195;
          (*(*(v93 - 8) + 56))(v195, 1, 1, v93);
          v95 = type metadata accessor for PommesContext();
          v96 = v196;
          (*(*(v95 - 8) + 56))(v196, 1, 1, v95);
          v97 = v199;
          v98 = v198;
          v99 = updated;
          (*(v199 + 104))(v198, *MEMORY[0x1E69CFF08], updated);
          v100 = type metadata accessor for ExecutionContextUpdate(0);
          v101 = objc_allocWithZone(v100);
          v102 = v197;
          outlined init with copy of ReferenceResolutionClientProtocol?(v96, v197, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v103 = v202;
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v102, v202);
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v103;
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v94, &v101[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v101[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v102, &v101[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*(v97 + 16))(&v101[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v98, v99);
          v104 = &v101[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v104 = 0;
          v104[1] = 0;
          v101[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          v228.receiver = v101;
          v228.super_class = v100;
          v105 = objc_msgSendSuper2(&v228, sel_init);
          (*(v97 + 8))(v98, v99);
          outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v94, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v64 = v188;
          *&v188[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v105;
          *&v64[OBJC_IVAR___SKRExecutionOutput_command] = 0;
          v106 = v204;
          v56 = v213;
          v107 = v227;
          v108 = v221;
          v109 = v187;
          goto LABEL_22;
        }

        outlined consume of Data._Representation(v84, v86);
        (*(v192 + 56))(v81, 1, 1, v87);
        outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
        v214 = 0;
      }

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v229 = v92;
        *v91 = 136315138;
        *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v229);
        _os_log_impl(&dword_1DC659000, v89, v90, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x1E12A2F50](v92, -1, -1);
        MEMORY[0x1E12A2F50](v91, -1, -1);
      }

      goto LABEL_16;
    }
  }

  v110 = one-time initialization token for executor;

  if (v110 != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.executor);
  v112 = v65;
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();

  v115 = os_log_type_enabled(v113, v114);
  v107 = v227;
  if (v115)
  {
    v116 = v65;
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v229 = v119;
    *v117 = 136315394;
    *(v117 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v229);
    *(v117 + 12) = 2112;
    *(v117 + 14) = v112;
    *v118 = v116;
    v120 = v112;
    _os_log_impl(&dword_1DC659000, v113, v114, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v117, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v118, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v121 = v118;
    v107 = v227;
    MEMORY[0x1E12A2F50](v121, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    MEMORY[0x1E12A2F50](v119, -1, -1);
    v122 = v117;
    v65 = v116;
    MEMORY[0x1E12A2F50](v122, -1, -1);
  }

  v108 = v221;
  v106 = v204;
  *&v64[OBJC_IVAR___SKRExecutionOutput_command] = v65;
  *&v64[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
  v109 = v112;
LABEL_22:
  v232.receiver = v64;
  v232.super_class = v203;
  v204 = objc_msgSendSuper2(&v232, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v123 = v106[1];
  v124 = v218;
  v123(v216, v218);

  v123(v217, v124);
  outlined destroy of ReferenceResolutionClientProtocol?(v215, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v125 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  v126 = v226;
  swift_beginAccess();
  v127 = *(v108 + 16);
  v128 = v219;
  v127(v219, v126 + v125, v107);
  v129 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo;
  swift_beginAccess();
  v130 = *(v126 + v129);
  v127(v220, v128, v107);
  v131 = *(v224 + 16);
  v132 = v233;
  v218 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  v131(v223, v233 + OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId, v225);
  v133 = *(*v132 + 792);
  v134 = v130;
  v135 = v205;
  v133(v134);
  v136 = v212;
  v137 = *(v212 + 48);
  v138 = v208;
  if (v137(v135, 1, v208))
  {
    v139 = outlined destroy of ReferenceResolutionClientProtocol?(v135, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v140 = 0;
  }

  else
  {
    v141 = v201;
    (*(v136 + 16))(v201, v135, v138);
    outlined destroy of ReferenceResolutionClientProtocol?(v135, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v142 = SelectedUserAttributes.meetsUserSessionThreshold.getter();
    v143 = v136;
    v140 = v142;
    v139 = (*(v143 + 8))(v141, v138);
  }

  v144 = v206;
  v133(v139);
  if (v137(v144, 1, v138))
  {
    v145 = v221;
    v146 = v227;
    (*(v221 + 8))(v219, v227);
    outlined destroy of ReferenceResolutionClientProtocol?(v144, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v147 = 0;
  }

  else
  {
    v148 = v144;
    v149 = v212;
    v150 = v201;
    (*(v212 + 16))(v201, v148, v138);
    outlined destroy of ReferenceResolutionClientProtocol?(v148, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    v147 = SelectedUserAttributes.meetsPersonalRequestThreshold.getter();
    (*(v149 + 8))(v150, v138);
    v145 = v221;
    v146 = v227;
    (*(v221 + 8))(v219, v227);
  }

  type metadata accessor for ConversationContextUpdateMetadata(0);
  v151 = swift_allocObject();
  *(v151 + 16) = 1;
  (*(v145 + 32))(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v220, v146);
  *(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v130;
  (*(v224 + 32))(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v223, v225);
  *(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
  *(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v140 & 1;
  *(v151 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v147 & 1;
  v152 = v211;
  v153 = v204;
  v154 = *(v204 + OBJC_IVAR___SKRExecutionOutput_command);
  v155 = *(**&v211[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker] + 256);
  v156 = v154;
  v155(v154);

  v157 = *&v152[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter];
  v158 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater;
  v159 = *(v152 + 13);
  v227 = *(v152 + 12);
  v225 = v159;
  v160 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v161 = type metadata accessor for UUID();
  v162 = *(v161 - 8);
  v163 = v210;
  (*(v162 + 16))(v210, &v152[v160], v161);
  (*(v162 + 56))(v163, 0, 1, v161);
  v164 = swift_allocObject();
  v165 = v226;
  v164[2] = v152;
  v164[3] = v165;
  v164[4] = v153;
  v166 = *(*v157 + 296);

  v167 = v153;
  v226 = v158;
  v166(v167, v207, v222, 0, 0, &v152[v158], 0);

  outlined destroy of ReferenceResolutionClientProtocol?(v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  objc_opt_self();
  v168 = swift_dynamicCastObjCClass();
  if (v168)
  {
    v169 = v168;
    outlined init with copy of ReferenceResolutionClientProtocol?(&v152[v226], &v229, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    if (*(&v230 + 1))
    {
      v170 = v231;
      __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
      swift_unknownObjectRetain();
      specialized static ResponseTextExtractionUtil.extractResponseText(fromAddViews:)(v169);
      (*(v170 + 32))();

      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1Tm(&v229);
    }

    else
    {

      return outlined destroy of ReferenceResolutionClientProtocol?(&v229, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    }
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

  v14 = a2;
  v15 = one-time initialization token for shared;
  v16 = a5;
  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v18 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_1(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a2;
  v19[7] = v16;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:), v19);
  (*(*v12 + 120))();
}

uint64_t closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:), v8, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil);
  v6 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter;
  swift_beginAccess();
  result = (*(*v5 + 160))(*(v3 + v6), 1, v2 != 0, v4[8], v4[9], v4[10], v4[11], v1);
  v8 = *(v3 + v6);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v6) = v10;
    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t ServerFallbackCapableRequestProcessor.makePreExecutionRules(_:)(uint64_t a1)
{
  if ((*(*v1 + 1536))() == 2)
  {
    v3 = specialized static HALUtils.isUserOnPhoneCall(_:_:)(*(v1 + 16), *(v1 + 64), *(v1 + 72));
    (*(*v1 + 1544))(v3);
  }

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
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v9 = (*(*a1 + 832))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v5, v6, "Constructing PreExecutionRules for RC: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
  }

  v12 = (*a1 + 480);
  v13 = *v12;
  if ((*v12)())
  {
    v14 = ServerFallbackCapableRequestProcessor.makePreExecutionRulesAfterRCSelection(_:)(a1);
  }

  else
  {
    v14 = specialized ServerFallbackCapableRequestProcessor.makePreExecutionRulesBeforeRCSelection(_:)();
  }

  v15 = v14;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315650;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v27);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v13() & 1;

    *(v18 + 18) = 2080;
    v20 = *(v15 + 16);

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime16PreExecutionRule_pMd, &_s14SiriKitRuntime16PreExecutionRule_pMR);
    v22 = MEMORY[0x1E12A16D0](v20, v21);
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

    *(v18 + 20) = v25;
    _os_log_impl(&dword_1DC659000, v16, v17, "[ServerFallback] Built following rules for [RC ID=%s, selected=%{BOOL}d] : %s", v18, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  else
  {
  }

  return v15;
}

uint64_t ServerFallbackCapableRequestProcessor.makePreExecutionRulesAfterRCSelection(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for SiriInCallFeatureFlag();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v13 = (*(*v1 + 1536))(v9);
  (*(v8 + 104))(v11, *MEMORY[0x1E69CE5B8], v7);
  v14 = SiriInCallFeatureFlag.isEnabled.getter();
  (*(v8 + 8))(v11, v7);
  v15 = type metadata accessor for HangUpRule();
  v16 = swift_allocObject();
  v16[16] = 0;
  v16[17] = v13;
  v16[18] = v14 & 1;
  swift_beginAccess();
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v12);
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  v41 = v15;
  v42 = &protocol witness table for HangUpRule;
  *&v40 = v16;
  v17[2] = v19 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v40, &v17[5 * v19 + 4]);
  v43 = v17;
  swift_endAccess();
  v20 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider);
  v21 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);
  v22 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage);
  if (v22)
  {

    v23 = v22;

    ExecuteNLOnServerMessageBase.fallbackReason.getter();

    v24 = type metadata accessor for ServerFallbackReason();
    (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for ServerFallbackReason();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  }

  v26 = [objc_opt_self() processInfo];
  v27 = type metadata accessor for OfflineServerFallbackRule(0);
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo);
  v29[3] = type metadata accessor for NSProcessInfo();
  v29[4] = &protocol witness table for NSProcessInfo;
  *v29 = v26;
  *(v28 + 16) = 5;
  *(v28 + 24) = v20;
  outlined init with take of ServerFallbackReason?(v6, v28 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason);
  *(v28 + 32) = v21;
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
  }

  v31 = v17[2];
  v30 = v17[3];
  if (v31 >= v30 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v17);
  }

  v41 = v27;
  v42 = &protocol witness table for OfflineServerFallbackRule;
  *&v40 = v28;
  v17[2] = v31 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v40, &v17[5 * v31 + 4]);
  v43 = v17;
  v32 = swift_endAccess();
  v33 = (*(*a1 + 624))(v32);
  v34 = type metadata accessor for ServerFTMRule();
  v35 = swift_allocObject();
  *(v35 + 16) = 3;
  *(v35 + 17) = v33 & 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
  }

  v37 = v17[2];
  v36 = v17[3];
  if (v37 >= v36 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v17);
  }

  v41 = v34;
  v42 = &protocol witness table for ServerFTMRule;
  *&v40 = v35;
  v17[2] = v37 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v40, &v17[5 * v37 + 4]);
  type metadata accessor for CompositePreExecutionRules();
  result = swift_allocObject();
  *(result + 16) = v17;
  return result;
}

void *ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, void *a8, __int128 a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void (*a16)(void, void), void *a17, unsigned __int8 a18, uint64_t a19, void *a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, unsigned __int8 a26, void *a27, unsigned __int8 a28)
{
  v57 = a7;
  v58 = a8;
  v55 = a5;
  v56 = a6;
  v53 = a3;
  v54 = a4;
  v51 = a1;
  v52 = a2;
  v50 = a9;
  v48 = a11;
  v49 = a10;
  v47 = a12;
  v43 = a16;
  v44 = a15;
  v42 = a17;
  v41 = a18;
  v40 = a19;
  v39 = a20;
  v38 = a21;
  v37 = a22;
  v29 = a25[3];
  v28 = a25[4];
  v30 = __swift_mutable_project_boxed_opaque_existential_1(a25, v29);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v58 = specialized ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(v51, v52, v53, v54, v55, v56, v57, v58, v50, *(&v50 + 1), v49, v48, v47, a13, v46, v44, v43, v42, v41, v40, v39, v38, *(&v38 + 1), v37, a23, a24, v33, a26, a27, a28, v45, v29, v28);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a25);
  return v58;
}

void *ServerFallbackCapableRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, void (*a21)(void, void), uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, unsigned __int8 a29, void *a30, unsigned __int8 a31)
{
  v120 = a7;
  v121 = a8;
  v118 = a5;
  v119 = a6;
  v147 = a4;
  v148 = a3;
  v116 = a1;
  v117 = a2;
  LODWORD(v115) = a31;
  v114 = a30;
  v104 = a29;
  v133 = a28;
  v136 = a27;
  v122 = a26;
  v138 = a25;
  v141 = a24;
  v143 = a23;
  v126 = a22;
  v149 = a21;
  v109 = a20;
  v129 = a19;
  v125 = a18;
  v140 = a17;
  v128 = a16;
  v127 = a15;
  v130 = a14;
  v139 = a13;
  v142 = a12;
  v144 = a11;
  v152 = type metadata accessor for UserSessionState();
  v146 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v151 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UserID();
  v137 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v33 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SessionConfiguration();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);

  v42 = swift_allocObject();
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
  v123 = v39;
  v43 = *(v39 + 16);
  v131 = v41;
  v134 = v38;
  v112 = v43;
  v113 = v39 + 16;
  v43(v41, v148, v38);
  v124 = v35;
  v44 = *(v35 + 16);
  v135 = v37;
  v145 = v34;
  v110 = v44;
  v111 = v35 + 16;
  v44(v37, v147, v34);
  outlined init with copy of ReferenceResolutionClientProtocol(v144, v166);
  outlined init with copy of ReferenceResolutionClientProtocol(v142, v165);
  outlined init with copy of ReferenceResolutionClientProtocol(v139, v164);
  outlined init with copy of ReferenceResolutionClientProtocol(v140, v163);
  outlined init with copy of ReferenceResolutionClientProtocol(v143, v162);
  outlined init with copy of ReferenceResolutionClientProtocol(v141, v161);
  v45 = *(v137 + 16);
  v132 = v33;
  v46 = v33;
  v47 = v125;
  v105 = v45;
  v106 = v137 + 16;
  v45(v46, v138, v150);
  v107 = *(v146 + 16);
  v108 = v146 + 16;
  v107(v151, v136, v152);
  outlined init with copy of ReferenceResolutionClientProtocol(v133, v160);
  v48 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  v103 = type metadata accessor for ConcurrentTaskPool();
  v49 = swift_allocObject();
  *(v49 + 16) = MEMORY[0x1E69E7CC0];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v50 = swift_allocObject();
  *(v42 + v48) = v49;
  v51 = v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  v51[16] = 3;
  *v51 = 0;
  *(v51 + 1) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v50 + 16) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v49 + 24) = v50;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v52 = (v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v52 = 0;
  v52[1] = 0;
  v53 = objc_opt_self();
  v54 = v47;
  v55 = v149;

  v56 = [v53 sharedPreferences];
  v57 = [objc_opt_self() clientWithIdentifier_];
  v58 = type metadata accessor for TrialExperimentationAssetManager();
  v59 = swift_allocObject();
  v60 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v59 + 16) = v57;
  *(v59 + 24) = v60;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v61 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v62 = swift_allocObject();
  v159 = &protocol witness table for TrialExperimentationAssetManager;
  v158 = v58;
  *&v157 = v59;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v62 + 104) = TaggingService.init()();
  *(v62 + 144) = 0;
  *(v62 + 128) = 0u;
  *(v62 + 112) = 0u;
  *(v62 + 16) = v54;
  *(v62 + 24) = v55;
  *(v62 + 32) = v56;
  v104 &= 1u;
  *(v62 + 40) = v104;
  outlined init with take of ReferenceResolutionClientProtocol(&v157, v62 + 48);
  swift_beginAccess();
  *(v62 + 128) = 0;
  swift_beginAccess();
  *(v62 + 136) = 0;
  swift_beginAccess();
  *(v62 + 144) = 0;
  *(v62 + 152) = 33686018;
  *(v62 + 156) = 514;
  *(v62 + 160) = 0;
  *(v62 + 168) = 1;
  *(v62 + 169) = *v169;
  *(v62 + 172) = *&v169[3];
  *(v62 + 176) = 0;
  *(v62 + 184) = 1;
  *(v62 + 185) = 2;
  *(v62 + 190) = v168;
  *(v62 + 186) = v167;
  *(v62 + 192) = 0;
  *(v62 + 200) = 0;
  LOBYTE(v154) = 1;
  v153[0] = 1;
  *(v62 + 208) = 33686018;
  *(v62 + 212) = 514;
  *(v62 + 216) = 0;
  *(v62 + 224) = 1;
  *(v62 + 225) = v171[0];
  *(v62 + 228) = *(v171 + 3);
  *(v62 + 232) = 0;
  *(v62 + 240) = 1;
  *(v62 + 241) = 2;
  v63 = *&v169[7];
  *(v62 + 246) = v170;
  *(v62 + 242) = v63;
  *(v62 + 248) = 0;
  *(v62 + 256) = 0;
  *(v62 + 88) = v61;
  *(v62 + 264) = 0;
  *(v62 + 96) = 0;
  v64 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v62;
  outlined init with copy of ReferenceResolutionClientProtocol(v165, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v65 = v130;
  v66 = v130[3];
  v67 = *(*v130 + 152);
  v68 = swift_unknownObjectRetain();
  v69 = v67(v68);
  outlined init with copy of ReferenceResolutionClientProtocol((v65 + 4), &v157);
  v70 = *(v42 + v64);
  v71 = type metadata accessor for FeatureChecker();
  v72 = swift_allocObject();
  v73 = v114;
  v101 = v114;

  *(v72 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v155 = &type metadata for IntelligenceFlowFeatureFlag;
  v156 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v74 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v154);
  *(v72 + 17) = v74 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v75 = swift_allocObject();
  v155 = v71;
  v156 = &protocol witness table for FeatureChecker;
  *&v154 = v72;
  v76 = swift_allocObject();
  v77 = MEMORY[0x1E69E7CC0];
  *(v76 + 16) = MEMORY[0x1E69E7CC0];
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v76 + 24) = v78;
  *(v75 + 16) = v76;
  *(v75 + 88) = 0;
  *(v75 + 80) = 0;
  *(v75 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v77);
  *(v75 + 104) = 30000000000;
  *(v75 + 24) = v66;
  *(v75 + 72) = v69 & 1;
  swift_beginAccess();
  v79 = *(v75 + 80);
  *(v75 + 80) = v73;

  outlined init with take of ReferenceResolutionClientProtocol(&v157, v75 + 32);
  swift_beginAccess();
  *(v75 + 88) = v70;

  outlined init with take of ReferenceResolutionClientProtocol(&v154, v75 + 112);
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v75;
  v80 = v128;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v127;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v80;
  v81 = v129;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v129;
  outlined init with copy of ReferenceResolutionClientProtocol(v163, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  v82 = v126;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v125;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v109 & 1;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v149;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v82;
  outlined init with copy of ReferenceResolutionClientProtocol(v162, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v161, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v164, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v73;
  v105(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v132, v150);
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v115 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v83 = swift_allocObject();
  swift_weakInit();
  *(v83 + 24) = v81;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v83;
  v84 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v115 = v101;

  if (v84 != -1)
  {
    swift_once();
  }

  v85 = static DeviceContextHelper.sharedInstance;
  v86 = (v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v86[3] = type metadata accessor for DeviceContextHelper();
  v86[4] = &protocol witness table for DeviceContextHelper;
  *v86 = v85;
  v87 = v122;
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v122;
  v88 = *(*v87 + 224);

  v90 = v118;
  v89 = v119;
  v91 = v131;
  v88(v118, v119, v131);
  v92 = v152;
  v107(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v151, v152);
  outlined init with copy of ReferenceResolutionClientProtocol(v160, v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v110(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v135, v145);
  *(v42 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v104;
  v112(v42 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v91, v134);
  outlined init with copy of ReferenceResolutionClientProtocol(v166, (v42 + 3));
  v93 = v117;
  v42[12] = v116;
  v42[13] = v93;
  v42[8] = v90;
  v42[9] = v89;
  v94 = v121;
  v42[10] = v120;
  v42[11] = v94;
  v42[2] = v129;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v42);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v133);
  v146 = *(v146 + 8);
  (v146)(v136, v92);
  v137 = *(v137 + 8);
  v95 = v150;
  (v137)(v138, v150);
  __swift_destroy_boxed_opaque_existential_1Tm(v141);
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  __swift_destroy_boxed_opaque_existential_1Tm(v139);
  __swift_destroy_boxed_opaque_existential_1Tm(v142);
  __swift_destroy_boxed_opaque_existential_1Tm(v144);
  v149 = *(v124 + 8);
  v96 = v145;
  v149(v147, v145);
  v97 = *(v123 + 8);
  v98 = v134;
  v97(v148, v134);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  (v146)(v151, v152);
  (v137)(v132, v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  __swift_destroy_boxed_opaque_existential_1Tm(v165);
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  v149(v135, v96);
  v97(v131, v98);
  return v42;
}

void *ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void (*a18)(void, void), uint64_t a19, unsigned __int8 a20, void (*a21)(void, void), uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, unsigned __int8 a29, void *a30, unsigned __int8 a31)
{
  v32 = v31;
  v116 = a7;
  v117 = a8;
  v114 = a5;
  v115 = a6;
  v143 = a4;
  v144 = a3;
  v112 = a1;
  v113 = a2;
  v110 = a31;
  v121 = a30;
  v100 = a29;
  v129 = a28;
  v132 = a27;
  v118 = a26;
  v134 = a25;
  v137 = a24;
  v139 = a23;
  v122 = a22;
  v145 = a21;
  v105 = a20;
  v125 = a19;
  v148 = a18;
  v136 = a17;
  v124 = a16;
  v123 = a15;
  v126 = a14;
  v135 = a13;
  v138 = a12;
  v140 = a11;
  v141 = a10;
  v147 = type metadata accessor for UserSessionState();
  v142 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UserID();
  v133 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SessionConfiguration();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);

  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
  v119 = v42;
  v45 = *(v42 + 16);
  v127 = v44;
  v130 = v41;
  v108 = v45;
  v109 = v42 + 16;
  v45(v44, v144, v41);
  v120 = v38;
  v46 = v38;
  v47 = v145;
  v48 = *(v46 + 16);
  v131 = v40;
  v141 = v37;
  v106 = v48;
  v107 = v46 + 16;
  v48(v40, v143, v37);
  outlined init with copy of ReferenceResolutionClientProtocol(v140, v162);
  outlined init with copy of ReferenceResolutionClientProtocol(v138, v161);
  outlined init with copy of ReferenceResolutionClientProtocol(v135, v160);
  outlined init with copy of ReferenceResolutionClientProtocol(v136, v159);
  outlined init with copy of ReferenceResolutionClientProtocol(v139, v158);
  outlined init with copy of ReferenceResolutionClientProtocol(v137, v157);
  v49 = *(v133 + 16);
  v128 = v36;
  v111 = v34;
  v101 = v49;
  v102 = v133 + 16;
  v49(v36, v134, v34);
  v103 = *(v142 + 16);
  v104 = v142 + 16;
  v103(v146, v132, v147);
  outlined init with copy of ReferenceResolutionClientProtocol(v129, v156);
  v50 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v51 = swift_allocObject();
  *(v51 + 16) = MEMORY[0x1E69E7CC0];
  v99[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v52 = swift_allocObject();
  *(v32 + v50) = v51;
  v53 = v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  v53[16] = 3;
  *v53 = 0;
  *(v53 + 1) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v52 + 16) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v51 + 24) = v52;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v54 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v54 = 0;
  v54[1] = 0;
  v55 = objc_opt_self();

  v56 = [v55 sharedPreferences];
  v57 = [objc_opt_self() clientWithIdentifier_];
  v58 = type metadata accessor for TrialExperimentationAssetManager();
  v59 = swift_allocObject();
  v60 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v59 + 16) = v57;
  *(v59 + 24) = v60;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v61 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v62 = swift_allocObject();
  v155 = &protocol witness table for TrialExperimentationAssetManager;
  v154 = v58;
  *&v153 = v59;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v62 + 104) = TaggingService.init()();
  *(v62 + 144) = 0;
  *(v62 + 128) = 0u;
  *(v62 + 112) = 0u;
  *(v62 + 16) = v148;
  *(v62 + 24) = v47;
  *(v62 + 32) = v56;
  v100 &= 1u;
  *(v62 + 40) = v100;
  outlined init with take of ReferenceResolutionClientProtocol(&v153, v62 + 48);
  swift_beginAccess();
  *(v62 + 128) = 0;
  swift_beginAccess();
  *(v62 + 136) = 0;
  swift_beginAccess();
  v63 = *(v62 + 144);
  *(v62 + 144) = 0;

  *(v62 + 152) = 33686018;
  *(v62 + 156) = 514;
  *(v62 + 160) = 0;
  *(v62 + 168) = 1;
  *(v62 + 169) = *v165;
  *(v62 + 172) = *&v165[3];
  *(v62 + 176) = 0;
  *(v62 + 184) = 1;
  *(v62 + 185) = 2;
  *(v62 + 186) = v163;
  *(v62 + 190) = v164;
  *(v62 + 192) = 0;
  *(v62 + 200) = 0;
  LOBYTE(v150) = 1;
  v149[0] = 1;
  *(v62 + 208) = 33686018;
  *(v62 + 212) = 514;
  *(v62 + 216) = 0;
  *(v62 + 224) = 1;
  *(v62 + 225) = v167[0];
  *(v62 + 228) = *(v167 + 3);
  *(v62 + 232) = 0;
  *(v62 + 240) = 1;
  *(v62 + 241) = 2;
  v64 = *&v165[7];
  *(v62 + 246) = v166;
  *(v62 + 242) = v64;
  *(v62 + 248) = 0;
  *(v62 + 256) = 0;
  *(v62 + 88) = v61;
  *(v62 + 264) = 0;
  *(v62 + 96) = 0;
  v65 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v62;
  outlined init with copy of ReferenceResolutionClientProtocol(v161, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v66 = v126;
  v67 = v126[3];
  v68 = *(*v126 + 152);
  v69 = swift_unknownObjectRetain();
  LOBYTE(v62) = v68(v69);
  outlined init with copy of ReferenceResolutionClientProtocol((v66 + 4), &v153);
  v70 = *(v32 + v65);
  v71 = type metadata accessor for FeatureChecker();
  v72 = swift_allocObject();
  v73 = v121;
  v99[0] = v121;

  *(v72 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v151 = &type metadata for IntelligenceFlowFeatureFlag;
  v152 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v74 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v150);
  *(v72 + 17) = v74 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v75 = swift_allocObject();
  v151 = v71;
  v152 = &protocol witness table for FeatureChecker;
  *&v150 = v72;
  v76 = swift_allocObject();
  v77 = MEMORY[0x1E69E7CC0];
  *(v76 + 16) = MEMORY[0x1E69E7CC0];
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v76 + 24) = v78;
  *(v75 + 16) = v76;
  *(v75 + 88) = 0;
  *(v75 + 80) = 0;
  *(v75 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v77);
  *(v75 + 104) = 30000000000;
  *(v75 + 24) = v67;
  *(v75 + 72) = v62 & 1;
  swift_beginAccess();
  v79 = *(v75 + 80);
  *(v75 + 80) = v73;

  outlined init with take of ReferenceResolutionClientProtocol(&v153, v75 + 32);
  swift_beginAccess();
  *(v75 + 88) = v70;

  outlined init with take of ReferenceResolutionClientProtocol(&v150, v75 + 112);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v75;
  v80 = v124;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v123;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v80;
  v81 = v125;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v125;
  outlined init with copy of ReferenceResolutionClientProtocol(v159, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v148;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v105 & 1;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v145;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v122;
  outlined init with copy of ReferenceResolutionClientProtocol(v158, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v157, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v160, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v121;
  v82 = v111;
  v101(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v128, v111);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v110 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v83 = swift_allocObject();
  swift_weakInit();
  *(v83 + 24) = v81;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v83;
  v84 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v121 = v99[0];

  if (v84 != -1)
  {
    swift_once();
  }

  v85 = static DeviceContextHelper.sharedInstance;
  v86 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v86[3] = type metadata accessor for DeviceContextHelper();
  v86[4] = &protocol witness table for DeviceContextHelper;
  *v86 = v85;
  v87 = v118;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v118;
  v88 = *(*v87 + 224);

  v90 = v114;
  v89 = v115;
  v91 = v127;
  v88(v114, v115, v127);
  v92 = v147;
  v103(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v146, v147);
  outlined init with copy of ReferenceResolutionClientProtocol(v156, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v106(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v131, v141);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v100;
  v108(v32 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v91, v130);
  outlined init with copy of ReferenceResolutionClientProtocol(v162, (v32 + 3));
  v93 = v113;
  v32[12] = v112;
  v32[13] = v93;
  v32[8] = v90;
  v32[9] = v89;
  v94 = v117;
  v32[10] = v116;
  v32[11] = v94;
  v32[2] = v125;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(v32);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  v145 = *(v142 + 8);
  v145(v132, v92);
  v142 = *(v133 + 8);
  (v142)(v134, v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v137);
  __swift_destroy_boxed_opaque_existential_1Tm(v139);
  __swift_destroy_boxed_opaque_existential_1Tm(v136);
  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  __swift_destroy_boxed_opaque_existential_1Tm(v138);
  __swift_destroy_boxed_opaque_existential_1Tm(v140);
  v148 = *(v120 + 8);
  v95 = v141;
  v148(v143, v141);
  v96 = *(v119 + 8);
  v97 = v130;
  v96(v144, v130);
  __swift_destroy_boxed_opaque_existential_1Tm(v156);
  v145(v146, v147);
  (v142)(v128, v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v157);
  __swift_destroy_boxed_opaque_existential_1Tm(v158);
  __swift_destroy_boxed_opaque_existential_1Tm(v159);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  v148(v131, v95);
  v96(v127, v97);
  return v32;
}

uint64_t ServerFallbackCapableRequestProcessor.__ivar_destroyer()
{
}

char *ServerFallbackCapableRequestProcessor.deinit()
{
  v0 = ConversationRequestProcessor.deinit();

  return v0;
}

uint64_t specialized ServerFallbackCapableRequestProcessor.makePreExecutionRulesBeforeRCSelection(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for SiriInCallFeatureFlag();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*v0 + 1536))(v7);
  (*(v6 + 104))(v9, *MEMORY[0x1E69CE5B8], v5);
  v11 = SiriInCallFeatureFlag.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  v12 = type metadata accessor for HangUpRule();
  v13 = swift_allocObject();
  v13[16] = 0;
  v13[17] = v10;
  v13[18] = v11 & 1;
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
  }

  v32 = v12;
  v33 = &protocol witness table for HangUpRule;
  *&v31 = v13;
  v14[2] = v16 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v31, &v14[5 * v16 + 4]);
  v17 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider);
  v18 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider);
  v19 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage);
  if (v19)
  {

    v20 = v19;

    ExecuteNLOnServerMessageBase.fallbackReason.getter();

    v21 = type metadata accessor for ServerFallbackReason();
    (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
  }

  else
  {
    v22 = type metadata accessor for ServerFallbackReason();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  }

  v23 = [objc_opt_self() processInfo];
  v24 = type metadata accessor for OfflineServerFallbackRule(0);
  v25 = swift_allocObject();
  v26 = (v25 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_processInfo);
  v26[3] = type metadata accessor for NSProcessInfo();
  v26[4] = &protocol witness table for NSProcessInfo;
  *v26 = v23;
  *(v25 + 16) = 5;
  *(v25 + 24) = v17;
  outlined init with take of ServerFallbackReason?(v4, v25 + OBJC_IVAR____TtC14SiriKitRuntime25OfflineServerFallbackRule_fallbackReason);
  *(v25 + 32) = v18;
  v28 = v14[2];
  v27 = v14[3];
  if (v28 >= v27 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v14);
  }

  v32 = v24;
  v33 = &protocol witness table for OfflineServerFallbackRule;
  *&v31 = v25;
  v14[2] = v28 + 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v31, &v14[5 * v28 + 4]);
  type metadata accessor for CompositePreExecutionRules();
  result = swift_allocObject();
  *(result + 16) = v14;
  return result;
}

void *specialized ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void, void), void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void (*a17)(void, void), void *a18, unsigned __int8 a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, void *a29, unsigned __int8 a30, void *a31, uint64_t a32, uint64_t a33)
{
  v150 = a8;
  v154 = a7;
  v175 = a6;
  v160 = a5;
  v169 = a4;
  v170 = a3;
  v147 = a1;
  v148 = a2;
  LODWORD(v157) = a30;
  v153 = a29;
  v135 = a28;
  v143 = a25;
  v163 = a24;
  v166 = a23;
  v167 = a22;
  v140 = a21;
  v155 = a20;
  v139 = a19;
  v178 = a18;
  v173 = a17;
  v165 = a16;
  v142 = a15;
  *&v141 = a14;
  v136 = a13;
  v164 = a12;
  v158 = a26;
  v159 = a27;
  v156 = a33;
  v162 = a11;
  v152 = a10;
  v177 = type metadata accessor for UserSessionState();
  v168 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v131[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = type metadata accessor for UserID();
  v171 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v131[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v161 = type metadata accessor for SessionConfiguration();
  v37 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v39 = &v131[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v131[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v194[3] = a32;
  v194[4] = v156;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v194);
  (*(*(a32 - 8) + 32))(boxed_opaque_existential_0, v159, a32);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_requestHandledOnServer) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_runSiriKitExecutorProcessor) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_executeNLOnServerMessage) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_isUserOnActivePhoneCall) = 2;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime37ServerFallbackCapableRequestProcessor_gatedExecuteNLOnServer) = MEMORY[0x1E69E7CC0];
  v146 = v41;
  v45 = *(v41 + 16);
  v174 = v43;
  v159 = v40;
  v144 = v45;
  v145 = v41 + 16;
  v45(v43, v170, v40);
  v151 = v37;
  v46 = *(v37 + 16);
  v47 = v161;
  v46(v39, v169, v161);
  outlined init with copy of ReferenceResolutionClientProtocol(v162, v193);
  outlined init with copy of ReferenceResolutionClientProtocol(v164, v192);
  outlined init with copy of ReferenceResolutionClientProtocol(v165, v191);
  outlined init with copy of ReferenceResolutionClientProtocol(v167, v190);
  outlined init with copy of ReferenceResolutionClientProtocol(v166, v189);
  v48 = *(v171 + 16);
  v179 = v36;
  v172 = v34;
  v156 = v171 + 16;
  v152 = v48;
  v48(v36, v163, v34);
  v137 = *(v168 + 16);
  v138 = v168 + 16;
  v137(v176, v158, v177);
  outlined init with copy of ReferenceResolutionClientProtocol(v194, v188);
  v49 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  v133 = type metadata accessor for ConcurrentTaskPool();
  v50 = swift_allocObject();
  *(v50 + 16) = MEMORY[0x1E69E7CC0];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v51 = swift_allocObject();
  *(a31 + v49) = v50;
  v52 = a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  v52[16] = 3;
  *v52 = 0;
  *(v52 + 1) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v51 + 16) = 0;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v50 + 24) = v51;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v53 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v53 = 0;
  v53[1] = 0;
  v149 = v39;
  v54 = v39;
  v55 = v155;
  v56 = v173;
  v46(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration, v54, v47);
  v57 = objc_opt_self();

  v58 = [v57 sharedPreferences];
  v59 = [objc_opt_self() clientWithIdentifier_];
  v60 = type metadata accessor for TrialExperimentationAssetManager();
  v61 = swift_allocObject();
  v62 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v61 + 16) = v59;
  *(v61 + 24) = v62;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v63 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v64 = swift_allocObject();
  v187 = &protocol witness table for TrialExperimentationAssetManager;
  v186 = v60;
  *&v185 = v61;
  type metadata accessor for TaggingService();
  swift_allocObject();

  *(v64 + 104) = TaggingService.init()();
  *(v64 + 144) = 0;
  *(v64 + 128) = 0u;
  *(v64 + 112) = 0u;
  *(v64 + 16) = v56;
  *(v64 + 24) = v55;
  *(v64 + 32) = v58;
  v135 &= 1u;
  *(v64 + 40) = v135;
  outlined init with take of ReferenceResolutionClientProtocol(&v185, v64 + 48);
  swift_beginAccess();
  *(v64 + 128) = 0;
  swift_beginAccess();
  *(v64 + 136) = 0;
  swift_beginAccess();
  *(v64 + 144) = 0;
  *(v64 + 152) = 33686018;
  *(v64 + 156) = 514;
  *(v64 + 160) = 0;
  *(v64 + 168) = 1;
  *(v64 + 169) = *v197;
  *(v64 + 172) = *&v197[3];
  *(v64 + 176) = 0;
  *(v64 + 184) = 1;
  *(v64 + 185) = 2;
  *(v64 + 190) = v196;
  *(v64 + 186) = v195;
  *(v64 + 192) = 0;
  *(v64 + 200) = 0;
  LOBYTE(v182) = 1;
  LOBYTE(v181[0]) = 1;
  *(v64 + 208) = 33686018;
  *(v64 + 212) = 514;
  *(v64 + 216) = 0;
  *(v64 + 224) = 1;
  *(v64 + 225) = v199[0];
  *(v64 + 228) = *(v199 + 3);
  *(v64 + 232) = 0;
  *(v64 + 240) = 1;
  *(v64 + 241) = 2;
  v65 = *&v197[7];
  *(v64 + 246) = v198;
  *(v64 + 242) = v65;
  *(v64 + 248) = 0;
  *(v64 + 256) = 0;
  *(v64 + 88) = v63;
  *(v64 + 264) = 0;
  *(v64 + 96) = 0;
  v66 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v64;
  outlined init with copy of ReferenceResolutionClientProtocol(v192, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v67 = v136;
  v68 = v136[3];
  v69 = *(*v136 + 152);
  v70 = swift_unknownObjectRetain();
  v132 = v69(v70);
  outlined init with copy of ReferenceResolutionClientProtocol((v67 + 4), &v185);
  v71 = v56;
  v72 = *(a31 + v66);
  v73 = type metadata accessor for FeatureChecker();
  v74 = swift_allocObject();
  v75 = v153;
  v136 = v153;

  *(v74 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v183 = &type metadata for IntelligenceFlowFeatureFlag;
  v184 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v76 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v182);
  *(v74 + 17) = v76 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v77 = swift_allocObject();
  v184 = &protocol witness table for FeatureChecker;
  v183 = v73;
  *&v182 = v74;
  v78 = swift_allocObject();
  v79 = MEMORY[0x1E69E7CC0];
  *(v78 + 16) = MEMORY[0x1E69E7CC0];
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v78 + 24) = v80;
  *(v77 + 16) = v78;
  *(v77 + 88) = 0;
  *(v77 + 80) = 0;
  *(v77 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v79);
  *(v77 + 104) = 30000000000;
  *(v77 + 24) = v68;
  *(v77 + 72) = v132 & 1;
  swift_beginAccess();
  v81 = *(v77 + 80);
  *(v77 + 80) = v75;

  outlined init with take of ReferenceResolutionClientProtocol(&v185, v77 + 32);
  swift_beginAccess();
  *(v77 + 88) = v72;

  outlined init with take of ReferenceResolutionClientProtocol(&v182, v77 + 112);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v77;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = v141;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = v142;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = v178;
  outlined init with copy of ReferenceResolutionClientProtocol(v191, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = v71;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = v139 & 1;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = v155;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = v140;
  outlined init with copy of ReferenceResolutionClientProtocol(v190, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(v189, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = v75;
  v152(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v179, v172);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = v157 & 1;
  v137(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState, v176, v177);
  outlined init with copy of ReferenceResolutionClientProtocol(v188, a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v82 = v143;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = v143;
  v83 = *(*v82 + 224);

  v140 = v136;

  v84 = v178;
  swift_unknownObjectRetain();
  v85 = v174;
  v83(v160, v175, v174);
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = v135;
  v86 = v179;
  v87 = v85;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v88 = static DeviceContextHelper.sharedInstance;
  v89 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v155 = type metadata accessor for DeviceContextHelper();
  v89[3] = v155;
  v89[4] = &protocol witness table for DeviceContextHelper;
  *v89 = v88;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v90 = swift_allocObject();
  swift_weakInit();
  *(v90 + 24) = v84;
  *(a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v90;
  if ((v157 & 1) == 0)
  {
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v97 = v171;
    v142 = *(v171 + 72);
    v143 = v96;
    v98 = v86;
    v99 = (*(v171 + 80) + 32) & ~*(v171 + 80);
    v100 = swift_allocObject();
    v141 = xmmword_1DCA66060;
    *(v100 + 16) = xmmword_1DCA66060;
    v153 = v88;
    v101 = v172;
    v102 = v152;
    v152(v100 + v99, v98, v172);
    swift_unknownObjectRetain();

    v157 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v100);
    swift_setDeallocating();
    v103 = *(v97 + 8);
    v103(v100 + v99, v101);
    swift_deallocClassInstance();
    v104 = swift_allocObject();
    *(v104 + 16) = v141;
    v102(v104 + v99, v179, v101);
    v94 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v104);
    swift_setDeallocating();
    v105 = v101;
    v88 = v153;
    v103(v104 + v99, v105);
    swift_deallocClassInstance();
    v95 = v150;
    v92 = v178;
    goto LABEL_9;
  }

  if (v153)
  {
    v91 = v140;
    v92 = v178;
    swift_unknownObjectRetain();

    v157 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v94 = v93;

    v95 = v150;
LABEL_9:
    v106 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v191, &v185);
    outlined init with copy of ReferenceResolutionClientProtocol(v190, &v182);
    outlined init with copy of ReferenceResolutionClientProtocol(v189, v181);
    ObjectType = swift_getObjectType();
    v180 = v88;
    v108 = v173;

    swift_unknownObjectRetain();
    v109 = v148;

    v110 = v175;

    v130 = v94;
    *&v129 = v108;
    *(&v129 + 1) = v157;
    v111 = v147;
    v112 = v160;
    v113 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v185, &v182, v181, v92, v147, v109, v160, v110, v154, v95, &v180, v129, v130, v106, v155, ObjectType, &protocol witness table for DeviceContextHelper);
    v114 = &protocol witness table for MultiUserContextUpdater;
    v87 = v174;
    goto LABEL_10;
  }

  v123 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v123 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  __swift_project_value_buffer(v124, static Logger.conversationBridge);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.error.getter();
  v127 = os_log_type_enabled(v125, v126);
  v112 = v160;
  if (v127)
  {
    v128 = swift_slowAlloc();
    *v128 = 0;
    _os_log_impl(&dword_1DC659000, v125, v126, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v128, 2u);
    MEMORY[0x1E12A2F50](v128, -1, -1);
  }

  v106 = 0;
  v114 = 0;
  v113 = 0;
  v95 = v150;
  v111 = v147;
  v109 = v148;
  v92 = v178;
LABEL_10:
  v115 = (a31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v115 = v113;
  v115[1] = 0;
  v115[2] = 0;
  v115[3] = v106;
  v115[4] = v114;
  v144(a31 + OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId, v87, v159);
  outlined init with copy of ReferenceResolutionClientProtocol(v193, (a31 + 3));
  a31[12] = v111;
  a31[13] = v109;
  v116 = v175;
  a31[8] = v112;
  a31[9] = v116;
  a31[10] = v154;
  a31[11] = v95;
  a31[2] = v92;
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)(a31);

  v175 = *(v168 + 8);
  v117 = v177;
  v175(v158, v177);
  v118 = v172;
  v171 = *(v171 + 8);
  (v171)(v163, v172);
  __swift_destroy_boxed_opaque_existential_1Tm(v166);
  __swift_destroy_boxed_opaque_existential_1Tm(v167);
  __swift_destroy_boxed_opaque_existential_1Tm(v165);
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  v173 = *(v151 + 8);
  v119 = v161;
  v173(v169, v161);
  v178 = a31;
  v120 = *(v146 + 8);
  v121 = v159;
  v120(v170, v159);
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
  v175(v176, v117);
  (v171)(v179, v118);
  __swift_destroy_boxed_opaque_existential_1Tm(v189);
  __swift_destroy_boxed_opaque_existential_1Tm(v190);
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  __swift_destroy_boxed_opaque_existential_1Tm(v192);
  __swift_destroy_boxed_opaque_existential_1Tm(v193);
  v173(v149, v119);
  v120(v174, v121);
  __swift_destroy_boxed_opaque_existential_1Tm(v194);
  return v178;
}

void *specialized ServerFallbackCapableRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, void (*a13)(void, void), void *a14, unsigned __int8 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, void *a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v39 = a10;
  v40 = a9;
  v37 = a12;
  v38 = a11;
  v35 = a14;
  v36 = a13;
  v34 = a15;
  v33 = a16;
  v32 = a17;
  v31 = a18;
  v26 = *(a25 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServerFallbackCapableRequestProcessor(0);
  v29 = swift_allocObject();
  (*(v26 + 16))(v28, a20, a25);
  return specialized ServerFallbackCapableRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(v41, v42, v43, v44, v45, v46, v47, v48, v40, *(&v40 + 1), v39, *(&v39 + 1), v38, *(&v38 + 1), v37, *(&v37 + 1), v36, v35, v34, v33, *(&v33 + 1), v32, *(&v32 + 1), v31, *(&v31 + 1), a19, v28, a21, a22, a23, v29, a25, a26);
}

uint64_t partial apply for closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(uint64_t a1)
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

  return closure #1 in ServerFallbackCapableRequestProcessor.closeServerRequest(forExecutionRequestId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized static ServerFallbackCapableRequestProcessor.getDelegatedUDA(rcState:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v52 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v52 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v59 = v52 - v18;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = v52 - v21;
  (*(*a1 + 696))(v20);
  v57 = *(v13 + 48);
  v58 = v13 + 48;
  if (v57(v11, 1, v12) != 1)
  {
    v36 = *(v13 + 32);
    v36(v22, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR);
    v37 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DCA66060;
    v36((v38 + v37), v22, v12);
    return v38;
  }

  v60 = v13;
  v23 = outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v24 = (*(*a1 + 312))(v23);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = v24;
  KeyPath = swift_getKeyPath();
  v27 = *(v25 + 16);
  v52[0] = v25;
  if (v27)
  {
    v29 = *(v3 + 16);
    v28 = v3 + 16;
    v30 = v25 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v55 = *(v28 + 56);
    v56 = v29;
    v31 = (v28 - 8);
    v54 = (v60 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v52[1] = KeyPath;
    v52[2] = v28;
    v53 = v2;
    v29(v5, v30, v2);
    while (1)
    {
      swift_getAtKeyPath();
      (*v31)(v5, v2);
      if (v57(v8, 1, v12) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      }

      else
      {
        v33 = *v54;
        (*v54)(v59, v8, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
        }

        v35 = *(v32 + 2);
        v34 = *(v32 + 3);
        if (v35 >= v34 >> 1)
        {
          v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
        }

        *(v32 + 2) = v35 + 1;
        v33(&v32[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v35], v59, v12);
        v2 = v53;
      }

      v30 += v55;
      if (!--v27)
      {
        break;
      }

      v56(v5, v30, v2);
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v58 = *(v32 + 2);
  if (!v58)
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_32:

    return v38;
  }

  v40 = 0;
  v41 = v60;
  v57 = (v60 + 16);
  v59 = 0x80000001DCA84F10;
  v55 = (v60 + 8);
  v42 = (v60 + 32);
  v38 = MEMORY[0x1E69E7CC0];
  v56 = v12;
  while (v40 < *(v32 + 2))
  {
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = *(v41 + 72);
    (*(v41 + 16))(v62, &v32[v43 + v44 * v40], v12);
    if (Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter() == 0xD000000000000013 && v59 == v45)
    {

LABEL_26:
      v47 = *v42;
      (*v42)(v61, v62, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
        v38 = v63;
      }

      v50 = *(v38 + 16);
      v49 = *(v38 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v38 = v63;
      }

      *(v38 + 16) = v50 + 1;
      v51 = v38 + v43 + v50 * v44;
      v12 = v56;
      result = (v47)(v51, v61, v56);
      v41 = v60;
      goto LABEL_20;
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_26;
    }

    result = (*v55)(v62, v12);
LABEL_20:
    if (v58 == ++v40)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [Siri_Nlu_External_UserDialogAct] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMd, &_sSay12SiriNLUTypes0A27_Nlu_External_UserDialogActVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Siri_Nlu_External_UserDialogAct] and conformance [A]);
  }

  return result;
}

unint64_t type metadata accessor for NSProcessInfo()
{
  result = lazy cache variable for type metadata for NSProcessInfo;
  if (!lazy cache variable for type metadata for NSProcessInfo)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSProcessInfo);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(uint64_t a1)
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

  return closure #1 in closure #1 in closure #1 in ServerFallbackCapableRequestProcessor.submitAllFlowOutput(rcState:turn:)(a1, v4, v5, v6, v7, v9, v8);
}

void *ServerFallbackDisablingUtils.__allocating_init(selfEmitter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

id ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(v10, a2, a3) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a4;
  v15[6] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:), v15);

  v16 = [objc_opt_self() sharedPreferences];
  v17 = [v16 shouldDisableServerFallbackDomain];

  return v17;
}

uint64_t one-time initialization function for fallbackDisabledOverride()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSgSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  static ServerFallbackDisablingUtils.fallbackDisabledOverride = result;
  return result;
}

uint64_t static ServerFallbackDisablingUtils.fallbackDisabledOverride.getter()
{
  if (one-time initialization token for fallbackDisabledOverride != -1)
  {
    swift_once();
  }
}

void *ServerFallbackDisablingUtils.init(selfEmitter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)(a5, a6);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:), 0, 0);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:)()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v2 = MEMORY[0x1E12A1410](0xD000000000000024, 0x80000001DCA87D00);
  v3 = [v1 initWithUUIDString_];
  v0[5] = v3;

  if (v3)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
    v7 = MEMORY[0x1E12A1410](v5, v4);
    v8 = [v6 initWithUUIDString_];
    v0[6] = v8;

    if (v8)
    {
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:);

      return ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)(v3, 0xD000000000000026, 0x80000001DCA87D30, v8);
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC659000, v12, v13, "[ServerFallbackDisablingUtils] Unable to emit trigger logging due to invalid IDs", v14, 2u);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

{

  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerLoggingForServerFallbackExperiment(requestID:), 0, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ServerFallbackDisablingUtils.logServerFallbackDeprecatedSelfEvent(forResultCandidateId:executionRequestId:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ServerFallbackReason();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v11, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E69D0780], v12);
    if (v16(v11, 1, v12) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = specialized ServerFallbackDisablingUtils.createServerFallbackDeprecatedEvent(requestId:resultCandidateId:serverFallbackReason:)(a3, a4, a1, v28, v15);
  if (v17)
  {
    v18 = v17;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.instrumentation);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v20, v21, "[ServerFallbackDisablingUtils] ServerFallbackDeprecatedSelfEvent", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    (*(v27 + 24))(v18);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.instrumentation);
    v18 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DC659000, v18, v24, "[ServerFallbackDisablingUtils] ServerFallbackDeprecatedSelfEvent failed to generate event", v25, 2u);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:), 0, 0);
}

uint64_t ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:)()
{
  v25 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v3, static Logger.executor);
  v4 = v2;

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 138412802;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2080;
    v15 = v11;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v8, &v24);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    v13[1] = v9;
    v16 = v9;
    _os_log_impl(&dword_1DC659000, v6, v7, "[ServerFallbackDisablingUtils] Attempting to emit trigger logging for codePathID: %@, namespace: %s, request: %@ ", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v18 = v0[3];
  v17 = v0[4];
  v0[8] = *(v0[6] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v19 = swift_allocObject();
  v0[9] = v19;
  *(v19 + 16) = xmmword_1DCA66060;
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;
  v23 = (*MEMORY[0x1E6985F98] + MEMORY[0x1E6985F98]);

  v20 = swift_task_alloc();
  v0[10] = v20;
  *v20 = v0;
  v20[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  v21 = v0[2];

  return v23(v21, v19);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:), 0, 0);
  }

  else
  {

    v3 = v2[5];
    v7 = (*MEMORY[0x1E6985F90] + MEMORY[0x1E6985F90]);
    v4 = swift_task_alloc();
    v2[12] = v4;
    *v4 = v2;
    v4[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
    v5 = v2[2];

    return v7(v5, v3);
  }
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  }

  else
  {
    v2 = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v6, &v17);
    *(v10 + 22) = 2112;
    *(v10 + 24) = v7;
    v11[1] = v7;
    v14 = v7;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ServerFallbackDisablingUtils] Emit trigger logging successfully for codePathID: %@, namespace: %s, request: %@ ", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15();
}

{
  v28 = v0;
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[2];

  v4 = v3;

  v5 = v2;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = v0[5];
    v25 = v0[4];
    v12 = v0[2];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 138413058;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2080;
    v17 = v12;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v25, &v27);
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    v15[1] = v11;
    *(v14 + 32) = 2112;
    v18 = v11;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    v15[2] = v20;
    _os_log_impl(&dword_1DC659000, v7, v8, "[ServerFallbackDisablingUtils] Unable to cache trial experiment IDs for codePathID: %@, namespace: %s, request: %@, error: %@", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  else
  {
  }

  v21 = v0[5];
  v26 = (*MEMORY[0x1E6985F90] + MEMORY[0x1E6985F90]);
  v22 = swift_task_alloc();
  v0[12] = v22;
  *v22 = v0;
  v22[1] = ServerFallbackDisablingUtils.emitTriggerWithCachingForUUID(codePathId:namespace:requestID:);
  v23 = v0[2];

  return v26(v23, v21);
}

{
  v24 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 104);
  if (v8)
  {
    v10 = *(v0 + 40);
    v22 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 138413058;
    *(v13 + 4) = v11;
    *v14 = v11;
    *(v13 + 12) = 2080;
    v16 = v11;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v22, &v23);
    *(v13 + 22) = 2112;
    *(v13 + 24) = v10;
    v14[1] = v10;
    *(v13 + 32) = 2112;
    v17 = v10;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v19;
    v14[2] = v19;
    _os_log_impl(&dword_1DC659000, v6, v7, "[ServerFallbackDisablingUtils] Unable to emit trigger logging for codePathID: %@, namespace: %s, request: %@, error: %@", v13, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t ServerFallbackDisablingUtils.redirectFallbackAttempt(executionRequestId:rootRequestId:rcId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a5;
  v53 = a3;
  v54 = a4;
  v57 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v46 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_UserParse();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = *MEMORY[0x1E69D0780];
  v23 = type metadata accessor for ServerFallbackReason();
  v24 = *(v23 - 8);
  v25 = *(v24 + 104);
  v51 = v22;
  v50 = v25;
  v25(v17, v22, v23);
  v26 = *(v24 + 56);
  v26(v17, 0, 1, v23);
  if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(1, v20, v17))
  {
    v46 = v26;
    v49 = a6;
    v27 = type metadata accessor for TaskPriority();
    v28 = 1;
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v56;
    v29[5] = a1;
    v47 = a1;
    v29[6] = a2;

    v48 = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)partial apply, v29);

    v30 = [objc_opt_self() sharedPreferences];
    v31 = [v30 shouldDisableServerFallbackDomain];

    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (v31)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.executor);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v54;
      v38 = v47;
      v37 = v48;
      if (v35)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "[ServerFallbackDisablingUtils] Server fallback disabled; redirect to gibberish response", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v40 = v36;
      v41 = v53;
      v42 = v46;
      if (!v36)
      {

        v41 = v38;
        v40 = v37;
      }

      v43 = v52;
      v50(v52, v51, v23);
      v42(v43, 0, 1, v23);

      ServerFallbackDisablingUtils.logServerFallbackDeprecatedSelfEvent(forResultCandidateId:executionRequestId:serverFallbackReason:)(v55, v49, v41, v40, v43);

      outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult()(v57);
      v28 = 0;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v28 = 1;
  }

  v44 = type metadata accessor for ConversationCommitResult(0);
  return (*(*(v44 - 8) + 56))(v57, v28, 1, v44);
}

uint64_t static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult()@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for Parse();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Input();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HandcraftedPluginManifestEntry();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PluginAction();
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v19 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse.DirectInvocation();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of static ServerFallbackDisablingUtils.createCAMFallbackConversationCommitResult());
  outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5826960, &_sSS_SStMd, &_sSS_SStMR);
  static CamDirectInvocationIdentifiers.fallback.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

  Parse.DirectInvocation.init(identifier:userData:)();
  (*(v6 + 104))(v8, *MEMORY[0x1E69D00A0], v5);
  HandcraftedPluginManifestEntry.rawValue.getter();
  (*(v6 + 8))(v8, v5);
  v16 = v23;
  (*(v12 + 16))(v23, v14, v11);
  (*(v24 + 104))(v16, *MEMORY[0x1E69D0158], v25);
  Input.init(parse:)();
  v17 = v19;
  PluginAction.init(flowHandlerId:input:)();
  (*(v12 + 8))(v14, v11);
  (*(v20 + 32))(v26, v17, v21);
  type metadata accessor for ConversationCommitResult(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(int a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v77 - v22;
  v24 = [objc_opt_self() sharedPreferences];
  v25 = [v24 languageCode];

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = objc_opt_self();
  v80 = v26;
  v30 = MEMORY[0x1E12A1410](v26, v28);
  v31 = &selRef_isDomainServerFallbackDisabledForLocale_;
  v79 = a1;
  if ((a1 & 1) == 0)
  {
    v31 = &selRef_isNLServerFallbackDisabledForLocale_;
  }

  v32 = [v29 *v31];

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v33 = type metadata accessor for Siri_Nlu_External_UserParse();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v23, 1, v33) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  }

  else
  {
    v35 = Siri_Nlu_External_UserParse.isNlv3FallbackException.getter();
    (*(v34 + 8))(v23, v33);
    if (v35)
    {
      v36 = v79;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.executor);
      v38 = v78;
      outlined init with copy of ReferenceResolutionClientProtocol?(v81, v78, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v82 = v42;
        *v41 = 136315650;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v28, &v82);

        *(v41 + 4) = v43;
        *(v41 + 12) = 1024;
        *(v41 + 14) = v36 & 1;
        *(v41 + 18) = 2080;
        outlined init with copy of ReferenceResolutionClientProtocol?(v38, v18, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v44 = type metadata accessor for ServerFallbackReason();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(v18, 1, v44) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
          v46 = 0;
          v47 = 0xE000000000000000;
        }

        else
        {
          v46 = ServerFallbackReason.rawValue.getter();
          v47 = v75;
          (*(v45 + 8))(v18, v44);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v38, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v82);

        *(v41 + 20) = v76;
        _os_log_impl(&dword_1DC659000, v39, v40, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns false due to fallback exception", v41, 0x1Cu);
        swift_arrayDestroy();
        v74 = v42;
        goto LABEL_36;
      }

      v68 = v38;
LABEL_28:
      outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      return 0;
    }
  }

  if ((v32 & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol?(v81, v15, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

    v39 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v61))
    {
      v41 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v82 = v62;
      *v41 = 136315650;
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v28, &v82);

      *(v41 + 4) = v63;
      *(v41 + 12) = 1024;
      *(v41 + 14) = v79 & 1;
      *(v41 + 18) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol?(v15, v12, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v64 = type metadata accessor for ServerFallbackReason();
      v65 = *(v64 - 8);
      if ((*(v65 + 48))(v12, 1, v64) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v66 = 0;
        v67 = 0xE000000000000000;
      }

      else
      {
        v66 = ServerFallbackReason.rawValue.getter();
        v67 = v72;
        (*(v65 + 8))(v12, v64);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, &v82);

      *(v41 + 20) = v73;
      _os_log_impl(&dword_1DC659000, v39, v61, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns false due to feature flag", v41, 0x1Cu);
      swift_arrayDestroy();
      v74 = v62;
LABEL_36:
      MEMORY[0x1E12A2F50](v74, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);

      return 0;
    }

    v68 = v15;
    goto LABEL_28;
  }

  v48 = v80;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v81, v9, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v82 = v53;
    *v52 = 136315650;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v28, &v82);

    *(v52 + 4) = v54;
    *(v52 + 12) = 1024;
    *(v52 + 14) = v79 & 1;
    *(v52 + 18) = 2080;
    v55 = v77;
    outlined init with copy of ReferenceResolutionClientProtocol?(v9, v77, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v56 = type metadata accessor for ServerFallbackReason();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    else
    {
      v58 = ServerFallbackReason.rawValue.getter();
      v59 = v69;
      (*(v57 + 8))(v55, v56);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v82);

    *(v52 + 20) = v70;
    _os_log_impl(&dword_1DC659000, v50, v51, "[ServerFallbackDisablingUtils] shouldDisableServerFallback check for inputLocale =  %s, isDomainDirected = %{BOOL}d, serverFallbackReason = %s returns true", v52, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v53, -1, -1);
    MEMORY[0x1E12A2F50](v52, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  }

  return 1;
}

uint64_t specialized ServerFallbackDisablingUtils.shouldDisableServerFallbackWithABDecision(isDomainDirected:topNlParse:serverFallbackReason:)(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for fallbackDisabledOverride != -1)
  {
    swift_once();
  }

  v6 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
  os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if (specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(a1 & 1, a2, a3))
    {
      v8 = [objc_opt_self() sharedPreferences];
      LOBYTE(os_unfair_lock_opaque_low) = [v8 shouldDisableServerFallbackDomain];
    }

    else
    {
      LOBYTE(os_unfair_lock_opaque_low) = 0;
    }
  }

  return os_unfair_lock_opaque_low & 1;
}

uint64_t partial apply for closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t specialized ServerFallbackDisablingUtils.mapServerFallbackReasonToLoggingReason(serverFallbackReason:)(uint64_t a1)
{
  v2 = type metadata accessor for ServerFallbackReason();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v7 != *MEMORY[0x1E69D0788])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

void *specialized ServerFallbackDisablingUtils.createServerFallbackDeprecatedEvent(requestId:resultCandidateId:serverFallbackReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.executor);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v16, v17, "[ServerFallbackDisablingUtils] Invalid requestId when logging nlV3ServerFallbackDeprecated", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  v19 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v21 = [v19 initWithNSUUID_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69CF320]) init];
  v23 = v22;
  if (v22)
  {
    [v22 setRequestId_];
    v24 = v23;
    if (a4)
    {
      v25 = MEMORY[0x1E12A1410](a3, a4);
    }

    else
    {
      v25 = 0;
    }

    [v23 setResultCandidateId_];
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69CF308]) init];
  if (v26)
  {
    v27 = v26;
    [v26 setEventMetadata_];
    v28 = [objc_allocWithZone(MEMORY[0x1E69CF3B0]) init];
    if (v28)
    {
      v29 = v28;
      [v28 setFallbackReason_];
      [v27 setNlv3ServerFallbackDeprecated_];

      (*(v12 + 8))(v14, v11);
      return v27;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.executor);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "[ServerFallbackDisablingUtils] Failed to create nlV3ServerFallbackDeprecated event", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);

      goto LABEL_26;
    }

LABEL_25:
    goto LABEL_26;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.executor);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v32, v33))
  {

    goto LABEL_25;
  }

  v34 = swift_slowAlloc();
  *v34 = 0;
  _os_log_impl(&dword_1DC659000, v32, v33, "[ServerFallbackDisablingUtils] Failed to create orchestrationEventWrapper when logging nlV3ServerFallbackDeprecated", v34, 2u);
  MEMORY[0x1E12A2F50](v34, -1, -1);

LABEL_26:
  (*(v12 + 8))(v14, v11);
  return 0;
}

uint64_t closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in ServerFallbackDisablingUtils.shouldDisableServerFallbackWithTriggerLoggingAndABDecision(isDomainDirected:topNlParse:serverFallbackReason:executionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServerFTMRule.__allocating_init(overrideFTMAsPerServer:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = 3;
  *(result + 17) = a1;
  return result;
}

uint64_t ServerFTMRule.init(overrideFTMAsPerServer:)(char a1)
{
  *(v1 + 16) = 3;
  *(v1 + 17) = a1;
  return v1;
}

SiriKitRuntime::PreExecutionDecision __swiftcall ServerFTMRule.evaluate()()
{
  if (*(v0 + 17))
  {
    return 3;
  }

  else
  {
    return 11;
  }
}

id ServerPromptData.__allocating_init(nlContext:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(a1, v3 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v4;
}

id ServerPromptData.init(coder:)(void *a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28[-v7];
  v9 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA87DD0, v11);
  v15 = [a1 decodeObjectForKey_];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v29 = v35;
  v30 = v36;
  if (!*(&v36 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v29, &_sypSgMd, &_sypSgMR);
    (*(v10 + 56))(&v3[OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext], 1, 1, v9);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v17 = v32;
    v16 = v33;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    outlined copy of Data._Representation(v32, v33);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext();
    Message.init(serializedData:extensions:partial:options:)();
    outlined consume of Data._Representation(v17, v16);
    v23 = *(v10 + 56);
    v23(v8, 0, 1, v9);
    v24 = *(v10 + 32);
    v24(v13, v8, v9);
    v25 = OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext;
    v24(&v3[OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext], v13, v9);
    v23(&v3[v25], 0, 1, v9);
LABEL_13:
    v26 = type metadata accessor for ServerPromptData(0);
    v34.receiver = v3;
    v34.super_class = v26;
    v27 = objc_msgSendSuper2(&v34, sel_init);

    return v27;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DC659000, v19, v20, "Failed to decode the legacyNLContext", v21, 2u);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  type metadata accessor for ServerPromptData(0);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ServerPromptData.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(v1 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    isa = 0;
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext();
    v11 = Message.serializedData(partial:)();
    v12 = v14;
    (*(v7 + 8))(v9, v6);
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v13 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA87DD0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v13];
  swift_unknownObjectRelease();

  outlined consume of Data?(v11, v12);
}

id ServerPromptData.init(nlContext:)(uint64_t a1)
{
  outlined init with copy of Siri_Nlu_External_LegacyNLContext?(a1, v1 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ServerPromptData(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  return v3;
}

uint64_t outlined init with copy of Siri_Nlu_External_LegacyNLContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ServerPromptData.init(serializedBackingStore:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  outlined init with copy of Any(a1, v25);
  if (swift_dynamicCast())
  {
    v9 = v23;
    v8 = v24;
    type metadata accessor for NSKeyedUnarchiver();
    static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)();
    if (!v26)
    {
      outlined consume of Data._Representation(v9, v8);
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sypSgMd, &_sypSgMR);
      goto LABEL_8;
    }

    type metadata accessor for ServerPromptData(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      outlined consume of Data._Representation(v9, v8);
      goto LABEL_8;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v17 = v23;
    outlined init with copy of Siri_Nlu_External_LegacyNLContext?(v23 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, v6);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DC659000, v11, v19, "Decoded the ServerPromptData", v20, 2u);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    outlined consume of Data._Representation(v9, v8);
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
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "The backing store for ServerPromptData is not of type Data", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

LABEL_8:
  outlined init with take of Siri_Nlu_External_LegacyNLContext?(v6, v2 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext);
  v14 = type metadata accessor for ServerPromptData(0);
  v22.receiver = v2;
  v22.super_class = v14;
  v15 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v15;
}

uint64_t type metadata accessor for ServerPromptData(uint64_t a1)
{
  result = type metadata singleton initialization cache for ServerPromptData;
  if (!type metadata singleton initialization cache for ServerPromptData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ServerPromptData.serializedBackingStore()(uint64_t *a1@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v14];
  v4 = v14[0];
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v8 = v4;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Failed to encode the server prompt context", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v5 = 0;
    v7 = 0xC000000000000000;
  }

  a1[3] = MEMORY[0x1E6969080];
  *a1 = v5;
  a1[1] = v7;
}

id ServerPromptData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ServerPromptData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerPromptData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext)
  {
    type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext);
  }

  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_LegacyNLContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ServerPromptData(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_LegacyNLContext?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Siri_Nlu_External_LegacyNLContext?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_LegacyNLContext?)
  {
    type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Siri_Nlu_External_LegacyNLContext?);
    }
  }
}

uint64_t ServiceBridgeDelegateXPCWrapper.__allocating_init(wrapping:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ServiceBridgeDelegateXPCWrapper.init(wrapping:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:), v6, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)()
{
  v1 = v0[6];
  v2 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 24))(v1, ObjectType, v2);
  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(a1, v4, v5, v7, v6);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = one-time initialization token for shared;

  v13 = a1;

  if (v12 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v4;
  v16[5] = v13;
  v16[6] = a2;
  v16[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:), v16);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:), v8, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 32))(v3, v1, v2, ObjectType, v4);
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:errorString:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = one-time initialization token for shared;

  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static MessageBusActor.shared;
  v12 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  *(v13 + 32) = v2;
  *(v13 + 40) = v10;
  *(v13 + 48) = a2 & 1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:), v13);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 40) + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 16))(v2, v1, ObjectType, v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:needsUserInput:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.close(withExecutionOutput:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = one-time initialization token for shared;

  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v13 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v3;
  v14[5] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a3, v14);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  v6[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  v6 = *MEMORY[0x1E69D0780];
  v7 = type metadata accessor for ServerFallbackReason();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v1, v6, v7);
  (*(v8 + 56))(v1, 0, 1, v7);
  (*(v4 + 48))(v3, v2, v1, ObjectType, v4);
  outlined destroy of ServerFallbackReason?(v1);

  v9 = v0[1];

  return v9();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v16);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 56))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fallbackToInfoDomainResults(forResultCandidateId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = one-time initialization token for shared;
  swift_retain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a3;
  v17[6] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 112))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoffFailed(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchContexts(for:includesNearByDevices:completion:)(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 128))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchSpeechInfo(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v28 = a5;
  v29 = a7;
  v27 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static MessageBusActor.shared;
  v21 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v9;
  v22[5] = a1;
  v24 = v27;
  v23 = v28;
  v22[6] = a2;
  v22[7] = v24;
  v22[8] = a4;
  v22[9] = v23;
  v25 = v29;
  v22[10] = a6;
  v22[11] = v25;
  v22[12] = a8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:), v22);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 104) = v14;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:), v9, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)()
{
  v1 = v0[12];
  v12 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 136))(v7, v6, v5, v4, v3, v2, v1, v12, ObjectType, v8);
  v10 = v0[1];

  return v10();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = static MessageBusActor.shared;
  v15 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v16);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 152))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ServiceBridgeDelegateXPCWrapper.fetchRecentDialogs(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = one-time initialization token for shared;
  swift_retain_n();

  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = static MessageBusActor.shared;
  v19 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = a1;
  v20[5] = a6;
  v20[6] = v15;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, a7, v20);
}

uint64_t ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = one-time initialization token for shared;

  v16 = a1;

  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static MessageBusActor.shared;
  v18 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v7;
  v19[5] = v16;
  v19[6] = a2;
  v19[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, a5, v19);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:), v8, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 184))(v3, v1, v2, ObjectType, v4);
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.submitExternalActivationRequest(withRequestInfo:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

  outlined copy of Data._Representation(a1, a2);
  v14 = one-time initialization token for shared;

  if (v14 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static MessageBusActor.shared;
  v16 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v5;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:), v17);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:), v9, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v5 + 192))(v4, v3, v1, v2, ObjectType, v5);
  v7 = v0[1];

  return v7();
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.postToMessageBus(message:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t outlined destroy of ServerFallbackReason?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for RecentDialog();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t *ServiceBridgeHelper.executionBridgeXPCInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  return &static ServiceBridgeHelper.executionBridgeXPCInterface;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecentDialog();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t one-time initialization function for executionBridgeXPCInterface()
{
  result = closure #1 in variable initialization expression of static ServiceBridgeHelper.executionBridgeXPCInterface();
  static ServiceBridgeHelper.executionBridgeXPCInterface = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static ServiceBridgeHelper.executionBridgeXPCInterface()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA65720;
  v1 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo5NSSetCmMd, &_sSo5NSSetCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCmMd, &_sSo8NSStringCmMR);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

id static ServiceBridgeHelper.executionBridgeXPCInterface.getter()
{
  if (one-time initialization token for executionBridgeXPCInterface != -1)
  {
    swift_once();
  }

  v1 = static ServiceBridgeHelper.executionBridgeXPCInterface;

  return v1;
}

uint64_t ServiceBridgeErrorHandlingProxy.__allocating_init(wrapping:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    *(v1 + 16) = v2;
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v4 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v4);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

uint64_t ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  aBlock[4] = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:);
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_23;
  v7 = _Block_copy(aBlock);

  v8 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return v15;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v14 = swift_allocError();
    a1();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }
}

void specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void *a1)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, oslog, v4, "ServiceBridgeXPC proxy encountered an error (likely assistantd crash?) All calls to this instance of Execution Bridge will fail for the remainder of this turn: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(void *a1, uint64_t (*a2)(void *))
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v6, v7, "ServiceBridgeXPC proxy encountered an error (likely assistantd crash?) All calls to this instance of Execution Bridge will fail for the remainder of this turn: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t ServiceBridgeErrorHandlingProxy.init(wrapping:)(uint64_t a1)
{
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    *(v1 + 16) = v2;
    return v1;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v4 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v4);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

void ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{

  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a2, a3);

  if (v7)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_3_3;
    v8 = _Block_copy(v9);

    [v7 submitWithExecutionOutput:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void *ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:errorString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_321);
  if (result)
  {
    v8 = result;
    v9 = MEMORY[0x1E12A1410](a2, a3);
    [v8 closeWithExecutionOutput:a1 errorString:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:needsUserInput:)(uint64_t a1, char a2)
{
  v3 = v2;
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_318);
  if (result)
  {
    [result closeWithExecutionOutput:a1 needsUserInput:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v4, a2, a3);
  if (result)
  {
    [result *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ServiceBridgeErrorHandlingProxy.fallbackToServer(forResultCandidateId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v5, a3, a4);
  if (result)
  {
    v10 = result;
    if (a2)
    {
      a2 = MEMORY[0x1E12A1410](a1, a2);
    }

    [v10 *a5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.fallbackToServer(forResultCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v12, a4, a5);
  if (v13)
  {
    v14 = v13;
    if (v11)
    {
      v15 = MEMORY[0x1E12A1410](v9, v11);
    }

    else
    {
      v15 = 0;
    }

    [v14 *a6];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = _s10ObjectiveC8ObjCBoolVIeyBhy_SbIeghy_TRTA_0;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v8[3] = &block_descriptor_181_0;
    v6 = _Block_copy(v8);

    [v5 prepareForAudioHandoffWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
    v8[3] = &block_descriptor_6_2;
    v7 = _Block_copy(v8);

    [v6 prepareForAudioHandoffWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8[3] = &block_descriptor_161_0;
    v6 = _Block_copy(v8);

    [v5 prepareForAudioHandoffFailedWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v8[3] = &block_descriptor_9_3;
    v7 = _Block_copy(v8);

    [v6 prepareForAudioHandoffFailedWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v4, a3, a4);

  if (v8)
  {
    isa = Set._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [AFServiceDeviceContext]?) -> ();
    v11[3] = &block_descriptor_12_1;
    v10 = _Block_copy(v11);

    [v8 fetchContextsFor:isa includesNearByDevices:a2 & 1 completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ConversationCanHandleResult) -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ();
    v8[3] = &block_descriptor_121;
    v6 = _Block_copy(v8);

    [v5 fetchSpeechInfoWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ();
    v8[3] = &block_descriptor_15_0;
    v7 = _Block_copy(v8);

    [v6 fetchSpeechInfoWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AFSpeechInfo?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void specialized ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a8;
  _Block_copy(a8);
  v17 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a7, a8);
  _Block_release(a8);
  if (v17)
  {
    v18 = MEMORY[0x1E12A1410](a1, a2);
    v19 = MEMORY[0x1E12A1410](a3, a4);
    v20 = MEMORY[0x1E12A1410](a5, a6);
    v22[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> ();
    v22[5] = v16;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v22[3] = &block_descriptor_101_0;
    v21 = _Block_copy(v22);

    [v17 retriggerOriginalRequestWithExecutionRequestId:v18 forUserId:v19 givenCurrentExecutionRequestId:v20 reply:v21];
    swift_unknownObjectRelease();
    _Block_release(v21);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;

  v18 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v9, a7, a8);

  if (v18)
  {
    v19 = MEMORY[0x1E12A1410](a1, a2);
    v20 = MEMORY[0x1E12A1410](a3, a4);
    v21 = MEMORY[0x1E12A1410](a5, a6);
    v23[4] = a7;
    v23[5] = a8;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v23[3] = &block_descriptor_18_0;
    v22 = _Block_copy(v23);

    [v18 retriggerOriginalRequestWithExecutionRequestId:v19 forUserId:v20 givenCurrentExecutionRequestId:v21 reply:v22];
    swift_unknownObjectRelease();
    _Block_release(v22);
  }
}

Swift::Void __swiftcall ServiceBridgeErrorHandlingProxy.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  v2 = v1;
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v2, specialized closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:), &block_descriptor_251);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E12A1410](countAndFlagsBits, object);
    [v6 closeServerRequestForExecutionRequestId_];

    swift_unknownObjectRelease();
  }
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a1, a2);
  _Block_release(a2);
  if (v5)
  {
    v8[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray) -> ();
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ();
    v8[3] = &block_descriptor_81;
    v6 = _Block_copy(v8);

    [v5 fetchRecentDialogsWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)(void (*a1)(void), uint64_t a2)
{
  v3 = v2;

  v6 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a1, a2);

  if (v6)
  {
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ();
    v8[3] = &block_descriptor_21_0;
    v7 = _Block_copy(v8);

    [v6 fetchRecentDialogsWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v7);
  }
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a2, a3);
  _Block_release(a3);
  if (v7)
  {
    v10[4] = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_61_0;
    v8 = _Block_copy(v10);

    [v7 submitExternalActivationRequestWithRequestInfo:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{

  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v3, a2, a3);

  if (v7)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_24_0;
    v8 = _Block_copy(v9);

    [v7 submitExternalActivationRequestWithRequestInfo:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void specialized ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a3, a4);
  _Block_release(a4);
  if (v7)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ();
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_40;
    v9 = _Block_copy(v10);

    [v7 postToMessageBusWithMessage:isa completion:v9];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }

  else
  {
  }
}

void ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v5 = v4;

  v8 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v5, a3, a4);

  if (v8)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v11[3] = &block_descriptor_27_0;
    v10 = _Block_copy(v11);

    [v8 postToMessageBusWithMessage:isa completion:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

Swift::Int ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError()
{
  result = lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError;
  if (!lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError;
  if (!lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError);
  }

  return result;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_335;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_237_0;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_226;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v18;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v16 = swift_allocError();
    a2(0, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoff(completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_306;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_295;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2();
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchContexts(for:includesNearByDevices:completion:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_284_0;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchSpeechInfo(reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_273;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.retriggerOriginalRequest(withExecutionRequestId:forUserId:givenCurrentExecutionRequestId:reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_262;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(0);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in ServiceBridgeErrorHandlingProxy.fetchRecentDialogs(reply:)partial apply;
  *(v8 + 24) = v6;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_248;
  v9 = _Block_copy(aBlock);

  v10 = [v7 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = v17;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.executor);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    a2(MEMORY[0x1E69E7CC0]);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v11;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.prepareForAudioHandoffFailed(completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_175_0;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v16;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.executor);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    a2[2](a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

id SessionConfiguration.xpcRepresentation.getter()
{
  v1 = type metadata accessor for SessionConfiguration();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  v6 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
  return SessionConfigurationXPC.init(sessionConfiguration:)(v4);
}

uint64_t SessionConfigurationXPC.CodingKeys.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0xD000000000000010;
  }
}

SiriKitRuntime::SessionConfigurationXPC::CodingKeys_optional __swiftcall SessionConfigurationXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SessionConfigurationXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_SessionConfigurationXPC_CodingKeys_sessionId;
  }

  else
  {
    v4.value = SiriKitRuntime_SessionConfigurationXPC_CodingKeys_unknownDefault;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SessionConfigurationXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x496E6F6973736573;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001DCA7B670;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x496E6F6973736573;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0x80000001DCA7B670;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SessionConfigurationXPC.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SessionConfigurationXPC.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SessionConfigurationXPC.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SessionConfigurationXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SessionConfigurationXPC.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance SessionConfigurationXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DCA7B670;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000064;
  }

  *a1 = v3;
  a1[1] = v2;
}

id SessionConfigurationXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionConfigurationXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionConfigurationXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SessionConfigurationXPC.CodingKeys and conformance SessionConfigurationXPC.CodingKeys);
  }

  return result;
}

id protocol witness for XPCConvertible.xpcRepresentation.getter in conformance SessionConfiguration(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v1);
  v5 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
  return SessionConfigurationXPC.init(sessionConfiguration:)(v3);
}

SiriKitRuntime::SettingsAffinityScorer __swiftcall SettingsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CC00;
  v1 = 0xD000000000000029;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t UsoTask.firstUserEntityNamesIdentifier()@<X0>(unint64_t a1@<X8>)
{
  v4 = type metadata accessor for UsoIdentifier();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UsoTask.arguments.getter();
  if (!*(v7 + 16))
  {
    goto LABEL_25;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x69746E4572657375, 0xEC00000073656974);
  if ((v9 & 1) == 0)
  {
    goto LABEL_25;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  if (v10 >> 62)
  {
    goto LABEL_60;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_8;
  }

  __break(1u);
LABEL_65:
  v14 = __CocoaSet.count.getter();
  while (2)
  {
    v15 = 0;
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    while (v14 != v15)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12A1FE0](v15, v2);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v15 >= *(a1 + 16))
        {
          goto LABEL_55;
        }

        v10 = *(v2 + 8 * v15 + 32);

        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_25;
          }

          goto LABEL_5;
        }
      }

      v17 = dispatch thunk of UsoValue.getAsEntity()();

      ++v15;
      if (v17)
      {
        v10 = &v46;
        MEMORY[0x1E12A1680](v18);
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v44 = v46;
        v15 = v16;
      }
    }

    v21 = v44;
    if (v44 >> 62)
    {
      v10 = v44;
      v22 = __CocoaSet.count.getter();
      v21 = v10;
      if (v22)
      {
        goto LABEL_32;
      }

LABEL_67:
      v2 = MEMORY[0x1E69E7CC0];
LABEL_68:

      v32 = *(v2 + 16);
      if (v32)
      {
        v33 = 0;
        result = v45;
        v34 = (v45 + 8);
        while (v33 < *(v2 + 16))
        {
          v35 = (*(v45 + 16))(v6, v2 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, v4);
          MEMORY[0x1EEE9AC00](v35);
          v39[-2] = v6;
          v36 = v43;
          v37 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #3 in UsoTask.firstUserEntityNamesIdentifier(), &v39[-4], &outlined read-only object #0 of one-time initialization function for kSupportedUserEntityNamesIdentifierNamespaces);
          v43 = v36;
          if (v37)
          {

            v38 = v40;
            (*(v45 + 32))(v40, v6, v4);
            return (*(v45 + 56))(v38, 0, 1, v4);
          }

          ++v33;
          result = (*v34)(v6, v4);
          if (v32 == v33)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_73:

        return (*(v45 + 56))(v40, 1, 1, v4);
      }

      return result;
    }

    v22 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_67;
    }

LABEL_32:
    v23 = 0;
    v41 = v21 & 0xFFFFFFFFFFFFFF8;
    v42 = v21 & 0xC000000000000001;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v42)
      {
        v10 = MEMORY[0x1E12A1FE0](v23, v21);
        a1 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v23 >= *(v41 + 16))
        {
          goto LABEL_56;
        }

        v10 = *(v21 + 8 * v23 + 32);

        a1 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      v24 = UsoEntity.usoIdentifiers.getter();

      v10 = *(v24 + 16);
      v25 = *(v2 + 16);
      v26 = v25 + v10;
      if (__OFADD__(v25, v10))
      {
        goto LABEL_57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= *(v2 + 24) >> 1)
      {
        if (!*(v24 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v10;
        }

        else
        {
          v28 = v25;
        }

        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v28, 1, v2);
        if (!*(v24 + 16))
        {
LABEL_33:

          if (v10)
          {
            goto LABEL_58;
          }

          goto LABEL_34;
        }
      }

      if ((*(v2 + 24) >> 1) - *(v2 + 16) < v10)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        break;
      }

LABEL_34:
      ++v23;
      v21 = v44;
      if (a1 == v22)
      {
        goto LABEL_68;
      }
    }

    v29 = *(v2 + 16);
    v30 = __OFADD__(v29, v10);
    v31 = v29 + v10;
    if (!v30)
    {
      *(v2 + 16) = v31;
      goto LABEL_34;
    }

    __break(1u);
LABEL_63:
    MEMORY[0x1E12A1FE0](0, v10);
LABEL_8:

    v11 = dispatch thunk of UsoValue.getAsEntity()();

    if (v11)
    {
      v10 = UsoEntity.attributes.getter();
      if (*(v10 + 16))
      {
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x73656D616ELL, 0xE500000000000000);
        if (v13)
        {
          v40 = a1;
          v2 = *(*(v10 + 56) + 8 * v12);

          v46 = MEMORY[0x1E69E7CC0];
          v39[1] = v11;
          a1 = v2 & 0xFFFFFFFFFFFFFF8;
          if (!(v2 >> 62))
          {
            v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            continue;
          }

          goto LABEL_65;
        }
      }
    }

    break;
  }

LABEL_26:
  v19 = *(v45 + 56);

  return v19(a1, 1, 1, v4);
}