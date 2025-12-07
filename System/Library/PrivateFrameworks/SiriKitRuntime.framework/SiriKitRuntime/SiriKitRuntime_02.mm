uint64_t AceServiceInvokerImpl.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  return v0;
}

uint64_t outlined destroy of ConversationService.EagerResult(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ConversationService.ActiveTurn.deinit()
{
  outlined destroy of ConversationService.EagerResult(v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_turnData, type metadata accessor for RemoteConversationTurnData);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_eventSender));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_aceServiceInvoker));
  v1 = OBJC_IVAR____TtCC14SiriKitRuntime19ConversationService10ActiveTurn_conversationLoggingId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ConversationService.ActiveTurn.__deallocating_deinit()
{
  ConversationService.ActiveTurn.deinit();

  return swift_deallocClassInstance();
}

void destroy for RemoteConversationTurnData(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v8 = a2[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v8, 1, v9))
  {
    (*(v10 + 8))(a1 + v8, v9);
  }

  v11 = a2[9];
  if (!v7(a1 + v11, 1, v5))
  {
    (*(v6 + 8))(a1 + v11, v5);
  }

  v12 = (a1 + a2[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    v14 = *v12;

    outlined consume of Data._Representation(v14, v13);
  }
}

uint64_t SubmissionTaskRegistry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t type metadata accessor for ExecutionOutput(uint64_t a1)
{
  result = type metadata singleton initialization cache for ExecutionOutput;
  if (!type metadata singleton initialization cache for ExecutionOutput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14SiriKitRuntime16PeerInfoProviderCAC0aB4Flow0dE9ProvidingAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_11Tm(uint64_t *a1, uint64_t *a2, void (*a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v3 + v8, v5);
  a3(*(v3 + v9), *(v3 + v9 + 8));

  return MEMORY[0x1EEE6BDD0](v3, v9 + 9, v7 | 7);
}

void RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v99[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v99[-v10];
  v12 = type metadata accessor for RequestType();
  v114 = *(v12 - 8);
  v115 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v99[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v99[-v15];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV_SbtMd, &_s16SiriMessageTypes6UserIDV_SbtMR);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v99[-v17];
  v18 = type metadata accessor for UserID();
  v118 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v99[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v99[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v99[-v23];
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
  v109 = v11;
  v119 = a3;
  v116 = v16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v122[0] = v102;
    *v30 = 136315138;
    v31 = [v26 debugDescription];
    v32 = v26;
    v33 = v25;
    v34 = a2;
    v35 = v31;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v4;
    v37 = v36;
    v38 = v18;
    v40 = v39;

    a2 = v34;
    v25 = v33;
    v26 = v32;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v122);
    v18 = v38;

    *(v30 + 4) = v41;
    v4 = v104;
    _os_log_impl(&dword_1DC659000, v27, v28, "<<<--- %s", v30, 0xCu);
    v42 = v102;
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x1E12A2F50](v42, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  v43 = (*(*v4 + 448))();
  v44 = Logger.logObject.getter();
  if ((v43 & 1) == 0)
  {
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v44, v49, "Handling submit() from Execution kicked off by RSKE", v50, 2u);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    v51 = v116;
    RunSiriKitExecutorProcessor.userMetadata.getter(v116);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    v53 = (*(*(v52 - 8) + 48))(v51, 1, v52);
    v105 = v18;
    v103 = v25;
    if (v53 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
      v54 = 0;
    }

    else
    {
      v104 = a2;
      v55 = v51[*(v52 + 48)];
      v56 = v110;
      v57 = v111;
      v58 = *(v111 + 48);
      v59 = *(v118 + 32);
      (v59)(v110, v51, v18);
      v56[v58] = v55;
      v60 = v56[*(v57 + 48)];
      v116 = v59;
      (v59)(v117, v56, v18);
      v61 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
      v101 = v26;
      LODWORD(v111) = v60;
      if (v61 > 1)
      {
        LODWORD(v110) = 1;
      }

      else
      {
        LODWORD(v110) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v62 = v113;
      v63 = v114;
      v64 = v115;
      v65 = (*(v114 + 16))(v113, v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v115);
      v102 = (*(*v4 + 472))(v65);
      v67 = v117;
      v66 = v118;
      v68 = v112;
      v69 = (*(v118 + 16))(v112, v117, v18);
      v70 = v101;
      v100 = (*((*MEMORY[0x1E69E7D40] & *v101) + 0xB8))(v69);
      (*(v66 + 8))(v67, v18);
      LOBYTE(v67) = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold);
      type metadata accessor for ConversationContextUpdateMetadata(0);
      v54 = swift_allocObject();
      *(v54 + 16) = v110 & 1;
      v71 = v62;
      v26 = v70;
      (*(v63 + 32))(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v71, v64);
      *(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v102;
      (v116)(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, v68, v18);
      *(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = v100 & 1;
      *(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v111;
      *(v54 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v67;
      a2 = v104;
    }

    v72 = v4[6];
    v73 = v4[17];
    v115 = v4[18];
    v116 = v73;
    v117 = v4[3];
    v74 = v4[19];
    v113 = v4[20];
    v114 = v74;
    v112 = v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId;
    v76 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
    v75 = *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);
    v77 = swift_allocObject();
    v77[2] = v4;
    v77[3] = v26;
    v77[4] = a2;
    v77[5] = v119;
    v78 = *(*v72 + 296);
    v79 = v26;

    v78(v79, v116, v115, 0, 0, v4 + 12, v117, v54, v114, v113, v112, v76, v75, partial apply for closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v77);

    if (*(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source))
    {
      if (*(v4 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source) != 1)
      {

        v80 = v105;
LABEL_26:
        v82 = *&v79[OBJC_IVAR___SKRExecutionOutput_command];
        if (v82)
        {
          objc_opt_self();
          v83 = swift_dynamicCastObjCClass();
          if (v83)
          {
            v84 = v83;
            outlined init with copy of ReferenceResolutionClientProtocol?((v4 + 12), &v120, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
            if (v121)
            {
              v119 = v54;
              outlined init with take of NSExtensionProtocol(&v120, v122);
              v85 = *(*v4 + 328);
              v86 = v82;
              v87 = v109;
              v85();
              v88 = v118;
              if ((*(v118 + 48))(v87, 1, v80) != 1)
              {
                v97 = v106;
                (*(v88 + 32))(v106, v87, v80);
                v98 = v122[4];
                __swift_project_boxed_opaque_existential_1(v122, v122[3]);
                specialized static ResponseTextExtractionUtil.extractResponseText(fromAddViews:)(v84);
                (*(v98 + 32))();

                (*(v88 + 8))(v97, v80);
                __swift_destroy_boxed_opaque_existential_1Tm(v122);
                return;
              }

              outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
              __swift_destroy_boxed_opaque_existential_1Tm(v122);
            }

            else
            {
              v89 = v82;
              outlined destroy of ReferenceResolutionClientProtocol?(&v120, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
            }

            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v122[0] = v93;
              *v92 = 136315138;
              (*(*v4 + 328))();
              v94 = String.init<A>(describing:)();
              v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v122);

              *(v92 + 4) = v96;
              _os_log_impl(&dword_1DC659000, v90, v91, "Not updating response text because ContextUpdater is nil or userId = %s", v92, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v93);
              MEMORY[0x1E12A2F50](v93, -1, -1);
              MEMORY[0x1E12A2F50](v92, -1, -1);
            }
          }
        }

LABEL_36:

        return;
      }

      v80 = v105;
    }

    else
    {
      v80 = v105;
    }

    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1DC659000, v44, v45, "Ignoring submit because request already finished", v46, 2u);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v47 = swift_allocError();
  *v48 = 1;
  a2(0, v47);
}

uint64_t sub_1DC68AC9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void, void), uint64_t a13)
{
  v164 = a7;
  v169 = a6;
  v172 = a10;
  v174 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v171 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v152 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v160 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v152 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v152 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v159 = &v152 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v152 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v152 - v34;
  v173 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v173);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v152 - v40;
  if (!a1)
  {
    (a12)(0, 0, v39);
    return;
  }

  v157 = v38;
  v158 = v37;
  v166 = a12;
  v167 = a13;
  v42 = a1;
  v161 = a3;
  v165 = v42;
  v43 = SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(a2, a3, a4, a5);
  if (v43)
  {
    v44 = v43;
    v156 = a2;
    v45 = SABaseCommand.isListenAfterSpeaking.getter();
    v46 = v175;
    v47 = v161;
    v48 = v173;
    if ((v45 & 1) == 0)
    {
      goto LABEL_31;
    }

    v49 = v168;
    if (a8)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v174, v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v50 = v158;
      if ((*(v158 + 48))(v35, 1, v48) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        (*(v50 + 32))(v41, v35, v48);
        if (v47)
        {
          ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)(v164, a8, v41, v156, v47);
          (*(v50 + 8))(v41, v48);
          goto LABEL_31;
        }

        (*(v50 + 8))(v41, v48);
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.conversationBridge);
    outlined init with copy of ReferenceResolutionClientProtocol?(v174, v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v155 = v56;
      v57 = 0x3E6C696E3CLL;
      v58 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      aBlock = v154;
      *v58 = 136315650;
      if (a8)
      {
        v57 = v164;
        v59 = a8;
      }

      else
      {
        v59 = 0xE500000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &aBlock);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      v61 = v159;
      outlined init with copy of ReferenceResolutionClientProtocol?(v49, v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = v158;
      if ((*(v158 + 48))(v61, 1, v48) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v63 = 0xE500000000000000;
        v64 = 0x3E6C696E3CLL;
      }

      else
      {
        v153 = v55;
        v65 = v61;
        v64 = UUID.uuidString.getter();
        v63 = v66;
        v67 = v65;
        v55 = v153;
        (*(v62 + 8))(v67, v48);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v63, &aBlock);

      *(v58 + 14) = v68;
      *(v58 + 22) = 2080;
      if (v47)
      {
        v69 = v156;
      }

      else
      {
        v69 = 0x3E6C696E3CLL;
      }

      if (v47)
      {
        v70 = v47;
      }

      else
      {
        v70 = 0xE500000000000000;
      }

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &aBlock);

      *(v58 + 24) = v71;
      _os_log_impl(&dword_1DC659000, v55, v155, "Cannot send SiriWillPrompt: one of assistantId(%s), sessionId(%s), or requestId(%s) is nil", v58, 0x20u);
      v72 = v154;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v72, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);

      v48 = v173;
    }

    else
    {

      outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

LABEL_31:
    v73 = SABaseCommand.isConfirmation.getter();
    v75 = v170;
    v74 = v171;
    if (v73)
    {
      if (!a8)
      {
LABEL_38:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        __swift_project_value_buffer(v81, static Logger.conversationBridge);
        v82 = v163;
        outlined init with copy of ReferenceResolutionClientProtocol?(v174, v163, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v83, v84))
        {
          LODWORD(v174) = v84;
          v85 = 0x3E6C696E3CLL;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          aBlock = v87;
          *v86 = 136315650;
          if (a8)
          {
            v85 = v164;
            v88 = a8;
          }

          else
          {
            v88 = 0xE500000000000000;
          }

          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v88, &aBlock);

          *(v86 + 4) = v89;
          *(v86 + 12) = 2080;
          v90 = v160;
          outlined init with copy of ReferenceResolutionClientProtocol?(v82, v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v91 = v158;
          v92 = v173;
          if ((*(v158 + 48))(v90, 1, v173) == 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v93 = 0xE500000000000000;
            v94 = 0x3E6C696E3CLL;
          }

          else
          {
            v94 = UUID.uuidString.getter();
            v93 = v95;
            (*(v91 + 8))(v90, v92);
          }

          outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v93, &aBlock);

          *(v86 + 14) = v96;
          *(v86 + 22) = 2080;
          if (v161)
          {
            v97 = v156;
          }

          else
          {
            v97 = 0x3E6C696E3CLL;
          }

          if (v161)
          {
            v98 = v161;
          }

          else
          {
            v98 = 0xE500000000000000;
          }

          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, &aBlock);

          *(v86 + 24) = v99;
          _os_log_impl(&dword_1DC659000, v83, v174, "Cannot send SiriWillAskForConfirmation: one of assistantId(%s), sessionId(%s), or requestId(%s) is nil", v86, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v87, -1, -1);
          MEMORY[0x1E12A2F50](v86, -1, -1);

          v75 = v170;
          v74 = v171;
        }

        else
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        v46 = v175;
        goto LABEL_56;
      }

      v76 = v162;
      outlined init with copy of ReferenceResolutionClientProtocol?(v174, v162, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v77 = v158;
      if ((*(v158 + 48))(v76, 1, v48) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        goto LABEL_38;
      }

      v78 = v157;
      (*(v77 + 32))(v157, v76, v48);
      if (!v47)
      {
        (*(v77 + 8))(v78, v48);
        goto LABEL_38;
      }

      v79 = v175;
      ConversationOutputSubmitter.sendSiriWillAskForConfirmation(assistantId:sessionId:requestId:)(v164, a8, v78, v156, v47);
      v80 = v78;
      v46 = v79;
      (*(v77 + 8))(v80, v48);
    }

LABEL_56:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      __swift_project_value_buffer(v100, static Logger.conversationBridge);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_1DC659000, v101, v102, "Execution is sending SACFProvideContext which is deprecated in SKY since the handling of this command on server races with a new request. Please use ContextUpdater.SARDNativeFlowContextUpdate instead to ensure consistency of state management on server.", v103, 2u);
        MEMORY[0x1E12A2F50](v103, -1, -1);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v172, v75, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v104 = type metadata accessor for UserID();
      v105 = *(v104 - 8);
      v106 = (*(v105 + 48))(v75, 1, v104);
      v107 = v44;
      if (v106 == 1)
      {
        v108 = outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }

      else
      {
        UserID.sharedUserId.getter();
        v108 = (*(v105 + 8))(v75, v104);
      }

      v109 = (*(*v46 + 176))(v108);
      specialized SAClientBoundCommand.setPersonaData(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
    }

    v182 = &unk_1F5850288;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v172, v74, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v110 = type metadata accessor for UserID();
      v111 = *(v110 - 8);
      v112 = (*(v111 + 48))(v74, 1, v110);
      v113 = v44;
      if (v112 == 1)
      {
        v114 = outlined destroy of ReferenceResolutionClientProtocol?(v74, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      }

      else
      {
        UserID.sharedUserId.getter();
        v114 = (*(v111 + 8))(v74, v110);
      }

      v115 = (*(*v46 + 176))(v114);
      specialized SAClientBoundCommand.setPersonaData(siriSharedUserIdentifier:muxContextMessage:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
    }

    if (v169)
    {
      v116 = one-time initialization token for conversationBridge;
      v117 = v169;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      __swift_project_value_buffer(v118, static Logger.conversationBridge);
      v119 = v44;
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        aBlock = v123;
        *v122 = 136315138;
        v124 = [v119 debugDescription];
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &aBlock);

        *(v122 + 4) = v128;
        _os_log_impl(&dword_1DC659000, v120, v121, "Submitting FlowCommand: %s with commandExecutionInfo", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        MEMORY[0x1E12A2F50](v123, -1, -1);
        MEMORY[0x1E12A2F50](v122, -1, -1);
      }

      v129 = v167;
      v130 = v46[3];
      v131 = swift_allocObject();
      v132 = v166;
      v131[2] = v119;
      v131[3] = v132;
      v131[4] = v129;
      v180 = partial apply for closure #1 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:);
      v181 = v131;
      aBlock = MEMORY[0x1E69E9820];
      v177 = 1107296256;
      v178 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      v179 = &block_descriptor_9;
      v133 = _Block_copy(&aBlock);
      v134 = v119;
      v135 = v117;

      [v130 handleCommand:v134 withExecutionContextMatchingInfo:v135 completion:v133];

      _Block_release(v133);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      __swift_project_value_buffer(v136, static Logger.conversationBridge);
      v137 = v44;
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        aBlock = v141;
        *v140 = 136315138;
        v142 = [v137 debugDescription];
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &aBlock);

        *(v140 + 4) = v146;
        _os_log_impl(&dword_1DC659000, v138, v139, "Submitting FlowCommand: %s", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v141);
        MEMORY[0x1E12A2F50](v141, -1, -1);
        MEMORY[0x1E12A2F50](v140, -1, -1);
      }

      v147 = v166;
      v148 = v167;
      v149 = v46[3];
      v150 = swift_allocObject();
      v150[2] = v137;
      v150[3] = v147;
      v150[4] = v148;
      v180 = partial apply for closure #2 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:);
      v181 = v150;
      aBlock = MEMORY[0x1E69E9820];
      v177 = 1107296256;
      v178 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
      v179 = &block_descriptor_6;
      v151 = _Block_copy(&aBlock);
      v135 = v137;

      [v149 handleCommand:v135 completion:v151];

      _Block_release(v151);
    }

    return;
  }

  lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
  v51 = swift_allocError();
  *v52 = 15;
  v166(0, v51);

  v53 = v165;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 56);
  v7 = StaticString.description.getter();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v6;
  v11 = *(*v5 + 208);

  v11(v7, v9, &async function pointer to partial apply for closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DC68C158()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t type metadata accessor for DecisionEngineResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for DecisionEngineResponse;
  if (!type metadata singleton initialization cache for DecisionEngineResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $defer #1 <A>() in OSSignposter.withIntervalSignpostAsync<A>(_:id:around:)(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v13, v20, v18, v15, v16, v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:), v8, 0);
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t ConversationOutputSubmitter.submit(executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v108 = a7;
  v99 = a6;
  v97 = a5;
  v96 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v94 = &v91 - v22;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v23 = a14;
  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.conversationBridge);

  v26 = a1;
  v103 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v109 = a3;
  v98 = a14;
  v104 = a2;
  v102 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v112[0] = v31;
    *v30 = 136315394;
    v32 = *&v26[OBJC_IVAR___SKRExecutionOutput_command];
    v95 = v16;
    if (v32)
    {
      v33 = [v32 aceId];
      if (v33)
      {
        v34 = v33;
        v35 = a8;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = v36;
        a8 = v35;
        a2 = v104;
      }

      else
      {
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }
    }

    else
    {
      v39 = 7104878;
      v38 = 0xE300000000000000;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v112);

    *(v30 + 4) = v40;
    *(v30 + 12) = 2080;
    if (v109)
    {
      v41 = a2;
    }

    else
    {
      v41 = 7104878;
    }

    if (v109)
    {
      v42 = v109;
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v112);

    *(v30 + 14) = v43;
    _os_log_impl(&dword_1DC659000, v27, v28, "About to submit ExecutionOutput with AceCommand aceId: %s for requestId:<%s>", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);

    v23 = v98;
    v16 = v95;
    v26 = v102;
  }

  else
  {
  }

  v100 = a15;
  v44 = a12;
  v45 = a13;
  v107 = a10;
  v105 = a11;
  v106 = a9;
  v46 = (*(*v16 + 200))();
  v101 = a8;
  if (v46)
  {
    (*(*v46 + 424))(v112, v26);
    v93 = LOBYTE(v112[0]);
    v47 = v26;
    v48 = v109;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v92 = a12;
      v52 = v51;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v95 = v16;
      v91 = v54;
      v112[0] = v54;
      *v52 = 136315650;
      LOBYTE(v110) = v93;
      v55 = SelfReflectionAgentDecision.description.getter();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v112);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      if (v48)
      {
        v58 = v104;
      }

      else
      {
        v58 = 7104878;
      }

      if (v48)
      {
        v59 = v48;
      }

      else
      {
        v59 = 0xE300000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v112);
      v45 = a13;

      *(v52 + 14) = v60;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v47;
      *v53 = v47;
      v61 = v47;
      _os_log_impl(&dword_1DC659000, v49, v50, "Self reflection decision: <%s> for requestId:<%s> execution output: %@", v52, 0x20u);
      outlined destroy of ReferenceResolutionClientProtocol?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = v53;
      v23 = v98;
      MEMORY[0x1E12A2F50](v62, -1, -1);
      v63 = v91;
      swift_arrayDestroy();
      v16 = v95;
      MEMORY[0x1E12A2F50](v63, -1, -1);
      v64 = v52;
      v44 = v92;
      MEMORY[0x1E12A2F50](v64, -1, -1);
    }

    a8 = v101;
    v26 = v102;
    if (v93 != 2)
    {
      LOBYTE(v112[0]) = v93;
      (*(*v16 + 288))(v112, v47, v104, v109, v96, v97, v99, v108, v101, v106, v107, v105, v44, v45, v23, v100);
    }

    a2 = v104;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v99, &v110, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (!v111)
  {
    v74 = a2;
    v75 = v45;
    v76 = v44;
    outlined destroy of ReferenceResolutionClientProtocol?(&v110, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
LABEL_35:
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v77, v78, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    v80 = v109;
    v44 = v76;
    v45 = v75;
    a2 = v74;
    a8 = v101;
    goto LABEL_39;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v110, v112);
  if (!a8)
  {
    v74 = a2;
    v75 = v45;
    v76 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    goto LABEL_35;
  }

  v65 = *&v26[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v65)
  {
    v66 = v45;
    v92 = v44;
    v67 = *(*v16 + 152);

    v68 = v65;
    v69 = v67();
    v70 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v69 & 1);
    v71 = v113;
    v72 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    (*(v72 + 8))(v68, a8, v70, v71, v72);

    v23 = v98;
    v44 = v92;
    v45 = v66;
    a2 = v104;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  v80 = v109;
LABEL_39:
  ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v26, a2, v80, v108, v106, v107, v105, v44, v45);
  v81 = *&v26[OBJC_IVAR___SKRExecutionOutput_command];
  if (a8)
  {
    v82 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
    v83 = type metadata accessor for UserID();
    v84 = *(v83 - 8);
    v85 = a8 + v82;
    v80 = v109;
    v86 = v94;
    (*(v84 + 16))(v94, v85, v83);
    (*(v84 + 56))(v86, 0, 1, v83);
    v87 = *(a8 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
    v88 = *(a8 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
  }

  else
  {
    v89 = type metadata accessor for UserID();
    v86 = v94;
    (*(*(v89 - 8) + 56))(v94, 1, 1, v89);
    v88 = 0;
    v87 = 0;
  }

  HIBYTE(v90) = v88;
  LOBYTE(v90) = v87;
  (*(*v16 + 328))(v81, a2, v80, v96, v97, v108, v106, v107, v105, v86, v90, v23, v100);
  return outlined destroy of ReferenceResolutionClientProtocol?(v86, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

void ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v96 = a8;
  v97 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = &v81 - v17;
  v18 = v9[17];
  v19 = v9[18];
  v91 = v9;
  __swift_project_boxed_opaque_existential_1(v9 + 14, v18);
  if ((*(v19 + 16))(v18, v19))
  {
    v92 = a9;
    v89 = a3;
    ConversationOutputSubmitter.sendDialogEngineOutputMessageIfNecessary(output:requestId:assistantId:sessionId:)(a1, a2, a3, a5, a6, a7);
    v20 = *(a1 + OBJC_IVAR___SKRExecutionOutput_command);
    v93 = a7;
    v94 = a5;
    v86 = a2;
    if (v20)
    {
      v98 = &unk_1F5850288;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v22 = v21;
        v99[0] = MEMORY[0x1E69E7CC0];
        v23 = v20;
        ConversationOutputSubmitter.extractAllCommands(inside:results:)(v22, v99);
        v25 = v99[0];
        v90 = a6;
        v82 = a1;
        v81 = v23;
        if (v99[0] >> 62)
        {
          goto LABEL_54;
        }

        v26 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v27 = v89;
        v28 = v25;
        if (v26)
        {
          v25 = v26;
          v29 = 0;
          v88 = (v82 + OBJC_IVAR___SKRExecutionOutput_executionSource);
          v30 = (v82 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
          v95 = v28 & 0xC000000000000001;
          v85 = v28 & 0xFFFFFFFFFFFFFF8;
          *&v24 = 138412290;
          v83 = v24;
          v87 = (v82 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
          while (1)
          {
            if (v95)
            {
              MEMORY[0x1E12A1FE0](v29, v28);
              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v29 >= *(v85 + 16))
              {
                goto LABEL_53;
              }

              swift_unknownObjectRetain();
              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                v26 = __CocoaSet.count.getter();
                goto LABEL_6;
              }
            }

            v100[0] = 0;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                break;
              }
            }

            v33 = type metadata accessor for FlowOutputMessage.InAppResponse();
            if ((*(*(v33 - 8) + 48))(v30, 1, v33) != 1)
            {
              v32 = swift_unknownObjectRetain();
LABEL_26:
              MEMORY[0x1EEE9AC00](v32);
              v34 = v90;
              *(&v81 - 12) = v94;
              *(&v81 - 11) = v34;
              *(&v81 - 10) = v93;
              *(&v81 - 9) = a2;
              v35 = v96;
              *(&v81 - 8) = v27;
              *(&v81 - 7) = v35;
              *(&v81 - 6) = v92;
              *(&v81 - 5) = v100;
              v36 = v88;
              *(&v81 - 4) = v97;
              *(&v81 - 3) = v36;
              *(&v81 - 2) = v30;
              v37 = objc_allocWithZone(type metadata accessor for FlowOutputMessage());
              v38 = FlowOutputMessage.init(build:)();
              if (v38)
              {
                v39 = v25;
                v40 = v28;
                v41 = one-time initialization token for conversationBridge;
                v42 = v38;
                if (v41 != -1)
                {
                  swift_once();
                }

                v43 = type metadata accessor for Logger();
                __swift_project_value_buffer(v43, static Logger.conversationBridge);
                v44 = Logger.logObject.getter();
                v45 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  *v46 = v83;
                  swift_beginAccess();
                  v48 = v100[0];
                  *(v46 + 4) = v100[0];
                  *v47 = v48;
                  v49 = v48;
                  _os_log_impl(&dword_1DC659000, v44, v45, "Mirroring FlowOutputMessage with command %@ to IntelligenceFlowBridge, but will also submit command directly.", v46, 0xCu);
                  outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x1E12A2F50](v47, -1, -1);
                  v50 = v46;
                  a2 = v86;
                  MEMORY[0x1E12A2F50](v50, -1, -1);
                }

                __swift_project_boxed_opaque_existential_1(v91 + 4, v91[7]);
                dispatch thunk of MessagePublishing.postMessage(_:)();

                swift_unknownObjectRelease_n();
                v27 = v89;
                v28 = v40;
                v25 = v39;
                v30 = v87;
              }

              else
              {
                if (one-time initialization token for conversationBridge != -1)
                {
                  swift_once();
                }

                v51 = type metadata accessor for Logger();
                __swift_project_value_buffer(v51, static Logger.conversationBridge);
                v52 = Logger.logObject.getter();
                v53 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v52, v53))
                {
                  v54 = swift_slowAlloc();
                  *v54 = 0;
                  _os_log_impl(&dword_1DC659000, v52, v53, "Could not construct FlowOutputMessage. Missing fields?", v54, 2u);
                  v55 = v54;
                  v27 = v89;
                  MEMORY[0x1E12A2F50](v55, -1, -1);
                }

                swift_unknownObjectRelease_n();
              }

              goto LABEL_9;
            }

            swift_unknownObjectRelease();
LABEL_9:
            ++v29;
            if (v31 == v25)
            {
              goto LABEL_36;
            }
          }

          swift_unknownObjectRetain();
          v32 = SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(a2, v27, 0, 0);
          v100[0] = v32;
          goto LABEL_26;
        }

LABEL_36:

        a6 = v90;
        a1 = v82;
      }
    }

    v56 = (a1 + OBJC_IVAR___SKRExecutionOutput_inAppResponse);
    v57 = a6;
    v58 = v84;
    outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR___SKRExecutionOutput_inAppResponse, v84, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v59 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v60 = *(*(v59 - 8) + 48);
    v61 = v60(v58, 1, v59);
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    if (v61 != 1)
    {
      v62 = v94;
      v100[0] = 0;
      v63 = v60(v56, 1, v59);
      if (v63 != 1)
      {
        MEMORY[0x1EEE9AC00](v63);
        *(&v81 - 12) = v62;
        *(&v81 - 11) = v57;
        v64 = v92;
        *(&v81 - 10) = v93;
        *(&v81 - 9) = v86;
        *(&v81 - 8) = v89;
        *(&v81 - 7) = v96;
        *(&v81 - 6) = v64;
        *(&v81 - 5) = v100;
        *(&v81 - 4) = v97;
        *(&v81 - 3) = v65;
        *(&v81 - 2) = v56;
        v66 = objc_allocWithZone(type metadata accessor for FlowOutputMessage());
        v67 = FlowOutputMessage.init(build:)();
        if (v67)
        {
          v68 = one-time initialization token for conversationBridge;
          v69 = v67;
          if (v68 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          __swift_project_value_buffer(v70, static Logger.conversationBridge);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            *v73 = 138412290;
            swift_beginAccess();
            v75 = v100[0];
            *(v73 + 4) = v100[0];
            *v74 = v75;
            v76 = v75;
            _os_log_impl(&dword_1DC659000, v71, v72, "Mirroring FlowOutputMessage with command %@ to IntelligenceFlowBridge, but will also submit command directly.", v73, 0xCu);
            outlined destroy of ReferenceResolutionClientProtocol?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1E12A2F50](v74, -1, -1);
            MEMORY[0x1E12A2F50](v73, -1, -1);
          }

          __swift_project_boxed_opaque_existential_1(v91 + 4, v91[7]);
          dispatch thunk of MessagePublishing.postMessage(_:)();
        }

        else
        {
          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          __swift_project_value_buffer(v77, static Logger.conversationBridge);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_1DC659000, v78, v79, "Could not construct FlowOutputMessage. Missing fields?", v80, 2u);
            MEMORY[0x1E12A2F50](v80, -1, -1);
          }
        }
      }
    }
  }
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 8))(v3, v1, v2, ObjectType, v4);
  v6 = v0[1];

  return v6();
}

void RunSiriKitExecutorProcessorExecutionDelegate.submit(executionOutput:completion:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 544))(a1, a2, a3);
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
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v15);
      _os_log_impl(&dword_1DC659000, v9, v10, "RunSiriKitExecutorProcessor already released, ignoring sumbit of %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    lazy protocol witness table accessor for type ConversationOutputError and conformance ConversationOutputError();
    v13 = swift_allocError();
    *v14 = 0;
    a2(0, v13);
  }
}

uint64_t ExecutionOutput.debugDescription.getter()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(118);
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v6 = type metadata accessor for ExecutionOutput(0);
  v36.receiver = v0;
  v36.super_class = v6;
  v7 = objc_msgSendSuper2(&v36, sel_debugDescription);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x1E12A1580](v8, v10);

  MEMORY[0x1E12A1580](0x20202020207B20, 0xE700000000000000);
  v35 = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8]);
  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v11 = *&v1[OBJC_IVAR___SKRExecutionOutput_command];
  if (v11)
  {
    v12 = [v11 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v13, v15);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v16 = *&v1[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v16)
  {
    v17 = [v16 debugDescription];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0xE500000000000000;
    v18 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v18, v20);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_fullPrint + 8])
  {
    v21 = String.debugDescription.getter();
    v23 = v22;
  }

  else
  {
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v21, v23);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 4;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8])
  {
    v24 = String.debugDescription.getter();
    v26 = v25;
  }

  else
  {
    v26 = 0xE500000000000000;
    v24 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v24, v26);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 5;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8])
  {
    v27 = String.debugDescription.getter();
    v29 = v28;
  }

  else
  {
    v29 = 0xE500000000000000;
    v27 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v27, v29);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8])
  {
    v2 = String.debugDescription.getter();
    v31 = v30;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v2, v31);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  v35 = 7;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for RequestSummary.ExecutionSource();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v35 = 8;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionOutput_inAppResponse], v5, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v32 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v32);

  MEMORY[0x1E12A1580](0x7D20202020, 0xE500000000000000);
  return v37;
}

uint64_t RunSiriKitExecutorProcessor.userMetadata.getter@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for UserID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - v11;
  v12 = type metadata accessor for RequestType();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69D0538], v12, v14);
  _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v36 == v35)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v13 + 8))(v16, v12);

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  UserSessionState.activeUserSharedUserId.getter();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v22 = *(v8 + 32);
    v23 = v32;
    v22(v32, v6, v7);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    v25 = *(v24 + 48);
    v26 = v34;
    v22(v34, v23, v7);
    v26[v25] = 1;
    return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
  }

  v18 = outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
LABEL_6:
  v19 = v33;
  (*(*v1 + 328))(v18);
  if ((*(v8 + 48))(v19, 1, v7) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
    return (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  }

  v27 = v31;
  (*(v8 + 32))(v31, v19, v7);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
  v28 = *(v24 + 48);
  v26 = v34;
  v29 = (*(v8 + 16))(v34, v27, v7);
  v30 = (*(*v1 + 352))(v29);
  (*(v8 + 8))(v27, v7);
  v26[v28] = v30 & 1;
  return (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t @objc ServiceBridgeDelegateXPCWrapper.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = one-time initialization token for shared;
  v20 = a3;
  swift_retain_n();
  v21 = v20;

  if (v19 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = static MessageBusActor.shared;
  v23 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = a1;
  v24[5] = v21;
  v24[6] = a7;
  v24[7] = v17;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a8, v24);
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), 0, 0);
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:)()
{
  *(v0 + 80) = *(*(v0 + 56) + 72);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), v1, 0);
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x1E12A1FE0](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v5, v2, v3);
    }

    v6 = *(v4 + 32);
  }

LABEL_8:
  *(v0 + 88) = v6;
  v5 = TaskLoggingEventSink.receiveAsync(_:_:);
  v2 = 0;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v28 = v0;
  v1 = v0[9];
  SiriKitEvent.overrides.getter();
  v2 = type metadata accessor for SiriKitEventOverrides();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[9];
  if (v4 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[9], &_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = SiriKitEventOverrides.taskId.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = specialized static TaskLoggingEventSink.computeEffectiveTask(_:_:)(v0[11], v6, v7);
  v0[12] = v9;

  if (v9)
  {
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = TaskLoggingEventSink.receiveAsync(_:_:);
    v11 = v0[7];
    v12 = v0[6];

    return TaskLoggingEventSink.receiveAsync(_:_:_:)(v12, v11, v9);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.instrumentation);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[6];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315394;
      v0[5] = v17;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = SiriKitEventContext.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v27);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1DC659000, v15, v16, "TaskLoggingEventSink - No active task, dropping event: %s context: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v26 = v0[1];

    return v26();
  }
}

{

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static TaskLoggingEventSink.computeEffectiveTask(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || a1 && (*(a1 + 16) == a2 ? (v10 = *(a1 + 24) == a3) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
  }

  else
  {

    static Date.now.getter();
    type metadata accessor for FlowTask(0);
    a1 = swift_allocObject();
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    *(a1 + 32) = 256;
    (*(v7 + 32))(a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v9, v6);
  }

  return a1;
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for SiriKitEventPayload();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for SiriKitReliabilityEvent();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

uint64_t lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static TaskLoggingEventSink.translateStartEvent(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitEventPayload();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v58 - v12);
  SiriKitEvent.payload.getter();
  v14 = (*(v5 + 88))(v13, v4);
  if (v14 == *MEMORY[0x1E69CFBF0])
  {
    (*(v5 + 96))(v13, v4);
    v16 = *v13;
    v15 = v13[1];

    if (*(a2 + 33) == 1)
    {
      v17 = *MEMORY[0x1E69CFDC8];
      v18 = type metadata accessor for ActivityType();
      (*(*(v18 - 8) + 104))(v10, v17, v18);
      v68 = v16;
      v69 = v15;
      v66 = 0x203A746365726944;
      v67 = 0xE800000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      if (StringProtocol.contains<A>(_:)())
      {
        v19 = 0x6465737261706E55;
        v20 = 0xEE00746E65746E49;
      }

      else
      {

        v19 = v16;
        v20 = v15;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
      v42 = &v10[v41[12]];
      v43 = v41[16];
      v44 = &v10[v41[20]];
      v45 = &v10[v41[24]];
      v46 = v41[28];
      v47 = v41[32];
      v48 = &v10[v41[36]];
      v49 = &v10[v41[40]];
      v50 = v41[44];
      v51 = v41[48];
      v52 = v41[52];
      *v42 = v19;
      v42[1] = v20;
      *&v10[v43] = 0;
      v53 = &v10[v50];
      *v44 = v16;
      *(v44 + 1) = v15;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      *&v10[v46] = 0;
      *&v10[v47] = 0;
      *(v48 + 4) = 0;
      *v48 = 0u;
      *(v48 + 1) = 0u;
      *v49 = 0;
      *(v49 + 1) = 0;
      *v53 = 0;
      *(v53 + 1) = 0;
      *&v10[v51] = xmmword_1DCA77C40;
      v54 = *MEMORY[0x1E69CFCB0];
      v55 = type metadata accessor for SiriKitReliabilityCodes();
      v56 = *(v55 - 8);
      (*(v56 + 104))(&v10[v52], v54, v55);
      (*(v56 + 56))(&v10[v52], 0, 1, v55);
      (*(v5 + 104))(v10, *MEMORY[0x1E69CFBB8], v4);
      a1 = SiriKitEvent.withPayload(_:)();
      (*(v5 + 8))(v10, v4);
    }

    else
    {
    }
  }

  else
  {
    v21 = *(v5 + 8);
    if (v14 == *MEMORY[0x1E69CFC40])
    {
      v21(v13, v4);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
      v23 = &v7[v22[12]];
      v24 = v22[16];
      v25 = &v7[v22[20]];
      v26 = &v7[v22[24]];
      v27 = v22[28];
      v61 = v22[32];
      v62 = v27;
      v28 = &v7[v22[36]];
      v29 = v22[40];
      v64 = a1;
      v30 = &v7[v29];
      v60 = &v7[v22[44]];
      v31 = &v7[v22[48]];
      v58 = v24;
      v59 = v31;
      v63 = v22[52];
      v65 = v21;
      v32 = *MEMORY[0x1E69CFDC8];
      v33 = type metadata accessor for ActivityType();
      (*(*(v33 - 8) + 104))(v7, v32, v33);
      strcpy(v23, "UnparsedIntent");
      v23[15] = -18;
      *&v7[v58] = 0;
      *v25 = 0;
      *(v25 + 1) = 0;
      *v26 = 0u;
      *(v26 + 1) = 0u;
      v34 = v61;
      *&v7[v62] = 0;
      *&v7[v34] = 0;
      *(v28 + 4) = 0;
      *v28 = 0u;
      *(v28 + 1) = 0u;
      *v30 = 0;
      *(v30 + 1) = 0;
      v35 = v59;
      v36 = v60;
      *v60 = 0;
      *(v36 + 1) = 0;
      *v35 = 0;
      *(v35 + 1) = 0;
      v37 = *MEMORY[0x1E69CFC98];
      v38 = type metadata accessor for SiriKitReliabilityCodes();
      v39 = *(v38 - 8);
      v40 = v63;
      (*(v39 + 104))(&v7[v63], v37, v38);
      (*(v39 + 56))(&v7[v40], 0, 1, v38);
      (*(v5 + 104))(v7, *MEMORY[0x1E69CFBB8], v4);
      a1 = SiriKitEvent.withPayload(_:)();
      v65(v7, v4);
    }

    else
    {

      v21(v13, v4);
    }
  }

  return a1;
}

void _s14SiriKitRuntime16AceMetricsLoggerO12logAnalytics7commandySo12SAAceCommand_p_tFZTf4en_nSo06SABaseK0C_Tt0g5(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    specialized static ViewMetricsLogger.logAnalytics(view:)(v7);
LABEL_20:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v3 + 8))(v5, v2);
    return;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    specialized static SayMetricsLogger.logAnalytics(command:)(v8);
    goto LABEL_20;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    specialized static DialogMetricsLogger.logAnalytics(dialog:)(v9);
    goto LABEL_20;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v10);
    goto LABEL_20;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v11);
    goto LABEL_20;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.instrumentation);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_19;
  }

  v16 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = v23;
  *v16 = 136315138;
  v17 = [v13 encodedClassName];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v14, v15, "Command unsupported for Grading data logging. You need to add logging support for command: %s", v16, 0xCu);
    v22 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
LABEL_19:

    goto LABEL_20;
  }

  __break(1u);
}

uint64_t specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  if (a2)
  {
    if ((a1 || a2 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v26[2] = 0x6573726170;
      v26[3] = 0xE500000000000000;
      v26[0] = a1;
      v26[1] = a2;
      v8 = type metadata accessor for Locale();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol.range<A>(of:options:range:locale:)();
      v10 = v9;
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v10)
      {
        if (String.count.getter() < 251)
        {
          return a1;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.instrumentation);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = 250;
          _os_log_impl(&dword_1DC659000, v12, v13, "#SiriKitMetricsUtils - truncating string at char side %ld", v14, 0xCu);
          MEMORY[0x1E12A2F50](v14, -1, -1);
        }

        String.index(_:offsetBy:)();
      }

      else
      {
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.instrumentation);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1DC659000, v16, v17, "#SiriKitMetricsUtils - truncating string at parse", v18, 2u);
          MEMORY[0x1E12A2F50](v18, -1, -1);
        }
      }

      v19 = String.subscript.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      a1 = MEMORY[0x1E12A1500](v19, v21, v23, v25);

      return a1;
    }
  }

  return a1;
}

uint64_t closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

void TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v99 = a3;
  v98 = type metadata accessor for UUID();
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v84 - v29;
  if (!a4)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.instrumentation);
    v100 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v100, v39))
    {
      goto LABEL_24;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "#TaskLoggingService SELF Log - current taskId is not set, cannot emit request link info";
LABEL_16:
    _os_log_impl(&dword_1DC659000, v100, v39, v41, v40, 2u);
    MEMORY[0x1E12A2F50](v40, -1, -1);
    goto LABEL_24;
  }

  if (!a2)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.instrumentation);
    v100 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v100, v39))
    {
      goto LABEL_24;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "#TaskLoggingService SELF Log - current executionRequestId is not set, cannot emit request link info";
    goto LABEL_16;
  }

  v95 = a1;
  v91 = v28;
  v31 = [objc_allocWithZone(MEMORY[0x1E69CF5E0]) init];
  if (v31)
  {
    v93 = v31;
    v94 = a2;
    v32 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
    if (v32)
    {
      v92 = v32;
      v33 = [objc_allocWithZone(MEMORY[0x1E69CF5F0]) init];
      if (v33)
      {
        v89 = v33;
        [v92 setComponent_];
        v34 = v30;
        v90 = v4;
        TaskLoggingService.createFlowId(executionRequestId:)(v30);
        outlined init with copy of ReferenceResolutionClientProtocol?(v30, v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v35 = v100;
        v36 = v98;
        isa = v100[6].isa;
        v88 = v100 + 6;
        v37 = isa(v26, 1, v98);
        v86 = v34;
        if (v37 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          (v35[4].isa)(v13, v26, v36);
          v50 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v51 = UUID._bridgeToObjectiveC()().super.isa;
          v52 = [v50 initWithNSUUID_];

          [v92 0x1FB75FC78];
          (v35[1].isa)(v13, v36);
        }

        v53 = v91;
        UUID.init(uuidString:)();
        outlined init with copy of ReferenceResolutionClientProtocol?(v53, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v54 = isa(v22, 1, v36);
        v55 = v90;
        if (v54 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.instrumentation);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          v59 = os_log_type_enabled(v57, v58);
          v60 = v86;
          if (v59)
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_1DC659000, v57, v58, "#TaskLoggingService SELF Log - current executionRequestId is not a valid UUID String, cannot emit request link info", v61, 2u);
            MEMORY[0x1E12A2F50](v61, -1, -1);
          }
        }

        else
        {
          v91 = v100[4].isa;
          v91(v97, v22, v36);
          v62 = v55[24];
          v63 = v55[25];
          __swift_project_boxed_opaque_existential_1(v55 + 21, v62);
          if ((*(v63 + 16))(v62, v63))
          {
            v64 = 43;
          }

          else
          {
            v64 = 1;
          }

          v65 = v89;
          [v89 setComponent_];
          v66 = objc_allocWithZone(MEMORY[0x1E69CF638]);
          v67 = UUID._bridgeToObjectiveC()().super.isa;
          v68 = [v66 initWithNSUUID_];

          [v65 setUuid_];
          v69 = v93;
          [v93 setSource_];
          [v69 setTarget_];
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for Logger();
          __swift_project_value_buffer(v70, static Logger.instrumentation);
          v60 = v86;
          outlined init with copy of ReferenceResolutionClientProtocol?(v86, v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v101 = v85;
            *v73 = 136315650;
            *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, a4, &v101);
            *(v73 + 12) = 2080;
            outlined init with copy of ReferenceResolutionClientProtocol?(v19, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            if (isa(v16, 1, v36) == 1)
            {
              v74 = 0xE300000000000000;
              v75 = 7104878;
            }

            else
            {
              v77 = v72;
              v78 = v96;
              v91(v96, v16, v36);
              v75 = UUID.uuidString.getter();
              v74 = v79;
              v80 = v78;
              v72 = v77;
              (v100[1].isa)(v80, v36);
            }

            v76 = v90;
            outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v101);

            *(v73 + 14) = v81;
            *(v73 + 22) = 2080;
            *(v73 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v94, &v101);
            _os_log_impl(&dword_1DC659000, v71, v72, "#TaskLoggingService SELF Log - logging request link for taskId: %s, flowId:%s, executionRequestId: %s", v73, 0x20u);
            v82 = v85;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v82, -1, -1);
            MEMORY[0x1E12A2F50](v73, -1, -1);
          }

          else
          {

            outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v76 = v90;
          }

          v83 = v93;
          (v76[12])(v93);

          (v100[1].isa)(v97, v98);
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return;
      }

      v43 = v92;
    }

    else
    {
      v43 = v93;
    }

    a2 = v94;
  }

  v44 = v95;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logger.instrumentation);

  v100 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v100, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v101 = v48;
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, a4, &v101);
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, a2, &v101);
    _os_log_impl(&dword_1DC659000, v100, v46, "#TaskLoggingService SELF Log - unable to create request link info for SELF for taskId: %s, executionRequestId: %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v48, -1, -1);
    MEMORY[0x1E12A2F50](v47, -1, -1);

    return;
  }

LABEL_24:
  v49 = v100;
}

uint64_t type metadata accessor for SiriKitFlowActivity(uint64_t a1)
{
  result = type metadata singleton initialization cache for SiriKitFlowActivity;
  if (!type metadata singleton initialization cache for SiriKitFlowActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriKitBiomeDonator.donateSiriExecutionTaskStep(activityType:eventTime:intentTypeName:appBundleId:requestId:slotName:statusReason:taskId:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v99 = a8;
  v109 = a7;
  v101 = a5;
  v102 = a6;
  v111 = a3;
  v112 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMd, &_sScS12ContinuationV11YieldResultOy14SiriKitRuntime0dE12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV__GMR);
  v106 = *(v16 - 8);
  v107 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v105 = &v93 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = &v93 - v19;
  v20 = type metadata accessor for ActivityType();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v24 = a13;
  v98 = a11;
  v108 = a9;
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.instrumentation);
  v27 = *(v21 + 16);
  v100 = a1;
  v27(v23, a1, v20);

  v113 = a12;
  v97 = v26;
  v28 = Logger.logObject.getter();
  v29 = v113;
  v30 = v28;
  v31 = static os_log_type_t.debug.getter();

  LODWORD(v96) = v31;
  v32 = os_log_type_enabled(v30, v31);
  v114 = a13;
  v115 = a14;
  v110 = a10;
  v104 = a4;
  if (v32)
  {
    v33 = a4;
    v34 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v116[0] = v95;
    *v34 = 136316162;
    if (!a14)
    {
      v24 = 0x3E6C696E3CLL;
    }

    v94 = v30;
    if (a14)
    {
      v35 = a14;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v35, v116);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2080;
    v37 = v110;
    v38 = v33;
    v39 = v99;
    *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v38, v116);
    *(v34 + 22) = 2080;
    v40 = ActivityType.rawValue.getter();
    v42 = v41;
    (*(v21 + 8))(v23, v20);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v116);

    *(v34 + 24) = v43;
    *(v34 + 32) = 2080;
    v44 = v98;
    if (v29)
    {
      v45 = v98;
    }

    else
    {
      v45 = 0x3E6C696E3CLL;
    }

    if (v29)
    {
      v46 = v29;
    }

    else
    {
      v46 = 0xE500000000000000;
    }

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v116);

    *(v34 + 34) = v47;
    *(v34 + 42) = 2080;
    if (v37)
    {
      v48 = v108;
    }

    else
    {
      v48 = 0x3E6C696E3CLL;
    }

    if (v37)
    {
      v49 = v37;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v116);

    *(v34 + 44) = v50;
    v51 = v94;
    _os_log_impl(&dword_1DC659000, v94, v96, "#SiriKitBiomeDonator - donating execution event to BIOME for taskId: %s, taskType: %s, stepType: %s for statusReason:%s, with slotName: %s", v34, 0x34u);
    v52 = v95;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v52, -1, -1);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v23, v20);
    v44 = v98;
    v39 = v99;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  type metadata accessor for SiriEnvironment();
  v53 = static SiriEnvironment.forCurrentTask.getter();
  v54 = v109;
  if (!v53 || (SiriEnvironment.currentRequest.getter(), , v55 = CurrentRequest.rootRequestId.getter(), v57 = v56, , !v57))
  {

    v55 = 0;
    v57 = 0xE000000000000000;
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();

  v60 = os_log_type_enabled(v58, v59);
  v99 = v57;
  v98 = v55;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v116[0] = v62;
    *v61 = 136315394;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v116);
    *(v61 + 12) = 2080;
    if (v39)
    {
      v63 = v54;
    }

    else
    {
      v63 = 4999502;
    }

    if (v39)
    {
      v64 = v39;
    }

    else
    {
      v64 = 0xE300000000000000;
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v116);
    v54 = v109;

    *(v61 + 14) = v65;
    _os_log_impl(&dword_1DC659000, v58, v59, "#SiriKitBiomeDonator rootRequestID: %s, interactionId: %s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v62, -1, -1);
    MEMORY[0x1E12A2F50](v61, -1, -1);
  }

  v66 = v114;
  v67 = v108;
  if (!v115)
  {
    v66 = 1701736302;
  }

  v95 = v66;
  if (v115)
  {
    v68 = v115;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  LODWORD(v109) = ActivityType.executionTaskStep.getter();
  if (v113)
  {
    v69 = v44;
  }

  else
  {
    v69 = 1701736302;
  }

  v94 = v69;
  if (v113)
  {
    v70 = v113;
  }

  else
  {
    v70 = 0xE400000000000000;
  }

  if (v110)
  {
    v71 = v67;
  }

  else
  {
    v71 = 1701736302;
  }

  v96 = v71;
  if (v110)
  {
    v72 = v110;
  }

  else
  {
    v72 = 0xE400000000000000;
  }

  v73 = v101;
  if (!v102)
  {
    v73 = 1701736302;
  }

  v100 = v73;
  if (v102)
  {
    v74 = v102;
  }

  else
  {
    v74 = 0xE400000000000000;
  }

  v97 = v74;
  if (v39)
  {
    v75 = v54;
  }

  else
  {
    v75 = 1701736302;
  }

  v108 = v75;
  if (v39)
  {
    v76 = v39;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  v101 = v76;
  v77 = type metadata accessor for Date();
  v78 = *(v77 - 8);
  v79 = v103;
  (*(v78 + 16))(v103, v112, v77);
  (*(v78 + 56))(v79, 0, 1, v77);

  v113 = MEMORY[0x1E12A1410](v95, v68);

  v80 = MEMORY[0x1E12A1410](v94, v70);

  v81 = MEMORY[0x1E12A1410](v96, v72);

  v82 = MEMORY[0x1E12A1410](v111, v104);
  v83 = MEMORY[0x1E12A1410](v100, v97);

  v84 = MEMORY[0x1E12A1410](v108, v101);

  isa = 0;
  if ((*(v78 + 48))(v79, 1, v77) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v78 + 8))(v79, v77);
  }

  v86 = objc_allocWithZone(MEMORY[0x1E698EF08]);
  v87 = MEMORY[0x1E12A1410](v98, v99);

  v88 = v113;
  v89 = [v86 initWithTaskId:v113 taskStep:v109 statusReason:v80 slotValue:v81 intentName:v82 appBundleID:v83 interactionID:v84 absoluteTimestamp:isa rootInteractionID:v87];

  v116[0] = v89;
  v116[1] = v114;
  v116[2] = v115;

  v90 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMd, &_sScS12ContinuationVy14SiriKitRuntime0bC12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLV_GMR);
  v91 = v105;
  AsyncStream.Continuation.yield(_:)();

  return (*(v106 + 8))(v91, v107);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppShortcutExpansionContext(uint64_t result, int a2, int a3)
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

uint64_t TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, id a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v378 = a8;
  v387 = a7;
  v388 = a6;
  v405 = a5;
  v410 = a2;
  v411 = a4;
  v389 = a3;
  v412 = a1;
  v440 = *MEMORY[0x1E69E9840];
  v22 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v364 = &v364 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SiriKitReliabilityCodes();
  v397 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v368 = &v364 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v399 = &v364 - v27;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v401);
  v29 = &v364 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v371 = &v364 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v377 = &v364 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v384 = &v364 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v400 = &v364 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v364 - v39;
  v41 = type metadata accessor for ActivityType();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v366 = &v364 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  v373 = &v364 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v383 = &v364 - v48;
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v396 = &v364 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v403 = &v364 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v394 = &v364 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v398 = &v364 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v364 - v59;
  v62.n128_f64[0] = MEMORY[0x1EEE9AC00](v61);
  v64 = &v364 - v63;
  v365 = v65;
  v370 = v66;
  if (a11)
  {
    v406 = a10;
    v67 = a11;
  }

  else if (a9)
  {
    v68 = [a9 typeName];
    v413 = 0;
    v69 = v40;
    v70 = v29;
    v71 = v24;
    v72 = v60;
    v73 = v42;
    v74 = v68;
    v406 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v75;

    v42 = v73;
    v60 = v72;
    v24 = v71;
    v29 = v70;
    v40 = v69;
  }

  else
  {
    v67 = 0xE700000000000000;
    v406 = 0x6E776F6E6B6E55;
  }

  v76 = *MEMORY[0x1E69CFDC8];
  v407 = v42;
  v77 = *(v42 + 104);
  v381 = v76;
  v382 = v42 + 104;
  v380 = v77;
  v77(v64, v62);
  v78 = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type ActivityType and conformance ActivityType, MEMORY[0x1E69CFDE8], MEMORY[0x1E69CFDF0]);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v414 = v41;
  v379 = v78;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v402 = v24;
  if (v430 == v420)
  {
    v79 = 1;
  }

  else
  {
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v390 = a16;
  v386 = a15;
  v80 = a17;
  v404 = a18;
  v408 = *(v407 + 8);
  v409 = v407 + 8;
  v408(v64, v414);

  v413 = v67;
  v395 = a17;
  if ((v79 & 1) == 0)
  {
    goto LABEL_17;
  }

  v393 = v60;
  v81 = v397;
  v82 = v402;
  (*(v397 + 104))(v40, *MEMORY[0x1E69CFCA0], v402);
  (*(v81 + 56))(v40, 0, 1, v82);
  v83 = *(v401 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol?(v404, v29, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v40, &v29[v83], &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v84 = *(v81 + 48);
  if (v84(v29, 1, v82) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v84(&v29[v83], 1, v82) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v85 = v413;
LABEL_24:
      v107 = v410;
      specialized TaskLoggingService.updateFlowTaskState(aceServiceInvoker:taskName:interactionId:taskId:)(v410 + 4, v406, v85, v410[12], v410[13], *(v411 + 16), *(v411 + 24));
      v110 = v407;
      v88 = *(v407 + 16);
      v108 = (v407 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v90 = v414;
      v89 = v412;
      v109 = v403;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v86 = v400;
  outlined init with copy of ReferenceResolutionClientProtocol?(v29, v400, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v84(&v29[v83], 1, v82) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v397 + 8))(v86, v82);
LABEL_15:
    outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSg_ADtMR);
    v85 = v413;
    v60 = v393;
    goto LABEL_16;
  }

  v111 = v397;
  v112 = v399;
  (*(v397 + 32))(v399, &v29[v83], v82);
  lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, MEMORY[0x1E69CFCD0], MEMORY[0x1E69CFCD8]);
  LODWORD(v401) = dispatch thunk of static Equatable.== infix(_:_:)();
  v113 = *(v111 + 8);
  v113(v112, v82);
  outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v113(v86, v82);
  outlined destroy of ReferenceResolutionClientProtocol?(v29, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v85 = v413;
  v60 = v393;
  if (v401)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (*(v411 + 33))
  {
    goto LABEL_24;
  }

LABEL_17:
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.instrumentation);
  v88 = *(v407 + 16);
  v400 = (v407 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v89 = v412;
  v90 = v414;
  v88(v60, v412, v414);
  v91 = v411;

  v92 = v60;

  v93 = v410;

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    LODWORD(v393) = v95;
    v98 = v89;
    v99 = v97;
    *&v430 = v97;
    *v96 = 136315906;
    *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v91 + 16), *(v91 + 24), &v430);
    v401 = v88;
    v100 = v98;
    *(v96 + 12) = 2080;
    *(v96 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v413, &v430);
    *(v96 + 22) = 2080;
    v101 = ActivityType.rawValue.getter();
    v103 = v102;
    v408(v92, v414);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v430);
    v90 = v414;

    *(v96 + 24) = v104;
    *(v96 + 32) = 2080;
    v105 = v100;
    v88 = v401;
    *(v96 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93[12], v93[13], &v430);
    _os_log_impl(&dword_1DC659000, v94, v393, "#TaskLoggingService - not updating flow task state for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v96, 0x2Au);
    swift_arrayDestroy();
    v106 = v99;
    v89 = v105;
    MEMORY[0x1E12A2F50](v106, -1, -1);
    MEMORY[0x1E12A2F50](v96, -1, -1);
  }

  else
  {

    v408(v60, v90);
  }

  v107 = v93;
  v80 = v395;
  v108 = v400;
  v109 = v403;
  v110 = v407;
LABEL_25:
  v385 = a14;
  v114 = v398;
  v88(v398, v89, v90);
  v115 = (*(v110 + 88))(v114, v90);
  v116 = *MEMORY[0x1E69CFDD8];
  v401 = v88;
  if (v115 != v116 && v115 != *MEMORY[0x1E69CFDD0] && v115 != *MEMORY[0x1E69CFDE0] && v115 != *MEMORY[0x1E69CFDA0])
  {
    v408(v114, v90);
LABEL_34:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    __swift_project_value_buffer(v117, static Logger.instrumentation);
    v88(v109, v89, v90);
    v118 = v411;

    v119 = v413;

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = v109;
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *&v430 = v124;
      *v123 = 136315906;
      *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v118 + 16), *(v118 + 24), &v430);
      *(v123 + 12) = 2080;
      *(v123 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v119, &v430);
      *(v123 + 22) = 2080;
      LODWORD(v407) = v121;
      v125 = ActivityType.rawValue.getter();
      v127 = v126;
      v128 = v122;
      v107 = v410;
      v408(v128, v414);
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v430);
      v130 = v401;

      *(v123 + 24) = v129;
      *(v123 + 32) = 2080;
      v90 = v414;
      *(v123 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107[12], v107[13], &v430);
      _os_log_impl(&dword_1DC659000, v120, v407, "#TaskLoggingService - not sending update context to reset FlowTaskState for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v123, 0x2Au);
      swift_arrayDestroy();
      v131 = v124;
      v89 = v412;
      MEMORY[0x1E12A2F50](v131, -1, -1);
      MEMORY[0x1E12A2F50](v123, -1, -1);
    }

    else
    {

      v408(v109, v90);
      v130 = v401;
    }

    goto LABEL_45;
  }

  if (v80 && (v390 == 0x764F726576726553 && v80 == 0xEE00656469727265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    goto LABEL_34;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v132 = type metadata accessor for Logger();
  __swift_project_value_buffer(v132, static Logger.instrumentation);
  v133 = v394;
  v88(v394, v89, v90);
  v134 = v411;

  v135 = v413;

  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *&v430 = v139;
    *v138 = 136315650;
    *(v138 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v135, &v430);
    *(v138 + 12) = 2080;
    *(v138 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v134 + 16), *(v134 + 24), &v430);
    *(v138 + 22) = 2080;
    v140 = v394;
    v141 = ActivityType.rawValue.getter();
    v143 = v142;
    v408(v140, v90);
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &v430);
    v130 = v401;

    *(v138 + 24) = v144;
    _os_log_impl(&dword_1DC659000, v136, v137, "#TaskLoggingService - sending update context to reset FlowTaskState for TaskType: %s, TaskId: %s, ActivityType: %s", v138, 0x20u);
    swift_arrayDestroy();
    v145 = v139;
    v89 = v412;
    MEMORY[0x1E12A2F50](v145, -1, -1);
    MEMORY[0x1E12A2F50](v138, -1, -1);
  }

  else
  {

    v408(v133, v90);
    v130 = v401;
  }

  v107 = v410;
  specialized TaskLoggingService.resetFlowTaskState(aceServiceInvoker:)(v410 + 4);
LABEL_45:
  v407 = a21;
  v400 = v108;
  v130(v396, v89, v90);
  v146 = v107[10];
  v374 = v107[11];
  v375 = v146;

  Date.timeIntervalSince1970.getter();
  v391 = v147;
  v376 = type metadata accessor for SiriKitFlowActivity(0);
  v148 = swift_allocObject();
  v149 = (v148 + direct field offset for SiriKitFlowActivity.errorCodeDescription);
  *v149 = 0;
  v149[1] = 0xE000000000000000;
  v150 = (v148 + direct field offset for SiriKitFlowActivity.eventReliabilityCode);
  v151 = v397;
  v152 = *(v397 + 104);
  v153 = v399;
  v392 = *MEMORY[0x1E69CFCC0];
  v154 = v402;
  v393 = v152;
  v394 = (v397 + 104);
  (v152)(v399);
  v155 = SiriKitReliabilityCodes.rawValue.getter();
  v157 = v156;
  v403 = *(v151 + 8);
  (v403)(v153, v154);
  *v150 = v155;
  v150[1] = v157;
  v158 = v414;
  *(v148 + direct field offset for SiriKitFlowActivity.isSiriKit) = 1;
  v159 = v148 + direct field offset for SiriKitFlowActivity.slotName;
  strcpy((v148 + direct field offset for SiriKitFlowActivity.slotName), "not_applicable");
  *(v159 + 15) = -18;
  v369 = type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  v160 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
  if (v161)
  {
    v162 = v160;
  }

  else
  {
    v162 = 0x6C7070615F746F6ELL;
  }

  if (v161)
  {
    v163 = v161;
  }

  else
  {
    v163 = 0xEE00656C62616369;
  }

  v164 = (v148 + direct field offset for SiriKitFlowActivity.appBundleId);
  *v164 = v162;
  v164[1] = v163;
  v165 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
  if (v166)
  {
    v167 = v165;
  }

  else
  {
    v167 = 0x6C7070615F746F6ELL;
  }

  if (v166)
  {
    v168 = v166;
  }

  else
  {
    v168 = 0xEE00656C62616369;
  }

  v169 = (v148 + direct field offset for SiriKitFlowActivity.appName);
  *v169 = v167;
  v169[1] = v168;
  v170 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
  if (v171)
  {
    v172 = v170;
  }

  else
  {
    v172 = 0x6C7070615F746F6ELL;
  }

  if (v171)
  {
    v173 = v171;
  }

  else
  {
    v173 = 0xEE00656C62616369;
  }

  v174 = (v148 + direct field offset for SiriKitFlowActivity.appVersion);
  *v174 = v172;
  v174[1] = v173;
  v175 = dispatch thunk of AppInformationResolver.resolveBuild.getter();
  v177 = 48;
  if (v176)
  {
    v177 = v175;
  }

  v178 = 0xE100000000000000;
  if (v176)
  {
    v178 = v176;
  }

  v179 = (v148 + direct field offset for SiriKitFlowActivity.build);
  *v179 = v177;
  v179[1] = v178;
  *(v148 + direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp) = dispatch thunk of AppInformationResolver.isSiriKitSupportedApp.getter() & 1;
  v180 = v385;
  if (!v386)
  {
    v180 = 0;
  }

  v181 = 0xE000000000000000;
  if (v386)
  {
    v181 = v386;
  }

  v182 = (v148 + direct field offset for SiriKitFlowActivity.responseId);
  *v182 = v180;
  v182[1] = v181;
  v183 = (v148 + direct field offset for SiriKitFlowActivity.executionRequestId);
  v184 = v374;
  *v183 = v375;
  v183[1] = v184;

  v185 = v396;
  ActivityType.rawValue.getter();
  v186 = DefaultFlowActivity.init(activityName:activityType:activityStartTime:)();
  v187 = v403;

  v408(v185, v158);
  v188 = v384;
  outlined init with copy of ReferenceResolutionClientProtocol?(v404, v384, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v189 = *(v151 + 48);
  v396 = v151 + 48;
  v391 = v189;
  v190 = v189(v188, 1, v154);
  v398 = v151 + 8;
  if (v190 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v188, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v191 = 0;
    v192 = 0;
  }

  else
  {
    v191 = SiriKitReliabilityCodes.rawValue.getter();
    v192 = v193;
    (v187)(v188, v154);
  }

  v194 = v407;
  if (v407)
  {
    v375 = a20;

    v192 = v194;
  }

  else
  {
    v375 = v191;
  }

  v195 = a13;
  v367 = a13;
  v384 = v192;
  if (!a22)
  {

    goto LABEL_89;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1DCA66060;
  *(v196 + 32) = 0xD000000000000014;
  *(v196 + 40) = 0x80000001DCA8B090;
  *(v196 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  *(v196 + 48) = a22;

  v197 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v196);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(v196 + 32, &_sSS_yptMd, &_sSS_yptMR);
  swift_deallocClassInstance();
  if (!*(v197 + 16))
  {

    goto LABEL_83;
  }

  v198 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v430 = 0;
  v200 = [v198 dataWithJSONObject:isa options:0 error:&v430];

  if (v200)
  {
    v201 = v430;
    v202 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v204 = v203;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();

    outlined consume of Data._Representation(v202, v204);
LABEL_83:
    dispatch thunk of DefaultFlowActivity.message.setter();

    v158 = v414;
    goto LABEL_89;
  }

  v205 = v430;

  v206 = _convertNSErrorToError(_:)();

  swift_willThrow();

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v207 = type metadata accessor for Logger();
  __swift_project_value_buffer(v207, static Logger.instrumentation);
  v208 = v206;
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    *&v430 = v212;
    *v211 = 136315138;
    swift_getErrorValue();
    v213 = Error.localizedDescription.getter();
    v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v214, &v430);

    *(v211 + 4) = v215;
    _os_log_impl(&dword_1DC659000, v209, v210, "#TaskLoggingService - failed to encode appResolutionMetrics payload to JSON due to error: %s", v211, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v212);
    v216 = v212;
    v154 = v402;
    MEMORY[0x1E12A2F50](v216, -1, -1);
    MEMORY[0x1E12A2F50](v211, -1, -1);
  }

  v158 = v414;
  swift_getErrorValue();
  Error.localizedDescription.getter();
  dispatch thunk of DefaultFlowActivity.message.setter();

  v217 = v399;
  (v393)(v399, *MEMORY[0x1E69CFC88], v154);
  v375 = SiriKitReliabilityCodes.rawValue.getter();
  v384 = v218;

  (v403)(v217, v154);
  v195 = v367;
LABEL_89:
  v407 = v186;
  if (v195)
  {
    v219 = *(*v186 + class metadata base offset for SiriKitFlowActivity + 312);

    v219(a12, v195);
    v186 = v407;
  }

  v374 = a12;
  v220 = v377;
  outlined init with copy of ReferenceResolutionClientProtocol?(v404, v377, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  if (v391(v220, 1, v154) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v220, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  }

  else
  {
    v221 = v368;
    (*(v397 + 32))(v368, v220, v154);
    v222 = SiriKitReliabilityCodes.rawValue.getter();
    (*(*v186 + class metadata base offset for SiriKitFlowActivity + 216))(v222);
    (v403)(v221, v154);
  }

  v223 = v395;
  v224 = v411;
  if (v395)
  {
    v225 = *(*v186 + class metadata base offset for SiriKitFlowActivity + 192);

    v225(v390, v223);
    v186 = v407;
  }

  Date.timeIntervalSince1970.getter();
  dispatch thunk of DefaultFlowActivity.timestamp.setter();

  outlined init with copy of ReferenceResolutionClientProtocol?(v378, &v420, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  if (v422)
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v420, &v430);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v226 = type metadata accessor for Logger();
    __swift_project_value_buffer(v226, static Logger.instrumentation);
    v227 = v370;
    (v401)(v370, v412, v158);

    v228 = v224;
    v229 = v158;
    v230 = v413;

    v231 = Logger.logObject.getter();
    v232 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v231, v232))
    {
      v233 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      *&v420 = v234;
      *v233 = 136315906;
      *(v233 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v228 + 16), *(v228 + 24), &v420);
      *(v233 + 12) = 2080;
      *(v233 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v230, &v420);
      *(v233 + 22) = 2080;
      v235 = ActivityType.rawValue.getter();
      v237 = v236;
      v408(v227, v229);
      v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v235, v237, &v420);

      *(v233 + 24) = v238;
      *(v233 + 32) = 2080;
      *(v233 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v410[12], v410[13], &v420);
      _os_log_impl(&dword_1DC659000, v231, v232, "#TaskLoggingService - appending domain activities for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v233, 0x2Au);
      swift_arrayDestroy();
      v239 = v234;
      v154 = v402;
      MEMORY[0x1E12A2F50](v239, -1, -1);
      MEMORY[0x1E12A2F50](v233, -1, -1);
    }

    else
    {

      v408(v227, v229);
    }

    v242 = v403;
    v243 = v407;
    v244 = v384;
    if (v384)
    {
      v245 = v411;
      v246 = v375;
    }

    else
    {
      v247 = v399;
      (v393)(v399, v392, v154);
      v248 = SiriKitReliabilityCodes.rawValue.getter();
      v249 = v154;
      v246 = v248;
      v244 = v250;
      (v242)(v247, v249);
      v245 = v411;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMR);
    v251 = swift_allocObject();
    *(v251 + 16) = xmmword_1DCA65720;
    *(v251 + 56) = v376;
    *(v251 + 64) = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitFlowActivity and conformance DefaultFlowActivity, type metadata accessor for SiriKitFlowActivity, MEMORY[0x1E69CF9E0]);
    *(v251 + 32) = v243;
    outlined init with copy of ReferenceResolutionClientProtocol(&v430, v251 + 72);
    if (v387)
    {
      v252 = v388;
    }

    else
    {
      v252 = 0;
    }

    if (v387)
    {
      v253 = v387;
    }

    else
    {
      v253 = 0xE000000000000000;
    }

    v255 = *(v245 + 16);
    v254 = *(v245 + 24);

    v378 = v254;
    *&v362 = v255;
    *(&v362 + 1) = v254;
    v397 = specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(v406, v413, v412, v246, v244, v251, v252, v253, v362);
    v257 = v256;

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C8Activity_pMd, &_s11SiriKitFlow0C8Activity_pMR);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v258 = &v430;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v420, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    v240 = v384;
    if (v384)
    {
      v241 = v375;
    }

    else
    {
      v259 = v399;
      (v393)(v399, v392, v154);
      v260 = SiriKitReliabilityCodes.rawValue.getter();
      v261 = v154;
      v241 = v260;
      v240 = v262;
      (v403)(v259, v261);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0F8Activity_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA66060;
    *(inited + 56) = v376;
    *(inited + 64) = lazy protocol witness table accessor for type ActivityType and conformance ActivityType(&lazy protocol witness table cache variable for type SiriKitFlowActivity and conformance DefaultFlowActivity, type metadata accessor for SiriKitFlowActivity, MEMORY[0x1E69CF9E0]);
    *(inited + 32) = v186;
    if (v387)
    {
      v264 = v388;
    }

    else
    {
      v264 = 0;
    }

    if (v387)
    {
      v265 = v387;
    }

    else
    {
      v265 = 0xE000000000000000;
    }

    v266 = v224;
    v255 = *(v224 + 16);
    v267 = *(v266 + 24);

    v378 = v267;
    *&v363 = v255;
    *(&v363 + 1) = v267;
    v397 = specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(v406, v413, v412, v241, v240, inited, v264, v265, v363);
    v257 = v268;

    swift_setDeallocating();
    v258 = (inited + 32);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v258);
  v269 = v414;
  v270 = v402;
  v271 = v410;
  if (v257)
  {
    v384 = v257;
    v376 = v255;
    v272 = v371;
    outlined init with copy of ReferenceResolutionClientProtocol?(v404, v371, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    if (v391(v272, 1, v270) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v272, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v375 = 0;
      v273 = 0;
      v274 = v413;
      v275 = v399;
      v276 = v403;
    }

    else
    {
      v375 = SiriKitReliabilityCodes.rawValue.getter();
      v273 = v291;
      v276 = v403;
      (v403)(v272, v270);
      v274 = v413;
      v275 = v399;
    }

    (v393)(v275, v392, v270);

    SiriKitReliabilityCodes.rawValue.getter();
    v391 = v292;
    (v276)(v275, v270);
    swift_allocObject();

    AppInformationResolver.init(app:)();
    v293 = dispatch thunk of AppInformationResolver.resolveAppName.getter();
    v295 = 0x6C7070615F746F6ELL;
    if (v294)
    {
      v296 = v293;
    }

    else
    {
      v296 = 0x6C7070615F746F6ELL;
    }

    v399 = v296;
    v297 = 0xEE00656C62616369;
    if (v294)
    {
      v298 = v294;
    }

    else
    {
      v298 = 0xEE00656C62616369;
    }

    v396 = v298;
    v299 = dispatch thunk of AppInformationResolver.resolveAppBundleId.getter();
    if (v300)
    {
      v301 = v299;
    }

    else
    {
      v301 = 0x6C7070615F746F6ELL;
    }

    if (v300)
    {
      v302 = v300;
    }

    else
    {
      v302 = 0xEE00656C62616369;
    }

    v377 = v302;
    v303 = dispatch thunk of AppInformationResolver.resolveAppVersion.getter();
    if (v304)
    {
      v295 = v303;
      v297 = v304;
    }

    v305 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v406, v274);
    v306 = v275;
    v308 = v307;

    if (v273)
    {

      v309 = v273;
      v310 = v375;
    }

    else
    {
      (v393)(v306, v392, v270);
      v310 = SiriKitReliabilityCodes.rawValue.getter();
      v309 = v311;

      (v403)(v306, v402);
    }

    *&v430 = v301;
    *(&v430 + 1) = v377;
    v431 = v399;
    v432 = v396;
    v433 = v295;
    v434 = v297;
    v435 = v310;
    v436 = v309;
    v437 = 0;
    v438 = v305;
    v439 = v308;
    *&v420 = v301;
    *(&v420 + 1) = v377;
    v421 = v399;
    v422 = v396;
    v423 = v295;
    v424 = v297;
    v425 = v310;
    v426 = v309;
    v427 = 0;
    v428 = v305;
    v429 = v308;
    outlined init with copy of SiriKitRequestEvent(&v430, v417);
    outlined destroy of SiriKitRequestEvent(&v420);
    v312 = v410;
    v314 = v410[12];
    v313 = v410[13];
    v315 = specialized TaskLoggingService.createRequestContentString(siriKitRequestEvent:interactionId:)(&v430, v314, v313);
    v317 = v316;
    outlined destroy of SiriKitRequestEvent(&v430);
    if (v317)
    {
      v318 = v315;
    }

    else
    {
      v318 = 0;
    }

    v319 = 0xE000000000000000;
    if (v317)
    {
      v319 = v317;
    }

    v402 = v318;
    v403 = v319;
    v399 = v313;

    v320 = SiriKitEventContext.resultCandidateId.getter();
    if (v321)
    {
      v322 = v320;
    }

    else
    {
      v322 = 7104878;
    }

    if (v321)
    {
      v323 = v321;
    }

    else
    {
      v323 = 0xE300000000000000;
    }

    v324 = v412;
    if (v405)
    {
      v325 = App.appIdentifier.getter();
      v327 = 0x6C7070615F746F6ELL;
      if (v326)
      {
        v327 = v325;
      }

      v328 = 0xEE00656C62616369;
      if (v326)
      {
        v328 = v326;
      }

      v329 = v411;
      v330 = v408;
    }

    else
    {
      v329 = v411;
      v330 = v408;
      v328 = 0xEE00656C62616369;
      v327 = 0x6C7070615F746F6ELL;
    }

    LODWORD(v398) = a19;
    v417[0] = v397;
    v417[1] = v384;
    v417[2] = v402;
    v417[3] = v403;
    v394 = v314;
    v417[4] = v314;
    v417[5] = v399;
    v417[6] = v322;
    v417[7] = v323;
    v417[8] = v327;
    v417[9] = v328;

    v396 = MetricsEventInformation.dictionaryRepresentation.getter();
    outlined destroy of MetricsEventInformation(v417);
    v380(v383, v381, v414);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v418 == v415 && v419 == v416)
    {
      v330(v383, v414);
    }

    else
    {
      v331 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v330(v383, v414);

      if ((v331 & 1) == 0)
      {
        goto LABEL_174;
      }
    }

    v380(v373, v381, v414);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v418 == v415 && v419 == v416)
    {
      v330(v373, v414);
    }

    else
    {
      v332 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v330(v373, v414);

      if ((v332 & 1) == 0)
      {
        goto LABEL_178;
      }
    }

    if (*(v329 + 33) == 1)
    {
LABEL_174:
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v333 = type metadata accessor for Logger();
      __swift_project_value_buffer(v333, static Logger.instrumentation);
      v334 = v365;
      v335 = v414;
      (v401)(v365, v324, v414);

      v336 = v413;

      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.debug.getter();

      v339 = os_log_type_enabled(v337, v338);
      v340 = v394;
      if (v339)
      {
        v341 = swift_slowAlloc();
        v342 = swift_slowAlloc();
        v418 = v342;
        *v341 = 136315906;
        *(v341 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v376, v378, &v418);
        *(v341 + 12) = 2080;
        *(v341 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v336, &v418);
        *(v341 + 22) = 2080;
        v343 = v338;
        v344 = ActivityType.rawValue.getter();
        v346 = v345;
        v408(v334, v335);
        v347 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v344, v346, &v418);

        *(v341 + 24) = v347;
        *(v341 + 32) = 2080;
        *(v341 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v340, v399, &v418);
        _os_log_impl(&dword_1DC659000, v337, v343, "#TaskLoggingService Usage Log - logging task step for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v341, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v342, -1, -1);
        v348 = v341;
        v349 = v405;
        v324 = v412;
        v312 = v410;
        MEMORY[0x1E12A2F50](v348, -1, -1);

        v350 = v374;
      }

      else
      {

        v408(v334, v335);
        v350 = v374;
        v349 = v405;
      }

      v359 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v355 = v372;
      TaskLoggingService.logViaSAMetrics(aceServiceInvoker:eventInformation:timings:originalCommandId:)(v312 + 4, v396, v359, 0, 0xE000000000000000);

      v356 = v413;
      if (v398)
      {
LABEL_187:
        v361 = v355[10];
        v360 = v355[11];
        __swift_project_boxed_opaque_existential_1(v355 + 7, v361);
        (*(v360 + 8))(v324, v312, v389, v402, v403, v397, v384, v376, v378, v406, v356, v349, v388, v387, v350, v367, v385, v386, v390, v395, v404, v361, v360);

        goto LABEL_188;
      }

LABEL_183:

LABEL_188:
    }

LABEL_178:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v351 = type metadata accessor for Logger();
    __swift_project_value_buffer(v351, static Logger.instrumentation);
    v352 = Logger.logObject.getter();
    v353 = static os_log_type_t.debug.getter();
    v354 = os_log_type_enabled(v352, v353);
    v355 = v372;
    v356 = v413;
    v349 = v405;
    if (v354)
    {
      v357 = swift_slowAlloc();
      *v357 = 0;
      _os_log_impl(&dword_1DC659000, v352, v353, "#TaskLoggingService - Skip logging Start for non new client task", v357, 2u);
      MEMORY[0x1E12A2F50](v357, -1, -1);
    }

    v350 = v374;
    if (v398)
    {
      goto LABEL_187;
    }

    goto LABEL_183;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v277 = type metadata accessor for Logger();
  __swift_project_value_buffer(v277, static Logger.instrumentation);
  v278 = v366;
  (v401)(v366, v412, v269);

  v279 = v413;

  v280 = Logger.logObject.getter();
  v281 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v280, v281))
  {

    return (v408)(v278, v269);
  }

  v282 = swift_slowAlloc();
  v283 = swift_slowAlloc();
  v284 = v255;
  v285 = v283;
  *&v430 = v283;
  *v282 = 136315906;
  *(v282 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v378, &v430);
  *(v282 + 12) = 2080;
  v286 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v279, &v430);

  *(v282 + 14) = v286;
  *(v282 + 22) = 2080;
  v287 = ActivityType.rawValue.getter();
  v289 = v288;
  v408(v278, v414);
  v290 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v287, v289, &v430);

  *(v282 + 24) = v290;
  *(v282 + 32) = 2080;
  *(v282 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271[12], v271[13], &v430);
  _os_log_impl(&dword_1DC659000, v280, v281, "#TaskLoggingService - JSON string from the encoding is empty, not logging Task step for taskId: %s, taskType: %s, stepType: %s for interactionId:%s", v282, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v285, -1, -1);
  MEMORY[0x1E12A2F50](v282, -1, -1);
}

uint64_t partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(v3 + v5, v6);
}

void TaskLoggingEventSink.route(_:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v1116 = a3;
  v1117 = a2;
  v1098 = type metadata accessor for SiriKitConfirmationState();
  v1105 = *(v1098 - 1);
  MEMORY[0x1EEE9AC00](v1098);
  v1099 = &v1066 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v1104 = &v1066 - v6;
  v1071 = type metadata accessor for TaskFlowConfiguration();
  v1070 = *(v1071 - 8);
  MEMORY[0x1EEE9AC00](v1071);
  v1069 = &v1066 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v1108 = (&v1066 - v9);
  v1118 = type metadata accessor for SiriKitReliabilityCodes();
  v1115 = *(v1118 - 8);
  MEMORY[0x1EEE9AC00](v1118);
  v1107 = &v1066 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1111 = type metadata accessor for Date();
  v11 = *(v1111 - 8);
  MEMORY[0x1EEE9AC00](v1111);
  v1068 = &v1066 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v1087 = &v1066 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v1100 = &v1066 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v1074 = &v1066 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v1113 = &v1066 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v1079 = &v1066 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v1081 = &v1066 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v1089 = &v1066 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v1097 = (&v1066 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v1109 = &v1066 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v1094 = &v1066 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v1086 = &v1066 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v1095 = &v1066 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v1072 = &v1066 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v1075 = &v1066 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v1073 = &v1066 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v1078 = &v1066 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v1077 = &v1066 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v1084 = &v1066 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v1083 = &v1066 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v1092 = &v1066 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v1093 = &v1066 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v1102 = &v1066 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v1103 = &v1066 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v1106 = &v1066 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v1088 = &v1066 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v1096 = &v1066 - v64;
  v1119 = type metadata accessor for ActivityType();
  v65 = *(v1119 - 8);
  MEMORY[0x1EEE9AC00](v1119);
  v67 = &v1066 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v1085 = &v1066 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v1066 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v1076 = &v1066 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v1066 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v1080 = &v1066 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v1082 = &v1066 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v1090 = &v1066 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v1101 = &v1066 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v1110 = &v1066 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v1091 = &v1066 - v89;
  v90 = type metadata accessor for SiriKitEventPayload();
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v1066 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  SiriKitEvent.payload.getter();
  v94 = (*(v91 + 88))(v93, v90);
  v95 = *MEMORY[0x1E69CFC38];
  v1114 = v65;
  if (v94 == v95)
  {
    (*(v91 + 96))(v93, v90);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4NameAA0aB16ReliabilityCodesO12statusReasonAA0cD0_pSg04flowD0SDySSypGSg0M8Metadata0A13AppResolution0oP6ResultOSg010resolutionQ0tMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4NameAA0aB16ReliabilityCodesO12statusReasonAA0cD0_pSg04flowD0SDySSypGSg0M8Metadata0A13AppResolution0oP6ResultOSg010resolutionQ0tMR);
    v97 = &v93[v96[12]];
    v99 = *v97;
    v98 = v97[1];
    v1110 = v99;
    v1109 = v98;
    v100 = v96[16];
    v101 = &v93[v96[20]];
    v102 = *&v93[v96[24]];
    v103 = v65;
    v104 = v96[28];
    (*(v103 + 32))(v77, v93, v1119);
    v105 = v1115;
    v106 = v1107;
    (*(v1115 + 32))(v1107, &v93[v100], v1118);
    v107 = *(v101 + 1);
    v1124 = *v101;
    v1125 = v107;
    v1126 = *(v101 + 4);
    v108 = &v93[v104];
    v109 = v1108;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v108, v1108, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    v110 = v1113;
    SiriKitEvent.timestamp.getter();
    TaskLoggingService.logAppResolutionResult(activityType:eventContext:eventTime:intentTypeName:statusReason:task:domainFlowActivity:flowMetadata:resolutionResult:)(v77, v1117, v110, v1110, v1109, v106, v1116, &v1124, v102, v109);

    (*(v11 + 8))(v110, v1111);
    outlined destroy of ReferenceResolutionClientProtocol?(v109, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    (*(v105 + 8))(v106, v1118);
    v111 = *(v1114 + 8);
    v112 = v77;
LABEL_139:
    v111(v112, v1119);
    return;
  }

  v1107 = a1;
  v113 = v1113;
  v1108 = v93;
  v114 = v94 == *MEMORY[0x1E69CFBD0];
  v1067 = v11;
  if (v114)
  {
    v115 = v1108;
    (*(v91 + 96))(v1108, v90);
    v116 = *v115;
    v117 = *(v115 + 8);
    v118 = *(v115 + 16);
    v1113 = *(v1112 + 16);
    (*(v65 + 104))(v1110, *MEMORY[0x1E69CFDA8], v1119);
    SiriKitEvent.timestamp.getter();
    v1126 = 0;
    v1124 = 0u;
    v1125 = 0u;
    v1104 = v116;
    if (v116)
    {
      v119 = [v116 typeName];
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v118 = v121;
    }

    v122 = v1115;
    v123 = v1106;
    v124 = v1118;
    (*(v1115 + 104))(v1106, *MEMORY[0x1E69CFCC0], v1118);
    (*(v122 + 56))(v123, 0, 1, v124);
    v125 = 0x6E776F6E6B6E55;
    v1102 = v117;
    if (v118)
    {
      v125 = v117;
    }

    v1107 = v125;
    if (v118)
    {
      v126 = v118;
    }

    else
    {
      v126 = 0xE700000000000000;
    }

    swift_bridgeObjectRetain_n();
    v127 = ActivityType.asSELFTypeAndReason(_:)(v123);
    LODWORD(v1100) = v128;
    v129 = v1117;
    v130 = SiriKitEventContext.resultCandidateId.getter();
    if (v131)
    {
      v132 = v130;
    }

    else
    {
      v132 = 13101;
    }

    if (v131)
    {
      v133 = v131;
    }

    else
    {
      v133 = 0xE200000000000000;
    }

    v134 = v129[11];
    v1112 = v129[10];
    v136 = *(v1116 + 16);
    v135 = *(v1116 + 24);
    v137 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1105 = v134;
    v1108 = v135;
    if (v137)
    {
      v1099 = v127;
      v1101 = v137;
      v138 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v138)
      {
        v139 = v138;
        v140 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v132, v133, v1112, v134, v136, v135);
        if (!v140)
        {
          v1100 = v136;

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v320 = type metadata accessor for Logger();
          __swift_project_value_buffer(v320, static Logger.instrumentation);

          v321 = v1108;

          v322 = Logger.logObject.getter();
          v323 = static os_log_type_t.error.getter();

          LODWORD(v1099) = v323;
          v324 = os_log_type_enabled(v322, v323);
          v318 = v1115;
          if (v324)
          {
            v325 = swift_slowAlloc();
            v1098 = swift_slowAlloc();
            *&v1120 = v1098;
            *v325 = 136315650;
            v326 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v1120);

            *(v325 + 4) = v326;
            *(v325 + 12) = 2080;
            v327 = v321;
            v136 = v1100;
            *(v325 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1100, v327, &v1120);
            *(v325 + 22) = 2080;
            *(v325 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v134, &v1120);
            _os_log_impl(&dword_1DC659000, v322, v1099, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v325, 0x20u);
            v328 = v1098;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v328, -1, -1);
            v329 = v325;
            v123 = v1106;
            MEMORY[0x1E12A2F50](v329, -1, -1);

            v319 = v1103;
          }

          else
          {

            v319 = v1103;
            v136 = v1100;
          }

          goto LABEL_134;
        }

        v1098 = v140;
        v141 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v141)
        {
          v142 = v141;
          (*(v1113 + 144))(&v1120, 0);
          v143 = *(&v1121 + 1);
          v144 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v145 = (*(v144 + 8))(v143, v144);
          if (v146)
          {
            v147 = v146;
          }

          else
          {
            v145 = 0x6C7070615F746F6ELL;
            v147 = 0xEE00656C62616369;
          }

          v148 = MEMORY[0x1E12A1410](v145, v147);

          [v142 setBundleId_];

          v149 = *(&v1121 + 1);
          v150 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v151 = *(v150 + 16);
          v152 = v150;
          v123 = v1106;
          v153 = v151(v149, v152);
          if (v154)
          {
            v155 = v154;
          }

          else
          {
            v153 = 0x6C7070615F746F6ELL;
            v155 = 0xEE00656C62616369;
          }

          v156 = MEMORY[0x1E12A1410](v153, v155);

          [v142 setAppVersion_];

          [v139 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
        }

        v157 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(0, 0);
        v159 = v158;
        v160 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v160)
        {
          v161 = v160;
          v1096 = v157;
          v1097 = v159;
          v162 = MEMORY[0x1E12A1410](v1107, v126);

          [v161 setCurrentTaskName_];

          [v161 setCurrentTaskType_];
          v163 = HIDWORD(v1099);
          [v161 setFlowStateType_];
          v164 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v164)
          {
            v165 = v164;
            if (v1100)
            {
              v166 = 0;
            }

            else
            {
              v166 = v163;
            }

            [v164 setStatusReason_];
            [v161 setFlowStateReason_];
          }

          [v161 setResolvedSlotName_];
          if (v1097)
          {
            v167 = MEMORY[0x1E12A1410](v1096, v1097);
          }

          else
          {
            v167 = 0;
          }

          v318 = v1115;
          [v161 setFlowStateReasonDescription_];

          [v139 setFlowState_];
        }

        else
        {

          v318 = v1115;
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v378 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v378 > -9.22337204e18)
        {
          if (v378 < 9.22337204e18)
          {
            [v139 setTimestampMs_];
            [v139 setSequenceNum_];

            v379 = v1101;
            [v1101 setFlowStep_];
            v380 = v379;
            v381 = v1098;
            [v380 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_127:
              v382 = type metadata accessor for Logger();
              __swift_project_value_buffer(v382, static Logger.instrumentation);

              v383 = Logger.logObject.getter();
              v384 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v383, v384))
              {
                v385 = swift_slowAlloc();
                v1115 = swift_slowAlloc();
                *&v1120 = v1115;
                *v385 = 136315906;
                if (v1099 > 0xD0)
                {
                  v386 = @"FLOWSTATETYPE_UNKNOWN";
                  v387 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v386 = off_1E863DF48[v1099];
                  v387 = off_1E863E5D0[v1099];
                }

                v389 = v386;
                v390 = v387;
                v391 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v393 = v392;

                v394 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v391, v393, &v1120);

                *(v385 + 4) = v394;
                *(v385 + 12) = 2080;
                v388 = v1108;
                *(v385 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v1108, &v1120);
                *(v385 + 22) = 2080;
                *(v385 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1107, v126, &v1120);
                *(v385 + 32) = 2080;
                *(v385 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                _os_log_impl(&dword_1DC659000, v383, v384, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v385, 0x2Au);
                v395 = v1115;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v395, -1, -1);
                MEMORY[0x1E12A2F50](v385, -1, -1);

                v123 = v1106;
                v319 = v1103;
              }

              else
              {

                v319 = v1103;
                v388 = v1108;
              }

              v396 = v1101;
              (*(v1113 + 96))(v1101);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1112, v1105, v136, v388);

LABEL_134:
              outlined init with copy of ReferenceResolutionClientProtocol(v1113 + 16, &v1120);
              v397 = *(&v1121 + 1);
              v398 = v1122;
              __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
              outlined init with copy of ReferenceResolutionClientProtocol?(v123, v319, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v399 = v1118;
              if ((*(v318 + 48))(v319, 1, v1118) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v319, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v400 = 0;
                v401 = 0;
              }

              else
              {
                v402 = v399;
                v400 = SiriKitReliabilityCodes.rawValue.getter();
                v403 = v319;
                v401 = v404;
                v405 = v402;
                v123 = v1106;
                (*(v318 + 8))(v403, v405);
              }

              v406 = *(v398 + 8);
              v1056 = v397;
              v1062 = v398;
              v407 = v1110;
              v408 = v1109;
              v406(v1110, v1109, v1107, v126, 0, 0, v1112, v1105, 0, 0, v400, v401, v136, v1108, v1056, v1062);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v407, v1117, v408, v1116, 0, 0, 0, &v1124, 0, v1102, v118, 0, 0, 0, 0, 0, 0, v123, 1, 0, 0, 0);

              outlined destroy of ReferenceResolutionClientProtocol?(v123, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1067 + 8))(v408, v1111);
              goto LABEL_138;
            }

LABEL_515:
            swift_once();
            goto LABEL_127;
          }

LABEL_514:
          __break(1u);
          goto LABEL_515;
        }

        __break(1u);
        goto LABEL_514;
      }
    }

    v1101 = v118;
    v1100 = v126;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v310 = type metadata accessor for Logger();
    __swift_project_value_buffer(v310, static Logger.instrumentation);

    v311 = v1108;

    v312 = Logger.logObject.getter();
    v313 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v312, v313))
    {
      v314 = v134;
      v315 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      *&v1120 = v316;
      *v315 = 136315650;
      v317 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v1120);

      *(v315 + 4) = v317;
      *(v315 + 12) = 2080;
      *(v315 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v311, &v1120);
      *(v315 + 22) = 2080;
      *(v315 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v314, &v1120);
      _os_log_impl(&dword_1DC659000, v312, v313, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v315, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v316, -1, -1);
      MEMORY[0x1E12A2F50](v315, -1, -1);
    }

    else
    {
    }

    v318 = v1115;
    v319 = v1103;
    v126 = v1100;
    v118 = v1101;
    goto LABEL_134;
  }

  if (v94 == *MEMORY[0x1E69CFC00])
  {
    v168 = v1108;
    (*(v91 + 96))(v1108, v90);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMR);
    v170 = *(v168 + v169[12]);
    v171 = (v168 + v169[16]);
    v172 = v171[1];
    v1109 = *v171;
    v173 = (v168 + v169[20]);
    v175 = *v173;
    v174 = v173[1];
    v1110 = v175;
    v1113 = v174;
    v176 = (v168 + v169[24]);
    v177 = v1105;
    v178 = v1104;
    v179 = v1098;
    (v1105)[4](v1104, v168, v1098);
    v180 = v176[1];
    v1120 = *v176;
    v1121 = v180;
    v181 = v1099;
    (v177)[2](v1099, v178, v179);
    v182 = (v177[11])(v181, v179);
    v183 = v1115;
    if (v182 != *MEMORY[0x1E69CFCF8])
    {
      v244 = v170;
      if (v182 == *MEMORY[0x1E69CFD00])
      {
        v1108 = v172;
        v1112 = *(v1112 + 16);
        v245 = v1085;
        (*(v1114 + 104))(v1085, *MEMORY[0x1E69CFDB0], v1119);
        v246 = v1087;
        SiriKitEvent.timestamp.getter();
        if (*(&v1121 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
          v247 = swift_allocObject();
          *(v247 + 16) = xmmword_1DCA66060;
          *(v247 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v248 = swift_allocObject();
          *(v247 + 32) = v248;
          outlined init with copy of ReferenceResolutionClientProtocol?(&v1120, v248 + 16, &_sypSgMd, &_sypSgMR);
        }

        else
        {
          v247 = 0;
        }

        v409 = v1086;
        v1126 = 0;
        v1124 = 0u;
        v1125 = 0u;
        if (v170)
        {
          v410 = [v170 typeName];
          v1109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v412 = v411;

          v1108 = v412;
        }

        (*(v183 + 56))(v409, 1, 1, v1118);
        if (v247 && *(v247 + 16))
        {
          v413 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(v247, &v1120);
          if (v413)
          {
            v414 = v413;
            v415 = v1117;
            v416 = SiriKitEventContext.resultCandidateId.getter();
            v418 = 13101;
            if (v417)
            {
              v418 = v416;
              v419 = v417;
            }

            else
            {
              v419 = 0xE200000000000000;
            }

            TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v414, v418, v419, v415[10], v415[11], *(v1116 + 16), *(v1116 + 24));

            v420 = v414;
            v421 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v414);
          }

          else
          {
            if (one-time initialization token for instrumentation != -1)
            {
              swift_once();
            }

            v514 = type metadata accessor for Logger();
            __swift_project_value_buffer(v514, static Logger.instrumentation);
            v515 = v1116;

            v516 = v1117;

            v517 = Logger.logObject.getter();
            v518 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v517, v518))
            {
              v519 = swift_slowAlloc();
              v1118 = swift_slowAlloc();
              *&v1123[0] = v1118;
              *v519 = 136315394;
              *(v519 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v515 + 16), *(v515 + 24), v1123);
              *(v519 + 12) = 2080;
              *(v519 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v516[10], v516[11], v1123);
              _os_log_impl(&dword_1DC659000, v517, v518, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v519, 0x16u);
              v520 = v1118;
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v520, -1, -1);
              MEMORY[0x1E12A2F50](v519, -1, -1);
            }

            v421 = 0;
            v179 = v1098;
          }
        }

        else
        {
          v421 = 0;
        }

        TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v245, v1117, v246, v1116, 0, 0, 0, 0, &v1124, 0, v1109, v1108, v1110, v1113, 0, 0, 0, 0, v409, v421);

        outlined destroy of ReferenceResolutionClientProtocol?(v409, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
        (*(v1067 + 8))(v246, v1111);
        (*(v1114 + 8))(v245, v1119);
        goto LABEL_152;
      }

      if (v182 != *MEMORY[0x1E69CFCF0])
      {
        v330 = v1105[1];
        v330(v1104, v179);

        outlined destroy of ReferenceResolutionClientProtocol?(&v1120, &_sypSgMd, &_sypSgMR);
        v330(v1099, v179);
        return;
      }
    }

    (*(v1114 + 104))(v72, *MEMORY[0x1E69CFDB8], v1119);
    SiriKitEvent.timestamp.getter();
    v1126 = 0;
    v1124 = 0u;
    v1125 = 0u;
    if (v170)
    {
      v184 = [v170 typeName];
      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;

      v172 = v187;
      v183 = v1115;
    }

    else
    {
      v185 = v1109;
    }

    v349 = v1095;
    (*(v183 + 56))(v1095, 1, 1, v1118);
    v350 = v1100;
    TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v72, v1117, v1100, v1116, 0, 0, 0, 0, &v1124, 0, v185, v172, v1110, v1113, 0, 0, 0, 0, v349, 0);

    outlined destroy of ReferenceResolutionClientProtocol?(v349, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    (*(v1067 + 8))(v350, v1111);
    (*(v1114 + 8))(v72, v1119);
LABEL_152:
    (v1105[1])(v1104, v179);
    outlined destroy of ReferenceResolutionClientProtocol?(&v1120, &_sypSgMd, &_sypSgMR);
    return;
  }

  if (v94 == *MEMORY[0x1E69CFC50])
  {
    v188 = v1108;
    (*(v91 + 96))(v1108, v90);
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeAK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0P6ReasontMR);
    v190 = (v188 + v189[12]);
    v191 = v190[1];
    v1106 = *v190;
    v1110 = *(v188 + v189[16]);
    v192 = v188 + v189[20];
    v194 = *v192;
    v193 = *(v192 + 8);
    v1099 = v194;
    v1103 = v193;
    v195 = v188 + v189[24];
    v197 = *v195;
    v196 = *(v195 + 8);
    v1098 = v197;
    v1100 = v196;
    v198 = (v188 + v189[28]);
    v200 = *v198;
    v199 = v198[1];
    v1095 = v200;
    v1096 = v199;
    v201 = v188 + v189[32];
    v203 = *v201;
    v202 = *(v201 + 8);
    v1104 = v203;
    v1105 = v202;
    v204 = v189[36];
    (*(v65 + 32))(v1101, v188, v1119);
    v205 = v188 + v204;
    v206 = v1102;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v205, v1102, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1113 = *(v1112 + 16);
    v207 = v1097;
    SiriKitEvent.timestamp.getter();
    v1126 = 0;
    v1124 = 0u;
    v1125 = 0u;
    swift_bridgeObjectRetain_n();
    v208 = ActivityType.asSELFTypeAndReason(_:)(v206);
    LODWORD(v1094) = v209;
    v210 = v1117;
    v211 = SiriKitEventContext.resultCandidateId.getter();
    if (v212)
    {
      v213 = v211;
    }

    else
    {
      v213 = 13101;
    }

    if (v212)
    {
      v214 = v212;
    }

    else
    {
      v214 = 0xE200000000000000;
    }

    v215 = v210[11];
    v1112 = v210[10];
    v216 = *(v1116 + 16);
    v217 = *(v1116 + 24);
    v218 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1108 = v215;
    v1107 = v217;
    v1109 = v216;
    if (v218)
    {
      v219 = v218;
      v1092 = v208;
      v220 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v220)
      {
        v221 = v220;
        v222 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v213, v214, v1112, v215, v216, v217);
        if (!v222)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v422 = type metadata accessor for Logger();
          __swift_project_value_buffer(v422, static Logger.instrumentation);

          v423 = Logger.logObject.getter();
          v424 = static os_log_type_t.error.getter();

          LODWORD(v1094) = v424;
          if (os_log_type_enabled(v423, v424))
          {
            v425 = v217;
            v426 = swift_slowAlloc();
            v427 = swift_slowAlloc();
            *&v1120 = v427;
            *v426 = 136315650;
            v428 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v214, &v1120);
            v429 = v215;
            v430 = v428;

            *(v426 + 4) = v430;
            *(v426 + 12) = 2080;
            *(v426 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v425, &v1120);
            *(v426 + 22) = 2080;
            *(v426 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v429, &v1120);
            _os_log_impl(&dword_1DC659000, v423, v1094, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v426, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v427, -1, -1);
            MEMORY[0x1E12A2F50](v426, -1, -1);
          }

          else
          {
          }

          v377 = v1093;
          v207 = v1097;
          goto LABEL_270;
        }

        v1091 = v222;
        v223 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v223)
        {
          v224 = v223;
          (*(v1113 + 144))(&v1120, v1110);
          v225 = *(&v1121 + 1);
          v226 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v227 = (*(v226 + 8))(v225, v226);
          if (v228)
          {
            v229 = v228;
          }

          else
          {
            v227 = 0x6C7070615F746F6ELL;
            v229 = 0xEE00656C62616369;
          }

          v230 = MEMORY[0x1E12A1410](v227, v229);

          [v224 setBundleId_];

          v231 = *(&v1121 + 1);
          v232 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v233 = (*(v232 + 16))(v231, v232);
          if (v234)
          {
            v235 = v234;
          }

          else
          {
            v233 = 0x6C7070615F746F6ELL;
            v235 = 0xEE00656C62616369;
          }

          v236 = MEMORY[0x1E12A1410](v233, v235);

          [v224 setAppVersion_];

          [v221 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
        }

        v237 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1104, v1105);
        v239 = v238;
        v240 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v240)
        {
          v241 = v240;
          v1090 = v237;
          v242 = MEMORY[0x1E12A1410](v1106, v191);

          [v241 setCurrentTaskName_];

          if (v1103)
          {
            v243 = MEMORY[0x1E12A1410](v1099);
          }

          else
          {
            v243 = 0;
          }

          [v241 setCurrentTaskType_];

          v611 = HIDWORD(v1092);
          [v241 setFlowStateType_];
          v612 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v612)
          {
            v613 = v612;
            if (v1094)
            {
              v614 = 0;
            }

            else
            {
              v614 = v611;
            }

            [v612 setStatusReason_];
            [v241 setFlowStateReason_];
          }

          if (v1100)
          {
            v615 = MEMORY[0x1E12A1410](v1098);
          }

          else
          {
            v615 = 0;
          }

          [v241 setResolvedSlotName_];

          if (v239)
          {
            v616 = MEMORY[0x1E12A1410](v1090, v239);
          }

          else
          {
            v616 = 0;
          }

          [v241 setFlowStateReasonDescription_];

          [v221 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v617 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v617 > -9.22337204e18)
        {
          if (v617 < 9.22337204e18)
          {
            [v221 setTimestampMs_];
            [v221 setSequenceNum_];

            [v219 setFlowStep_];
            v618 = v1091;
            [v219 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_263:
              v619 = type metadata accessor for Logger();
              __swift_project_value_buffer(v619, static Logger.instrumentation);

              v620 = Logger.logObject.getter();
              v621 = static os_log_type_t.debug.getter();

              v622 = os_log_type_enabled(v620, v621);
              v377 = v1093;
              if (v622)
              {
                v623 = swift_slowAlloc();
                v1094 = swift_slowAlloc();
                *&v1120 = v1094;
                *v623 = 136315906;
                if (v1092 > 0xD0)
                {
                  v624 = @"FLOWSTATETYPE_UNKNOWN";
                  v625 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v624 = off_1E863EC58[v1092];
                  v625 = off_1E863F2E0[v1092];
                }

                v629 = v624;
                v630 = v625;
                v631 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v633 = v632;

                v634 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v631, v633, &v1120);

                *(v623 + 4) = v634;
                *(v623 + 12) = 2080;
                v627 = v1109;
                v628 = v1107;
                *(v623 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v1107, &v1120);
                *(v623 + 22) = 2080;
                *(v623 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1106, v191, &v1120);
                *(v623 + 32) = 2080;
                *(v623 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                _os_log_impl(&dword_1DC659000, v620, v621, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v623, 0x2Au);
                v635 = v1094;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v635, -1, -1);
                MEMORY[0x1E12A2F50](v623, -1, -1);

                v377 = v1093;
                v626 = v1108;
              }

              else
              {

                v626 = v1108;
                v627 = v1109;
                v628 = v1107;
              }

              (*(v1113 + 96))(v219);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1112, v626, v627, v628);

LABEL_270:
              outlined init with copy of ReferenceResolutionClientProtocol(v1113 + 16, &v1120);
              v637 = *(&v1121 + 1);
              v636 = v1122;
              v1094 = __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
              if (v1110)
              {
                v638 = App.appIdentifier.getter();
                v640 = v639;
              }

              else
              {
                v638 = 0;
                v640 = 0;
              }

              outlined init with copy of ReferenceResolutionClientProtocol?(v1102, v377, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v641 = v1115;
              v642 = v1118;
              if ((*(v1115 + 48))(v377, 1, v1118) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v377, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v643 = 0;
                v644 = 0;
                v645 = v207;
              }

              else
              {
                v646 = v642;
                v643 = SiriKitReliabilityCodes.rawValue.getter();
                v647 = v377;
                v644 = v648;
                v645 = v1097;
                (*(v641 + 8))(v647, v646);
              }

              v1057 = v637;
              v649 = v1100;
              v650 = v1098;
              v651 = v1106;
              (*(v636 + 8))(v1101, v645, v1106, v191, v638, v640, v1112, v1108, v1098, v1100, v643, v644, v1109, v1107, v1057, v636);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
              v652 = v1102;
              v1054 = v650;
              v407 = v1101;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v1101, v1117, v645, v1116, v1110, v1099, v1103, &v1124, 0, v651, v191, v1054, v649, v1095, v1096, v1104, v1105, v1102, 1, 0, 0, 0);

              outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1067 + 8))(v645, v1111);
              outlined destroy of ReferenceResolutionClientProtocol?(v652, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
LABEL_138:
              v111 = *(v1114 + 8);
              v112 = v407;
              goto LABEL_139;
            }

LABEL_519:
            swift_once();
            goto LABEL_263;
          }

LABEL_518:
          __break(1u);
          goto LABEL_519;
        }

        __break(1u);
        goto LABEL_518;
      }
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v368 = type metadata accessor for Logger();
    __swift_project_value_buffer(v368, static Logger.instrumentation);

    v369 = Logger.logObject.getter();
    v370 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v369, v370))
    {
      v371 = v217;
      v372 = swift_slowAlloc();
      v373 = swift_slowAlloc();
      *&v1120 = v373;
      *v372 = 136315650;
      v374 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v214, &v1120);
      v375 = v215;
      v376 = v374;

      *(v372 + 4) = v376;
      *(v372 + 12) = 2080;
      *(v372 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v371, &v1120);
      *(v372 + 22) = 2080;
      *(v372 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v375, &v1120);
      _os_log_impl(&dword_1DC659000, v369, v370, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v372, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v373, -1, -1);
      MEMORY[0x1E12A2F50](v372, -1, -1);
    }

    else
    {
    }

    v377 = v1093;
    goto LABEL_270;
  }

  if (v94 == *MEMORY[0x1E69CFBE8])
  {
    v249 = v1108;
    (*(v91 + 96))(v1108, v90);
    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMR);
    v251 = v65;
    v252 = v250;
    v253 = *(v249 + v250[12]);
    v254 = *(v249 + v250[16]);
    v255 = v249 + v250[24];
    v257 = *v255;
    v256 = *(v255 + 8);
    v1101 = v257;
    v1102 = v256;
    v258 = v249 + v250[28];
    v260 = *v258;
    v259 = *(v258 + 8);
    v1098 = v260;
    v1100 = v259;
    v261 = v249 + v250[32];
    v263 = *v261;
    v262 = *(v261 + 8);
    v1104 = v263;
    v1105 = v262;
    v264 = v250[36];
    (*(v251 + 32))(v1091, v249, v1119);
    v265 = v249 + v264;
    v266 = v1096;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v265, v1096, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1113 = *(v1112 + 16);
    SiriKitEvent.timestamp.getter();
    v1126 = 0;
    v1124 = 0u;
    v1125 = 0u;
    v1099 = v253;
    v1097 = v253;
    v267 = [v1097 typeName];
    v1106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v269 = v268;

    v270 = ActivityType.asSELFTypeAndReason(_:)(v266);
    LODWORD(v1092) = v271;
    v272 = v1117;
    v273 = SiriKitEventContext.resultCandidateId.getter();
    if (v274)
    {
      v275 = v273;
    }

    else
    {
      v275 = 13101;
    }

    if (v274)
    {
      v276 = v274;
    }

    else
    {
      v276 = 0xE200000000000000;
    }

    v277 = v272[11];
    v1110 = v272[10];
    v278 = *(v1116 + 16);
    v279 = *(v1116 + 24);
    v280 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1107 = v269;
    v1103 = v277;
    v1112 = v279;
    v1109 = v278;
    if (v280)
    {
      v1093 = v280;
      v281 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v281)
      {
        v282 = v281;
        v283 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v275, v276, v1110, v277, v278, v1112);
        if (!v283)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v507 = type metadata accessor for Logger();
          __swift_project_value_buffer(v507, static Logger.instrumentation);

          v508 = v1112;

          v509 = Logger.logObject.getter();
          v510 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v509, v510))
          {
            v511 = swift_slowAlloc();
            v1092 = swift_slowAlloc();
            *&v1120 = v1092;
            *v511 = 136315650;
            v512 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v275, v276, &v1120);

            *(v511 + 4) = v512;
            *(v511 + 12) = 2080;
            *(v511 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v508, &v1120);
            *(v511 + 22) = 2080;
            *(v511 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1110, v277, &v1120);
            _os_log_impl(&dword_1DC659000, v509, v510, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v511, 0x20u);
            v513 = v1092;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v513, -1, -1);
            MEMORY[0x1E12A2F50](v511, -1, -1);
          }

          else
          {
          }

          v506 = v1088;
          goto LABEL_335;
        }

        v1090 = v283;
        v284 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v284)
        {
          v285 = v284;
          (*(v1113 + 144))(&v1120, v254);
          v287 = *(&v1121 + 1);
          v286 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v288 = (*(v286 + 8))(v287, v286);
          if (v289)
          {
            v290 = v289;
          }

          else
          {
            v288 = 0x6C7070615F746F6ELL;
            v290 = 0xEE00656C62616369;
          }

          v291 = MEMORY[0x1E12A1410](v288, v290);

          [v285 setBundleId_];

          v292 = *(&v1121 + 1);
          v293 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v294 = *(v293 + 16);
          v295 = v293;
          v269 = v1107;
          v296 = v294(v292, v295);
          if (v297)
          {
            v298 = v297;
          }

          else
          {
            v296 = 0x6C7070615F746F6ELL;
            v298 = 0xEE00656C62616369;
          }

          v299 = MEMORY[0x1E12A1410](v296, v298);

          [v285 setAppVersion_];

          [v282 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
        }

        v300 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1104, v1105);
        v302 = v301;
        v303 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v303)
        {
          v304 = v303;
          v1089 = v300;
          v305 = MEMORY[0x1E12A1410](v1106, v269);

          [v304 setCurrentTaskName_];

          [v304 setCurrentTaskType_];
          [v304 setFlowStateType_];
          v306 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v306)
          {
            v307 = v306;
            if (v1092)
            {
              v308 = 0;
            }

            else
            {
              v308 = HIDWORD(v270);
            }

            [v306 setStatusReason_];
            [v304 setFlowStateReason_];
          }

          if (v1102)
          {
            v309 = MEMORY[0x1E12A1410](v1101);
          }

          else
          {
            v309 = 0;
          }

          v728 = v1089;
          [v304 setResolvedSlotName_];

          if (v302)
          {
            v729 = MEMORY[0x1E12A1410](v728, v302);
          }

          else
          {
            v729 = 0;
          }

          [v304 setFlowStateReasonDescription_];

          [v282 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v730 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v730 > -9.22337204e18)
        {
          if (v730 < 9.22337204e18)
          {
            [v282 setTimestampMs_];
            [v282 setSequenceNum_];

            v731 = v1093;
            [v1093 setFlowStep_];
            v732 = v731;
            v733 = v1090;
            [v732 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_328:
              v734 = type metadata accessor for Logger();
              __swift_project_value_buffer(v734, static Logger.instrumentation);

              v735 = Logger.logObject.getter();
              v736 = static os_log_type_t.debug.getter();

              v737 = os_log_type_enabled(v735, v736);
              v506 = v1088;
              if (v737)
              {
                v738 = swift_slowAlloc();
                v1092 = swift_slowAlloc();
                *&v1120 = v1092;
                *v738 = 136315906;
                if (v270 > 0xD0)
                {
                  v739 = @"FLOWSTATETYPE_UNKNOWN";
                  v740 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v739 = off_1E863D238[v270];
                  v740 = off_1E863D8C0[v270];
                }

                v744 = v739;
                v745 = v740;
                v746 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v748 = v747;

                v749 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v746, v748, &v1120);

                *(v738 + 4) = v749;
                *(v738 + 12) = 2080;
                v742 = v1109;
                v743 = v1112;
                *(v738 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v1112, &v1120);
                *(v738 + 22) = 2080;
                *(v738 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1106, v1107, &v1120);
                *(v738 + 32) = 2080;
                *(v738 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                _os_log_impl(&dword_1DC659000, v735, v736, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v738, 0x2Au);
                v750 = v1092;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v750, -1, -1);
                MEMORY[0x1E12A2F50](v738, -1, -1);

                v506 = v1088;
                v741 = v1103;
              }

              else
              {

                v741 = v1103;
                v742 = v1109;
                v743 = v1112;
              }

              v751 = v1093;
              (*(v1113 + 96))(v1093);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1110, v741, v742, v743);

LABEL_335:
              outlined init with copy of ReferenceResolutionClientProtocol(v1113 + 16, &v1120);
              v753 = *(&v1121 + 1);
              v752 = v1122;
              __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
              v1095 = v254;
              if (v254)
              {
                v754 = App.appIdentifier.getter();
                v756 = v755;
              }

              else
              {
                v754 = 0;
                v756 = 0;
              }

              outlined init with copy of ReferenceResolutionClientProtocol?(v1096, v506, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v757 = v1115;
              v758 = v1118;
              if ((*(v1115 + 48))(v506, 1, v1118) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v506, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v759 = 0;
                v760 = 0;
              }

              else
              {
                v759 = SiriKitReliabilityCodes.rawValue.getter();
                v761 = v506;
                v760 = v762;
                (*(v757 + 8))(v761, v758);
              }

              v1118 = v252[20];
              v763 = *(v752 + 8);
              v1058 = v753;
              v1063 = v752;
              v764 = v1102;
              v765 = v1101;
              v766 = v1091;
              v767 = v1094;
              v763(v1091, v1094, v1106, v1107, v754, v756, v1110, v1103, v1101, v1102, v759, v760, v1109, v1112, v1058, v1063);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
              v768 = v1096;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v766, v1117, v767, v1116, v1095, 0, 0, &v1124, v1099, 0, 0, v765, v764, v1098, v1100, v1104, v1105, v1096, 1, 0, 0, 0);
              v769 = v1097;

              outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              (*(v1067 + 8))(v767, v1111);
              outlined destroy of ReferenceResolutionClientProtocol?(v768, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              (*(v1114 + 8))(v766, v1119);
              goto LABEL_377;
            }

LABEL_523:
            swift_once();
            goto LABEL_328;
          }

LABEL_522:
          __break(1u);
          goto LABEL_523;
        }

        __break(1u);
        goto LABEL_522;
      }

      v279 = v1112;
    }

    v498 = v254;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v499 = type metadata accessor for Logger();
    __swift_project_value_buffer(v499, static Logger.instrumentation);

    v500 = Logger.logObject.getter();
    v501 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v500, v501))
    {
      v502 = v279;
      v503 = swift_slowAlloc();
      v504 = swift_slowAlloc();
      *&v1120 = v504;
      *v503 = 136315650;
      v505 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v275, v276, &v1120);

      *(v503 + 4) = v505;
      *(v503 + 12) = 2080;
      *(v503 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v502, &v1120);
      *(v503 + 22) = 2080;
      *(v503 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1110, v277, &v1120);
      _os_log_impl(&dword_1DC659000, v500, v501, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v503, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v504, -1, -1);
      MEMORY[0x1E12A2F50](v503, -1, -1);
    }

    else
    {
    }

    v506 = v1088;
    v254 = v498;
    goto LABEL_335;
  }

  if (v94 == *MEMORY[0x1E69CFC10])
  {
    v331 = v1108;
    (*(v91 + 96))(v1108, v90);
    v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v333 = *(v331 + v332[12]);
    v334 = *(v331 + v332[16]);
    v335 = v331 + v332[20];
    v337 = *v335;
    v336 = *(v335 + 8);
    v1100 = v337;
    v1101 = v336;
    v338 = v331 + v332[24];
    v339 = *v338;
    v340 = *(v338 + 8);
    v341 = v65;
    v342 = v331 + v332[28];
    v343 = v331 + v332[36];
    v345 = *v343;
    v344 = *(v343 + 8);
    v1097 = v345;
    v1098 = v344;
    v1096 = v332;
    v346 = v332[40];
    (*(v341 + 32))(v1090, v331, v1119);
    v347 = *(v342 + 16);
    v1124 = *v342;
    v1125 = v347;
    v1126 = *(v342 + 32);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v331 + v346, v1092, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1113 = *(v1112 + 16);
    SiriKitEvent.timestamp.getter();
    v1110 = v333;
    if (v340)
    {

      v348 = v334;
      v1103 = 0;
      v1104 = 0;
    }

    else
    {
      *&v1120 = v339;
      lazy protocol witness table accessor for type Int and conformance Int();

      v431 = v334;
      v1103 = BinaryInteger.description.getter();
      v1104 = v432;
    }

    v433 = v1083;
    v1099 = v334;
    v434 = [v334 typeName];
    v1105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v436 = v435;

    v437 = ActivityType.asSELFTypeAndReason(_:)(v1092);
    LODWORD(v1095) = v438;
    v439 = v1117;
    v440 = SiriKitEventContext.resultCandidateId.getter();
    if (v441)
    {
      v442 = v440;
    }

    else
    {
      v442 = 13101;
    }

    if (v441)
    {
      v443 = v441;
    }

    else
    {
      v443 = 0xE200000000000000;
    }

    v444 = v439[11];
    v1109 = v439[10];
    v445 = *(v1116 + 16);
    v446 = *(v1116 + 24);
    v447 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1106 = v436;
    v1102 = v444;
    v1112 = v446;
    v1107 = v445;
    if (v447)
    {
      v448 = v447;
      v449 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v449)
      {
        v450 = v449;
        v451 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v442, v443, v1109, v444, v445, v1112);
        if (v451)
        {
          v1094 = v451;
          v452 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
          if (v452)
          {
            v453 = v452;
            (*(v1113 + 144))(&v1120, v1110);
            v455 = *(&v1121 + 1);
            v454 = v1122;
            __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
            v456 = (*(v454 + 8))(v455, v454);
            if (v457)
            {
              v458 = v457;
            }

            else
            {
              v456 = 0x6C7070615F746F6ELL;
              v458 = 0xEE00656C62616369;
            }

            v459 = MEMORY[0x1E12A1410](v456, v458);

            [v453 setBundleId_];

            v460 = *(&v1121 + 1);
            v461 = v1122;
            __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
            v462 = *(v461 + 16);
            v463 = v461;
            v433 = v1083;
            v464 = v462(v460, v463);
            if (v465)
            {
              v466 = v465;
            }

            else
            {
              v464 = 0x6C7070615F746F6ELL;
              v466 = 0xEE00656C62616369;
            }

            v436 = v1106;
            v467 = MEMORY[0x1E12A1410](v464, v466);

            [v453 setAppVersion_];

            [v450 setAppContext_];
            __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
          }

          v468 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1103, v1104);
          v470 = v469;
          v471 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
          if (v471)
          {
            v472 = v471;
            v473 = v468;
            v474 = MEMORY[0x1E12A1410](v1105, v436);

            [v472 setCurrentTaskName_];

            [v472 setCurrentTaskType_];
            [v472 setFlowStateType_];
            v475 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
            if (v475)
            {
              if (v1095)
              {
                v476 = 0;
              }

              else
              {
                v476 = HIDWORD(v437);
              }

              v477 = v475;
              [v475 setStatusReason_];
              [v472 setFlowStateReason_];
            }

            v478 = MEMORY[0x1E12A1410](v1100, v1101);
            [v472 setResolvedSlotName_];

            if (v470)
            {
              v479 = MEMORY[0x1E12A1410](v473, v470);
            }

            else
            {
              v479 = 0;
            }

            [v472 setFlowStateReasonDescription_];

            [v450 setFlowState_];
            v433 = v1083;
          }

          else
          {
          }

          Date.timeIntervalSince1970.getter();
          if ((*&v794 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v794 > -9.22337204e18)
          {
            if (v794 < 9.22337204e18)
            {
              [v450 setTimestampMs_];
              [v450 setSequenceNum_];

              [v448 setFlowStep_];
              v795 = v1094;
              [v448 setEventMetadata_];

              if (one-time initialization token for instrumentation == -1)
              {
LABEL_364:
                v796 = type metadata accessor for Logger();
                __swift_project_value_buffer(v796, static Logger.instrumentation);

                v797 = Logger.logObject.getter();
                v798 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v797, v798))
                {
                  v799 = swift_slowAlloc();
                  v1095 = swift_slowAlloc();
                  *&v1120 = v1095;
                  *v799 = 136315906;
                  if (v437 > 0xD0)
                  {
                    v800 = @"FLOWSTATETYPE_UNKNOWN";
                    v801 = @"FLOWSTATETYPE_UNKNOWN";
                  }

                  else
                  {
                    v800 = off_1E863F968[v437];
                    v801 = off_1E863FFF0[v437];
                  }

                  v805 = v800;
                  v806 = v801;
                  v807 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v809 = v808;

                  v810 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v807, v809, &v1120);

                  *(v799 + 4) = v810;
                  *(v799 + 12) = 2080;
                  v803 = v1107;
                  v804 = v1112;
                  *(v799 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1107, v1112, &v1120);
                  *(v799 + 22) = 2080;
                  *(v799 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1105, v1106, &v1120);
                  *(v799 + 32) = 2080;
                  *(v799 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                  _os_log_impl(&dword_1DC659000, v797, v798, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v799, 0x2Au);
                  v811 = v1095;
                  swift_arrayDestroy();
                  MEMORY[0x1E12A2F50](v811, -1, -1);
                  MEMORY[0x1E12A2F50](v799, -1, -1);

                  v433 = v1083;
                  v802 = v1102;
                }

                else
                {

                  v802 = v1102;
                  v803 = v1107;
                  v804 = v1112;
                }

                (*(v1113 + 96))(v448);
                TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1109, v802, v803, v804);
                goto LABEL_371;
              }

LABEL_527:
              swift_once();
              goto LABEL_364;
            }

LABEL_526:
            __break(1u);
            goto LABEL_527;
          }

          __break(1u);
          goto LABEL_526;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v653 = type metadata accessor for Logger();
        __swift_project_value_buffer(v653, static Logger.instrumentation);

        v654 = v1112;

        v655 = Logger.logObject.getter();
        v656 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v655, v656))
        {
          v657 = v444;
          v658 = swift_slowAlloc();
          LODWORD(v1094) = v656;
          v659 = v658;
          v1095 = swift_slowAlloc();
          *&v1120 = v1095;
          *v659 = 136315650;
          v660 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v442, v443, &v1120);

          *(v659 + 4) = v660;
          v661 = v655;
          *(v659 + 12) = 2080;
          *(v659 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1107, v654, &v1120);
          *(v659 + 22) = 2080;
          *(v659 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v657, &v1120);
          _os_log_impl(&dword_1DC659000, v655, v1094, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v659, 0x20u);
          v662 = v1095;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v662, -1, -1);
          MEMORY[0x1E12A2F50](v659, -1, -1);

LABEL_371:
          goto LABEL_372;
        }

        goto LABEL_245;
      }

      v446 = v1112;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v602 = type metadata accessor for Logger();
    __swift_project_value_buffer(v602, static Logger.instrumentation);

    v603 = Logger.logObject.getter();
    v604 = v444;
    v605 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v603, v605))
    {
      v606 = v446;
      v607 = swift_slowAlloc();
      v608 = swift_slowAlloc();
      *&v1120 = v608;
      *v607 = 136315650;
      v609 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v442, v443, &v1120);

      *(v607 + 4) = v609;
      *(v607 + 12) = 2080;
      *(v607 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1107, v606, &v1120);
      *(v607 + 22) = 2080;
      *(v607 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v604, &v1120);
      _os_log_impl(&dword_1DC659000, v603, v605, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v607, 0x20u);
      swift_arrayDestroy();
      v610 = v608;
      v433 = v1083;
      MEMORY[0x1E12A2F50](v610, -1, -1);
      MEMORY[0x1E12A2F50](v607, -1, -1);

LABEL_372:
      outlined init with copy of ReferenceResolutionClientProtocol(v1113 + 16, &v1120);
      v813 = *(&v1121 + 1);
      v812 = v1122;
      v1095 = __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
      v814 = App.appIdentifier.getter();
      v816 = v815;
      outlined init with copy of ReferenceResolutionClientProtocol?(v1092, v433, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v817 = v1115;
      v818 = v1118;
      if ((*(v1115 + 48))(v433, 1, v1118) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v433, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v819 = 0;
        v820 = 0;
        v821 = v1089;
      }

      else
      {
        v819 = SiriKitReliabilityCodes.rawValue.getter();
        v822 = v433;
        v820 = v823;
        v821 = v1089;
        (*(v817 + 8))(v822, v818);
      }

      v1118 = *(v1096 + 128);
      v1059 = v813;
      v824 = v1101;
      v825 = v1100;
      v826 = v1090;
      v827 = v821;
      (*(v812 + 8))(v1090, v821, v1105, v1106, v814, v816, v1109, v1102, v1100, v1101, v819, v820, v1107, v1112, v1059, v812);

      __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
      v828 = v1092;
      v829 = v1099;
      TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v826, v1117, v821, v1116, v1110, 0, 0, &v1124, v1099, 0, 0, v825, v824, v1097, v1098, v1103, v1104, v1092, 1, 0, 0, 0);

LABEL_376:

      (*(v1067 + 8))(v827, v1111);
      outlined destroy of ReferenceResolutionClientProtocol?(v828, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      (*(v1114 + 8))(v826, v1119);
LABEL_377:
      outlined destroy of ReferenceResolutionClientProtocol?(v1108 + v1118, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      return;
    }

LABEL_245:

    goto LABEL_372;
  }

  if (v94 == *MEMORY[0x1E69CFC20])
  {
    v351 = v1108;
    (*(v91 + 96))(v1108, v90);
    v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v353 = *(v351 + v352[12]);
    v354 = *(v351 + v352[16]);
    v355 = v351 + v352[20];
    v356 = *v355;
    v357 = v65;
    v358 = *(v355 + 8);
    v359 = v351 + v352[24];
    v360 = v351 + v352[28];
    v362 = *v360;
    v361 = *(v360 + 8);
    v1101 = v362;
    v1102 = v361;
    v363 = v352[32];
    (*(v357 + 32))(v1082, v351, v1119);
    v364 = *(v359 + 16);
    v1124 = *v359;
    v1125 = v364;
    v1126 = *(v359 + 32);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v351 + v363, v1084, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v365 = *(v1112 + 16);
    v366 = v1081;
    SiriKitEvent.timestamp.getter();
    v1113 = v353;
    if (v358)
    {

      v367 = v354;
      v1106 = 0;
      v1107 = 0;
    }

    else
    {
      *&v1120 = v356;
      lazy protocol witness table accessor for type Int and conformance Int();

      v521 = v354;
      v1106 = BinaryInteger.description.getter();
      v1107 = v522;
    }

    v523 = v1117;
    v1103 = v354;
    v524 = [v354 typeName];
    v1108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v526 = v525;

    v1099 = ActivityType.asSELFTypeAndReason(_:)(v1084);
    LODWORD(v1098) = v527;
    v528 = SiriKitEventContext.resultCandidateId.getter();
    if (v529)
    {
      v530 = v528;
    }

    else
    {
      v530 = 13101;
    }

    if (v529)
    {
      v531 = v529;
    }

    else
    {
      v531 = 0xE200000000000000;
    }

    v532 = v523[10];
    v533 = v523[11];
    v1112 = v532;
    v534 = *(v1116 + 16);
    v535 = *(v1116 + 24);
    v536 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1109 = v365;
    v1105 = v535;
    v537 = v366;
    v1104 = v533;
    v1110 = v534;
    if (v536)
    {
      v1100 = v536;
      v538 = v365;
      v539 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v539)
      {
        v540 = v539;
        v541 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v530, v531, v1112, v533, v534, v535);
        if (!v541)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v770 = type metadata accessor for Logger();
          __swift_project_value_buffer(v770, static Logger.instrumentation);

          v771 = Logger.logObject.getter();
          v772 = static os_log_type_t.error.getter();

          LODWORD(v1099) = v772;
          if (os_log_type_enabled(v771, v772))
          {
            v773 = v535;
            v774 = swift_slowAlloc();
            v1097 = v771;
            v775 = v774;
            v1098 = swift_slowAlloc();
            *&v1120 = v1098;
            *v775 = 136315650;
            v776 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v530, v531, &v1120);

            *(v775 + 4) = v776;
            *(v775 + 12) = 2080;
            *(v775 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1110, v773, &v1120);
            *(v775 + 22) = 2080;
            *(v775 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v533, &v1120);
            v777 = v1097;
            _os_log_impl(&dword_1DC659000, v1097, v1099, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v775, 0x20u);
            v778 = v1098;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v778, -1, -1);
            MEMORY[0x1E12A2F50](v775, -1, -1);
          }

          else
          {
          }

          v727 = v1077;
          v365 = v538;
          goto LABEL_402;
        }

        v1097 = v541;
        v542 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v542)
        {
          v543 = v542;
          (*(v538 + 144))(&v1120, v1113);
          v544 = *(&v1121 + 1);
          v545 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v546 = (*(v545 + 8))(v544, v545);
          if (v547)
          {
            v548 = v547;
          }

          else
          {
            v546 = 0x6C7070615F746F6ELL;
            v548 = 0xEE00656C62616369;
          }

          v549 = MEMORY[0x1E12A1410](v546, v548);

          [v543 setBundleId_];

          v550 = *(&v1121 + 1);
          v551 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v552 = *(v551 + 16);
          v553 = v551;
          v538 = v1109;
          v554 = v552(v550, v553);
          if (v555)
          {
            v556 = v555;
          }

          else
          {
            v554 = 0x6C7070615F746F6ELL;
            v556 = 0xEE00656C62616369;
          }

          v557 = MEMORY[0x1E12A1410](v554, v556);

          [v543 setAppVersion_];

          [v540 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
        }

        v558 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1106, v1107);
        v560 = v559;
        v561 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v561)
        {
          v562 = v561;
          v1096 = v558;
          v563 = MEMORY[0x1E12A1410](v1108, v526);

          [v562 setCurrentTaskName_];

          [v562 setCurrentTaskType_];
          v564 = HIDWORD(v1099);
          [v562 setFlowStateType_];
          v565 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v565)
          {
            if (v1098)
            {
              v566 = 0;
            }

            else
            {
              v566 = v564;
            }

            v567 = v565;
            [v565 setStatusReason_];
            [v562 setFlowStateReason_];
          }

          [v562 setResolvedSlotName_];
          if (v560)
          {
            v568 = MEMORY[0x1E12A1410](v1096, v560);
          }

          else
          {
            v568 = 0;
          }

          [v562 setFlowStateReasonDescription_];

          [v540 setFlowState_];
        }

        else
        {
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v841 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v841 > -9.22337204e18)
        {
          if (v841 < 9.22337204e18)
          {
            [v540 setTimestampMs_];
            [v540 setSequenceNum_];

            v842 = v1100;
            [v1100 setFlowStep_];
            v843 = v842;
            v844 = v1097;
            [v843 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
LABEL_395:
              v845 = type metadata accessor for Logger();
              __swift_project_value_buffer(v845, static Logger.instrumentation);

              v846 = Logger.logObject.getter();
              v847 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v846, v847))
              {
                v848 = swift_slowAlloc();
                v849 = swift_slowAlloc();
                *&v1120 = v849;
                *v848 = 136315906;
                if (v1099 > 0xD0)
                {
                  v850 = @"FLOWSTATETYPE_UNKNOWN";
                  v851 = @"FLOWSTATETYPE_UNKNOWN";
                }

                else
                {
                  v850 = off_1E8640678[v1099];
                  v851 = off_1E8640D00[v1099];
                }

                v854 = v850;
                v855 = v851;
                v856 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v858 = v857;

                v859 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v856, v858, &v1120);

                *(v848 + 4) = v859;
                *(v848 + 12) = 2080;
                v852 = v1110;
                v853 = v1105;
                *(v848 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1110, v1105, &v1120);
                *(v848 + 22) = 2080;
                *(v848 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1108, v526, &v1120);
                *(v848 + 32) = 2080;
                *(v848 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                _os_log_impl(&dword_1DC659000, v846, v847, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v848, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v849, -1, -1);
                MEMORY[0x1E12A2F50](v848, -1, -1);

                v727 = v1077;
                v365 = v1109;
              }

              else
              {
                v365 = v538;

                v727 = v1077;
                v852 = v1110;
                v853 = v1105;
              }

              v860 = v1100;
              (*(v365 + 96))(v1100);
              TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1112, v1104, v852, v853);

LABEL_402:
              outlined init with copy of ReferenceResolutionClientProtocol(v365 + 16, &v1120);
              v862 = *(&v1121 + 1);
              v861 = v1122;
              __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
              v863 = App.appIdentifier.getter();
              v865 = v864;
              outlined init with copy of ReferenceResolutionClientProtocol?(v1084, v727, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v866 = v1115;
              v867 = v1118;
              if ((*(v1115 + 48))(v727, 1, v1118) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v727, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
                v868 = 0;
                v869 = 0;
              }

              else
              {
                v870 = v867;
                v868 = SiriKitReliabilityCodes.rawValue.getter();
                v871 = v727;
                v869 = v872;
                v873 = v870;
                v537 = v1081;
                (*(v866 + 8))(v871, v873);
              }

              v874 = *(v861 + 8);
              v1064 = v861;
              v875 = v1082;
              v874(v1082, v537, v1108, v526, v863, v865, v1112, v1104, 0, 0, v868, v869, v1110, v1105, v862, v1064);

              __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
              v876 = v1084;
              v877 = v1103;
              TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v875, v1117, v537, v1116, v1113, 0, 0, &v1124, v1103, 0, 0, 0, 0, v1101, v1102, v1106, v1107, v1084, 1, 0, 0, 0);

              (*(v1067 + 8))(v537, v1111);
              outlined destroy of ReferenceResolutionClientProtocol?(v876, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
              v111 = *(v1114 + 8);
              v112 = v875;
              goto LABEL_139;
            }

LABEL_531:
            swift_once();
            goto LABEL_395;
          }

LABEL_530:
          __break(1u);
          goto LABEL_531;
        }

        __break(1u);
        goto LABEL_530;
      }
    }

    v718 = v537;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v719 = type metadata accessor for Logger();
    __swift_project_value_buffer(v719, static Logger.instrumentation);

    v720 = Logger.logObject.getter();
    v721 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v720, v721))
    {
      v722 = v535;
      v723 = swift_slowAlloc();
      v724 = swift_slowAlloc();
      *&v1120 = v724;
      *v723 = 136315650;
      v725 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v530, v531, &v1120);

      *(v723 + 4) = v725;
      *(v723 + 12) = 2080;
      *(v723 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1110, v722, &v1120);
      *(v723 + 22) = 2080;
      *(v723 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v533, &v1120);
      _os_log_impl(&dword_1DC659000, v720, v721, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v723, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v724, -1, -1);
      v726 = v723;
      v365 = v1109;
      MEMORY[0x1E12A2F50](v726, -1, -1);
    }

    else
    {
    }

    v727 = v1077;
    v537 = v718;
    goto LABEL_402;
  }

  if (v94 == *MEMORY[0x1E69CFBE0])
  {
    v480 = v1108;
    (*(v91 + 96))(v1108, v90);
    v481 = v480;
    v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);
    v483 = *(v480 + v482[12]);
    v484 = *(v480 + v482[16]);
    v485 = v480 + v482[20];
    v486 = *v485;
    v487 = v65;
    v488 = *(v485 + 8);
    v489 = v481 + v482[24];
    v490 = (v481 + v482[32]);
    v492 = *v490;
    v491 = v490[1];
    v1102 = v492;
    v1100 = v491;
    v1099 = v482;
    v493 = v482[36];
    (*(v487 + 32))(v1080, v481, v1119);
    v494 = *(v489 + 16);
    v1124 = *v489;
    v1125 = v494;
    v1126 = *(v489 + 32);
    v495 = v481 + v493;
    v496 = v1078;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v495, v1078, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v1113 = *(v1112 + 16);
    SiriKitEvent.timestamp.getter();
    v1110 = v483;
    if (v488)
    {

      v497 = v484;
      v1105 = 0;
      v1106 = 0;
    }

    else
    {
      *&v1120 = v486;
      lazy protocol witness table accessor for type Int and conformance Int();

      v663 = v484;
      v1105 = BinaryInteger.description.getter();
      v1106 = v664;
    }

    v1101 = v484;
    v665 = [v484 typeName];
    v1107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v667 = v666;

    v1112 = v667;

    v668 = ActivityType.asSELFTypeAndReason(_:)(v496);
    LODWORD(v1096) = v669;
    v670 = v1117;
    v671 = SiriKitEventContext.resultCandidateId.getter();
    if (v672)
    {
      v673 = v671;
    }

    else
    {
      v673 = 13101;
    }

    if (v672)
    {
      v674 = v672;
    }

    else
    {
      v674 = 0xE200000000000000;
    }

    v675 = v670[10];
    v676 = v670[11];
    v677 = *(v1116 + 16);
    v678 = *(v1116 + 24);
    v679 = off_1E8646000;
    v680 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v1104 = v678;
    v1103 = v676;
    v1109 = v677;
    if (v680)
    {
      v1095 = v668;
      v1097 = v680;
      v681 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v681)
      {
        v682 = v681;
        v683 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v673, v674, v675, v676, v677, v678);
        if (v683)
        {
          v1094 = v683;
          v684 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
          if (v684)
          {
            v685 = v684;
            (*(v1113 + 144))(&v1120, v1110);
            v686 = *(&v1121 + 1);
            v687 = v1122;
            __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
            v688 = (*(v687 + 8))(v686, v687);
            if (v689)
            {
              v690 = v689;
            }

            else
            {
              v688 = 0x6C7070615F746F6ELL;
              v690 = 0xEE00656C62616369;
            }

            v691 = MEMORY[0x1E12A1410](v688, v690);

            [v685 setBundleId_];

            v692 = *(&v1121 + 1);
            v693 = v1122;
            __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
            v694 = (*(v693 + 16))(v692, v693);
            if (v695)
            {
              v696 = v695;
            }

            else
            {
              v694 = 0x6C7070615F746F6ELL;
              v696 = 0xEE00656C62616369;
            }

            v697 = MEMORY[0x1E12A1410](v694, v696);

            [v685 setAppVersion_];

            [v682 setAppContext_];
            __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
          }

          v698 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1105, v1106);
          v700 = v699;
          v701 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
          if (v701)
          {
            v702 = v701;
            v1093 = v698;
            v703 = MEMORY[0x1E12A1410](v1107, v1112);

            [v702 setCurrentTaskName_];

            [v702 setCurrentTaskType_];
            v704 = HIDWORD(v1095);
            [v702 setFlowStateType_];
            v705 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
            if (v705)
            {
              if (v1096)
              {
                v706 = 0;
              }

              else
              {
                v706 = v704;
              }

              v707 = v705;
              [v705 setStatusReason_];
              [v702 setFlowStateReason_];
            }

            [v702 setResolvedSlotName_];
            if (v700)
            {
              v708 = MEMORY[0x1E12A1410](v1093, v700);
            }

            else
            {
              v708 = 0;
            }

            [v702 setFlowStateReasonDescription_];

            [v682 setFlowState_];
            v676 = v1103;
          }

          else
          {
          }

          Date.timeIntervalSince1970.getter();
          if ((*&v951 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v951 > -9.22337204e18)
          {
            if (v951 < 9.22337204e18)
            {
              v679 = v675;
              [v682 setTimestampMs_];
              [v682 setSequenceNum_];

              v952 = v1097;
              [v1097 setFlowStep:v682];
              v953 = v952;
              v954 = v1094;
              [v953 setEventMetadata:v1094];

              if (one-time initialization token for instrumentation == -1)
              {
LABEL_452:
                v955 = type metadata accessor for Logger();
                __swift_project_value_buffer(v955, static Logger.instrumentation);

                v956 = Logger.logObject.getter();
                v957 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v956, v957))
                {
                  v958 = swift_slowAlloc();
                  v1096 = swift_slowAlloc();
                  *&v1120 = v1096;
                  *v958 = 136315906;
                  v675 = v679;
                  if (v1095 > 0xD0)
                  {
                    v959 = @"FLOWSTATETYPE_UNKNOWN";
                    v960 = @"FLOWSTATETYPE_UNKNOWN";
                  }

                  else
                  {
                    v959 = off_1E8641388[v1095];
                    v960 = off_1E8641A10[v1095];
                  }

                  v963 = v959;
                  v964 = v960;
                  v965 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v967 = v966;

                  v968 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v965, v967, &v1120);

                  *(v958 + 4) = v968;
                  *(v958 + 12) = 2080;
                  v961 = v1109;
                  v962 = v1104;
                  *(v958 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v1104, &v1120);
                  *(v958 + 22) = 2080;
                  *(v958 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1107, v1112, &v1120);
                  *(v958 + 32) = 2080;
                  *(v958 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
                  _os_log_impl(&dword_1DC659000, v956, v957, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v958, 0x2Au);
                  v969 = v1096;
                  swift_arrayDestroy();
                  MEMORY[0x1E12A2F50](v969, -1, -1);
                  MEMORY[0x1E12A2F50](v958, -1, -1);

                  v793 = v1073;
                }

                else
                {

                  v793 = v1073;
                  v675 = v679;
                  v961 = v1109;
                  v962 = v1104;
                }

                v970 = v1097;
                (*(v1113 + 96))(v1097);
                TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v675, v676, v961, v962);

                goto LABEL_459;
              }

LABEL_535:
              swift_once();
              goto LABEL_452;
            }

LABEL_534:
            __break(1u);
            goto LABEL_535;
          }

          __break(1u);
          goto LABEL_534;
        }

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v830 = type metadata accessor for Logger();
        __swift_project_value_buffer(v830, static Logger.instrumentation);

        v831 = Logger.logObject.getter();
        v832 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v831, v832))
        {
          v833 = v678;
          v834 = swift_slowAlloc();
          LODWORD(v1095) = v832;
          v835 = v834;
          v1096 = swift_slowAlloc();
          *&v1120 = v1096;
          *v835 = 136315650;
          v836 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v673, v674, &v1120);

          *(v835 + 4) = v836;
          *(v835 + 12) = 2080;
          *(v835 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v833, &v1120);
          *(v835 + 22) = 2080;
          *(v835 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v675, v676, &v1120);
          _os_log_impl(&dword_1DC659000, v831, v1095, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v835, 0x20u);
          v837 = v1096;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v837, -1, -1);
          MEMORY[0x1E12A2F50](v835, -1, -1);

          goto LABEL_357;
        }

        goto LABEL_356;
      }
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v786 = type metadata accessor for Logger();
    __swift_project_value_buffer(v786, static Logger.instrumentation);

    v787 = Logger.logObject.getter();
    v788 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v787, v788))
    {
      v789 = v678;
      v790 = swift_slowAlloc();
      v791 = swift_slowAlloc();
      *&v1120 = v791;
      *v790 = 136315650;
      v792 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v673, v674, &v1120);

      *(v790 + 4) = v792;
      *(v790 + 12) = 2080;
      *(v790 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1109, v789, &v1120);
      *(v790 + 22) = 2080;
      *(v790 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v675, v676, &v1120);
      _os_log_impl(&dword_1DC659000, v787, v788, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v790, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v791, -1, -1);
      MEMORY[0x1E12A2F50](v790, -1, -1);

LABEL_357:
      v793 = v1073;
LABEL_459:
      v1098 = v675;
      outlined init with copy of ReferenceResolutionClientProtocol(v1113 + 16, &v1120);
      v971 = *(&v1121 + 1);
      v972 = v1122;
      __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
      v973 = App.appIdentifier.getter();
      v975 = v974;
      outlined init with copy of ReferenceResolutionClientProtocol?(v496, v793, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v976 = v1115;
      v977 = v1118;
      if ((*(v1115 + 48))(v793, 1, v1118) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v793, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v978 = 0;
        v979 = 0;
        v980 = v1102;
        v827 = v1079;
      }

      else
      {
        v978 = SiriKitReliabilityCodes.rawValue.getter();
        v981 = v793;
        v979 = v982;
        v827 = v1079;
        (*(v976 + 8))(v981, v977);
        v980 = v1102;
      }

      v1118 = *(v1099 + 112);
      v1060 = v971;
      v826 = v1080;
      (*(v972 + 8))(v1080, v827, v1107, v1112, v973, v975, v1098, v1103, 0, 0, v978, v979, v1109, v1104, v1060, v972);

      __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
      v828 = v1078;
      v983 = v1101;
      TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v826, v1117, v827, v1116, v1110, 0, 0, &v1124, v1101, 0, 0, 0, 0, v980, v1100, v1105, v1106, v1078, 1, 0, 0, 0);

      goto LABEL_376;
    }

LABEL_356:

    goto LABEL_357;
  }

  if (v94 == *MEMORY[0x1E69CFBB8])
  {
    v569 = v1108;
    (*(v91 + 96))(v1108, v90);
    v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_SS06intentE4Name0A13AppResolution0I0CSg3appSSSg9attributeypSg10chosenItemSayypGSg19disambiguationItemsSo27FLOWSchemaFLOWDomainContextCSg06domainS0AA0cD0_pSg04flowD0AK09parameterH0AK10responseIdAK17statusDescriptionAA0aB16ReliabilityCodesOSg0Y6ReasontMR);
    v571 = (v569 + v570[12]);
    v572 = v571[1];
    v1103 = *v571;
    v1110 = *(v569 + v570[16]);
    v573 = v569 + v570[20];
    v575 = *v573;
    v574 = *(v573 + 8);
    v1097 = v575;
    v1100 = v574;
    v576 = (v569 + v570[24]);
    v577 = *(v569 + v570[28]);
    v1105 = *(v569 + v570[32]);
    v578 = v569 + v570[36];
    v579 = (v569 + v570[40]);
    v581 = *v579;
    v580 = v579[1];
    v1096 = v581;
    v1099 = v580;
    v582 = v569 + v570[44];
    v584 = *v582;
    v583 = *(v582 + 8);
    v1093 = v584;
    v1094 = v583;
    v585 = v569 + v570[48];
    v587 = *v585;
    v586 = *(v585 + 8);
    v1101 = v587;
    v1102 = v586;
    v588 = v65;
    v589 = v570[52];
    (*(v588 + 32))(v1076, v569, v1119);
    v590 = v576[1];
    v1123[0] = *v576;
    v1123[1] = v590;
    v591 = *(v578 + 16);
    v1124 = *v578;
    v1125 = v591;
    v1126 = *(v578 + 32);
    v592 = v1075;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v569 + v589, v1075, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v593 = *(v1112 + 16);
    SiriKitEvent.timestamp.getter();
    v1109 = v593;
    v1095 = v577;
    if (v577)
    {
      v594 = v1117;
      if (v577[2])
      {
        v595 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(v577, v1123);
        if (v595)
        {
          v596 = v595;
          v597 = SiriKitEventContext.resultCandidateId.getter();
          v599 = 13101;
          if (v598)
          {
            v599 = v597;
            v600 = v598;
          }

          else
          {
            v600 = 0xE200000000000000;
          }

          TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v596, v599, v600, v594[10], v594[11], *(v1116 + 16), *(v1116 + 24));

          v601 = v596;
          v577 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v596);
        }

        else
        {
          v878 = v1116;
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v879 = type metadata accessor for Logger();
          __swift_project_value_buffer(v879, static Logger.instrumentation);

          v880 = Logger.logObject.getter();
          v881 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v880, v881))
          {
            v882 = swift_slowAlloc();
            v883 = swift_slowAlloc();
            *&v1120 = v883;
            *v882 = 136315394;
            *(v882 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v878 + 16), *(v878 + 24), &v1120);
            *(v882 + 12) = 2080;
            *(v882 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v594[10], v594[11], &v1120);
            _os_log_impl(&dword_1DC659000, v880, v881, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v882, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v883, -1, -1);
            MEMORY[0x1E12A2F50](v882, -1, -1);
          }

          v577 = 0;
          v593 = v1109;
        }
      }

      else
      {
        v577 = 0;
      }
    }

    else
    {
      v594 = v1117;
    }

    v1113 = v572;
    swift_bridgeObjectRetain_n();
    v1092 = ActivityType.asSELFTypeAndReason(_:)(v592);
    v885 = v884;
    v886 = SiriKitEventContext.resultCandidateId.getter();
    if (v887)
    {
      v888 = v886;
    }

    else
    {
      v888 = 13101;
    }

    v889 = 0xE200000000000000;
    if (v887)
    {
      v889 = v887;
    }

    v1104 = v889;
    v890 = v594[11];
    v1112 = v594[10];
    v891 = *(v1116 + 24);
    v1108 = *(v1116 + 16);
    v892 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
    v893 = v1110;
    v1098 = v577;
    v1106 = v890;
    v1107 = v891;
    if (v892)
    {
      v894 = v892;
      v1091 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
      if (v1091)
      {
        v1090 = v888;
        v895 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v888, v1104, v1112, v890, v1108, v891);
        if (!v895)
        {

          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v929 = type metadata accessor for Logger();
          __swift_project_value_buffer(v929, static Logger.instrumentation);
          v930 = v1104;

          v931 = Logger.logObject.getter();
          v932 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v931, v932))
          {
            v933 = swift_slowAlloc();
            v934 = v890;
            v1092 = v894;
            v935 = v893;
            v936 = v891;
            v937 = v933;
            v938 = swift_slowAlloc();
            *&v1120 = v938;
            *v937 = 136315650;
            v939 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1090, v930, &v1120);

            *(v937 + 4) = v939;
            *(v937 + 12) = 2080;
            v912 = v1108;
            v940 = v936;
            v893 = v935;
            v941 = v1075;
            *(v937 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1108, v940, &v1120);
            *(v937 + 22) = 2080;
            *(v937 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v934, &v1120);
            _os_log_impl(&dword_1DC659000, v931, v932, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v937, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v938, -1, -1);
            v593 = v1109;
            MEMORY[0x1E12A2F50](v937, -1, -1);

LABEL_502:
            outlined init with copy of ReferenceResolutionClientProtocol(v593 + 16, &v1120);
            v1030 = *(&v1121 + 1);
            v1031 = v1122;
            v1108 = __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
            if (v893)
            {
              v1032 = App.appIdentifier.getter();
              v1034 = v1033;
            }

            else
            {
              v1032 = 0;
              v1034 = 0;
            }

            v1035 = v941;
            v1036 = v1072;
            outlined init with copy of ReferenceResolutionClientProtocol?(v1035, v1072, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
            v1037 = v1115;
            v1038 = v1118;
            if ((*(v1115 + 48))(v1036, 1, v1118) == 1)
            {
              outlined destroy of ReferenceResolutionClientProtocol?(v1036, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
              v1039 = 0;
              v1040 = 0;
            }

            else
            {
              v1041 = v1038;
              v1039 = SiriKitReliabilityCodes.rawValue.getter();
              v1042 = v1036;
              v1040 = v1043;
              (*(v1037 + 8))(v1042, v1041);
            }

            v1044 = *(v1031 + 8);
            v1061 = v1030;
            v1065 = v1031;
            v1055 = v912;
            v1045 = v1099;
            v1046 = v1096;
            v1047 = v1076;
            v1048 = v1074;
            v1049 = v1103;
            v1050 = v1113;
            v1044(v1076, v1074, v1103, v1113, v1032, v1034, v1112, v1106, v1096, v1099, v1039, v1040, v1055, v1107, v1061, v1065);

            __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
            v1051 = v1075;
            TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v1047, v1117, v1048, v1116, v1110, v1097, v1100, &v1124, 0, v1049, v1050, v1046, v1045, v1093, v1094, v1101, v1102, v1075, 1, 0, 0, 0);

            (*(v1067 + 8))(v1048, v1111);
            outlined destroy of ReferenceResolutionClientProtocol?(v1051, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v1123, &_sypSgMd, &_sypSgMR);
            v111 = *(v1114 + 8);
            v112 = v1047;
            goto LABEL_139;
          }

          v912 = v1108;
LABEL_501:
          v941 = v1075;
          goto LABEL_502;
        }

        v1089 = v895;
        v896 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v896)
        {
          v897 = v896;
          (*(v1109 + 144))(&v1120, v893);
          v898 = *(&v1121 + 1);
          v899 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v900 = (*(v899 + 8))(v898, v899);
          if (v901)
          {
            v902 = v901;
          }

          else
          {
            v900 = 0x6C7070615F746F6ELL;
            v902 = 0xEE00656C62616369;
          }

          v903 = MEMORY[0x1E12A1410](v900, v902);

          [v897 setBundleId_];

          v904 = *(&v1121 + 1);
          v905 = v1122;
          __swift_project_boxed_opaque_existential_1(&v1120, *(&v1121 + 1));
          v906 = *(v905 + 16);
          v907 = v905;
          v577 = v1098;
          v908 = v906(v904, v907);
          if (v909)
          {
            v910 = v909;
          }

          else
          {
            v908 = 0x6C7070615F746F6ELL;
            v910 = 0xEE00656C62616369;
          }

          v911 = MEMORY[0x1E12A1410](v908, v910);

          [v897 setAppVersion_];

          [v1091 setAppContext_];
          __swift_destroy_boxed_opaque_existential_1Tm(&v1120);
        }

        v912 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v1101, v1102);
        v914 = v913;
        v915 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v915)
        {
          v916 = v915;
          v917 = MEMORY[0x1E12A1410](v1103, v1113);

          [v916 setCurrentTaskName_];

          if (v1100)
          {
            v918 = MEMORY[0x1E12A1410](v1097);
          }

          else
          {
            v918 = 0;
          }

          v992 = v1092;
          [v916 setCurrentTaskType_];

          [v916 setFlowStateType_];
          v993 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v993)
          {
            if (v885)
            {
              v994 = 0;
            }

            else
            {
              v994 = HIDWORD(v992);
            }

            v995 = v993;
            [v993 setStatusReason_];
            [v916 setFlowStateReason_];
          }

          v986 = v1091;
          if (v1099)
          {
            v996 = MEMORY[0x1E12A1410](v1096);
          }

          else
          {
            v996 = 0;
          }

          [v916 setResolvedSlotName_];

          if (v914)
          {
            v997 = MEMORY[0x1E12A1410](v912, v914);
          }

          else
          {
            v997 = 0;
          }

          [v916 setFlowStateReasonDescription_];

          [v986 setFlowState_];
          v984 = v1106;
          v985 = v1107;
        }

        else
        {

          v984 = v1106;
          v985 = v1107;
          v986 = v1091;
        }

        if (v1105)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v998 = swift_allocObject();
          *(v998 + 16) = xmmword_1DCA70640;
          v999 = v1105;
          *(v998 + 32) = v1105;
          type metadata accessor for FLOWSchemaFLOWDomainContext();
          v1000 = v999;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v986 setDomainContexts_];
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v1002 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v1002 > -9.22337204e18)
        {
          if (v1002 < 9.22337204e18)
          {
            [v986 setTimestampMs_];
            [v986 setSequenceNum_];
            if (v577)
            {
              v1003 = one-time initialization token for instrumentation;
              v1004 = v577;
              if (v1003 != -1)
              {
                swift_once();
              }

              v1005 = type metadata accessor for Logger();
              __swift_project_value_buffer(v1005, static Logger.instrumentation);
              v1006 = v1104;

              v1007 = Logger.logObject.getter();
              v1008 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v1007, v1008))
              {
                v1009 = swift_slowAlloc();
                v1088 = v1004;
                v1010 = v1009;
                v1011 = swift_slowAlloc();
                *&v1120 = v1011;
                *v1010 = 136315650;
                v1012 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1090, v1006, &v1120);

                *(v1010 + 4) = v1012;
                *(v1010 + 12) = 2080;
                v912 = v1108;
                *(v1010 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1108, v985, &v1120);
                *(v1010 + 22) = 2080;
                *(v1010 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v984, &v1120);
                _os_log_impl(&dword_1DC659000, v1007, v1008, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v1010, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v1011, -1, -1);
                v1013 = v1010;
                v1004 = v1088;
                MEMORY[0x1E12A2F50](v1013, -1, -1);
              }

              else
              {

                v912 = v1108;
              }

              LODWORD(v984) = v1092;
              v986 = v1091;
              [v1091 setPlatformRelatedContext_];
            }

            else
            {

              v912 = v1108;
              LODWORD(v984) = v1092;
            }

            [v894 setFlowStep_];
            v1014 = v1089;
            [v894 setEventMetadata_];

            if (one-time initialization token for instrumentation == -1)
            {
              goto LABEL_494;
            }

            goto LABEL_539;
          }

LABEL_538:
          __break(1u);
LABEL_539:
          swift_once();
LABEL_494:
          v1015 = type metadata accessor for Logger();
          __swift_project_value_buffer(v1015, static Logger.instrumentation);

          v1016 = Logger.logObject.getter();
          v1017 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v1016, v1017))
          {
            v1018 = swift_slowAlloc();
            v1019 = swift_slowAlloc();
            *&v1120 = v1019;
            *v1018 = 136315906;
            v1020 = v894;
            if (v984 > 0xD0)
            {
              v1021 = @"FLOWSTATETYPE_UNKNOWN";
              v1022 = @"FLOWSTATETYPE_UNKNOWN";
            }

            else
            {
              v1021 = off_1E8642098[v984];
              v1022 = off_1E8642720[v984];
            }

            v1024 = v1021;
            v1025 = v1022;
            v1026 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v1028 = v1027;

            v1029 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1026, v1028, &v1120);

            *(v1018 + 4) = v1029;
            *(v1018 + 12) = 2080;
            v912 = v1108;
            v1023 = v1107;
            *(v1018 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1108, v1107, &v1120);
            *(v1018 + 22) = 2080;
            *(v1018 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1103, v1113, &v1120);
            *(v1018 + 32) = 2080;
            *(v1018 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1117[12], v1117[13], &v1120);
            _os_log_impl(&dword_1DC659000, v1016, v1017, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v1018, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v1019, -1, -1);
            MEMORY[0x1E12A2F50](v1018, -1, -1);

            v894 = v1020;
          }

          else
          {

            v1023 = v1107;
          }

          v593 = v1109;
          (*(v1109 + 96))(v894);
          TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v1112, v1106, v912, v1023);

          goto LABEL_501;
        }

        __break(1u);
        goto LABEL_538;
      }
    }

    v919 = v893;

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v920 = type metadata accessor for Logger();
    __swift_project_value_buffer(v920, static Logger.instrumentation);
    v921 = v1104;

    v922 = Logger.logObject.getter();
    v923 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v922, v923))
    {
      v924 = v890;
      v925 = v891;
      v926 = swift_slowAlloc();
      v927 = swift_slowAlloc();
      *&v1120 = v927;
      *v926 = 136315650;
      v928 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v888, v921, &v1120);

      *(v926 + 4) = v928;
      *(v926 + 12) = 2080;
      v912 = v1108;
      *(v926 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1108, v925, &v1120);
      *(v926 + 22) = 2080;
      *(v926 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1112, v924, &v1120);
      _os_log_impl(&dword_1DC659000, v922, v923, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v926, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v927, -1, -1);
      v593 = v1109;
      MEMORY[0x1E12A2F50](v926, -1, -1);

      v893 = v919;
    }

    else
    {

      v912 = v1108;
    }

    goto LABEL_501;
  }

  if (v94 == *MEMORY[0x1E69CFBC0])
  {
    v709 = v1108;
    (*(v91 + 96))(v1108, v90);
    LODWORD(v1110) = *v709;
    v710 = *(v709 + 16);
    v1118 = *(v709 + 8);
    v711 = *(v709 + 32);
    v1114 = *(v709 + 24);
    v1115 = v711;
    v712 = *(v709 + 48);
    v1109 = *(v709 + 40);
    v713 = *(v709 + 64);
    v1106 = *(v709 + 56);
    v714 = *(v709 + 88);
    v1119 = *(v709 + 80);
    v715 = *(v709 + 96);
    v716 = *(v709 + 104);
    v717 = *(v709 + 108);
    SiriKitEvent.timestamp.getter();
    LOBYTE(v1124) = v717;
    specialized TaskLoggingService.logSELFFlowTask(activityType:eventContext:eventTime:task:taskType:app:attribute:domainContext:parameterName:responseId:statusReasonDescription:statusReason:)(v1110, v1117, v113, v1116, v1118, v710, v1114, v1115, v1109, v712, v1106, v713, v714, v715, v716 | (v717 << 32));

    (*(v1067 + 8))(v113, v1111);
  }

  else if (v94 == *MEMORY[0x1E69CFBF8])
  {
    v779 = v1108;
    (*(v91 + 96))(v1108, v90);
    v780 = v1070;
    v781 = v1069;
    v782 = v1071;
    (*(v1070 + 32))(v1069, v779, v1071);
    v783 = *(v1112 + 16);
    SiriKitEvent.timestamp.getter();
    v785 = v783[10];
    v784 = v783[11];
    __swift_project_boxed_opaque_existential_1(v783 + 7, v785);
    (*(v784 + 16))(v1117, v113, v781, *(v1116 + 16), *(v1116 + 24), v785, v784);
    (*(v11 + 8))(v113, v1111);
    (*(v780 + 8))(v781, v782);
  }

  else
  {
    v838 = v1111;
    if (v94 == *MEMORY[0x1E69CFBD8])
    {
      v839 = v1108;
      (*(v91 + 96))(v1108, v90);
      v840 = v839[2];
      TaskLoggingService.logDomainTier1Data(eventContext:task:taskType:tierOneFlowEvent:)(v1117, v1116, *v839, v839[1], v840);
    }

    else if (v94 == *MEMORY[0x1E69CFBC8])
    {
      v942 = v1112;
      v943 = v1108;
      (*(v91 + 96))(v1108, v90);
      v945 = *v943;
      v944 = v943[1];
      v1113 = *(v942 + 16);
      v946 = v1119;
      (*(v65 + 104))(v67, *MEMORY[0x1E69CFD98], v1119);
      SiriKitEvent.timestamp.getter();
      v1126 = 0;
      v1124 = 0u;
      v1125 = 0u;
      *&v1120 = v945;
      *(&v1120 + 1) = v944;
      *&v1123[0] = 0x203A746365726944;
      *(&v1123[0] + 1) = 0xE800000000000000;
      lazy protocol witness table accessor for type String and conformance String();

      v947 = v945;
      v948 = v944;
      if (StringProtocol.contains<A>(_:)())
      {

        v948 = 0xEE00746E65746E49;
        v947 = 0x6465737261706E55;
      }

      v949 = v1095;
      (*(v1115 + 56))(v1095, 1, 1, v1118);
      v950 = v1068;
      TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(v67, v1117, v1068, v1116, 0, v945, v944, 0, &v1124, 0, v947, v948, 0, 0, 0, 0, 0x6168436369706F54, 0xEC0000006465676ELL, v949, 0);

      outlined destroy of ReferenceResolutionClientProtocol?(v949, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(&v1124, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
      (*(v11 + 8))(v950, v838);
      (*(v1114 + 8))(v67, v946);
    }

    else if (v94 == *MEMORY[0x1E69CFC08])
    {
      v987 = v1108;
      (*(v91 + 96))(v1108, v90);
      v988 = *v987;
      v989 = v987[1];
      v990 = v987[2];
      v991 = SiriKitEvent.machAbsoluteTime.getter();
      TaskLoggingService.logDomainPerfContext(eventContext:eventTime:task:taskType:domainPerfContext:)(v1117, v991, v1116, v988, v989, v990);
    }

    else if (v94 == *MEMORY[0x1E69CFC30])
    {
      v1052 = v1108;
      (*(v91 + 96))(v1108, v90);
      v1053 = *v1052;
      TaskLoggingService.logLocationAccessPrompt(eventContext:task:promptContext:)(v1117, v1116, *v1052);
    }

    else
    {
      (*(v91 + 8))(v1108, v90);
    }
  }
}

uint64_t sub_1DC69CE1C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined init with copy of SiriKitEventOverrides?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriKitEventOverrides?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB14EventOverridesVSgMd, &_s11SiriKitFlow0aB14EventOverridesVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized IntentLoggingEventSink.receive(_:_:)()
{
  v363 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v345 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v349 = &v327 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v332 = &v327 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v347 = &v327 - v6;
  v346 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v334 = &v327 - v9;
  v10 = type metadata accessor for SiriKitConfirmationState();
  *(&v359 + 1) = *(v10 - 8);
  v360 = v10;
  v11 = *(*(&v359 + 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v350 = &v327 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v358 = &v327 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v352 = &v327 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v333 = &v327 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v339 = &v327 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v357 = &v327 - v22;
  MEMORY[0x1EEE9AC00](v23);
  *&v359 = &v327 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v361 = &v327 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v364 = &v327 - v28;
  v362 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v327 - v31;
  v33 = type metadata accessor for SiriKitEventPayload();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v348 = &v327 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v327 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
  v342 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v340 = &v327 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v344 = &v327 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v338 = &v327 - v44;
  v343 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v356 = &v327 - v47;
  v48 = type metadata accessor for ActivityType();
  v49 = *(v48 - 8);
  v353 = v48;
  v354 = v49;
  MEMORY[0x1EEE9AC00](v48);
  v351 = &v327 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v331 = &v327 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v337 = &v327 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v335 = &v327 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v336 = &v327 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v341 = &v327 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v355 = (&v327 - v62);
  SiriKitEvent.payload.getter();
  v63 = v38;
  v64 = (*(v34 + 88))(v38, v33);
  if (v64 == *MEMORY[0x1E69CFBD0])
  {
    (*(v34 + 96))(v38, v33);
    v65 = *v38;

    SiriKitEvent.timestamp.getter();
    IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(v65, v32, 0x53746E65746E692ELL, 0xEE00646574726174);

    return (*(v15 + 8))(v32, v14);
  }

  v328 = v32;
  v329 = v14;
  v330 = v15;
  if (v64 == *MEMORY[0x1E69CFC48])
  {
    (*(v34 + 96))(v38, v33);
    v68 = *v38;
    v67 = v38[1];
    v69 = v38[4];
    v71 = v38[5];
    v70 = v38[6];
    v72 = *(v63 + 56);

    v73 = v364;
    SiriKitEvent.timestamp.getter();
    if (v67)
    {
      *&v359 = v69;
      v361 = ".disambiguationResult";
      v74 = v67;
      v75 = [v74 intentId];
      v360 = v68;
      DWORD2(v359) = v72;
      if (v75)
      {
        v76 = v75;
        v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;
      }

      else
      {
        v358 = 0;
        v78 = 0;
      }

      v122 = v330;
      v123 = v328;
      v124 = v73;
      v125 = v329;
      (*(v330 + 16))(v328, v124, v329);
      v126 = (*(v122 + 80) + 64) & ~*(v122 + 80);
      v127 = (v362 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v128 = swift_allocObject();
      *(v128 + 16) = v359;
      *(v128 + 24) = v71;
      *(v128 + 32) = v74;
      *(v128 + 40) = v70;
      *(v128 + 48) = BYTE8(v359);
      *(v128 + 56) = v360;
      (*(v122 + 32))(v128 + v126, v123, v125);
      *(v128 + v127) = v363;
      v129 = v74;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v358, v78, 0xD000000000000016, v361 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationOffered(intent:parameterName:multicardinalValueIndex:disambiguationItems:now:context:));

      return (*(v122 + 8))(v364, v125);
    }

    else
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      __swift_project_value_buffer(v105, static Logger.instrumentation);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_1DC659000, v106, v107, "Intent is nil, not sending handleDisambiguationOffered event.", v108, 2u);
        MEMORY[0x1E12A2F50](v108, -1, -1);
      }

      return (*(v330 + 8))(v73, v329);
    }
  }

  if (v64 == *MEMORY[0x1E69CFC28])
  {
    (*(v34 + 96))(v38, v33);
    v79 = v38;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0SiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0SiSg18multicardinalIndextMR);
    v81 = *(v38 + v80[12]);

    v82 = (v38 + v80[20]);
    v84 = *v82;
    v83 = v82[1];
    v85 = v79 + v80[24];
    v86 = *v85;
    v87 = v85[8];
    (*(*(&v359 + 1) + 8))(v79, v360);
    v88 = v361;
    SiriKitEvent.timestamp.getter();
    if (v81)
    {
      v360 = v84;
      v364 = ".confirmationOffered";
      v89 = v81;
      v90 = [v89 intentId];
      LODWORD(v359) = v87;
      if (v90)
      {
        v91 = v90;
        *(&v359 + 1) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
      }

      else
      {
        *(&v359 + 1) = 0;
        v93 = 0;
      }

      v144 = v330;
      v145 = v328;
      v146 = v329;
      (*(v330 + 16))(v328, v88, v329);
      v147 = (*(v144 + 80) + 49) & ~*(v144 + 80);
      v148 = (v362 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
      v149 = swift_allocObject();
      v150 = v360;
      *(v149 + 16) = v89;
      *(v149 + 24) = v150;
      *(v149 + 32) = v83;
      *(v149 + 40) = v86;
      *(v149 + 48) = v359;
      (*(v144 + 32))(v149 + v147, v145, v146);
      *(v149 + v148) = v363;
      v151 = v89;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(*(&v359 + 1), v93, 0xD000000000000015, v364 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleDisambiguationResult(intent:parameterName:multicardinalIndexValue:sirikitConfirmationState:now:context:));

      return (*(v144 + 8))(v361, v146);
    }

    else
    {

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      __swift_project_value_buffer(v130, static Logger.instrumentation);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        *v133 = 0;
        _os_log_impl(&dword_1DC659000, v131, v132, "Intent is nil, not sending handleDisambiguationResult event.", v133, 2u);
        MEMORY[0x1E12A2F50](v133, -1, -1);
      }

      return (*(v330 + 8))(v88, v329);
    }
  }

  if (v64 != *MEMORY[0x1E69CFC18])
  {
    if (v64 == *MEMORY[0x1E69CFC00])
    {
      (*(v34 + 96))(v38, v33);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMd, &_s11SiriKitFlow0aB17ConfirmationStateO012confirmationE0_So8INIntentCSg6intentSSSg8taskNameSS09parameterJ0ypSg13confirmedItemSiSg18multicardinalIndextMR);
      v110 = *(v38 + v109[12]);

      v111 = (v38 + v109[20]);
      v112 = *v111;
      v113 = v111[1];
      v114 = v38 + v109[28];
      v361 = *v114;
      LODWORD(v359) = v114[8];
      v116 = *(&v359 + 1);
      v115 = v360;
      v117 = *(*(&v359 + 1) + 32);
      v364 = v63;
      v355 = v117;
      v356 = v112;
      v117(v358, v63, v360);
      v118 = v357;
      SiriKitEvent.timestamp.getter();
      if (v110)
      {
        v352 = v113;
        v353 = "ivity(.canceled)";
        v354 = v109;
        v349 = v110;
        v119 = [v349 intentId];
        if (v119)
        {
          v120 = v119;
          v348 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v351 = v121;
        }

        else
        {
          v348 = 0;
          v351 = 0;
        }

        v200 = *(&v359 + 1) + 16;
        v201 = v350;
        (*(*(&v359 + 1) + 16))(v350, v358, v115);
        v190 = v330;
        v191 = v329;
        (*(v330 + 16))(v328, v118, v329);
        v202 = (*(v200 + 64) + 40) & ~*(v200 + 64);
        v203 = (v11 + v202 + 7) & 0xFFFFFFFFFFFFFFF8;
        v204 = (*(v190 + 80) + v203 + 9) & ~*(v190 + 80);
        v205 = (v362 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        v207 = v349;
        v208 = v356;
        *(v206 + 2) = v349;
        *(v206 + 3) = v208;
        *(v206 + 4) = v352;
        v355(&v206[v202], v201, v360);
        v209 = &v206[v203];
        v210 = v360;
        *v209 = v361;
        v209[8] = v359;
        v193 = v358;
        (*(v190 + 32))(&v206[v204], v328, v191);
        *&v206[v205] = v363;
        v211 = v207;
        v115 = v210;
        v212 = v211;
        specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v348, v351, 0xD000000000000013, v353 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationResult(intent:parameterName:multicardinalIndexValue:confirmationState:now:context:));

        v116 = *(&v359 + 1);

        v192 = v357;
        v109 = v354;
      }

      else
      {

        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v186 = type metadata accessor for Logger();
        __swift_project_value_buffer(v186, static Logger.instrumentation);
        v187 = Logger.logObject.getter();
        v188 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_1DC659000, v187, v188, "Intent is nil, not sending handleConfirmationResult event.", v189, 2u);
          MEMORY[0x1E12A2F50](v189, -1, -1);
        }

        v190 = v330;
        v191 = v329;
        v192 = v357;
        v193 = v358;
      }

      (*(v190 + 8))(v192, v191);
      (*(v116 + 8))(v193, v115);
      v213 = &_sypSgMd;
      v214 = &_sypSgMR;
      v215 = v364 + v109[24];
      return outlined destroy of ReferenceResolutionClientProtocol?(v215, v213, v214);
    }

    if (v64 == *MEMORY[0x1E69CFBE8])
    {
      v134 = v34;
      v135 = v33;
      (*(v34 + 96))(v38, v33);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_So8INIntentC6intent0A13AppResolution0I0CSg3appAA06LaunchI8BehaviorOSg06launchiM0SSSg13parameterNameAQ10responseIdAQ17statusDescriptionAA0aB16ReliabilityCodesOSg0S6ReasontMR);
      v364 = *(v38 + v136[12]);

      v137 = v136[20];

      v138 = v136[36];
      v139 = v354;
      v140 = v353;
      (*(v354 + 4))(v355, v38, v353);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v38 + v137, v356, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      v141 = &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd;
      v142 = &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR;
      v143 = v38 + v138;
LABEL_42:
      outlined destroy of ReferenceResolutionClientProtocol?(v143, v141, v142);
      v160 = v351;
      (*(v139 + 13))(v351, *MEMORY[0x1E69CFDD0], v140);
      lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v366 == v365)
      {
        v161 = 1;
      }

      else
      {
        v161 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v169 = v135;
      v170 = *(v139 + 1);
      v170(v160, v140);

      if ((v161 & 1) == 0)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v356, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        return (v170)(v355, v140);
      }

      SiriKitEvent.timestamp.getter();
      *&v366 = 46;
      *(&v366 + 1) = 0xE100000000000000;
      v171 = v348;
      SiriKitEvent.payload.getter();
      v172 = SiriKitEventPayload.description.getter();
      v174 = v173;
      (*(v134 + 8))(v171, v169);
      MEMORY[0x1E12A1580](v172, v174);

      MEMORY[0x1E12A1580](11816, 0xE200000000000000);
      v175 = v355;
      v176 = ActivityType.rawValue.getter();
      v178 = v177;
      v170(v175, v140);
      MEMORY[0x1E12A1580](v176, v178);

      v179 = *(&v366 + 1);
      v361 = v366;
      v180 = type metadata accessor for SiriKitReliabilityCodes();
      v181 = v349;
      (*(*(v180 - 8) + 56))(v349, 1, 1, v180);
      v182 = v364;
      [v182 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for INIntent();
      if (swift_dynamicCast())
      {
        v364 = v179;
        *(&v359 + 1) = v365;
        v183 = [v365 intentId];
        v360 = v182;
        if (v183)
        {
          v184 = v183;
          v358 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *&v359 = v185;
        }

        else
        {
          v358 = 0;
          *&v359 = 0;
        }

        v235 = v328;
        v236 = v344;
        outlined init with copy of ReferenceResolutionClientProtocol?(v356, v344, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        v237 = v347;
        outlined init with copy of ReferenceResolutionClientProtocol?(v181, v347, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v225 = v330;
        v226 = v329;
        (*(v330 + 16))(v235, v352, v329);
        v238 = (*(v342 + 80) + 16) & ~*(v342 + 80);
        v239 = (v343 + *(v345 + 80) + v238) & ~*(v345 + 80);
        v240 = (v346 + v239 + 7) & 0xFFFFFFFFFFFFFFF8;
        v241 = (*(v225 + 80) + v240 + 8) & ~*(v225 + 80);
        v242 = (v362 + v241 + 7) & 0xFFFFFFFFFFFFFFF8;
        v243 = swift_allocObject();
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v236, v243 + v238, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v237, v243 + v239, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        v244 = v360;
        *(v243 + v240) = v360;
        (*(v225 + 32))(v243 + v241, v328, v226);
        *(v243 + v242) = v363;
        v181 = v349;
        v245 = v244;
        specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v358, v359, v361, v364, partial apply for closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:));

        v228 = v356;
        v227 = v352;
      }

      else
      {
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v216 = type metadata accessor for Logger();
        __swift_project_value_buffer(v216, static Logger.instrumentation);
        v217 = v182;
        v218 = Logger.logObject.getter();
        v219 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v218, v219))
        {
          v220 = swift_slowAlloc();
          v221 = swift_slowAlloc();
          *&v366 = v221;
          *v220 = 136315138;
          v222 = INIntent.debugDescriptionLite.getter();
          v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v223, &v366);

          *(v220 + 4) = v224;
          _os_log_impl(&dword_1DC659000, v218, v219, "Unexpected failure when cloning intent: %s", v220, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v221);
          MEMORY[0x1E12A2F50](v221, -1, -1);
          MEMORY[0x1E12A2F50](v220, -1, -1);
        }

        v225 = v330;
        v226 = v329;
        v227 = v352;
        v228 = v356;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v181, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      (*(v225 + 8))(v227, v226);
      v213 = &_s11SiriKitFlow17LaunchAppBehaviorOSgMd;
      v214 = &_s11SiriKitFlow17LaunchAppBehaviorOSgMR;
      v215 = v228;
      return outlined destroy of ReferenceResolutionClientProtocol?(v215, v213, v214);
    }

    v140 = v353;
    v139 = v354;
    if (v64 == *MEMORY[0x1E69CFC10])
    {
      v134 = v34;
      v135 = v33;
      (*(v34 + 96))(v38, v33);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSS13parameterNameSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgR0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);

      v364 = *(v38 + v156[16]);

      v157 = v156[28];
      v158 = v156[32];

      v159 = v156[40];
      (*(v139 + 4))(v355, v38, v140);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v38 + v158, v356, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v38 + v159, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v141 = &_s11SiriKitFlow0C8Activity_pSgMd;
      v142 = &_s11SiriKitFlow0C8Activity_pSgMR;
      v143 = v38 + v157;
      goto LABEL_42;
    }

    if (v64 == *MEMORY[0x1E69CFC20])
    {
      (*(v34 + 96))(v38, v33);
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);

      v195 = *(v38 + v194[16]);

      v196 = *(v139 + 4);
      v197 = v341;
      v364 = v38;
      v196(v341, v38, v140);
      v198 = v336;
      (*(v139 + 13))(v336, *MEMORY[0x1E69CFDD8], v140);
      lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v366 == v365)
      {
        v199 = 1;
      }

      else
      {
        v199 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v247 = *(v139 + 1);
      v246 = v139 + 2;
      v248 = v198;
      v249 = v247;
      v247(v248, v140);

      if (v199)
      {
        v361 = v249;
        v250 = type metadata accessor for LaunchAppBehavior();
        v251 = v338;
        (*(*(v250 - 8) + 56))(v338, 1, 1, v250);
        v252 = v195;
        v253 = v339;
        SiriKitEvent.timestamp.getter();
        v254 = type metadata accessor for SiriKitReliabilityCodes();
        v255 = v334;
        (*(*(v254 - 8) + 56))(v334, 1, 1, v254);
        v256 = v252;
        [v256 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for INIntent();
        if (swift_dynamicCast())
        {
          *&v359 = ".handleActivity(.";
          *(&v359 + 1) = v365;
          v257 = [v365 intentId];
          v258 = v330;
          v354 = v246;
          v360 = v256;
          if (v257)
          {
            v259 = v257;
            v357 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v358 = v260;
          }

          else
          {
            v357 = 0;
            v358 = 0;
          }

          v300 = v344;
          outlined init with copy of ReferenceResolutionClientProtocol?(v251, v344, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          v301 = v347;
          outlined init with copy of ReferenceResolutionClientProtocol?(v255, v347, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v302 = v253;
          v274 = v329;
          (*(v258 + 16))(v328, v302, v329);
          v303 = (*(v342 + 80) + 16) & ~*(v342 + 80);
          v304 = (v343 + *(v345 + 80) + v303) & ~*(v345 + 80);
          v305 = (v346 + v304 + 7) & 0xFFFFFFFFFFFFFFF8;
          v306 = (*(v330 + 80) + v305 + 8) & ~*(v330 + 80);
          v307 = (v362 + v306 + 7) & 0xFFFFFFFFFFFFFFF8;
          v308 = swift_allocObject();
          v309 = v308 + v303;
          v273 = v330;
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v300, v309, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v301, v308 + v304, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v310 = v360;
          *(v308 + v305) = v360;
          (*(v273 + 32))(v308 + v306, v328, v274);
          *(v308 + v307) = v363;
          v311 = v310;
          specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v357, v358, 0xD000000000000020, v359 | 0x8000000000000000, closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)partial apply);
          v255 = v334;

          v275 = v339;
          v276 = v338;

          v140 = v353;
          v197 = v341;
        }

        else
        {
          if (one-time initialization token for instrumentation != -1)
          {
            swift_once();
          }

          v263 = type metadata accessor for Logger();
          __swift_project_value_buffer(v263, static Logger.instrumentation);
          v264 = v256;
          v265 = Logger.logObject.getter();
          v266 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v265, v266))
          {
            v267 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            *&v366 = v268;
            *v267 = 136315138;
            v269 = INIntent.debugDescriptionLite.getter();
            v271 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v269, v270, &v366);

            *(v267 + 4) = v271;
            v197 = v341;
            _os_log_impl(&dword_1DC659000, v265, v266, "Unexpected failure when cloning intent: %s", v267, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v268);
            v272 = v268;
            v255 = v334;
            MEMORY[0x1E12A2F50](v272, -1, -1);
            MEMORY[0x1E12A2F50](v267, -1, -1);
          }

          v273 = v330;
          v274 = v329;
          v275 = v339;
          v276 = v338;
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v255, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
        (*(v273 + 8))(v275, v274);
        outlined destroy of ReferenceResolutionClientProtocol?(v276, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
        (v361)(v197, v140);
      }

      else
      {
        v249(v197, v140);
      }

      v312 = v194[24];
      v313 = v194[32];
      goto LABEL_108;
    }

    if (v64 != *MEMORY[0x1E69CFBE0])
    {
      return (*(v34 + 8))(v38, v33);
    }

    (*(v34 + 96))(v38, v33);
    v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMd, &_s11SiriKitFlow12ActivityTypeO08activityE0_0A13AppResolution0G0C3appSo8INIntentC6intentSiSg15descriptionCodeAA0cD0_pSg04flowD0AA06LaunchG8BehaviorOSg06launchgP0SSSg10responseIdAA0aB16ReliabilityCodesOSg12statusReasontMR);

    v230 = *(v38 + *(v229 + 64));
    v231 = *(v229 + 112);
    v360 = v229;

    v232 = v335;
    (*(v139 + 4))(v335, v63, v140);
    v364 = v63;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v63 + v231, v340, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
    v233 = *(v139 + 13);
    v233(v337, *MEMORY[0x1E69CFDE0], v140);
    lazy protocol witness table accessor for type ActivityType and conformance ActivityType();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v366 == v365)
    {
      v234 = 1;
    }

    else
    {
      v234 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v261 = *(v354 + 1);
    v354 += 2;
    v361 = v261;
    v261(v337, v140);

    if ((v234 & 1) == 0)
    {
      v262 = v331;
      v233(v331, *MEMORY[0x1E69CFDD0], v140);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v366 == v365)
      {
        (v361)(v262, v140);
      }

      else
      {
        v277 = _stringCompareWithSmolCheck(_:_:expecting:)();
        (v361)(v262, v140);

        if ((v277 & 1) == 0)
        {

LABEL_107:
          outlined destroy of ReferenceResolutionClientProtocol?(v340, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
          (v361)(v232, v140);
          v312 = v360[24];
          v313 = v360[36];
LABEL_108:
          v326 = v364;
          outlined destroy of ReferenceResolutionClientProtocol?(v364 + v313, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
          v213 = &_s11SiriKitFlow0C8Activity_pSgMd;
          v214 = &_s11SiriKitFlow0C8Activity_pSgMR;
          v215 = &v326[v312];
          return outlined destroy of ReferenceResolutionClientProtocol?(v215, v213, v214);
        }
      }
    }

    v278 = v230;
    v279 = v333;
    SiriKitEvent.timestamp.getter();
    *&v366 = 0;
    *(&v366 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    *&v366 = 0xD000000000000011;
    *(&v366 + 1) = 0x80000001DCA844E0;
    v280 = ActivityType.rawValue.getter();
    MEMORY[0x1E12A1580](v280);

    v281 = v366;
    v282 = type metadata accessor for SiriKitReliabilityCodes();
    v283 = v332;
    (*(*(v282 - 8) + 56))(v332, 1, 1, v282);
    v284 = v278;
    [v284 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INIntent();
    if (swift_dynamicCast())
    {
      v357 = v365;
      v285 = [v365 intentId];
      v359 = v281;
      v358 = v284;
      if (v285)
      {
        v286 = v285;
        v355 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v356 = v287;
      }

      else
      {
        v355 = 0;
        v356 = 0;
      }

      v314 = v344;
      outlined init with copy of ReferenceResolutionClientProtocol?(v340, v344, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      v315 = v347;
      outlined init with copy of ReferenceResolutionClientProtocol?(v283, v347, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v298 = v330;
      v299 = v329;
      (*(v330 + 16))(v328, v279, v329);
      v316 = (*(v342 + 80) + 16) & ~*(v342 + 80);
      v317 = (v343 + *(v345 + 80) + v316) & ~*(v345 + 80);
      v318 = (v346 + v317 + 7) & 0xFFFFFFFFFFFFFFF8;
      v319 = (*(v298 + 80) + v318 + 8) & ~*(v298 + 80);
      v320 = (v362 + v319 + 7) & 0xFFFFFFFFFFFFFFF8;
      v321 = swift_allocObject();
      v322 = v321 + v316;
      v279 = v333;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v314, v322, &_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v315, v321 + v317, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
      v323 = v358;
      *(v321 + v318) = v358;
      v324 = v321 + v319;
      v283 = v332;
      (*(v298 + 32))(v324, v328, v299);
      *(v321 + v320) = v363;
      v325 = v323;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v355, v356, v359, *(&v359 + 1), closure #1 in IntentLoggingEventSink.handleIntentResult(intent:launchAppBehavior:now:context:statusReason:)partial apply);

      v140 = v353;
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v288 = type metadata accessor for Logger();
      __swift_project_value_buffer(v288, static Logger.instrumentation);
      v289 = v284;
      v290 = Logger.logObject.getter();
      v291 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        *(&v359 + 1) = *(&v281 + 1);
        v293 = v292;
        v294 = swift_slowAlloc();
        *&v366 = v294;
        *v293 = 136315138;
        v295 = INIntent.debugDescriptionLite.getter();
        v297 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v295, v296, &v366);

        *(v293 + 4) = v297;
        v279 = v333;
        _os_log_impl(&dword_1DC659000, v290, v291, "Unexpected failure when cloning intent: %s", v293, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v294);
        MEMORY[0x1E12A2F50](v294, -1, -1);
        MEMORY[0x1E12A2F50](v293, -1, -1);
      }

      v298 = v330;
      v299 = v329;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v283, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    (*(v298 + 8))(v279, v299);
    v232 = v335;
    goto LABEL_107;
  }

  (*(v34 + 96))(v38, v33);
  v94 = v38[4];

  v96 = v38[7];
  v95 = v38[8];
  v97 = v63[9];
  v98 = *(v63 + 80);
  outlined init with take of Any(v63, &v366);
  v99 = v359;
  SiriKitEvent.timestamp.getter();
  if (v94)
  {
    v360 = v96;
    v364 = ".confirmationResult";
    v100 = v94;
    v101 = [v100 intentId];
    LODWORD(v361) = v98;
    if (v101)
    {
      v102 = v101;
      *(&v359 + 1) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;
    }

    else
    {
      *(&v359 + 1) = 0;
      v104 = 0;
    }

    outlined init with copy of Any(&v366, &v365);
    v162 = v330;
    v163 = v328;
    v164 = v329;
    (*(v330 + 16))(v328, v99, v329);
    v165 = (*(v162 + 80) + 81) & ~*(v162 + 80);
    v166 = (v362 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
    v167 = swift_allocObject();
    outlined init with take of Any(&v365, (v167 + 16));
    *(v167 + 48) = v360;
    *(v167 + 56) = v95;
    *(v167 + 64) = v100;
    *(v167 + 72) = v97;
    *(v167 + 80) = v361;
    (*(v162 + 32))(v167 + v165, v163, v164);
    *(v167 + v166) = v363;
    v168 = v100;
    specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(*(&v359 + 1), v104, 0xD000000000000014, v364 | 0x8000000000000000, partial apply for closure #1 in IntentLoggingEventSink.handleConfirmationOffered(intent:parameterName:multicardinalValueIndex:itemToConfirm:now:context:));

    (*(v162 + 8))(v359, v164);
  }

  else
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v152 = type metadata accessor for Logger();
    __swift_project_value_buffer(v152, static Logger.instrumentation);
    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_1DC659000, v153, v154, "Intent is nil, not sending handleConfirmationOffered event.", v155, 2u);
      MEMORY[0x1E12A2F50](v155, -1, -1);
    }

    (*(v330 + 8))(v99, v329);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v366);
}

uint64_t sub_1DC69F9A0()
{
  v1 = type metadata accessor for SiriKitConfirmationState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1DC69FB10()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC69FBF0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC69FCC8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t TaskLoggingEventSink.receiveAsync(_:_:_:)()
{
  v159 = v0;
  v1 = SiriKitEvent.flowStateType.getter();
  if ((v1 & 0x100000000) == 0)
  {
    v2 = v1;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.instrumentation);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v158 = v7;
      *v6 = 136315906;
      if (v2 > 0xD0)
      {
        v8 = @"FLOWSTATETYPE_UNKNOWN";
        v9 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v8 = off_1E863AB08[v2];
        v9 = off_1E863B190[v2];
      }

      v10 = v8;
      v11 = *(v0 + 96);
      v12 = v9;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v158);

      *(v6 + 4) = v16;
      *(v6 + 12) = 2080;
      *(v0 + 88) = v11;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v158);

      *(v6 + 14) = v19;
      *(v6 + 22) = 2080;
      v20 = SiriKitEventContext.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v158);

      *(v6 + 24) = v22;
      *(v6 + 32) = 2080;
      v23 = FlowTask.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v158);

      *(v6 + 34) = v25;
      _os_log_impl(&dword_1DC659000, v4, v5, "TaskLoggingEventSink - receiveAsync source event with task step: %s for event: %s context: %s task: %s", v6, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }
  }

  v26 = *(v0 + 112);
  v27 = *(v0 + 96);

  v28 = specialized static TaskLoggingEventSink.translateStartEvent(_:_:)(v27, v26);
  *(v0 + 184) = v28;
  v29 = SiriKitEvent.flowStateType.getter();
  *(v0 + 192) = v29;
  v30 = v29 & 0x1FFFFFFFFLL;
  if ((v29 & 0x1FFFFFFFFLL) == 1)
  {
    if (*(*(v0 + 112) + 32) && *(*(v0 + 112) + 32) == 1)
    {

      goto LABEL_15;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
LABEL_15:
      v33 = *(v0 + 168);
      v32 = *(v0 + 176);
      v34 = *(v0 + 160);
      type metadata accessor for CoreAnalyticsService();
      static CoreAnalyticsService.instance.getter();
      *v32 = v28;
      (*(v33 + 104))(v32, *MEMORY[0x1E69CFCE0], v34);

      CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)();

      (*(v33 + 8))(v32, v34);
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.instrumentation);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v158 = v39;
        *v38 = 136315650;
        *(v0 + 80) = v28;
        type metadata accessor for SiriKitEvent();
        lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v158);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2080;
        v43 = SiriKitEventContext.description.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v158);

        *(v38 + 14) = v45;
        *(v38 + 22) = 2080;

        v46 = FlowTask.description.getter();
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v158);

        *(v38 + 24) = v49;
        v50 = "TaskLoggingEventSink - Task already started, ignoring first step event: %s context: %s task: %s";
LABEL_33:
        _os_log_impl(&dword_1DC659000, v36, v37, v50, v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v39, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);

LABEL_81:

        v156 = *(v0 + 8);

        return v156();
      }

      goto LABEL_34;
    }
  }

  v51 = SiriKitEvent.flowStateType.getter();
  if ((v51 & 0x100000000) != 0 || ((v52 = 1, v51 > 5) || ((1 << v51) & 0x34) == 0) && v51 != 128)
  {
    v52 = 0;
  }

  *(v0 + 264) = v52;
  v53 = *(v0 + 152);
  v54 = *(v0 + 128);
  v55 = *(v0 + 136);
  v56 = SiriKitEvent.flowStateType.getter();
  SiriKitEvent.payload.getter();
  v57 = *(v55 + 88);
  *(v0 + 200) = v57;
  *(v0 + 208) = (v55 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v58 = v57(v53, v54);
  v59 = MEMORY[0x1E69CFC58];
  *(v0 + 256) = v58;
  *(v0 + 260) = *v59;
  v60 = *(v55 + 8);
  *(v0 + 216) = v60;
  v60(v53, v54);
  if (v52)
  {
    v61 = v56 & 0x1FFFFFFFFLL;
    if (*(*(v0 + 112) + 32) && *(*(v0 + 112) + 32) != 1)
    {

      if (v61 != 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) != 0 && v61 != 4)
      {
LABEL_29:
        v64 = *(v0 + 168);
        v63 = *(v0 + 176);
        v65 = *(v0 + 160);
        type metadata accessor for CoreAnalyticsService();
        static CoreAnalyticsService.instance.getter();
        *v63 = v28;
        (*(v64 + 104))(v63, *MEMORY[0x1E69CFCE0], v65);

        CoreAnalyticsService.sendReliabilityEvent(event:file:line:function:)();

        (*(v64 + 8))(v63, v65);
        if (one-time initialization token for instrumentation != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Logger.instrumentation);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v158 = v39;
          *v38 = 136315650;
          *(v0 + 72) = v28;
          type metadata accessor for SiriKitEvent();
          lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
          v67 = dispatch thunk of CustomStringConvertible.description.getter();
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v158);

          *(v38 + 4) = v69;
          *(v38 + 12) = 2080;
          v70 = SiriKitEventContext.description.getter();
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v158);

          *(v38 + 14) = v72;
          *(v38 + 22) = 2080;

          v73 = FlowTask.description.getter();
          v75 = v74;

          v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v158);

          *(v38 + 24) = v76;
          v50 = "TaskLoggingEventSink - Task already ended, ignoring last step event: %s context: %s task: %s";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_81;
      }
    }
  }

  if (v30 == 1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.instrumentation);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1DC659000, v78, v79, "TaskLoggingEventSink - updating task state to .ongoing because isFirstTaskStep!", v80, 2u);
      MEMORY[0x1E12A2F50](v80, -1, -1);
    }

    v81 = *(v0 + 104);

    *(v0 + 224) = *(v81 + 72);
    v82 = one-time initialization token for shared;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = static ConversationActor.shared;
    v84 = TaskLoggingEventSink.receiveAsync(_:_:_:);
    goto LABEL_77;
  }

  v85 = *(v0 + 112);
  *(v0 + 240) = v85;
  v86 = *(v0 + 216);
  v87 = *(v0 + 200);
  v88 = *(v0 + 144);
  v89 = *(v0 + 128);
  SiriKitEvent.payload.getter();
  v90 = v87(v88, v89);
  v91 = *MEMORY[0x1E69CFBF0];
  v86(v88, v89);
  v92 = *(v0 + 260);
  v93 = *(v0 + 256);
  v94 = *(v0 + 192) & 0x1FFFFFFFFLL;
  if (v90 == v91)
  {
    if (v93 != v92 && v94 != 1 && (*(v85 + 33) & 1) != 0)
    {
      goto LABEL_56;
    }
  }

  else if (v93 != v92 && v94 != 1)
  {
    goto LABEL_56;
  }

  v95 = *(v0 + 104);
  v96 = type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState();
  v97 = swift_allocObject();
  *(v97 + 16) = v95;
  *(v97 + 24) = v85;
  *(v0 + 40) = v96;
  *(v0 + 48) = lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type TaskLoggingEventSink.SiriKitEventMetricsState and conformance TaskLoggingEventSink.SiriKitEventMetricsState, type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState, &protocol conformance descriptor for TaskLoggingEventSink.SiriKitEventMetricsState);
  *(v0 + 16) = v97;

  static Metrics.setMetricsState(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  __swift_project_value_buffer(v98, static Logger.instrumentation);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v158 = v102;
    *v101 = 136315138;
    v103 = *(v85 + 16);
    v104 = *(v85 + 24);

    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v158);

    *(v101 + 4) = v105;
    _os_log_impl(&dword_1DC659000, v99, v100, "TaskLoggingEventSink - Metrics.current has been updated for taskId: %s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    MEMORY[0x1E12A2F50](v102, -1, -1);
    MEMORY[0x1E12A2F50](v101, -1, -1);
  }

LABEL_56:
  v106 = SiriKitEvent.flowStateType.getter();
  if ((v106 & 0x100000000) != 0)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    __swift_project_value_buffer(v115, static Logger.instrumentation);

    v109 = Logger.logObject.getter();
    v116 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v109, v116))
    {
      v117 = *(v0 + 184);
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v158 = v119;
      *v118 = 136315650;
      *(v0 + 56) = v117;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
      v120 = dispatch thunk of CustomStringConvertible.description.getter();
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v158);

      *(v118 + 4) = v122;
      *(v118 + 12) = 2080;
      v123 = SiriKitEventContext.description.getter();
      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v158);

      *(v118 + 14) = v125;
      *(v118 + 22) = 2080;

      v126 = FlowTask.description.getter();
      v128 = v127;

      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v158);

      *(v118 + 24) = v129;
      _os_log_impl(&dword_1DC659000, v109, v116, "TaskLoggingEventSink - Routing event: %s context: %s task: %s", v118, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v119, -1, -1);
      MEMORY[0x1E12A2F50](v118, -1, -1);
    }
  }

  else
  {
    v107 = v106;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static Logger.instrumentation);

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v158 = v112;
      *v111 = 136315906;
      if (v107 > 0xD0)
      {
        v113 = @"FLOWSTATETYPE_UNKNOWN";
        v114 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v113 = off_1E863B818[v107];
        v114 = off_1E863BEA0[v107];
      }

      v130 = v113;
      v131 = *(v0 + 184);
      v132 = v114;
      v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v134;

      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v135, &v158);

      *(v111 + 4) = v136;
      *(v111 + 12) = 2080;
      *(v0 + 64) = v131;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v158);

      *(v111 + 14) = v139;
      *(v111 + 22) = 2080;
      v140 = SiriKitEventContext.description.getter();
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, &v158);

      *(v111 + 24) = v142;
      *(v111 + 32) = 2080;

      v143 = FlowTask.description.getter();
      v145 = v144;

      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, &v158);

      *(v111 + 34) = v146;
      _os_log_impl(&dword_1DC659000, v109, v110, "TaskLoggingEventSink - Routing task step: %s for event: %s context: %s task: %s", v111, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v112, -1, -1);
      MEMORY[0x1E12A2F50](v111, -1, -1);

      goto LABEL_69;
    }
  }

LABEL_69:
  v147 = *(v0 + 264);
  v148 = *(v0 + 184);
  v149 = *(v0 + 104);

  TaskLoggingEventSink.route(_:_:_:)(v148, v149, v85);

  if (v147 != 1)
  {

    goto LABEL_81;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v150 = type metadata accessor for Logger();
  __swift_project_value_buffer(v150, static Logger.instrumentation);
  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_1DC659000, v151, v152, "TaskLoggingEventSink - updating task state to .ended because isLastTaskStep!", v153, 2u);
    MEMORY[0x1E12A2F50](v153, -1, -1);
  }

  v154 = *(v0 + 104);

  *(v0 + 248) = *(v154 + 72);
  v155 = one-time initialization token for shared;

  if (v155 != -1)
  {
    swift_once();
  }

  v83 = static ConversationActor.shared;
  v84 = TaskLoggingEventSink.receiveAsync(_:_:_:);
LABEL_77:

  return MEMORY[0x1EEE6DFA0](v84, v83, 0);
}

{
  v76 = v0;

  v1 = *(v0 + 232);
  *(v0 + 240) = v1;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  SiriKitEvent.payload.getter();
  v6 = v3(v4, v5);
  v7 = *MEMORY[0x1E69CFBF0];
  v2(v4, v5);
  v8 = *(v0 + 260);
  v9 = *(v0 + 256);
  v10 = *(v0 + 192) & 0x1FFFFFFFFLL;
  if (v6 == v7)
  {
    if (v9 != v8 && v10 != 1 && (*(v1 + 33) & 1) != 0)
    {
      goto LABEL_13;
    }
  }

  else if (v9 != v8 && v10 != 1)
  {
    goto LABEL_13;
  }

  v11 = *(v0 + 104);
  v12 = type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v1;
  *(v0 + 40) = v12;
  *(v0 + 48) = lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type TaskLoggingEventSink.SiriKitEventMetricsState and conformance TaskLoggingEventSink.SiriKitEventMetricsState, type metadata accessor for TaskLoggingEventSink.SiriKitEventMetricsState, &protocol conformance descriptor for TaskLoggingEventSink.SiriKitEventMetricsState);
  *(v0 + 16) = v13;

  static Metrics.setMetricsState(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.instrumentation);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75 = v18;
    *v17 = 136315138;
    v19 = *(v1 + 16);
    v20 = *(v1 + 24);

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v75);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v15, v16, "TaskLoggingEventSink - Metrics.current has been updated for taskId: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

LABEL_13:
  v22 = SiriKitEvent.flowStateType.getter();
  if ((v22 & 0x100000000) != 0)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.instrumentation);

    v25 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v32))
    {
      v33 = *(v0 + 184);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v75 = v35;
      *v34 = 136315650;
      *(v0 + 56) = v33;
      type metadata accessor for SiriKitEvent();
      lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v75);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = SiriKitEventContext.description.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v75);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2080;

      v42 = FlowTask.description.getter();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v75);

      *(v34 + 24) = v45;
      _os_log_impl(&dword_1DC659000, v25, v32, "TaskLoggingEventSink - Routing event: %s context: %s task: %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    goto LABEL_23;
  }

  v23 = v22;
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.instrumentation);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v25, v26))
  {
LABEL_23:

    goto LABEL_26;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v75 = v28;
  *v27 = 136315906;
  if (v23 > 0xD0)
  {
    v29 = @"FLOWSTATETYPE_UNKNOWN";
    v30 = @"FLOWSTATETYPE_UNKNOWN";
  }

  else
  {
    v29 = off_1E863C528[v23];
    v30 = off_1E863CBB0[v23];
  }

  v46 = v29;
  v47 = *(v0 + 184);
  v48 = v30;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v75);

  *(v27 + 4) = v52;
  *(v27 + 12) = 2080;
  *(v0 + 64) = v47;
  type metadata accessor for SiriKitEvent();
  lazy protocol witness table accessor for type SiriKitEvent and conformance SiriKitEvent(&lazy protocol witness table cache variable for type SiriKitEvent and conformance SiriKitEvent, MEMORY[0x1E69CFD28], MEMORY[0x1E69CFD30]);
  v53 = dispatch thunk of CustomStringConvertible.description.getter();
  v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v75);

  *(v27 + 14) = v55;
  *(v27 + 22) = 2080;
  v56 = SiriKitEventContext.description.getter();
  v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v75);

  *(v27 + 24) = v58;
  *(v27 + 32) = 2080;

  v59 = FlowTask.description.getter();
  v61 = v60;

  v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v75);

  *(v27 + 34) = v62;
  _os_log_impl(&dword_1DC659000, v25, v26, "TaskLoggingEventSink - Routing task step: %s for event: %s context: %s task: %s", v27, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v28, -1, -1);
  MEMORY[0x1E12A2F50](v27, -1, -1);

LABEL_26:
  v63 = *(v0 + 264);
  v64 = *(v0 + 184);
  v65 = *(v0 + 104);

  TaskLoggingEventSink.route(_:_:_:)(v64, v65, v1);

  if (v63 == 1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.instrumentation);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DC659000, v67, v68, "TaskLoggingEventSink - updating task state to .ended because isLastTaskStep!", v69, 2u);
      MEMORY[0x1E12A2F50](v69, -1, -1);
    }

    v70 = *(v0 + 104);

    *(v0 + 248) = *(v70 + 72);
    v71 = one-time initialization token for shared;

    if (v71 != -1)
    {
      swift_once();
    }

    v72 = static ConversationActor.shared;

    return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), v72, 0);
  }

  else
  {

    v73 = *(v0 + 8);

    return v73();
  }
}

{
  *(v0 + 232) = TaskService.update(task:state:)(*(v0 + 112), 1);

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

{
  TaskService.update(task:state:)(*(v0 + 240), 2);

  return MEMORY[0x1EEE6DFA0](TaskLoggingEventSink.receiveAsync(_:_:_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}