uint64_t AceServiceInvokerImpl._submitAllSerialExecute(_:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v4 = swift_task_alloc();
  v2[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2[13] = v6;
  *v4 = v2;
  v4[1] = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v2 + 7, a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, a2, v6, v7, v9, v8);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v6[18] = *(v8 + 64);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 96);
  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    *(v4 + 176) = v6;
    if (v6)
    {
LABEL_3:
      v7 = *(v4 + 96);
      *(v4 + 184) = 0;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A1FE0](0);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DAC8](v6, v7, a3, a4);
        }

        v8 = *(v7 + 32);
      }

      v9 = v8;
      *(v4 + 192) = v8;
      *(v4 + 200) = 1;
      v10 = *(v4 + 168);
      v11 = *(v4 + 152);
      v33 = v10;
      v35 = *(v4 + 160);
      v12 = *(v4 + 128);
      v13 = *(v4 + 136);
      v14 = *(v4 + 112);
      v15 = *(v4 + 120);
      v34 = *(v4 + 104);
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v10, 1, 1, v16);
      v18 = v15;
      v19 = v12;
      (*(v13 + 16))(v11, v18, v12);
      v20 = (*(v13 + 80) + 56) & ~*(v13 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v34;
      *(v21 + 5) = v9;
      *(v21 + 6) = v14;
      (*(v13 + 32))(&v21[v20], v11, v19);
      outlined init with copy of ReferenceResolutionClientProtocol?(v33, v35, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v13) = (*(v17 + 48))(v35, 1, v16);

      v22 = v9;

      v23 = *(v4 + 160);
      if (v13 == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(*(v4 + 160), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v23, v16);
      }

      if (*(v21 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = **(v4 + 88);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v28 = v26 | v24;
      if (v26 | v24)
      {
        v28 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v24;
        *(v4 + 40) = v26;
      }

      v29 = *(v4 + 168);
      *(v4 + 48) = 1;
      *(v4 + 56) = v28;
      *(v4 + 64) = v27;
      swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(v29, &_sScPSgMd, &_sScPSgMR);
      v30 = swift_task_alloc();
      *(v4 + 208) = v30;
      a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySo13SABaseCommandCSgs5Error_pGMd, &_sScgySo13SABaseCommandCSgs5Error_pGMR);
      *v30 = v4;
      v30[1] = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
      v6 = v4 + 72;
      v7 = 0;
      a3 = 0;

      return MEMORY[0x1EEE6DAC8](v6, v7, a3, a4);
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 176) = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  **(v4 + 80) = 0;

  v31 = *(v4 + 8);

  return v31();
}

uint64_t sub_1DC6F6094()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC6F66B8()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  outlined consume of Result<SABaseCommand?, Error>(*(v0 + v5));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

void closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1, void *a2, uint64_t a3, objc_class *a4, uint64_t a5, int a6)
{
  v161 = a6;
  v163 = a5;
  v160 = a4;
  v176 = a3;
  v162 = a1;
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v153 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v154 = &v148 - v10;
  v156 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v11 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v13 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v148 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v172 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v175 = &v148 - v20;
  v21 = type metadata accessor for RequestSummary.ExecutionSource();
  v173 = *(v21 - 8);
  v174 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v170 = (&v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v171 = (&v148 - v24);
  updated = type metadata accessor for ContextUpdateScope();
  v168 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v167 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v166 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v165 = &v148 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v164 = &v148 - v32;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v159 = type metadata accessor for Logger();
  __swift_project_value_buffer(v159, static Logger.ace);
  v33 = a2;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v155 = v11;
  v152 = v16;
  v151 = v13;
  if (v36)
  {
    v37 = updated;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&aBlock = v39;
    *v38 = 136315138;
    v40 = [v33 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &aBlock);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_1DC659000, v34, v35, "Submitting command: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    updated = v37;
    MEMORY[0x1E12A2F50](v38, -1, -1);
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  v46 = MEMORY[0x1E69CFF08];
  v169 = v33;
  v157 = updated;
  if (v45)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DC659000, v47, v48, "Appending ContextUpdate to reflect remote execution", v49, 2u);
      MEMORY[0x1E12A2F50](v49, -1, -1);
    }

    v50 = type metadata accessor for Parse.DirectInvocation();
    v51 = v164;
    (*(*(v50 - 8) + 56))(v164, 1, 1, v50);
    v52 = type metadata accessor for PommesContext();
    v53 = v165;
    (*(*(v52 - 8) + 56))(v165, 1, 1, v52);
    v54 = *v46;
    v55 = v168;
    v56 = v167;
    (*(v168 + 104))(v167, v54, updated);
    v57 = type metadata accessor for ExecutionContextUpdate(0);
    v58 = objc_allocWithZone(v57);
    v59 = v166;
    outlined init with copy of ReferenceResolutionClientProtocol?(v53, v166, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v59, 0);
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v51, &v58[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v58[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v59, &v58[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v55 + 16))(&v58[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v56, updated);
    v60 = &v58[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v60 = 0;
    v60[1] = 0;
    v58[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 1;
    v177.receiver = v58;
    v177.super_class = v57;
    v158 = objc_msgSendSuper2(&v177, sel_init);
    (*(v55 + 8))(v56, updated);
    outlined destroy of ReferenceResolutionClientProtocol?(v53, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v59, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v158 = 0;
  }

  v62 = *(v176 + 40);
  v61 = *(v176 + 48);
  v63 = v174;
  v64 = *(v173 + 16);
  v65 = v171;
  v64(v171, v160, v174);
  v66 = type metadata accessor for FlowOutputMessage.InAppResponse();
  v67 = v175;
  (*(*(v66 - 8) + 56))(v175, 1, 1, v66);
  v68 = v170;
  v64(v170, v65, v63);
  v69 = v172;
  outlined init with copy of ReferenceResolutionClientProtocol?(v67, v172, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v160 = type metadata accessor for ExecutionOutput(0);
  v70 = objc_allocWithZone(v160);
  v71 = &v70[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v71 = v62;
  *(v71 + 1) = v61;
  v72 = &v70[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v72 = 0;
  *(v72 + 1) = 0;
  v73 = &v70[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v73 = 0;
  *(v73 + 1) = 0;
  v74 = &v70[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v74 = 0;
  *(v74 + 1) = 0;
  v75 = &v70[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v75 = 0;
  *(v75 + 1) = 0;
  v64(&v70[OBJC_IVAR___SKRExecutionOutput_executionSource], v68, v63);
  outlined init with copy of ReferenceResolutionClientProtocol?(v69, &v70[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  objc_opt_self();
  v76 = v169;
  v77 = swift_dynamicCastObjCClass();
  v78 = v158;
  if (!v77 || v158)
  {
    v117 = one-time initialization token for executor;
    v118 = v76;
    v119 = v78;

    if (v117 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v159, static Logger.executor);
    v120 = v118;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      *&aBlock = v125;
      *v123 = 136315394;
      *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
      *(v123 + 12) = 2112;
      *(v123 + 14) = v120;
      *v124 = v76;
      v126 = v120;
      _os_log_impl(&dword_1DC659000, v121, v122, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v123, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v124, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v124, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x1E12A2F50](v125, -1, -1);
      MEMORY[0x1E12A2F50](v123, -1, -1);
    }

    *&v70[OBJC_IVAR___SKRExecutionOutput_command] = v76;
    *&v70[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v78;
    v127 = v120;
    v116 = v119;
  }

  else
  {
    v79 = v77;
    v80 = one-time initialization token for executor;
    v81 = v76;

    if (v80 != -1)
    {
      swift_once();
    }

    v82 = __swift_project_value_buffer(v159, static Logger.executor);
    v83 = v81;
    v159 = v82;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    v86 = os_log_type_enabled(v84, v85);
    v87 = v156;
    v88 = v155;
    if (v86)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&aBlock = v91;
      *v89 = 136315394;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
      *(v89 + 12) = 2112;
      *(v89 + 14) = v79;
      *v90 = v79;
      v92 = v83;
      _os_log_impl(&dword_1DC659000, v84, v85, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v89, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v90, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v90, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      MEMORY[0x1E12A2F50](v91, -1, -1);
      MEMORY[0x1E12A2F50](v89, -1, -1);
    }

    v93 = v154;
    v94 = [v79 promptContextProto];
    v150 = v79;
    v149 = v70;
    if (v94)
    {
      v95 = v94;
      v96 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      v181 = 0;
      aBlock = 0u;
      v180 = 0u;
      outlined copy of Data._Representation(v96, v98);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(v88 + 56))(v93, 0, 1, v87);
      v138 = v152;
      (*(v88 + 32))(v152, v93, v87);
      v139 = v151;
      (*(v88 + 16))(v151, v138, v87);
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&aBlock = v159;
        *v142 = 136315394;
        *(v142 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        *(v142 + 12) = 2080;
        LODWORD(v158) = v141;
        v143 = Message.textFormatString()();
        v144 = *(v88 + 8);
        v144(v139, v87);
        v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143._countAndFlagsBits, v143._object, &aBlock);

        *(v142 + 14) = v145;
        _os_log_impl(&dword_1DC659000, v140, v158, "ExecutionOutput: %s: NFCU has prompt context %s", v142, 0x16u);
        v146 = v159;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v146, -1, -1);
        MEMORY[0x1E12A2F50](v142, -1, -1);

        outlined consume of Data._Representation(v96, v98);
        v144(v152, v87);
      }

      else
      {

        outlined consume of Data._Representation(v96, v98);
        v147 = *(v88 + 8);
        v147(v139, v87);
        v147(v152, v87);
      }
    }

    else
    {
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&aBlock = v102;
        *v101 = 136315138;
        *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &aBlock);
        _os_log_impl(&dword_1DC659000, v99, v100, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        MEMORY[0x1E12A2F50](v102, -1, -1);
        MEMORY[0x1E12A2F50](v101, -1, -1);
      }
    }

    v103 = type metadata accessor for Parse.DirectInvocation();
    v104 = v164;
    (*(*(v103 - 8) + 56))(v164, 1, 1, v103);
    v105 = type metadata accessor for PommesContext();
    v106 = v165;
    (*(*(v105 - 8) + 56))(v165, 1, 1, v105);
    v107 = v168;
    v108 = v167;
    v109 = v157;
    (*(v168 + 104))(v167, *MEMORY[0x1E69CFF08], v157);
    v110 = type metadata accessor for ExecutionContextUpdate(0);
    v111 = objc_allocWithZone(v110);
    v112 = v166;
    outlined init with copy of ReferenceResolutionClientProtocol?(v106, v166, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v113 = v150;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v112, v150);
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v113;
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v104, &v111[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v111[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v112, &v111[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v107 + 16))(&v111[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v108, v109);
    v114 = &v111[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v114 = 0;
    v114[1] = 0;
    v111[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v178.receiver = v111;
    v178.super_class = v110;
    v115 = objc_msgSendSuper2(&v178, sel_init);
    (*(v107 + 8))(v108, v109);
    outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v116 = 0;
    v70 = v149;
    *&v149[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v115;
    *&v70[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v76 = v169;
  }

  v183.receiver = v70;
  v183.super_class = v160;
  v128 = objc_msgSendSuper2(&v183, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v172, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v129 = v174;
  v130 = *(v173 + 8);
  v130(v170, v174);

  outlined destroy of ReferenceResolutionClientProtocol?(v175, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v130(v171, v129);
  v131 = v176;
  AceServiceInvokerImpl.closeServerRequestIfRequired(givenCommand:)(v76);
  v132 = *(v131 + 16);
  v133 = swift_allocObject();
  v134 = v162;
  *(v133 + 16) = v76;
  *(v133 + 24) = v134;
  v135 = v163;
  *(v133 + 32) = v163;
  *(v133 + 40) = v161 & 1;
  v181 = partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:);
  v182 = v133;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v180 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  *(&v180 + 1) = &block_descriptor_237;
  v136 = _Block_copy(&aBlock);
  v137 = v76;

  outlined copy of Result<SABaseCommand?, Error>(v135);

  [v132 submitWithExecutionOutput:v128 completion:v136];

  _Block_release(v136);
}

uint64_t sub_1DC6F7D8C()
{

  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
}

uint64_t AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 25) = a3;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = type metadata accessor for CancellationError();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v5 + 120) = v7;
  v8 = *(v7 - 8);
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 + 64);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:), 0, 0);
}

void partial apply for closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(uint64_t a1)
{
  v3 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  closure #2 in AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t specialized static ViewMetricsLogger.logAnalytics(view:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DC659000, v8, v9, "Logging AddViews to AFAnalytics", v10, 2u);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v25 = v11;
  v12 = specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(a1);
  v13 = [v12 dictionary];
  if (v13)
  {
    v14 = v13;
    v24 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v23 = v14;
    outlined init with take of Any(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v16 = v21;
    v25 = v21;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v23);
    outlined destroy of Any?(&v23);
    v16 = v25;
  }

  v17 = [objc_opt_self() sharedAnalytics];
  if (v17)
  {
    v18 = v17;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v16);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v18 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v3 + 8))(v5, v2);
}

void closure #1 in AceServiceInvokerImpl.closeServerRequest()(_BYTE *a1, void *a2)
{
  if (*a1)
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.ace);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Request is already closed.", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.ace);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "Closing server request.", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v12 = a2[2];
    v13 = MEMORY[0x1E12A1410](a2[5], a2[6]);
    [v12 closeServerRequestForExecutionRequestId_];

    *a1 = 1;
  }
}

uint64_t partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(uint64_t a1)
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

  return closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x1EEE6DFA0](closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:), v7, 0);
}

uint64_t closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  (*(v3 + 144))(v1, v2, ObjectType, v3);
  v5 = v0[1];

  return v5();
}

void specialized RunSiriKitExecutorProcessorExecutionDelegate.closeServerRequest(forExecutionRequestId:)()
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
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001DCA7ED50, &v5);
    _os_log_impl(&dword_1DC659000, oslog, v1, "Need not do %s for RSKE initiated execution", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E12A2F50](v3, -1, -1);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

Swift::Void __swiftcall ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:)(Swift::String forExecutionRequestId)
{
  object = forExecutionRequestId._object;
  countAndFlagsBits = forExecutionRequestId._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = one-time initialization token for shared;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v10 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v1;
  v11[5] = countAndFlagsBits;
  v11[6] = object;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ServiceBridgeDelegateXPCWrapper.closeServerRequest(forExecutionRequestId:), v11);
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return MEMORY[0x1EEE6BDD0](v1, 56, 7);
}

id specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  v8 = [a1 dialogPhase];
  if (v8)
  {
    v9 = v8;
    [v7 setDialogPhase_];
  }

  isa = [a1 views];
  if (!isa)
  {
    goto LABEL_18;
  }

  v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_16:

LABEL_17:
    isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_18:
    [v7 setViews_];

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_8:
  v21 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v18 = v11;
    v19 = v3;
    v20 = v2;
    v15 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E12A1FE0](v15, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      specialized static ViewMetricsLogger.getSparseView(view:)(v16);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v15);

    v2 = v20;
    v3 = v19;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseView(view:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseAssistantUtteranceView(assistantUtteranceView:)(v3);
LABEL_3:
    v6 = v5;

    return v6;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x1E69C7B30]);
    v11 = a1;
    v12 = [v10 init];
    v13 = [v9 confirmText];
    [v12 setConfirmText_];

    v14 = [v9 denyText];
    [v12 setDenyText_];

    v15 = v12;
    v16 = [v9 speakableText];
LABEL_8:
    v23 = v16;
    [v15 setSpeakableText_];

    return v15;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
    v11 = a1;
    v20 = [v19 init];
    v21 = [v18 text];
    [v20 setText_];

    v22 = [v18 secondaryText];
    [v20 setSecondaryText_];

    v15 = v20;
    v16 = [v18 speakableText];
    goto LABEL_8;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseDisambiguationList(disambiguationList:)(v25);
    goto LABEL_3;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseCardSnippet(cardSnippet:)(v27);
    goto LABEL_3;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseSettingSnippet(snippet:)(v29);
    goto LABEL_3;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v4 = a1;
    v5 = specialized static ViewMetricsLogger.getSparseIntentGroupSnippet(snippet:)(v31);
    goto LABEL_3;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.instrumentation);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v36 = 136315138;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SAAceViewCmMd, &_sSo9SAAceViewCmMR);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v41);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v34, v35, "Logging SAAceView skipped : %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  return [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t closure #1 in ConversationOutputSubmitter.sendFlowOutputMessage(command:commandExecutionInfo:executionSource:inAppResponse:requestId:assistantId:sessionId:invocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9, void *a10, uint64_t a11, uint64_t a12)
{
  v41 = a7;
  v42 = a8;
  v39 = a6;
  v40 = a5;
  v37[1] = a2;
  v38 = a4;
  v43 = a10;
  v44 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMd, &_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v37 - v19;
  v21 = type metadata accessor for UUID();
  v37[0] = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v37 - v25;
  v27 = *MEMORY[0x1E69D0460];
  v28 = type metadata accessor for MessageSource();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v26, v27, v28);
  (*(v29 + 56))(v26, 0, 1, v28);
  FlowOutputMessage.Builder.source.setter();
  if (!a3)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v37[0] + 8))(v23, v21);
  }

  FlowOutputMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v38, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  FlowOutputMessage.Builder.sessionId.setter();
  if (!v39)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v37[0] + 8))(v23, v21);
  }

  FlowOutputMessage.Builder.requestId.setter();

  FlowOutputMessage.Builder.invocationId.setter();
  v30 = v44;
  v31 = *v44;
  FlowOutputMessage.Builder.command.setter();
  v32 = v43;
  FlowOutputMessage.Builder.commandExecutionInfo.setter();
  if (*v30)
  {
    v33 = *v30;
    SABaseCommand.isListenAfterSpeaking.getter();
  }

  FlowOutputMessage.Builder.listenAfterSpeaking.setter();
  v34 = type metadata accessor for RequestSummary.ExecutionSource();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v17, a11, v34);
  (*(v35 + 56))(v17, 0, 1, v34);
  FlowOutputMessage.Builder.executionSource.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a12, v45, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  return FlowOutputMessage.Builder.inAppResponse.setter();
}

void closure #1 in ContextUpdater.applyRREntities(_:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  if (a2)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = a1;
    v34 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (os_log_type_enabled(v34, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35[0] = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DC659000, v34, v12, "#ContextUpdater: Entity donation to RRaaS was unsuccessful as %s.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    else
    {
      v29 = v34;
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
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "#ContextUpdater: Entity donation to RRaaS was successful", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
      v25 = one-time initialization token for shared;

      if (v25 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v26 = static MessageBusActor.shared;
      v27 = lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v27;
      v28[4] = v23;
      v28[5] = a4;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in ContextUpdater.applyRREntities(_:), v28);
    }

    else
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DC659000, v30, v31, "#ContextUpdater: Entity donation to RRaaS was unsuccessful as self is no more.", v32, 2u);
        MEMORY[0x1E12A2F50](v32, -1, -1);
      }
    }
  }
}

uint64_t sub_1DC6FA394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ContextUpdater.applyRREntities(_:), v6, 0);
}

uint64_t closure #1 in closure #1 in ContextUpdater.applyRREntities(_:)()
{
  ContextUpdater.applyDisplayHints(_:)(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

void ContextUpdater.applyDisplayHints(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ConversationSessionKey();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(type metadata accessor for RREntity() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    v42 = v7;
    v43 = v4;
    v44 = v8;
    while (1)
    {
      RREntity.usoEntity.getter();
      v10 = UsoEntity.attributes.getter();

      if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000), (v12 & 1) == 0))
      {
LABEL_3:

        goto LABEL_4;
      }

      v13 = *(*(v10 + 56) + 8 * v11);

      if (v13 >> 62)
      {
        v14 = __CocoaSet.count.getter();
        if (!v14)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_3;
        }
      }

      if (v14 < 1)
      {
        __break(1u);
        goto LABEL_31;
      }

      v45 = v5;
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](i, v13);
          v16 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (!v17)
          {
            goto LABEL_11;
          }
        }

        else
        {

          v16 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (!v17)
          {
LABEL_11:

            continue;
          }
        }

        v18 = v16;
        v19 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v21 = *(v9 + 2);
        v20 = *(v9 + 3);
        if (v21 >= v20 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
        }

        *(v9 + 2) = v21 + 1;
        v22 = &v9[16 * v21];
        *(v22 + 4) = v18;
        *(v22 + 5) = v19;
      }

      v4 = v43;
      v5 = v45;
LABEL_4:
      if (++v5 == v4)
      {
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v23 = *(v38 + 232);
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v46[0] = v9;
  v25 = v39;
  v24 = v40;
  v26 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x1E69D07C0], v41);
  v27 = *(*v23 + 152);

  v27(v46, v25);
  (*(v24 + 8))(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_31:
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
    v46[0] = v32;
    *v31 = 136642819;

    v34 = MEMORY[0x1E12A16D0](v33, MEMORY[0x1E69E6158]);
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v46);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1DC659000, v29, v30, "#ContextUpdater: Saving to SessionState displayHints:%{sensitive}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1E12A2F50](v32, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }
}

void closure #1 in SessionStateContextKeysManager.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyOSgMd, &_s16SiriMessageTypes22ConversationSessionKeyOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - v6 + 16;
  v8 = type metadata accessor for ConversationSessionKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - v14 + 16;
  v27 = v9;
  v16 = *(v9 + 16);
  v16(v28 - v14 + 16, a2, v8, v13);
  outlined init with copy of Any(a3, v28);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v28, v15);
  swift_endAccess();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(a2, v7);
  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes22ConversationSessionKeyOSgMd, &_s16SiriMessageTypes22ConversationSessionKeyOSgMR);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.conversationBridge);
  (v16)(v11, a2, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = v11;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28[0] = v22;
    *v21 = 136315138;
    (v16)(v15, v20, v8);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    (*(v27 + 8))(v20, v8);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1DC659000, v18, v19, "StateKey: %s appended for update", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v11, v8);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), MEMORY[0x1E69D0820], specialized Dictionary._Variant.removeValue(forKey:));
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v11, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), MEMORY[0x1E69E6D30], specialized Dictionary._Variant.removeValue(forKey:));
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
  }

  else
  {
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a1, v11, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(void), void (*a5)(_OWORD *__return_ptr, uint64_t))
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    a3(v15, a2, isUniquelyReferenced_nonNull_native);
    v10 = a4(0);
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v5 = v14;
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    a5(v15, a2);
    v13 = a4(0);
    (*(*(v13 - 8) + 8))(a2, v13);
    return outlined destroy of ReferenceResolutionClientProtocol?(v15, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in FlowAgent.execute(timeout:)(a1, v1);
}

uint64_t closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

uint64_t closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v1 = v0[4];
  type metadata accessor for SiriEnvironment();
  v2 = *(v1 + 112);
  v0[5] = v2;
  v0[2] = v2;

  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = type metadata accessor for AnyFlow();
  v5 = type metadata accessor for ExecuteResponse();
  v6 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in FlowAgent.execute(timeout:);
  v7 = v0[3];
  v8 = v0[4];

  return MEMORY[0x1EEE40DB8](v7, v0 + 2, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), v8, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(a1, v1);
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for ExecuteResponseType();
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for ExecuteResponse();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v0[10] = *(v0[4] + 112);
  v4 = (*MEMORY[0x1E69CF980] + MEMORY[0x1E69CF980]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:);
  v2 = v0[3];

  return v4(v2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in FlowAgent.execute(timeout:), 0, 0);
}

{
  v27 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v25 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v0[2] = v8;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    ExecuteResponse.type.getter();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v10 + 8))(v9, v25);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1DC659000, v6, v7, "[Conversation] %s execute returned with response type %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[1];

  return v23();
}

uint64_t protocol witness for DeviceState.isCarPlay.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for DeviceRestrictions();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = Restrictions.deviceRestrictions.getter();
  a3(v11);
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions();
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  return v12 & 1;
}

uint64_t protocol witness for DeviceState.isHomePod.getter in conformance DefaultDeviceState(double a1, uint64_t a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v19 = a5;
  v7 = type metadata accessor for DeviceIdiom();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = *(v8 + 104);
  v13(v11, *MEMORY[0x1E69D34B8], v7, v9);
  v14 = static DeviceIdiom.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  if (v14)
  {
    v16 = *(v12 + *a4);
  }

  else
  {
    (v13)(v11, *v19, v7);
    v16 = static DeviceIdiom.== infix(_:_:)();
    v15(v11, v7);
  }

  return v16 & 1;
}

uint64_t protocol witness for DeviceState.isWatch.getter in conformance DefaultDeviceState(double a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = type metadata accessor for DeviceIdiom();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x1E69D34B8], v5, v7);
  v11 = static DeviceIdiom.== infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v9, v5);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    (v10)(v9, *a4, v5);
    v13 = static DeviceIdiom.== infix(_:_:)();
    v12(v9, v5);
  }

  return v13 & 1;
}

uint64_t protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AceServiceInvokerAsync.submit<A>(_:setRefId:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.submit<A>(_:setRefId:)(a1, v5, a3);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submit<A>(_:setRefId:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submit<A>(_:setRefId:)()
{
  v1 = AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:)(*(v0 + 16), *(v0 + 72), *(v0 + 24), *(v0 + 24));
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  v3 = *(v0 + 24);

  return AceServiceInvokerImpl._submitExecute<A>(_:)(v1, v3);
}

uint64_t AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = &outlined read-only object #0 of AceServiceInvokerImpl._submitPrep<A>(_:setRefId:responseType:);
  }

  (*(v10 + 104))(v13, *MEMORY[0x1E69D0678], v9, v11);
  v15 = AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(a1, v14, v13, a3, a4);

  (*(v10 + 8))(v13, v9);
  v16 = *(*(v4 + 160) + 16);
  os_unfair_lock_lock((v16 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 24));

  return v15;
}

uint64_t AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v8 = type metadata accessor for RequestSummary.ExecutionSource();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = AceServiceInvokerImpl.preparedCommand(_:options:)(a1, a2);
  v15 = SABaseCommand.forcedBargeInResult<A>(forExpectedResponseType:)(a4);
  LOBYTE(a4) = v16;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v8);
  v18 = (*(v9 + 80) + 57) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v21;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  *(v19 + 56) = a4 & 1;
  (*(v9 + 32))(v19 + v18, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v13, &async function pointer to partial apply for closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:), v19, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
}

uint64_t sub_1DC6FBF2C()
{
  v1 = type metadata accessor for RequestSummary.ExecutionSource();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  outlined consume of Result<SABaseCommand?, Error>(*(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id SABaseCommand.forcedBargeInResult<A>(forExpectedResponseType:)(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (!a1)
    {
      type metadata accessor for SABaseCommand();
    }

    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  else
  {
    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type BargeInError and conformance BargeInError();
    v3 = swift_allocError();
    BargeInError.init(rawError:)();
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type BargeInError and conformance BargeInError()
{
  result = lazy protocol witness table cache variable for type BargeInError and conformance BargeInError;
  if (!lazy protocol witness table cache variable for type BargeInError and conformance BargeInError)
  {
    type metadata accessor for BargeInError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BargeInError and conformance BargeInError);
  }

  return result;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = v2;
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = AceServiceInvokerImpl._submitExecute<A>(_:);

  return specialized AceServiceInvokerImpl.getResponse<A>(from:)(a1, a2);
}

uint64_t specialized AceServiceInvokerImpl.getResponse<A>(from:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v4 = swift_task_alloc();
  v2[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v2[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v4 = v2;
  v4[1] = specialized AceServiceInvokerImpl.getResponse<A>(from:);
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v2 + 2, a1, v5, v6, v7);
}

uint64_t partial apply for closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestSummary.ExecutionSource() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t closure #1 in AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v13 = swift_task_alloc();
  *(v8 + 24) = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return AceServiceInvokerImpl.performSubmit(_:bargeInResult:executionSource:)(a5, a6, a7 & 1, a8);
}

unint64_t lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948], MEMORY[0x1E69D2960]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, MEMORY[0x1E69D2948], MEMORY[0x1E69D2950]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RREntity] and conformance <A> [A]);
  }

  return result;
}

id ExecutionContextUpdate.__allocating_init(provideContextCommand:nativeFlowContextCommand:nluSystemDialogActs:nluActiveTasks:nluCompletedTasks:undoDirectInvocation:rrEntities:pommesContext:contextUpdateScope:restoreSessionForRequestId:executedOnRemoteDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v34 = a7;
  v40 = a12;
  v39 = a11;
  v37 = a8;
  v38 = a10;
  v36 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v33 - v22;
  v24 = objc_allocWithZone(v13);
  outlined init with copy of ReferenceResolutionClientProtocol?(a8, v23, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v23, a2);
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = a1;
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = a2;
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = a3;
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = a4;
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v24[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v24[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v34;
  outlined init with copy of ReferenceResolutionClientProtocol?(v23, &v24[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v25 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v27 = *(updated - 8);
  v28 = v36;
  (*(v27 + 16))(&v24[v25], v36, updated);
  v29 = &v24[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  v24[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = v40;
  v41.receiver = v24;
  v41.super_class = v35;
  v31 = objc_msgSendSuper2(&v41, sel_init);
  (*(v27 + 8))(v28, updated);
  outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  return v31;
}

void ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = objc_allocWithZone(type metadata accessor for SiriWillPromptMessage());
  v8 = SiriWillPromptMessage.init(build:)();
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Going to post SiriWillPromptMessage", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v6 + 32), *(v6 + 56));
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v9 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v9, v15, "Could not create SiriWillPromptMessage", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationOutputSubmitter.sendSiriWillPrompt(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *), void (*a8)(uint64_t, uint64_t), void (*a9)(char *), uint64_t (*a10)(uint64_t, uint64_t))
{
  v27 = a8;
  v28 = a4;
  v30 = a10;
  v31 = a5;
  v29 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v26 - v18;
  v20 = *MEMORY[0x1E69D0460];
  v21 = type metadata accessor for MessageSource();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  a7(v19);

  v27(a2, a3);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v16, v28, v23);
  (*(v24 + 56))(v16, 0, 1, v23);
  v29(v16);

  return v30(v31, a6);
}

void closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v6[4] = partial apply for closure #1 in closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  v6[5] = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
  v6[3] = &block_descriptor_289;
  v5 = _Block_copy(v6);

  [v4 submitWithExecutionOutput:a3 completion:v5];
  _Block_release(v5);
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(id, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(v9, a1, v8);
  _Block_release(v8);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(a2, a3);
  _Block_release(a3);
  if (v7)
  {
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ();
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_201;
    v8 = _Block_copy(v10);

    [v7 submitWithExecutionOutput:a1 completion:v8];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {
  }
}

uint64_t sub_1DC6FD1B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void closure #1 in closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v30 - v5);
  if (!a2)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v7 = a1;
    specialized ManagedContinuation.updateState(continuation:result:)(v6, a1, 0);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
LABEL_9:

    return;
  }

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == 0x55747865746E6F43 && v11 == 0xEE00726574616470)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v15 = [v7 userInfo];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);

  if (v17 == 1)
  {
    v18 = [v7 userInfo];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v19 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001DCA7C530);
      v21 = v20;

      if (v21)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.executor);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1DC659000, v23, v24, "Ignored errorApplyingRREntities as we don't want to issue an error dialog just because entities didn't donate to SRR successfully.", v25, 2u);
          MEMORY[0x1E12A2F50](v25, -1, -1);
        }

        v26 = [objc_allocWithZone(MEMORY[0x1E69C7780]) init];
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
        (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
        specialized ManagedContinuation.updateState(continuation:result:)(v6, v26, 0);
        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

LABEL_20:

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = a2;
  specialized ManagedContinuation.updateState(continuation:result:)(v6, a2, 1);
  outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
}

id ConversationCommitResultXPC.init(coder:)(void *a1, double a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v143 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v152 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v134 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_Task();
  v153 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v134 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v134 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v156 = (&v134 - v21);
  v141 = type metadata accessor for NSFastEnumerationIterator();
  v145 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v144 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v134 - v24;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v25 = swift_allocObject();
  v138 = xmmword_1DCA65720;
  *(v25 + 16) = xmmword_1DCA65720;
  v26 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v25 + 32) = v26;
  v140 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v25 + 40) = v140;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v159 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v158, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.executor);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = a1;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DC659000, v39, v40, "Could not deserialize proto ActiveTasks array", v42, 2u);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    else
    {
    }

    goto LABEL_43;
  }

  v134 = v26;
  v137 = a1;
  v136 = v2;
  v135 = v164;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v165)
  {
    v151 = (v153 + 56);
    v155 = (v153 + 32);
    v149 = (v153 + 16);
    v157 = MEMORY[0x1E69E7CC0];
    v148 = v153 + 8;
    v150 = v19;
    while (1)
    {
      outlined init with take of Any(&v164, &v158);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v28 = v161;
      v27 = v162;
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
      outlined copy of Data._Representation(v161, v162);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v151)(v12, 0, 1, v13);
      v29 = *v155;
      v30 = v13;
      v31 = v156;
      (*v155)(v156, v12, v30);
      v32 = v31;
      v13 = v30;
      (*v149)(v19, v32, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v157[2] + 1, 1, v157);
      }

      v34 = v157[2];
      v33 = v157[3];
      if (v34 >= v33 >> 1)
      {
        v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v157);
      }

      outlined consume of Data._Representation(v28, v27);
      v35 = v153;
      (*(v153 + 8))(v156, v30);
      v36 = v157;
      v157[2] = v34 + 1;
      v37 = v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34;
      v19 = v150;
      v29(v37, v150, v30);
      NSFastEnumerationIterator.next()();
      if (!v165)
      {
        goto LABEL_19;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.executor);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1DC659000, v59, v60, "Element in decoded array is not of type Data", v61, 2u);
      MEMORY[0x1E12A2F50](v61, -1, -1);
    }

    (*(v145 + 8))(v154, v141);
    goto LABEL_43;
  }

  v157 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v43 = v145 + 8;
  v44 = *(v145 + 8);
  v44(v154, v141);
  v45 = swift_allocObject();
  *(v45 + 16) = v138;
  v46 = v140;
  *(v45 + 32) = v134;
  *(v45 + 40) = v46;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v159 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v158, &_sypSgMd, &_sypSgMR);

LABEL_37:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.executor);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DC659000, v63, v64, "Could not deserialize proto ActiveTasks array", v65, 2u);
      MEMORY[0x1E12A2F50](v65, -1, -1);
    }

    v66 = v137;
    goto LABEL_42;
  }

  v145 = v43;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v151 = v44;
  v152 = v164;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v165)
  {
    v155 = (v153 + 56);
    v47 = (v153 + 32);
    v48 = (v153 + 16);
    v156 = MEMORY[0x1E69E7CC0];
    v154 = (v153 + 8);
    while (1)
    {
      outlined init with take of Any(&v164, &v158);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v50 = v161;
      v49 = v162;
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
      outlined copy of Data._Representation(v161, v162);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      v51 = v142;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v155)(v51, 0, 1, v13);
      v52 = *v47;
      v53 = v146;
      (*v47)(v146, v51, v13);
      (*v48)(v147, v53, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156[2] + 1, 1, v156);
      }

      v55 = v156[2];
      v54 = v156[3];
      if (v55 >= v54 >> 1)
      {
        v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v156);
      }

      outlined consume of Data._Representation(v50, v49);
      v56 = v153;
      (*(v153 + 8))(v146, v13);
      v57 = v156;
      v156[2] = v55 + 1;
      v52(&v57[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55], v147, v13);
      NSFastEnumerationIterator.next()();
      if (!v165)
      {
        goto LABEL_45;
      }
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logger.executor);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v151;
    if (v97)
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_1DC659000, v95, v96, "Element in decoded array is not of type Data", v99, 2u);
      MEMORY[0x1E12A2F50](v99, -1, -1);
    }

    v98(v144, v141);
    goto LABEL_43;
  }

  v156 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v151(v144, v141);
  v68 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
  v69 = [v137 decodeIntegerForKey_];

  v70 = specialized FlowUnhandledReasonXPC.init(rawValue:)(v69);
  if (v71)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.executor);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1DC659000, v73, v74, "Error decoding ConversationCommitResultXPC: Unknown FlowUnhandledReasonXPC", v75, 2u);
      MEMORY[0x1E12A2F50](v75, -1, -1);
    }

    v66 = v152;
LABEL_42:

LABEL_43:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v76 = v70;
  if (v70 == 4 && (v77 = MEMORY[0x1E12A1410](0x6269726373657270, 0xEE006C6F6F546465), v78 = v137, v79 = [v137 containsValueForKey_], v77, v79))
  {
    v80 = MEMORY[0x1E12A1410](0x6269726373657270, 0xEE006C6F6F546465);
    v81 = [v78 decodeIntegerForKey_];

    v82 = v81 > 1;
    if (v81 <= 1)
    {
      v83 = v81;
    }

    else
    {
      v83 = 0;
    }

    v155 = v83;
  }

  else
  {
    v155 = 0;
    v82 = 1;
  }

  v84 = v137;
  v85 = NSCoder.decodeObject<A>(of:forKey:)();
  v86 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  v87 = [v84 decodeIntegerForKey_];

  v88 = specialized ConversationCommitResultTypeXPC.init(rawValue:)(v87);
  if (v89)
  {

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.executor);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1DC659000, v91, v92, "Error decoding ConversationCommitResultXPC: Unknown ConversationCommitResultTypeXPC", v93, 2u);
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    goto LABEL_43;
  }

  v153 = v88;
  LODWORD(v154) = v82;
  v100 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
  v101 = [v84 containsValueForKey_];

  if (v101)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    v102 = NSCoder.decodeObject<A>(of:forKey:)();
    v103 = v102;
  }

  else
  {
    v102 = 0;
  }

  v104 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A930);
  v105 = [v84 containsValueForKey_];

  if (v105 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v106 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v107 = v106;
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v108;
  }

  else
  {
    v151 = 0;
    v150 = 0;
  }

  v109 = MEMORY[0x1E12A1410](0x5565737261706572, 0xED00004449726573);
  v110 = [v137 containsValueForKey_];

  if (v110 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v111 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v112 = v111;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;
  }

  else
  {
    v113 = 0;
    v115 = 0;
  }

  if (v76 == 5 && (v116 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A960), v117 = [v137 containsValueForKey_], v116, v117))
  {
    type metadata accessor for SiriXRedirectContextXPC();
    v118 = NSCoder.decodeObject<A>(of:forKey:)();
    v119 = v118;
  }

  else
  {
    v118 = 0;
  }

  if (v85)
  {
    v120 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;
  }

  else
  {
    v120 = 0;
    v122 = 0xF000000000000000;
  }

  v123 = type metadata accessor for ConversationCommitResultXPC();
  v124 = objc_allocWithZone(v123);
  *&v124[OBJC_IVAR___SKRConversationCommitResult_type] = v153;
  v125 = v156;
  *&v124[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = v157;
  *&v124[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = v125;
  *&v124[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = v76;
  v126 = &v124[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v126 = v155;
  v126[8] = v154;
  *&v124[OBJC_IVAR___SKRConversationCommitResult_error] = v102;
  v127 = &v124[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData];
  *v127 = v120;
  v127[1] = v122;
  v128 = &v124[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  v129 = v150;
  *v128 = v151;
  *(v128 + 1) = v129;
  v130 = &v124[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v130 = v113;
  v130[1] = v115;
  *&v124[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = v118;
  v131 = v102;
  outlined copy of Data?(v120, v122);
  v163.receiver = v124;
  v163.super_class = v123;
  v132 = v118;
  v133 = objc_msgSendSuper2(&v163, sel_init);

  outlined consume of Data?(v120, v122);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v133;
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submit(executionOutput:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_215;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
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

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.submitExternalActivationRequest(withRequestInfo:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_75;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
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

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  *(v5 + 24) = v4;
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in ServiceBridgeErrorHandlingProxy.postToMessageBus(message:completion:);
  *(v7 + 24) = v5;
  aBlock[4] = closure #1 in ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = &block_descriptor_54;
  v8 = _Block_copy(aBlock);
  _Block_copy(a2);

  v9 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v10 = v18;
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

    lazy protocol witness table accessor for type ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError and conformance ServiceBridgeErrorHandlingProxy.ExecutionBridgeXPCError();
    v15 = swift_allocError();
    _Block_copy(a2);
    v16 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v16);

    _Block_release(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

    return 0;
  }

  return v10;
}

uint64_t sub_1DC6FF97C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

Swift::Void __swiftcall ExecutionOutput.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRExecutionOutput_executionRequestId), *(v1 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8));
  v5 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___SKRExecutionOutput_command);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E12A1410](0x646E616D6D6F63, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  v9 = *(v2 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x1E12A1410](0x55747865746E6F63, 0xED00006574616470);
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_fullPrint + 8))
  {
    v12 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_fullPrint));
    v13 = MEMORY[0x1E12A1410](0x6E6972506C6C7566, 0xE900000000000074);
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8))
  {
    v14 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_fullSpeak));
    v15 = MEMORY[0x1E12A1410](0x616570536C6C7566, 0xE90000000000006BLL);
    [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8))
  {
    v16 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint));
    v17 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AEF0);
    [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];
  }

  if (*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8))
  {
    v18 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak));
    v19 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7AF10);
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for RequestSummary.ExecutionSource();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type RequestSummary.ExecutionSource and conformance RequestSummary.ExecutionSource, MEMORY[0x1E69D0690], MEMORY[0x1E69D0698]);
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v21;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v24 = MEMORY[0x1E12A1410](0x6F69747563657865, 0xEF656372756F536ELL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v24];

  outlined consume of Data._Representation(v20, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  lazy protocol witness table accessor for type FlowOutputMessage.InAppResponse? and conformance <A> A?();
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v27 = v26;
  v28 = Data._bridgeToObjectiveC()().super.isa;
  v29 = MEMORY[0x1E12A1410](0x7365527070416E69, 0xED000065736E6F70);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  outlined consume of Data._Representation(v25, v27);
}

uint64_t ExecutionOutput.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for RequestSummary.ExecutionSource();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v69 - v20;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v21)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v35, v36, "Could not decode ExecutionOutput: missing executionRequestId", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    goto LABEL_19;
  }

  v90 = v21;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  v87 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for ExecutionContextUpdate(0);
  v88 = NSCoder.decodeObject<A>(of:forKey:)();
  v91 = NSCoder.decodeObject<A>(of:forKey:)();
  v92 = NSCoder.decodeObject<A>(of:forKey:)();
  v94 = NSCoder.decodeObject<A>(of:forKey:)();
  v93 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v22)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.executor);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1DC659000, v39, v40, "Can't decode ExecutionSource data into Data", v41, 2u);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    goto LABEL_20;
  }

  v84 = v13;
  ObjectType = v11;
  v23 = v22;
  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v27)
  {
    v42 = v24;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.executor);
    v35 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = v26;
    v46 = v42;
    if (os_log_type_enabled(v35, v44))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DC659000, v35, v44, "Can't decode InAppResponse data into Data", v47, 2u);
      MEMORY[0x1E12A2F50](v47, -1, -1);
    }

    outlined consume of Data._Representation(v46, v45);
LABEL_19:

LABEL_20:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v85 = v2;
  v80 = v15;
  v28 = v27;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v32 = JSONDecoder.init()();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type RequestSummary.ExecutionSource and conformance RequestSummary.ExecutionSource, MEMORY[0x1E69D0690], MEMORY[0x1E69D06A0]);
  v82 = v24;
  v83 = v26;
  v33 = v32;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v84 + 32))(v89, v18, v12);
  v48 = type metadata accessor for FlowOutputMessage.InAppResponse();
  _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse and conformance FlowOutputMessage.InAppResponse, MEMORY[0x1E69D0248], MEMORY[0x1E69D0258]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v78 = v29;
  v79 = v31;
  (*(*(v48 - 8) + 56))(v8, 0, 1, v48);
  v50 = ObjectType;
  outlined init with take of FlowOutputMessage.InAppResponse?(v8, ObjectType);
  ObjectType = swift_getObjectType();
  if (v91)
  {
    v95 = 0;
    v96 = 0;
    v51 = v91;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v52 = v95;
    v76 = v96;
    if (!v96)
    {
      v52 = 0;
    }

    v75 = v52;
    v53 = v92;
    if (v92)
    {
LABEL_25:
      v95 = 0;
      v96 = 0;
      v54 = v53;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v55 = v95;
      v74 = v96;
      if (!v96)
      {
        v55 = 0;
      }

      v73 = v55;
      v56 = v94;
      if (v94)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v75 = 0;
    v76 = 0;
    v53 = v92;
    if (v92)
    {
      goto LABEL_25;
    }
  }

  v73 = 0;
  v74 = 0;
  v56 = v94;
  if (v94)
  {
LABEL_28:
    v95 = 0;
    v96 = 0;
    v57 = v56;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v58 = v95;
    v72 = v96;
    if (!v96)
    {
      v58 = 0;
    }

    v71 = v58;
    goto LABEL_34;
  }

LABEL_33:
  v71 = 0;
  v72 = 0;
LABEL_34:
  v77 = v33;
  if (v93)
  {
    v95 = 0;
    v96 = 0;
    v59 = v93;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v60 = v95;
    v61 = v96;
    if (!v96)
    {
      v60 = 0;
    }

    v70 = v60;
  }

  else
  {
    v70 = 0;
    v61 = 0;
  }

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  v65 = v84;
  v66 = v80;
  (*(v84 + 16))(v80, v89, v12);
  v67 = v86;
  outlined init with copy of ReferenceResolutionClientProtocol?(v50, v86, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v68 = ObjectType[19](v87, v88, v75, v76, v73, v74, v71, v72, v70, v61, v62, v64, v66, v67);

  outlined consume of Data._Representation(v78, v79);
  outlined consume of Data._Representation(v82, v83);

  outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v65 + 8))(v89, v12);
  swift_deallocPartialClassInstance();
  return v68;
}

uint64_t lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void closure #1 in closure #1 in FlowAgent.execute(timeout:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

void ConversationRequestAwareBridgeBase.handleEndRequestInternal(_:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a1;
  v8 = RequestMessageBase.requestId.getter();
  v10 = v9;
  v83[4] = v8;
  v83[5] = v9;
  v11 = (*(*v2 + 416))(v83);
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  v12 = v11(v83, 0);
  v13 = v84;
  if (v84)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v83[0] = v17;
      *v16 = 136315138;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v83);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v14, v15, "Found candidate request processor with matching requestId: %s. Removing it.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    else
    {
    }

    (*(*v2 + 496))(v82, v13);

    return;
  }

  v80 = v5;
  v81 = v8;
  v19 = (*v2 + 376);
  v20 = *v19;
  v21 = (*v19)(v12);
  if (!v21)
  {
    goto LABEL_11;
  }

  v23 = *(v21 + 64);
  v22 = *(v21 + 72);

  if (v23 == v81 && v22 == v10)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

LABEL_11:
      v27 = v4;
      v28 = v7;
      if ((*(v2 + direct field offset for ConversationRequestAwareBridgeBase.hasAutoRegisteredStartRequestMessageBase) & 1) == 0)
      {
        if (!v20(v21))
        {

          v61 = v82;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v62, v63))
          {

            goto LABEL_41;
          }

          v64 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v83[0] = v82;
          *v64 = 136315650;
          MessageBase.messageId.getter();
          _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          (*(v80 + 8))(v7, v27);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v83);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2080;
          swift_getObjectType();
          v69 = _typeName(_:qualified:)();
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v83);

          *(v64 + 14) = v71;
          *(v64 + 22) = 2080;
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v10, v83);

          *(v64 + 24) = v72;
          _os_log_impl(&dword_1DC659000, v62, v63, "Got end request message for non-existing request, messageId: %s type: %s requestId: %s, current requestId is not set. Dropping the message", v64, 0x20u);
          v73 = v82;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v73, -1, -1);
          v74 = v64;
LABEL_40:
          MEMORY[0x1E12A2F50](v74, -1, -1);
LABEL_41:

          return;
        }
      }

      v29 = v20;

      v30 = v82;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v79 = v32;
        v82 = v31;
        v33 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v83[0] = v78;
        *v33 = 136315906;
        MessageBase.messageId.getter();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v80 + 8))(v28, v27);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v83);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2080;
        swift_getObjectType();
        v38 = _typeName(_:qualified:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v83);

        *(v33 + 14) = v40;
        *(v33 + 22) = 2080;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v10, v83);

        *(v33 + 24) = v41;
        *(v33 + 32) = 2080;
        v43 = v29(v42);
        if (v43)
        {
          v45 = *(v43 + 64);
          v44 = *(v43 + 72);
        }

        else
        {
          v44 = 0xE700000000000000;
          v45 = 0x74657320746F6ELL;
        }

        v75 = v79;
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, v83);

        *(v33 + 34) = v76;
        v62 = v82;
        _os_log_impl(&dword_1DC659000, v82, v75, "Got end request message to non exists request, messageId: %s type: %s requestId: %s, current requestId: %s dropping the message", v33, 0x2Au);
        v77 = v78;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v77, -1, -1);
        v74 = v33;
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  v46 = v20(v26);
  if (v46)
  {
    (*(*v2 + 496))(v82, v46);
  }

  v47 = v20(v46);
  if (!v47)
  {

    v50 = v81;
    goto LABEL_30;
  }

  v49 = *(v47 + 64);
  v48 = *(v47 + 72);

  v50 = v81;
  if (v81 != v49 || v10 != v48)
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_28;
    }

LABEL_30:

    v31 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v31, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v83[0] = v59;
      *v58 = 136315394;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v10, v83);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2080;
      *(v58 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v83);
      _os_log_impl(&dword_1DC659000, v31, v57, "Request %s for bridge %s was already changed, not setting processor to 'nil'", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v59, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
LABEL_33:

      return;
    }

LABEL_32:

    goto LABEL_33;
  }

LABEL_28:

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83[0] = v55;
    *v54 = 136315394;
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v10, v83);

    *(v54 + 4) = v56;
    *(v54 + 12) = 2080;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v83);
    _os_log_impl(&dword_1DC659000, v52, v53, "Setting request processor of requestId %s for bridge %s to 'nil'", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  else
  {
  }

  (*(*v2 + 384))(0);
}

void ConversationRequestProcessor.handleEndRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - v7;
  v9 = type metadata accessor for RREntity();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v53 = v8;
    v18 = v9;
    v19 = v12;
    v20 = v10;
    v21 = v17;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v14;
    *v22 = v14;
    v23 = v14;
    _os_log_impl(&dword_1DC659000, v15, v16, "ConversationBridge received message: %@", v21, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    v24 = v21;
    v10 = v20;
    v12 = v19;
    v9 = v18;
    v8 = v53;
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v25 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker);
  (*(*v2 + 424))(v55);
  (*(*v25 + 232))(v55);
  v26 = __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v27 = (*(*v2 + 608))(v26);
  if (v27)
  {
    v28 = v27;
    type metadata accessor for RequestCompletedMessage();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_18;
    }

    v29 = (v28 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    if (*v29 >> 62 != 1)
    {
      goto LABEL_18;
    }

    v30 = v29[1];
    if (!v30)
    {
      goto LABEL_18;
    }

    v31 = v30;
    v32 = [v31 af_userUtteranceValue];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 bestTextInterpretation];

      if (v34)
      {
        type metadata accessor for ConversationRequestProcessor(0);
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        static ConversationRequestProcessor.createUtteranceRREntity(utterance:)(v8);

        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
        }

        else
        {
          (*(v10 + 32))(v12, v8, v9);
          v44 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient + 24);
          v53 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient + 32);
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient), v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR);
          v45 = v10;
          v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_1DCA66060;
          (*(v45 + 16))(v47 + v46, v12, v9);
          v48 = type metadata accessor for RRFilter();
          v49 = v54;
          (*(*(v48 - 8) + 56))(v54, 1, 1, v48);
          dispatch thunk of ReferenceResolutionClientProtocol.siriMentioned(entities:configuration:completion:)();

          outlined destroy of ReferenceResolutionClientProtocol?(v49, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
          (*(v45 + 8))(v12, v9);
        }

LABEL_18:
        (*(*v2 + 408))(1, 0, 3);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55[0] = v38;
      *v37 = 136315138;
      v39 = (*(*v2 + 400))();
      if (v41 > 1u)
      {
        if (v41 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v39, v40, 2);
          v42 = 0xEC00000064657472;
          v43 = 0x617473206E727574;
        }

        else
        {
          v50 = (v39 | v40) == 0;
          if (v39 | v40)
          {
            v43 = 0x6574656C706D6F63;
          }

          else
          {
            v43 = 1701602409;
          }

          if (v50)
          {
            v42 = 0xE400000000000000;
          }

          else
          {
            v42 = 0xE800000000000000;
          }
        }
      }

      else if (v41)
      {
        v42 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v39, v40, 1);
        v43 = 0xD00000000000001DLL;
      }

      else
      {
        v42 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v39, v40, 0);
        v43 = 0xD000000000000011;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, v55);

      *(v37 + 4) = v51;
      _os_log_impl(&dword_1DC659000, v35, v36, "ConversationBridge ignoring EndRequest: Not in a turn. State = %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1E12A2F50](v38, -1, -1);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }
  }
}

void closure #1 in ContextUpdater.updateServerContext()(uint64_t a1, void *a2)
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
    v12 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
    v8 = Optional.debugDescription.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DC659000, oslog, v5, "Sent NativeFlowContextUpdate to server. Error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  else
  {
  }
}

void TaskService.onExistingXPCTask(_:)(_DWORD *a1)
{
  v6 = v1;
  swift_beginAccess();
  v8 = *(v1 + 32);
  if (v8 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
LABEL_16:
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.instrumentation);
      v4 = a1;

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_40;
      }

      a1 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      *a1 = 136315394;
      v6 = *(v6 + 32);
      if (!(v6 >> 62))
      {
        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          if ((v6 & 0xC000000000000001) != 0)
          {

            MEMORY[0x1E12A1FE0](0, v6);

            goto LABEL_24;
          }

          if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

LABEL_24:

            v20 = FlowTask.description.getter();
            v22 = v21;

LABEL_39:
            v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v31);

            *(a1 + 1) = v30;
            *(a1 + 6) = 2080;
            *(a1 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v4 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8), &v31);
            _os_log_impl(&dword_1DC659000, v2, v3, "TaskService - Current task is %s; don't adopt from XPC: %s)", a1, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v5, -1, -1);
            MEMORY[0x1E12A2F50](a1, -1, -1);
LABEL_40:

            return;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_38:
        v22 = 0xE500000000000000;
        v20 = 0x3E4C494E3CLL;
        goto LABEL_39;
      }

LABEL_37:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_21;
      }

      goto LABEL_38;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v2 = MEMORY[0x1E12A1FE0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_37;
    }

    v2 = *(v8 + 32);
  }

  v4 = 0x64657461657263;
  if (*(v2 + 32) && *(v2 + 32) != 1)
  {

    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

    goto LABEL_16;
  }

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_43:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.instrumentation);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (*(v2 + 32))
    {
      if (*(v2 + 32) == 1)
      {
        v18 = 0xE700000000000000;
        v4 = 0x676E696F676E6FLL;
      }

      else
      {
        v18 = 0xE500000000000000;
        v4 = 0x6465646E65;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v18, &v31);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1DC659000, v11, v12, "TaskService - Task %s has state %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v14, -1, -1);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

  if ((TaskService.hasLastXPCTaskEnded(flowTaskXPC:)(a1) & 1) == 0)
  {
    v24 = a1;
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
      _os_log_impl(&dword_1DC659000, v25, v26, "TaskService - begin adopting existing task from XPC: %@", v27, 0xCu);
      outlined destroy of NSObject?(v28);
      MEMORY[0x1E12A2F50](v28, -1, -1);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }

    TaskService.addNewTask(id:state:isClientInitiated:creationTime:)(*(v24 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v24 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8), *(v24 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state), *(v24 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated), v24 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime);
  }
}

uint64_t TaskService.hasLastXPCTaskEnded(flowTaskXPC:)(void *a1)
{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.instrumentation);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_1DC659000, v5, v6, "TaskService - handling XPC task ending for flowTaskXPC: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  swift_beginAccess();
  v10 = *(v1 + 32);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
      goto LABEL_7;
    }

LABEL_13:

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40[0] = v18;
      *v17 = 136315138;
      v19 = type metadata accessor for FlowTask(0);

      v21 = MEMORY[0x1E12A16D0](v20, v19);
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v40);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v15, v16, "TaskService - not able to identify previous task for end/terminal state for managed tasks: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v25 = 0;
    return v25 & 1;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_13;
  }

LABEL_7:
  result = swift_beginAccess();
  v12 = *(v1 + 32);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = 1;
    v26 = MEMORY[0x1E12A1FE0](1);
    swift_endAccess();
    v27 = *(v26 + 32);
    swift_unknownObjectRelease();
    if (v27 >= 2)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_18;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = *(v12 + 40);
  swift_endAccess();
  if (!*(v13 + 32) || *(v13 + 32) == 1)
  {
    goto LABEL_17;
  }

  v14 = 1;
LABEL_18:

  result = swift_beginAccess();
  v28 = *(v1 + 32);
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1E12A1FE0](1);
    goto LABEL_21;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v29 = *(v28 + 40);

LABEL_21:
    swift_endAccess();
    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    swift_bridgeObjectRetain_n();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v34 = 67109378;
      *(v34 + 4) = v14 & 1;
      *(v34 + 8) = 2080;
      *(v34 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, v40);
      _os_log_impl(&dword_1DC659000, v32, v33, "TaskService - previous task .ended state is %{BOOL}d; previous taskId %s", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    if (v31 == *&v4[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id] && v30 == *&v4[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8])
    {
      v36 = 1;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109120;
      *(v39 + 4) = v36 & 1;
      _os_log_impl(&dword_1DC659000, v37, v38, "TaskService - previous task same taskId as xpc one - %{BOOL}d", v39, 8u);
      MEMORY[0x1E12A2F50](v39, -1, -1);
    }

    v25 = v14 & v36;
    return v25 & 1;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t FlowTaskXPC.description.getter()
{
  v5[8] = 0;
  _StringGuts.grow(_:)(71);
  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BAA0);
  MEMORY[0x1E12A1580](*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8));
  MEMORY[0x1E12A1580](0x3A6574617473202CLL, 0xE900000000000020);
  *v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA8BA60);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA8BA80);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return *&v5[1];
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC706B00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *initializeWithCopy for ConversationCommitResult(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for PluginAction();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    else
    {
      v10 = a2[1];
      *a1 = *a2;
      a1[1] = v10;
      v11 = a2[2];
      v12 = a2[3];
      a1[2] = v11;
      a1[3] = v12;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for FlowUnhandledReason();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *a1 = v6;
    a1[1] = v7;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ConversationCommitResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = type metadata accessor for PluginAction();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
      }

      else
      {
        v12 = a2[1];
        *a1 = *a2;
        a1[1] = v12;
        v13 = a2[2];
        v14 = a2[3];
        a1[2] = v13;
        a1[3] = v14;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v11 = type metadata accessor for FlowUnhandledReason();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      *a1 = v7;
      a1[1] = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

unint64_t specialized ConversationCommitResultTypeXPC.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in RemoteConversationClient.commit(bridge:)()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.commit(bridge:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.commit(bridge:);
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for ConversationCommitResult(0);
  *v4 = v0;
  v4[1] = closure #1 in RemoteConversationClient.commit(bridge:);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v3, v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in RemoteConversationClient.prepare(bridge:)()
{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = partial apply for closure #1 in closure #1 in RemoteConversationClient.prepare(bridge:);
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = closure #1 in RemoteConversationClient.prepare(bridge:);
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000028, 0x80000001DCA7D5A0, partial apply for specialized closure #1 in static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:), v3, v6);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.prepare(bridge:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t InterruptibleTaskResult.get()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload())
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v2 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v3 = *(v2 + 1344);
    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v5 = *(v2 + 1184);

    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = *(*v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v457 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  outlined init with take of DecisionEngineResponse(*(v0 + 1024), v1, type metadata accessor for ConversationCommitResult);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_0(v1, v2, type metadata accessor for ConversationCommitResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = *(v0 + 1016);
      *(v0 + 1400) = *v4;
      *(v0 + 1408) = v4[1];
      ObjectType = swift_getObjectType();
      *(v0 + 1416) = ObjectType;
      v6 = swift_task_alloc();
      *(v0 + 1424) = v6;
      *v6 = v0;
      v6[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
      v7 = *(v0 + 368);

      return ServiceBridgeDelegate.fetchSelfReflectionDecision()(v0 + 1604, ObjectType, v7);
    }

    v31 = *(v0 + 1588);
    v32 = *(v0 + 960);
    v33 = *(v0 + 952);
    v34 = *(v0 + 944);
    v35 = *(v0 + 936);
    (*(v34 + 32))(v32, *(v0 + 1016), v35);
    (*(v34 + 16))(v33, v32, v35);
    v36 = (*(v34 + 88))(v33, v35);
    if (v36 == v31)
    {
      v37 = *(v0 + 968);
      v38 = *(v0 + 952);
      v39 = *(v0 + 944);
      v40 = *(v0 + 936);

      (*(v39 + 96))(v38, v40);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v38, v37, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DC659000, v41, v42, "[ConversationService] Falling back to IntelligenceFlow because Flow returned .unhandled(reason: .needsIntelligenceFlowFallback)", v43, 2u);
        MEMORY[0x1E12A2F50](v43, -1, -1);
      }

      v44 = *(v0 + 1288);
      v433 = *(v0 + 1032);
      v45 = *(v0 + 968);
      v424 = *(v0 + 960);
      v46 = *(v0 + 944);
      v47 = *(v0 + 936);
      v48 = *(v0 + 384);
      v49 = *(v0 + 368);

      v50 = swift_getObjectType();
      (*(v49 + 64))(v45, v50, v49);

      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      (*(v46 + 8))(v424, v47);
      outlined destroy of ConversationService.EagerResult(v433, type metadata accessor for ConversationCommitResult);

      v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      goto LABEL_16;
    }

    if (v36 != *(v0 + 1592))
    {
      if (v36 == *MEMORY[0x1E69CFB70])
      {
        v166 = *(v0 + 384);

        v167 = *(**(v166 + 208) + 192);

        v167(v168);

        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          *v171 = 0;
          _os_log_impl(&dword_1DC659000, v169, v170, "[ConversationService] Falling back to server because Flow returned .unhandled(reason: .needsServerExecution)", v171, 2u);
          MEMORY[0x1E12A2F50](v171, -1, -1);
        }

        v382 = *(v0 + 1312);
        v402 = *(v0 + 1288);
        v389 = *(v0 + 1208);
        v396 = *(v0 + 1320);
        v438 = *(v0 + 1032);
        v172 = *(v0 + 944);
        v418 = *(v0 + 936);
        v427 = *(v0 + 960);
        v173 = *(v0 + 928);
        v174 = *(v0 + 904);
        v175 = *(v0 + 384);
        v370 = *(v0 + 368);
        v377 = *(v0 + 1200);
        v364 = *(v0 + 360);
        v176 = *(v0 + 352);

        v178 = *(v176 + 16);
        v177 = *(v176 + 24);
        v179 = type metadata accessor for Siri_Nlu_External_UserParse();
        (*(*(v179 - 8) + 56))(v173, 1, 1, v179);
        v180 = *MEMORY[0x1E69D0780];
        v181 = type metadata accessor for ServerFallbackReason();
        v182 = *(v181 - 8);
        v183 = v180;
        v48 = v175;
        (*(v182 + 104))(v174, v183, v181);
        (*(v182 + 56))(v174, 0, 1, v181);
        ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v364, v370, v382, v396, v377, v389, v178, v177, 1u, v173, v174);

        outlined destroy of ReferenceResolutionClientProtocol?(v174, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v173, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        (*(v172 + 8))(v427, v418);
        outlined destroy of ConversationService.EagerResult(v438, type metadata accessor for ConversationCommitResult);

        v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      }

      else if (v36 == *MEMORY[0x1E69CFB78])
      {
        v212 = *(v0 + 384);

        v213 = *(**(v212 + 208) + 192);

        v213(v214);

        v215 = Logger.logObject.getter();
        v216 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v215, v216))
        {
          v217 = swift_slowAlloc();
          *v217 = 0;
          _os_log_impl(&dword_1DC659000, v215, v216, "[ConversationService] Falling back to POMMES because Flow returned .unhandled(reason: .needsInfoDomainFallback)", v217, 2u);
          MEMORY[0x1E12A2F50](v217, -1, -1);
        }

        v218 = *(v0 + 1320);
        v219 = *(v0 + 1312);
        v220 = *(v0 + 1288);
        v440 = *(v0 + 1032);
        v420 = *(v0 + 960);
        v221 = *(v0 + 944);
        v222 = *(v0 + 936);
        v223 = *(v0 + 384);
        v224 = *(v0 + 368);

        v225 = swift_getObjectType();
        v226 = *(v224 + 56);
        v227 = v224;
        v48 = v223;
        v226(v219, v218, v225, v227);

        (*(v221 + 8))(v420, v222);
        outlined destroy of ConversationService.EagerResult(v440, type metadata accessor for ConversationCommitResult);

        v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
      }

      else
      {
        v228 = *MEMORY[0x1E69CFB68];
        v229 = v36;

        if (v229 == v228)
        {
          v230 = Logger.logObject.getter();
          v231 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v230, v231))
          {
            v232 = swift_slowAlloc();
            *v232 = 0;
            _os_log_impl(&dword_1DC659000, v230, v231, "[ConversationService] Received .unhandled(reason: .needsExecutionRerun). Clearing state and rerunning", v232, 2u);
            MEMORY[0x1E12A2F50](v232, -1, -1);
          }

          v391 = *(v0 + 1312);
          v398 = *(v0 + 1320);
          v404 = *(v0 + 1288);
          v441 = *(v0 + 1032);
          v233 = *(v0 + 944);
          v421 = *(v0 + 936);
          v429 = *(v0 + 960);
          v234 = *(v0 + 896);
          v235 = *(v0 + 880);
          v384 = *(v0 + 872);
          v236 = *(v0 + 384);
          v237 = *(v0 + 368);

          v238 = *(**(v236 + 208) + 192);

          v238(v239);

          v240 = swift_getObjectType();
          (*(v235 + 56))(v234, 1, 1, v384);
          v241 = *(v237 + 88);
          v242 = v237;
          v48 = v236;
          v241(v391, v398, v234, v240, v242);

          outlined destroy of ReferenceResolutionClientProtocol?(v234, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
          (*(v233 + 8))(v429, v421);
          outlined destroy of ConversationService.EagerResult(v441, type metadata accessor for ConversationCommitResult);

          v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
        }

        else
        {
          v283 = Logger.logObject.getter();
          v284 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v283, v284))
          {
            v285 = swift_slowAlloc();
            v286 = swift_slowAlloc();
            v455[0] = v286;
            *v285 = 136315138;
            *(v285 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001DCA81580, v455);
            _os_log_impl(&dword_1DC659000, v283, v284, "[ConversationService]: %s", v285, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v286);
            MEMORY[0x1E12A2F50](v286, -1, -1);
            MEMORY[0x1E12A2F50](v285, -1, -1);
          }

          v287 = *(v0 + 1288);
          v423 = *(v0 + 960);
          v432 = *(v0 + 1032);
          v444 = *(v0 + 952);
          v288 = *(v0 + 944);
          v289 = *(v0 + 936);
          v290 = *(v0 + 384);
          v291 = *(v0 + 368);
          v292 = swift_getObjectType();
          (*(v291 + 32))(v287, 0xD00000000000002BLL, 0x80000001DCA81580, v292, v291);

          v48 = v290;

          v293 = *(v288 + 8);
          v293(v423, v289);
          outlined destroy of ConversationService.EagerResult(v432, type metadata accessor for ConversationCommitResult);
          v293(v444, v289);

          v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
        }
      }

      goto LABEL_16;
    }

    v448 = *(v0 + 1596);
    v131 = *(v0 + 1312);
    v132 = *(v0 + 952);
    v133 = *(v0 + 888);
    v134 = *(v0 + 880);
    v135 = *(v0 + 872);
    v136 = *(v0 + 840);
    v137 = *(v0 + 832);
    v426 = *(v0 + 1320);
    v436 = *(v0 + 824);
    v138 = *(v0 + 368);
    (*(*(v0 + 944) + 96))(v132, *(v0 + 936));
    (*(v134 + 32))(v133, v132, v135);
    v139 = swift_getObjectType();
    *(v0 + 1432) = v139;
    (*(v138 + 80))(v131, v426, v133, v139, v138);
    SiriXRedirectContext.reason.getter();
    if ((*(v137 + 88))(v136, v436) == v448)
    {
      v140 = *(v0 + 864);
      v141 = *(v0 + 856);
      v142 = *(v0 + 848);
      v143 = *(v0 + 840);
      (*(*(v0 + 832) + 96))(v143, *(v0 + 824));
      (*(v141 + 32))(v140, v143, v142);
      SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
      if (v144)
      {
        v363 = *(v0 + 1312);
        v369 = *(v0 + 1320);
        v417 = *(v0 + 1032);
        v411 = *(v0 + 960);
        v145 = *(v0 + 944);
        v401 = *(v0 + 936);
        v146 = *(v0 + 896);
        v147 = *(v0 + 888);
        v148 = *(v0 + 880);
        v149 = *(v0 + 872);
        v388 = *(v0 + 864);
        v150 = *(v0 + 856);
        v376 = *(v0 + 1288);
        v381 = *(v0 + 848);
        v437 = v139;
        v449 = *(v0 + 384);
        v151 = *(v0 + 368);

        (*(v148 + 16))(v146, v147, v149);
        (*(v148 + 56))(v146, 0, 1, v149);
        v48 = v449;
        (*(v151 + 88))(v363, v369, v146, v437, v151);

        outlined destroy of ReferenceResolutionClientProtocol?(v146, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
        (*(v150 + 8))(v388, v381);
        (*(v148 + 8))(v147, v149);
        (*(v145 + 8))(v411, v401);
        outlined destroy of ConversationService.EagerResult(v417, type metadata accessor for ConversationCommitResult);

        v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_16:
        v345 = v51;
        v66 = *(v0 + 384);
        v67 = *(**(v48 + 216) + 208);

        v67(0xD00000000000005BLL, 0x80000001DCA814E0, v345, v66);

        v68 = *(v0 + 8);

        return v68();
      }

      v253 = Logger.logObject.getter();
      v254 = static os_log_type_t.debug.getter();
      v255 = os_log_type_enabled(v253, v254);
      v256 = *(v0 + 864);
      v257 = *(v0 + 856);
      v258 = *(v0 + 848);
      if (v255)
      {
        v259 = swift_slowAlloc();
        *v259 = 0;
        _os_log_impl(&dword_1DC659000, v253, v254, "needsSiriXRedirect was invoked without a rewritten utterance. Attempting to restart execution from existing RC state.", v259, 2u);
        MEMORY[0x1E12A2F50](v259, -1, -1);
      }

      (*(v257 + 8))(v256, v258);
      v184 = *(v0 + 376);
      if (!v184)
      {
LABEL_67:

        v260 = Logger.logObject.getter();
        v261 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v260, v261))
        {
          v262 = *(v0 + 376);
          v263 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          v455[0] = v264;
          *v263 = 136315138;
          *(v0 + 312) = v262;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputCSgMd, &_s14SiriKitRuntime21ConversationUserInputCSgMR);
          v265 = String.init<A>(describing:)();
          v267 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v266, v455);

          *(v263 + 4) = v267;
          _os_log_impl(&dword_1DC659000, v260, v261, "[ConversationService] Conversation wanted to fall back to Siri X, but could not find a plugin to handle it. Will fall back to server. ConversationUserInput: %s", v263, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v264);
          MEMORY[0x1E12A2F50](v264, -1, -1);
          MEMORY[0x1E12A2F50](v263, -1, -1);
        }

        v268 = *(v0 + 376);
        v269 = *(v0 + 352);
        v430 = *(v269 + 24);
        v442 = *(v269 + 16);
        if (v268)
        {
          v270 = *(*(v268 + 56) + 16);
          v271 = *(v270 + 16);
          v272 = type metadata accessor for Siri_Nlu_External_UserParse();
          v273 = *(v272 - 8);
          if (v271)
          {
            (*(*(v272 - 8) + 16))(*(v0 + 920), v270 + ((*(*(v272 - 8) + 80) + 32) & ~*(*(v272 - 8) + 80)), v272);
            v274 = 0;
LABEL_80:
            v359 = *(v0 + 1312);
            v373 = *(v0 + 1288);
            v361 = *(v0 + 1208);
            v366 = *(v0 + 1320);
            v356 = *(v0 + 1200);
            v414 = *(v0 + 1032);
            v294 = *(v0 + 944);
            v399 = *(v0 + 936);
            v406 = *(v0 + 960);
            v295 = *(v0 + 920);
            v296 = *(v0 + 904);
            v297 = *(v0 + 880);
            v385 = *(v0 + 872);
            v393 = *(v0 + 888);
            v453 = *(v0 + 384);
            v299 = *(v0 + 360);
            v298 = *(v0 + 368);
            (*(v273 + 56))(v295, v274, 1, v272);
            v300 = *MEMORY[0x1E69D0780];
            v301 = type metadata accessor for ServerFallbackReason();
            v302 = *(v301 - 8);
            (*(v302 + 104))(v296, v300, v301);
            (*(v302 + 56))(v296, 0, 1, v301);
            v303 = v299;
            v48 = v453;
            ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v303, v298, v359, v366, v356, v361, v442, v430, 0, v295, v296);

            outlined destroy of ReferenceResolutionClientProtocol?(v296, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
            outlined destroy of ReferenceResolutionClientProtocol?(v295, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
            (*(v297 + 8))(v393, v385);
            (*(v294 + 8))(v406, v399);
            outlined destroy of ConversationService.EagerResult(v414, type metadata accessor for ConversationCommitResult);

            v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
            goto LABEL_16;
          }
        }

        else
        {
          v272 = type metadata accessor for Siri_Nlu_External_UserParse();
          v273 = *(v272 - 8);
        }

        v274 = 1;
        goto LABEL_80;
      }
    }

    else
    {
      (*(*(v0 + 832) + 8))(*(v0 + 840), *(v0 + 824));
      v184 = *(v0 + 376);
      if (!v184)
      {
        goto LABEL_67;
      }
    }

    v185 = v184[7];
    *(v0 + 1440) = v185;
    if (*(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo))
    {
      v371 = *(v0 + 1600);
      v186 = *(v0 + 904);
      v358 = *(v0 + 880);
      v360 = *(v0 + 872);
      v365 = *(v0 + 888);
      v187 = *(v0 + 816);
      v188 = *(v0 + 808);
      v189 = *(v0 + 800);
      v190 = *(v0 + 792);
      v353 = v190;
      v191 = *(v0 + 784);
      v346 = v191;
      v439 = *(v0 + 768);
      v451 = *(v0 + 776);
      v378 = *(v0 + 760);
      v383 = *(v0 + 752);
      v412 = *(v0 + 744);
      v419 = *(v0 + 736);
      v390 = *(v0 + 728);
      v397 = *(v0 + 720);
      v403 = *(v0 + 712);
      v428 = *(v0 + 384);
      v192 = *(v185 + 16);
      v350 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo);
      (*(v188 + 16))(v187, v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v189);
      outlined init with copy of ReferenceResolutionClientProtocol?(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, v190, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
      v193 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult + 8);
      v348 = *(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
      outlined init with copy of ReferenceResolutionClientProtocol?(v185 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, v186, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      v194 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
      (*(*(v194 - 8) + 56))(v191, 1, 1, v194);
      type metadata accessor for NLResponse(0);
      v195 = swift_allocObject();
      *(v0 + 1448) = v195;
      *(v195 + 16) = v192;
      (*(v188 + 32))(v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode, v187, v189);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v353, v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
      v196 = (v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_responseVariantResult);
      *v196 = v348;
      v196[1] = v193;
      *(v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_pommesInfo) = v350;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v186, v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v346, v195 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
      v197 = v184[3];
      v354 = v184[2];
      v198 = v184[6];
      outlined init with copy of ReferenceResolutionClientProtocol?(v184 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, v451, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      (*(v358 + 16))(v439, v365, v360);
      v199 = type metadata accessor for FlowRedirectContext();
      v200 = *(v199 - 8);
      (*(v200 + 104))(v439, v371, v199);
      (*(v200 + 56))(v439, 0, 1, v199);
      v201 = v198;

      static ExecutionLocation.unknown.getter();
      static ExecutionLocation.unknown.getter();
      type metadata accessor for ConversationUserInput(0);
      v202 = swift_allocObject();
      *(v0 + 1456) = v202;
      *(v202 + 2) = v354;
      *(v202 + 3) = v197;
      UUID.init()();
      v203 = UUID.uuidString.getter();
      v205 = v204;
      v206 = *(v397 + 8);
      *(v0 + 1464) = v206;
      *(v0 + 1472) = (v397 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v206(v390, v403);
      *(v202 + 4) = v203;
      *(v202 + 5) = v205;
      *(v202 + 6) = v198;
      *(v202 + 7) = v195;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v451, &v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision], &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
      *&v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForRecognizedUser] = 0;
      *&v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_userSpecificInfoForUserMeetingSessionThreshold] = 0;
      *&v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_executionOverrideContext] = 0;
      v207 = &v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_utterance];
      *v207 = 0;
      *(v207 + 1) = 0;
      v208 = *(v412 + 32);
      v208(&v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation], v378, v419);
      v208(&v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation], v383, v419);
      v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_remoteRequestWasMadeInSession] = 0;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v439, &v202[OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext], &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
      v209 = v428[6];
      __swift_project_boxed_opaque_existential_1(v428 + 2, v428[5]);
      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        v210 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14SiriKitRuntime24RemoteConversationClientC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v210 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 1480) = v210;
      v452 = *(v209 + 8) + **(v209 + 8);
      v211 = swift_task_alloc();
      *(v0 + 1488) = v211;
      *v211 = v0;
      v211[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
      v459 = v209;

      __asm { BRAA            X8, X16 }
    }

    v443 = v139;

    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 0;
      _os_log_impl(&dword_1DC659000, v275, v276, "Falling back to Siri X because Flow returned .unhandled(reason: .needsSiriXFallback) and PommesInfo is nil", v277, 2u);
      MEMORY[0x1E12A2F50](v277, -1, -1);
    }

    v372 = *(v0 + 1312);
    v379 = *(v0 + 1320);
    v392 = *(v0 + 1288);
    v422 = *(v0 + 960);
    v431 = *(v0 + 1032);
    v278 = *(v0 + 944);
    v279 = *(v0 + 896);
    v405 = *(v0 + 888);
    v413 = *(v0 + 936);
    v280 = *(v0 + 880);
    v281 = *(v0 + 872);
    v48 = *(v0 + 384);
    v282 = *(v0 + 368);

    (*(v280 + 56))(v279, 1, 1, v281);
    (*(v282 + 88))(v372, v379, v279, v443, v282);

    outlined destroy of ReferenceResolutionClientProtocol?(v279, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
    (*(v280 + 8))(v405, v281);
    (*(v278 + 8))(v422, v413);
    outlined destroy of ConversationService.EagerResult(v431, type metadata accessor for ConversationCommitResult);

    v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v52 = *(v0 + 1016);

    v54 = *v52;
    v53 = v52[1];
    v434 = v52[2];
    v446 = v52[3];

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v455[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, v455);
      _os_log_impl(&dword_1DC659000, v55, v56, "[ConversationService] Retriggering NL for request %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    v59 = *(v0 + 1288);
    v60 = *(v0 + 1208);
    v61 = *(v0 + 1200);
    v415 = *(v0 + 1032);
    v62 = *(v0 + 384);
    v63 = *(v0 + 368);
    v64 = swift_getObjectType();
    v65 = *(v63 + 136);
    v344 = v63;
    v48 = v62;
    v65(v54, v53, v434, v446, v61, v60, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0, v64, v344);

    outlined destroy of ConversationService.EagerResult(v415, type metadata accessor for ConversationCommitResult);

    v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_16;
  }

  v9 = *(v0 + 544);
  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 384);
  (*(v11 + 32))(v9, *(v0 + 1016), v12);
  v14 = *(**(v13 + 208) + 192);

  v14(v15);

  (*(v11 + 16))(v10, v9, v12);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 1344);
    v19 = *(v0 + 536);
    v20 = *(v0 + 528);
    v21 = *(v0 + 520);
    v22 = swift_slowAlloc();
    v445 = swift_slowAlloc();
    v455[0] = v445;
    *v22 = 136315394;
    v23 = *(v18 + 112);
    v24 = *(v18 + 120);

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v455);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, 255, MEMORY[0x1E69CFE08], MEMORY[0x1E69CFE18]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v20 + 8);
    v29(v19, v21);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v455);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v16, v17, "[ConversationService] Conversation %s wants to redirect to plugin action: %s)", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v445, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  else
  {
    v69 = *(v0 + 536);
    v70 = *(v0 + 528);
    v71 = *(v0 + 520);

    v29 = *(v70 + 8);
    v29(v69, v71);
  }

  *(v0 + 1504) = v29;
  v72 = *(v0 + 1336);
  v73 = PluginAction.flowHandlerId.getter();
  if (*(v72 + 16))
  {
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
    v77 = v76;

    v78 = *(v0 + 1336);
    if ((v77 & 1) != 0 && *(*(v78 + 56) + v75) == 1)
    {
      v79 = *(v0 + 1344);

      v455[0] = 0;
      v455[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v455[0] = 0xD00000000000001ALL;
      v455[1] = 0x80000001DCA81540;
      v80 = *(v79 + 112);
      v81 = *(v79 + 120);

      MEMORY[0x1E12A1580](v80, v81);

      MEMORY[0x1E12A1580](0x6F74206B63616220, 0xE900000000000020);
      v82 = PluginAction.flowHandlerId.getter();
      MEMORY[0x1E12A1580](v82);

      v84 = v455[0];
      v83 = v455[1];

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      v425 = v84;
      v435 = v83;
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v455[0] = v88;
        *v87 = 136315138;
        *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v83, v455);
        _os_log_impl(&dword_1DC659000, v85, v86, "[ConversationService] %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x1E12A2F50](v88, -1, -1);
        MEMORY[0x1E12A2F50](v87, -1, -1);
      }

      v409 = *(v0 + 1272);
      v395 = *(v0 + 1256);
      v375 = *(v0 + 1240);
      v368 = *(v0 + 1584);
      v357 = *(v0 + 1224);
      v355 = *(v0 + 1216);
      v89 = *(v0 + 1200);
      v347 = *(v0 + 1208);
      v349 = *(v0 + 1144);
      v387 = *(v0 + 1136);
      v351 = *(v0 + 1080);
      v362 = *(v0 + 1072);
      v352 = *(v0 + 1040);
      v90 = *(v0 + 728);
      v91 = *(v0 + 720);
      v92 = *(v0 + 712);
      v93 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v95;
      (*(v91 + 8))(v90, v92);
      v97 = MEMORY[0x1E12A1410](v94, v96);

      [v93 setAceId_];

      [v93 setErrorCode_];
      v98 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA81560);
      [v93 setReason_];

      v99 = v93;
      v100 = MEMORY[0x1E12A1410](v89, v347);
      [v99 setRefId_];

      v357(v349, 1, 1, v355);
      v375(v351, v368, v352);
      v395(v362, v351, v352);
      outlined init with copy of ReferenceResolutionClientProtocol?(v349, v387, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v101 = objc_allocWithZone(v409);
      v102 = &v101[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v102 = v89;
      *(v102 + 1) = v347;
      v103 = v99;
      v104 = &v101[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v104 = 0;
      *(v104 + 1) = 0;
      v105 = &v101[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v105 = 0;
      *(v105 + 1) = 0;
      v106 = &v101[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v106 = 0;
      *(v106 + 1) = 0;
      v107 = &v101[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v107 = 0;
      *(v107 + 1) = 0;
      v395(&v101[OBJC_IVAR___SKRExecutionOutput_executionSource], v362, v352);
      v447 = v101;
      outlined init with copy of ReferenceResolutionClientProtocol?(v387, &v101[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      objc_opt_self();
      v108 = swift_dynamicCastObjCClass();
      v416 = v99;
      if (!v108)
      {

        v243 = v99;
        v244 = Logger.logObject.getter();
        v245 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v244, v245))
        {
          v246 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v455[0] = v248;
          *v246 = 136315394;
          *(v246 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v455);
          *(v246 + 12) = 2112;
          *(v246 + 14) = v243;
          *v247 = v103;
          v249 = v243;
          _os_log_impl(&dword_1DC659000, v244, v245, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v246, 0x16u);
          outlined destroy of ReferenceResolutionClientProtocol?(v247, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v247, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v248);
          MEMORY[0x1E12A2F50](v248, -1, -1);
          MEMORY[0x1E12A2F50](v246, -1, -1);
        }

        v250 = off_1E8646000;
        *&v447[OBJC_IVAR___SKRExecutionOutput_command] = v103;
        *&v447[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
        v251 = v243;
        v252 = v447;
        goto LABEL_86;
      }

      v109 = v108;
      v110 = v99;

      v111 = v110;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v455[0] = v116;
        *v114 = 136315394;
        *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v455);
        *(v114 + 12) = 2112;
        *(v114 + 14) = v109;
        *v115 = v109;
        v117 = v111;
        _os_log_impl(&dword_1DC659000, v112, v113, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v114, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v115, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        MEMORY[0x1E12A2F50](v116, -1, -1);
        MEMORY[0x1E12A2F50](v114, -1, -1);
      }

      v118 = [v109 promptContextProto];
      v410 = v109;
      if (v118)
      {
        v119 = *(v0 + 1392);
        v120 = v118;
        v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;

        v456 = 0;
        memset(v455, 0, sizeof(v455));
        outlined copy of Data._Representation(v121, v123);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        Message.init(serializedData:extensions:partial:options:)();
        if (!v119)
        {
          v304 = *(v0 + 656);
          v305 = *(v0 + 648);
          v306 = *(v0 + 640);
          v307 = *(v0 + 632);
          v308 = *(v0 + 616);
          (*(v306 + 56))(v308, 0, 1, v307);
          (*(v306 + 32))(v304, v308, v307);
          (*(v306 + 16))(v305, v304, v307);
          v309 = Logger.logObject.getter();
          v310 = static os_log_type_t.debug.getter();
          v311 = os_log_type_enabled(v309, v310);
          v312 = *(v0 + 656);
          v313 = *(v0 + 648);
          v314 = *(v0 + 640);
          v315 = *(v0 + 632);
          if (v311)
          {
            v407 = *(v0 + 656);
            v316 = swift_slowAlloc();
            v400 = swift_slowAlloc();
            v455[0] = v400;
            *v316 = 136315394;
            *(v316 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v455);
            *(v316 + 12) = 2080;
            v317 = Message.textFormatString()();
            v318 = *(v314 + 8);
            v318(v313, v315);
            v319 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v317._countAndFlagsBits, v317._object, v455);

            *(v316 + 14) = v319;
            _os_log_impl(&dword_1DC659000, v309, v310, "ExecutionOutput: %s: NFCU has prompt context %s", v316, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v400, -1, -1);
            MEMORY[0x1E12A2F50](v316, -1, -1);

            outlined consume of Data._Representation(v121, v123);
            v318(v407, v315);
          }

          else
          {

            outlined consume of Data._Representation(v121, v123);
            v320 = *(v314 + 8);
            v320(v313, v315);
            v320(v312, v315);
          }

LABEL_85:
          v321 = *(v0 + 592);
          v322 = *(v0 + 584);
          v323 = *(v0 + 576);
          v324 = *(v0 + 568);
          v325 = *(v0 + 560);
          v326 = *(v0 + 552);
          v327 = type metadata accessor for Parse.DirectInvocation();
          (*(*(v327 - 8) + 56))(v321, 1, 1, v327);
          v328 = type metadata accessor for PommesContext();
          (*(*(v328 - 8) + 56))(v322, 1, 1, v328);
          (*(v325 + 104))(v324, *MEMORY[0x1E69CFF08], v326);
          v329 = type metadata accessor for ExecutionContextUpdate(0);
          v330 = objc_allocWithZone(v329);
          outlined init with copy of ReferenceResolutionClientProtocol?(v322, v323, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v323, v410);
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v410;
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v321, &v330[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v330[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v323, &v330[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*(v325 + 16))(&v330[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v324, v326);
          v331 = &v330[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v331 = 0;
          v331[1] = 0;
          v330[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          *(v0 + 176) = v330;
          *(v0 + 184) = v329;
          v250 = off_1E8646000;
          v332 = objc_msgSendSuper2((v0 + 176), sel_init);
          (*(v325 + 8))(v324, v326);
          outlined destroy of ReferenceResolutionClientProtocol?(v322, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v321, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v323, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v252 = v447;
          *&v447[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v332;
          *&v447[OBJC_IVAR___SKRExecutionOutput_command] = 0;
LABEL_86:
          v333 = *(v0 + 1296);
          v380 = *(v0 + 1288);
          v334 = *(v0 + 1272);
          v374 = *(v0 + 1144);
          v335 = *(v0 + 1136);
          v367 = *(v0 + 1080);
          v336 = *(v0 + 1072);
          v337 = *(v0 + 1040);
          v408 = *(v0 + 1032);
          v338 = *(v0 + 528);
          v386 = *(v0 + 520);
          v394 = *(v0 + 544);
          v454 = *(v0 + 384);
          v339 = *(v0 + 368);
          *(v0 + 160) = v252;
          *(v0 + 168) = v334;
          v340 = objc_msgSendSuper2((v0 + 160), v250[390]);
          outlined destroy of ReferenceResolutionClientProtocol?(v335, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v333(v336, v337);

          v333(v367, v337);
          outlined destroy of ReferenceResolutionClientProtocol?(v374, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v341 = swift_getObjectType();
          v342 = *(v339 + 32);
          v343 = v339;
          v48 = v454;
          v342(v340, v425, v435, v341, v343);

          (*(v338 + 8))(v394, v386);
          outlined destroy of ConversationService.EagerResult(v408, type metadata accessor for ConversationCommitResult);

          v51 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
          goto LABEL_16;
        }

        v124 = *(v0 + 640);
        v125 = *(v0 + 632);
        v126 = *(v0 + 616);

        outlined consume of Data._Representation(v121, v123);
        (*(v124 + 56))(v126, 1, 1, v125);
        outlined destroy of ReferenceResolutionClientProtocol?(v126, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      }

      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v455[0] = v130;
        *v129 = 136315138;
        *(v129 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v455);
        _os_log_impl(&dword_1DC659000, v127, v128, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v130);
        MEMORY[0x1E12A2F50](v130, -1, -1);
        MEMORY[0x1E12A2F50](v129, -1, -1);
      }

      goto LABEL_85;
    }
  }

  else
  {

    v78 = *(v0 + 1336);
  }

  v152 = *(v0 + 1344);
  v153 = *(v0 + 384);
  v154 = *(v152 + 112);
  v155 = *(v152 + 120);

  v156 = PluginAction.preventCircularRedirect.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v455[0] = v78;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v156 & 1, v154, v155, isUniquelyReferenced_nonNull_native);

  *(v0 + 1512) = v455[0];
  v158 = v153[5];
  v159 = v153[6];
  __swift_project_boxed_opaque_existential_1(v153 + 2, v158);
  v450 = (*(v159 + 24) + **(v159 + 24));
  v160 = swift_task_alloc();
  *(v0 + 1520) = v160;
  *v160 = v0;
  v160[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  v161 = *(v0 + 360);
  v162 = *(v0 + 368);
  v163 = *(v0 + 344);
  v164 = *(v0 + 352);
  v165 = *(v0 + 544);

  return v450(v165, v163, v164, v161, v162, v158, v159);
}

{
  v45 = v0;
  if (*(v0 + 1604) == 6)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v43 = v4;
      *v3 = 136315138;
      v44 = 6;
      v5 = SelfReflectionAgentDecision.description.getter();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v43);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_1DC659000, v1, v2, "[ConversationService] Falling back to IntelligenceFlow because Self Reflection's decision %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x1E12A2F50](v4, -1, -1);
      MEMORY[0x1E12A2F50](v3, -1, -1);
    }

    v8 = *(v0 + 1416);
    v9 = *(v0 + 1288);
    v10 = *(v0 + 1032);
    v11 = *(v0 + 976);
    v12 = *(v0 + 384);
    v13 = *(v0 + 368);
    v14 = type metadata accessor for PrescribedTool();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v13 + 64))(v11, v8, v13);

    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    outlined destroy of ConversationService.EagerResult(v10, type metadata accessor for ConversationCommitResult);

    v15 = *(v12 + 216);
    v16 = *(v0 + 384);
    v17 = *(*v15 + 208);

    v17(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 1408);
    v21 = *(v0 + 1400);
    v22 = *(v0 + 592);
    v39 = v22;
    v23 = *(v0 + 584);
    v24 = *(v0 + 576);
    v25 = *(v0 + 568);
    v26 = *(v0 + 560);
    v27 = *(v0 + 552);
    v41 = *(v0 + 384);
    v28 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    v29 = type metadata accessor for PommesContext();
    v30 = v23;
    v40 = v23;
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
    (*(v26 + 104))(v25, *MEMORY[0x1E69CFF08], v27);
    v31 = type metadata accessor for ExecutionContextUpdate(0);
    v32 = objc_allocWithZone(v31);
    outlined init with copy of ReferenceResolutionClientProtocol?(v30, v24, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v24, 0);
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v21;
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = v20;
    outlined init with copy of ReferenceResolutionClientProtocol?(v39, &v32[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v32[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v24, &v32[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v26 + 16))(&v32[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v25, v27);
    v33 = &v32[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v33 = 0;
    v33[1] = 0;
    v32[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    *(v0 + 256) = v32;
    *(v0 + 264) = v31;
    *(v0 + 1544) = objc_msgSendSuper2((v0 + 256), sel_init);
    (*(v26 + 8))(v25, v27);
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v34 = *(**(v41 + 208) + 184);

    v34(v21, v20);

    v35 = *(v41 + 40);
    v36 = *(v41 + 48);
    __swift_project_boxed_opaque_existential_1((v41 + 16), v35);
    v42 = (*(v36 + 32) + **(v36 + 32));
    v37 = swift_task_alloc();
    *(v0 + 1552) = v37;
    *v37 = v0;
    v37[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v38 = *(v0 + 1344);

    return v42(v38, v35, v36);
  }
}

{
  v1 = *(*v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v34 = v0;
  v32 = *(v0 + 1544);
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1584);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1272);
  v4 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v29 = *(v0 + 1200);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1040);
  (*(v0 + 1224))(v4, 1, 1, *(v0 + 1216));
  v2(v5, v3, v7);
  v1(v6, v5, v7);
  outlined init with copy of ReferenceResolutionClientProtocol?(v4, v28, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v8 = objc_allocWithZone(v31);
  v9 = &v8[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v9 = v29;
  *(v9 + 1) = v30;
  v10 = &v8[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v8[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v8[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v8[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v13 = 0;
  *(v13 + 1) = 0;
  v1(&v8[OBJC_IVAR___SKRExecutionOutput_executionSource], v6, v7);
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v8[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v33);
    *(v16 + 12) = 2112;
    *(v16 + 14) = 0;
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v14, v15, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v16, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E12A2F50](v18, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v19 = *(v0 + 1296);
  v20 = *(v0 + 1272);
  v21 = *(v0 + 1128);
  v22 = *(v0 + 1120);
  v23 = *(v0 + 1064);
  v24 = *(v0 + 1056);
  v25 = *(v0 + 1040);
  *&v8[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v8[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v32;
  *(v0 + 272) = v8;
  *(v0 + 280) = v20;
  *(v0 + 1560) = objc_msgSendSuper2((v0 + 272), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v19(v24, v25);
  v19(v23, v25);
  outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v26 = swift_task_alloc();
  *(v0 + 1568) = v26;
  *v26 = v0;
  v26[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

  return RemoteConversationClient.isEmpty()();
}

{
  v1 = *(v0 + 384);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 1192) = v4;
  *v4 = v0;
  v4[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

  return v6(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = *(v2 + 1344);
    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v5 = *(v2 + 1344);

    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), *(v0 + 1344), 0);
}

{
  v1 = *(v0 + 1344);
  v10 = *(v0 + 360);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "commit(bridge:)", 15, 2);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_allocObject();
  *(v0 + 1376) = v4;
  *(v4 + 16) = v10;
  v5 = *(v3 + 8);
  swift_unknownObjectRetain();
  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 1384) = v6;
  *v6 = v0;
  v6[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  v7 = *(v0 + 1024);
  v8 = *(v0 + 1008);

  return v11(v7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.commit(bridge:), v4, v8, v2, v3);
}

{
  v1 = *(*v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v53 = v0;
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  swift_beginAccess();
  *(v7 + 280) = 0;

  v9 = *v8;
  *(v0 + 1200) = *v8;
  v10 = v8[1];
  *(v0 + 1208) = v10;
  v11 = type metadata accessor for FlowOutputMessage.InAppResponse();
  *(v0 + 1216) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  *(v0 + 1224) = v13;
  *(v0 + 1232) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v1, 1, 1, v11);
  *(v0 + 1584) = *MEMORY[0x1E69D0678];
  v14 = *(v5 + 104);
  *(v0 + 1240) = v14;
  *(v0 + 1248) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v14(v3);
  v15 = *(v5 + 16);
  *(v0 + 1256) = v15;
  *(v0 + 1264) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v4, v3, v6);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1, v2, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v16 = type metadata accessor for ExecutionOutput(0);
  *(v0 + 1272) = v16;
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v18 = v9;
  *(v18 + 1) = v10;
  v19 = &v17[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v17[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v17[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v22 = 0;
  *(v22 + 1) = 0;
  v15(&v17[OBJC_IVAR___SKRExecutionOutput_executionSource], v4, v6);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, &v17[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v23 = one-time initialization token for executor;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  *(v0 + 1280) = __swift_project_value_buffer(v24, static Logger.executor);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v52);
    *(v27 + 12) = 2112;
    *(v27 + 14) = 0;
    *v28 = 0;
    _os_log_impl(&dword_1DC659000, v25, v26, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v27, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1E12A2F50](v29, -1, -1);
    MEMORY[0x1E12A2F50](v27, -1, -1);
  }

  v30 = *(v0 + 1176);
  v31 = *(v0 + 1168);
  v32 = *(v0 + 1112);
  v33 = *(v0 + 1104);
  v34 = *(v0 + 1048);
  v35 = *(v0 + 1040);
  v36 = *(v0 + 344);
  *&v17[OBJC_IVAR___SKRExecutionOutput_command] = 0;
  *&v17[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
  *(v0 + 112) = v17;
  *(v0 + 120) = v16;
  *(v0 + 1288) = objc_msgSendSuper2((v0 + 112), sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v37 = *(v34 + 8);
  *(v0 + 1296) = v37;
  *(v0 + 1304) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v33, v35);
  v37(v32, v35);
  outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v38 = v36 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  *(v0 + 1312) = *(v36 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  *(v0 + 1320) = *(v38 + 8);
  v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v40 = MEMORY[0x1E69CFB58];
  *(v0 + 1588) = *MEMORY[0x1E69CFB50];
  *(v0 + 1592) = *v40;
  *(v0 + 1596) = *MEMORY[0x1E69CFA20];
  *(v0 + 1600) = *MEMORY[0x1E69CFB30];
  v41 = *(v0 + 1605);
  v42 = *(v0 + 336);
  *(v0 + 1344) = v42;
  *(v0 + 1336) = v39;
  *(v0 + 1328) = 1;
  v43 = *(v0 + 384);
  swift_beginAccess();
  v44 = *(v43 + 104);
  if ((v44 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v45 = __CocoaSet.count.getter();

      if (v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v46 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v46 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v46;
    }
  }

  else if (*(v44 + 16))
  {
    v47 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v47 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v47 + 104) = v52;
  }

  specialized Set._Variant.insert(_:)(&v52, v42);
  swift_endAccess();

  if (v41)
  {
    v49 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
    v50 = v42;
  }

  else
  {
    v50 = *(v0 + 1344);
    v49 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v49, v50, 0);
}

{
  v1 = *(v0 + 1344);
  v7 = *(v0 + 360);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "prepare(bridge:)", 16, 2);
  v2 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v3 = swift_allocObject();
  *(v0 + 1352) = v3;
  *(v3 + 16) = v7;
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 1360) = v5;
  *v5 = v0;
  v5[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

  return v8();
}

{
  v1 = *(v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v1 = v0[171];
  v2 = v0[161];
  v11 = v0[48];
  v3 = v0[46];

  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(32);

  v0[40] = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v6);

  (*(v3 + 32))(v2, 0xD00000000000001ELL, 0x80000001DCA81600, ObjectType, v3);

  v7 = v0[48];
  v8 = *(**(v11 + 216) + 208);

  v8(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v7);

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 1184);

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v34 = v0;
  v1 = *(v0 + 1392);

  *(v0 + 288) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 992) + 8))(*(v0 + 1000), *(v0 + 984));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Conversation was cancelled during commit. Will not call bridge.close()", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = *(v0 + 1392);
    v7 = *(v0 + 384);

    v8 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
  }

  else
  {
    v9 = *(v0 + 1392);
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 1392);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      *(v0 + 304) = v13;
      v16 = v13;
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v32);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v11, v12, "Error commiting conversation: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    v20 = *(v0 + 1392);
    v21 = *(v0 + 1288);
    v7 = *(v0 + 384);
    v22 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v32 = 0xD00000000000001FLL;
    v33 = 0x80000001DCA814C0;
    *(v0 + 296) = v20;
    v23 = v20;
    v24 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v24);

    (*(v22 + 32))(v21, v32, v33, ObjectType, v22);

    v8 = &async function pointer to partial apply for closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  v30 = v8;

  v25 = *(v7 + 216);
  v26 = *(v0 + 384);
  v27 = *(*v25 + 208);

  v27(0xD00000000000005BLL, 0x80000001DCA814E0, v30, v26);

  v28 = *(v0 + 8);

  return v28();
}

{
  v2 = *v1;
  *(*v1 + 1496) = v0;

  v3 = *(v2 + 1184);

  if (v0)
  {
    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v4 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v232 = v0;
  v1 = *(v0 + 680);
  if ((*(*(v0 + 696) + 48))(v1, 1, *(v0 + 688)) == 1)
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s14SiriKitRuntime22DecisionEngineResponseVSgMd, &_s14SiriKitRuntime22DecisionEngineResponseVSgMR);
    goto LABEL_24;
  }

  v2 = *(v0 + 704);
  outlined init with take of DecisionEngineResponse(v1, v2, type metadata accessor for DecisionEngineResponse);
  v3 = *v2;
  if (!*v2)
  {
    outlined destroy of ConversationService.EagerResult(*(v0 + 704), type metadata accessor for DecisionEngineResponse);

LABEL_24:

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = *(v0 + 376);
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v230[0] = v101;
      *v100 = 136315138;
      *(v0 + 312) = v99;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputCSgMd, &_s14SiriKitRuntime21ConversationUserInputCSgMR);
      v102 = String.init<A>(describing:)();
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v230);

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1DC659000, v97, v98, "[ConversationService] Conversation wanted to fall back to Siri X, but could not find a plugin to handle it. Will fall back to server. ConversationUserInput: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x1E12A2F50](v101, -1, -1);
      MEMORY[0x1E12A2F50](v100, -1, -1);
    }

    v105 = *(v0 + 376);
    v106 = *(v0 + 352);
    v228 = *(v106 + 24);
    v229 = *(v106 + 16);
    if (v105)
    {
      v107 = *(*(v105 + 56) + 16);
      v108 = *(v107 + 16);
      v109 = type metadata accessor for Siri_Nlu_External_UserParse();
      v110 = *(v109 - 8);
      if (v108)
      {
        (*(*(v109 - 8) + 16))(*(v0 + 920), v107 + ((*(*(v109 - 8) + 80) + 32) & ~*(*(v109 - 8) + 80)), v109);
        v111 = 0;
LABEL_31:
        v193 = *(v0 + 1312);
        v202 = *(v0 + 1288);
        v195 = *(v0 + 1208);
        v199 = *(v0 + 1320);
        v223 = *(v0 + 1032);
        v112 = *(v0 + 944);
        v214 = *(v0 + 936);
        v220 = *(v0 + 960);
        v113 = *(v0 + 920);
        v114 = *(v0 + 904);
        v115 = *(v0 + 880);
        v207 = *(v0 + 872);
        v210 = *(v0 + 888);
        v189 = *(v0 + 384);
        v191 = *(v0 + 1200);
        v117 = *(v0 + 360);
        v116 = *(v0 + 368);
        (*(v110 + 56))(v113, v111, 1, v109);
        v118 = *MEMORY[0x1E69D0780];
        v119 = type metadata accessor for ServerFallbackReason();
        v120 = *(v119 - 8);
        (*(v120 + 104))(v114, v118, v119);
        (*(v120 + 56))(v114, 0, 1, v119);
        ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v117, v116, v193, v199, v191, v195, v229, v228, 0, v113, v114);

        outlined destroy of ReferenceResolutionClientProtocol?(v114, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v113, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        (*(v115 + 8))(v210, v207);
        (*(v112 + 8))(v220, v214);
        outlined destroy of ConversationService.EagerResult(v223, type metadata accessor for ConversationCommitResult);

        v121 = v189 + 216;
        v122 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_32:
        v177 = v122;
        v123 = *(v0 + 384);
        v124 = *(**v121 + 208);

        v124(0xD00000000000005BLL, 0x80000001DCA814E0, v177, v123);

        v125 = *(v0 + 8);

        return v125();
      }
    }

    else
    {
      v109 = type metadata accessor for Siri_Nlu_External_UserParse();
      v110 = *(v109 - 8);
    }

    v111 = 1;
    goto LABEL_31;
  }

  swift_retain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v230[0] = v8;
    *v7 = 136315394;
    v9 = *(v6 + 112);
    v10 = *(v6 + 120);

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v230);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = *(v3 + 112);
    v13 = *(v3 + 120);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v230);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1DC659000, v4, v5, "[ConversationService] Attempts to fall back to Siri X because .unhandled(reason: .needsSiriXFallback) from: %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v15 = *(v0 + 1336);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 112), *(v3 + 120));
    v15 = *(v0 + 1336);
    if ((v17 & 1) != 0 && *(*(v15 + 56) + v16) == 1)
    {
      v18 = *(v0 + 1344);

      v230[0] = 0;
      v230[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v230[0] = 0xD00000000000001ALL;
      v230[1] = 0x80000001DCA81540;
      v19 = *(v18 + 112);
      v20 = *(v18 + 120);

      MEMORY[0x1E12A1580](v19, v20);

      MEMORY[0x1E12A1580](0x6F74206B63616220, 0xE900000000000020);
      v21 = *(v3 + 112);
      v22 = *(v3 + 120);

      MEMORY[0x1E12A1580](v21, v22);

      v24 = v230[0];
      v23 = v230[1];

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      v224 = v24;
      v226 = v23;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v230[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v230);
        _os_log_impl(&dword_1DC659000, v25, v26, "[ConversationService] %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      v29 = *(v0 + 1464);
      v217 = *(v0 + 1272);
      v209 = *(v0 + 1256);
      v201 = *(v0 + 1240);
      v197 = *(v0 + 1584);
      v190 = *(v0 + 1224);
      v188 = *(v0 + 1216);
      v30 = *(v0 + 1200);
      v182 = *(v0 + 1208);
      v184 = *(v0 + 1160);
      v206 = *(v0 + 1152);
      v185 = *(v0 + 1096);
      v194 = *(v0 + 1088);
      v186 = *(v0 + 1040);
      v31 = *(v0 + 728);
      v32 = *(v0 + 712);
      v33 = [objc_allocWithZone(MEMORY[0x1E69C7778]) init];
      UUID.init()();
      v34 = UUID.uuidString.getter();
      v36 = v35;
      v29(v31, v32);
      v37 = MEMORY[0x1E12A1410](v34, v36);

      [v33 setAceId_];

      [v33 setErrorCode_];
      v38 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA81560);
      [v33 setReason_];

      v39 = v33;
      v40 = MEMORY[0x1E12A1410](v30, v182);
      [v39 setRefId_];

      v190(v184, 1, 1, v188);
      v201(v185, v197, v186);
      v209(v194, v185, v186);
      outlined init with copy of ReferenceResolutionClientProtocol?(v184, v206, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v41 = objc_allocWithZone(v217);
      v42 = &v41[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
      *v42 = v30;
      *(v42 + 1) = v182;
      v43 = v39;
      v44 = &v41[OBJC_IVAR___SKRExecutionOutput_fullPrint];
      *v44 = 0;
      *(v44 + 1) = 0;
      v45 = &v41[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
      *v45 = 0;
      *(v45 + 1) = 0;
      v46 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
      *v46 = 0;
      *(v46 + 1) = 0;
      v47 = &v41[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
      *v47 = 0;
      *(v47 + 1) = 0;
      v209(&v41[OBJC_IVAR___SKRExecutionOutput_executionSource], v194, v186);
      outlined init with copy of ReferenceResolutionClientProtocol?(v206, &v41[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      v221 = v39;
      if (!v48)
      {

        v144 = v39;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v149 = v41;
          v150 = swift_slowAlloc();
          v230[0] = v150;
          *v147 = 136315394;
          *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v230);
          *(v147 + 12) = 2112;
          *(v147 + 14) = v144;
          *v148 = v43;
          v151 = v144;
          _os_log_impl(&dword_1DC659000, v145, v146, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v147, 0x16u);
          outlined destroy of ReferenceResolutionClientProtocol?(v148, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1E12A2F50](v148, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v150);
          v152 = v150;
          v41 = v149;
          MEMORY[0x1E12A2F50](v152, -1, -1);
          MEMORY[0x1E12A2F50](v147, -1, -1);
        }

        *&v41[OBJC_IVAR___SKRExecutionOutput_command] = v43;
        *&v41[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
        v153 = v144;
        goto LABEL_54;
      }

      v49 = v48;
      v50 = v39;

      v51 = v50;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();

      v178 = v41;
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v230[0] = v56;
        *v54 = 136315394;
        *(v54 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v230);
        *(v54 + 12) = 2112;
        *(v54 + 14) = v49;
        *v55 = v49;
        v57 = v51;
        _os_log_impl(&dword_1DC659000, v52, v53, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v54, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v55, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x1E12A2F50](v56, -1, -1);
        MEMORY[0x1E12A2F50](v54, -1, -1);
      }

      v58 = [v49 promptContextProto];
      v218 = v49;
      if (v58)
      {
        v59 = *(v0 + 1496);
        v60 = v58;
        v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v231 = 0;
        memset(v230, 0, sizeof(v230));
        outlined copy of Data._Representation(v61, v63);
        BinaryDecodingOptions.init()();
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, 255, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
        Message.init(serializedData:extensions:partial:options:)();
        if (!v59)
        {
          v161 = *(v0 + 672);
          v162 = *(v0 + 664);
          v163 = *(v0 + 640);
          v164 = *(v0 + 632);
          v165 = *(v0 + 624);
          (*(v163 + 56))(v165, 0, 1, v164);
          (*(v163 + 32))(v161, v165, v164);
          (*(v163 + 16))(v162, v161, v164);
          v166 = Logger.logObject.getter();
          v167 = static os_log_type_t.debug.getter();
          v168 = os_log_type_enabled(v166, v167);
          v216 = *(v0 + 672);
          v169 = *(v0 + 664);
          v170 = *(v0 + 640);
          v171 = *(v0 + 632);
          if (v168)
          {
            v205 = v167;
            v172 = swift_slowAlloc();
            v212 = swift_slowAlloc();
            v230[0] = v212;
            *v172 = 136315394;
            *(v172 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v230);
            *(v172 + 12) = 2080;
            v173 = Message.textFormatString()();
            v174 = *(v170 + 8);
            v174(v169, v171);
            v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v173._countAndFlagsBits, v173._object, v230);

            *(v172 + 14) = v175;
            _os_log_impl(&dword_1DC659000, v166, v205, "ExecutionOutput: %s: NFCU has prompt context %s", v172, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v212, -1, -1);
            MEMORY[0x1E12A2F50](v172, -1, -1);

            outlined consume of Data._Representation(v61, v63);
            v174(v216, v171);
          }

          else
          {

            outlined consume of Data._Representation(v61, v63);
            v176 = *(v170 + 8);
            v176(v169, v171);
            v176(v216, v171);
          }

LABEL_20:
          v71 = *(v0 + 592);
          v72 = *(v0 + 584);
          v73 = *(v0 + 576);
          v74 = *(v0 + 568);
          v75 = *(v0 + 560);
          v76 = *(v0 + 552);
          v77 = type metadata accessor for Parse.DirectInvocation();
          (*(*(v77 - 8) + 56))(v71, 1, 1, v77);
          v78 = type metadata accessor for PommesContext();
          (*(*(v78 - 8) + 56))(v72, 1, 1, v78);
          (*(v75 + 104))(v74, *MEMORY[0x1E69CFF08], v76);
          v79 = type metadata accessor for ExecutionContextUpdate(0);
          v80 = objc_allocWithZone(v79);
          outlined init with copy of ReferenceResolutionClientProtocol?(v72, v73, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v73, v218);
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v218;
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v71, &v80[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v80[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v73, &v80[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*(v75 + 16))(&v80[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v74, v76);
          v81 = &v80[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v81 = 0;
          v81[1] = 0;
          v80[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          *(v0 + 240) = v80;
          *(v0 + 248) = v79;
          v82 = objc_msgSendSuper2((v0 + 240), sel_init);
          (*(v75 + 8))(v74, v76);
          outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v41 = v178;
          *&v178[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v82;
          *&v178[OBJC_IVAR___SKRExecutionOutput_command] = 0;
LABEL_54:
          v181 = *(v0 + 1432);
          v154 = *(v0 + 1296);
          v183 = *(v0 + 1288);
          v155 = *(v0 + 1272);
          v180 = *(v0 + 1160);
          v156 = *(v0 + 1152);
          v179 = *(v0 + 1096);
          v157 = *(v0 + 1088);
          v158 = *(v0 + 1040);
          v203 = *(v0 + 944);
          v204 = *(v0 + 936);
          v208 = *(v0 + 960);
          v192 = *(v0 + 880);
          v196 = *(v0 + 872);
          v200 = *(v0 + 888);
          v187 = *(v0 + 704);
          v211 = *(v0 + 384);
          v215 = *(v0 + 1032);
          v159 = *(v0 + 368);
          *(v0 + 224) = v41;
          *(v0 + 232) = v155;
          v160 = objc_msgSendSuper2((v0 + 224), sel_init);
          outlined destroy of ReferenceResolutionClientProtocol?(v156, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          v154(v157, v158);

          v154(v179, v158);
          outlined destroy of ReferenceResolutionClientProtocol?(v180, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
          (*(v159 + 32))(v160, v224, v226, v181, v159);

          outlined destroy of ConversationService.EagerResult(v187, type metadata accessor for DecisionEngineResponse);
          (*(v192 + 8))(v200, v196);
          (*(v203 + 8))(v208, v204);
          outlined destroy of ConversationService.EagerResult(v215, type metadata accessor for ConversationCommitResult);

          v121 = v211 + 216;
          v122 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
          goto LABEL_32;
        }

        v64 = *(v0 + 640);
        v65 = *(v0 + 632);
        v66 = *(v0 + 624);

        outlined consume of Data._Representation(v61, v63);
        (*(v64 + 56))(v66, 1, 1, v65);
        outlined destroy of ReferenceResolutionClientProtocol?(v66, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v230[0] = v70;
        *v69 = 136315138;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v230);
        _os_log_impl(&dword_1DC659000, v67, v68, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1E12A2F50](v70, -1, -1);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      goto LABEL_20;
    }
  }

  v83 = *(v0 + 1344);
  v84 = *(v83 + 112);
  v85 = *(v83 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v230[0] = v15;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v84, v85, isUniquelyReferenced_nonNull_native);

  v227 = v230[0];

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();

  v89 = os_log_type_enabled(v87, v88);
  v90 = *(v0 + 1032);
  v91 = *(v0 + 960);
  v92 = *(v0 + 944);
  v222 = *(v0 + 888);
  v225 = *(v0 + 936);
  v93 = *(v0 + 880);
  v219 = *(v0 + 872);
  v213 = *(v0 + 704);
  if (v89)
  {
    v94 = swift_slowAlloc();
    v198 = v91;
    v95 = swift_slowAlloc();
    v230[0] = v95;
    *v94 = 136315138;
    *(v0 + 208) = 0;
    *(v0 + 216) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    strcpy((v0 + 192), "FlowExtension(");
    *(v0 + 207) = -18;
    MEMORY[0x1E12A1580](*(v3 + 112), *(v3 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);

    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 192), *(v0 + 200), v230);

    *(v94 + 4) = v96;
    _os_log_impl(&dword_1DC659000, v87, v88, "[ConversationService] Falling back to Siri X because Flow returned .unhandled(reason: .needsSiriXFallback) Conversation: %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x1E12A2F50](v95, -1, -1);
    MEMORY[0x1E12A2F50](v94, -1, -1);

    outlined destroy of ConversationService.EagerResult(v213, type metadata accessor for DecisionEngineResponse);
    (*(v93 + 8))(v222, v219);
    (*(v92 + 8))(v198, v225);
  }

  else
  {

    outlined destroy of ConversationService.EagerResult(v213, type metadata accessor for DecisionEngineResponse);
    (*(v93 + 8))(v222, v219);
    (*(v92 + 8))(v91, v225);
  }

  outlined destroy of ConversationService.EagerResult(v90, type metadata accessor for ConversationCommitResult);
  v127 = *(v0 + 1328) + 1;
  if (*(v0 + 1328) == 10)
  {

    v230[0] = 0;
    v230[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1E12A1580](0xD000000000000030, 0x80000001DCA81620);
    *(v0 + 328) = 10;
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v128);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA81660);
    v130 = v230[0];
    v129 = v230[1];

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v230[0] = v134;
      *v133 = 136315138;
      *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v129, v230);
      _os_log_impl(&dword_1DC659000, v131, v132, "[ConversationService] %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      MEMORY[0x1E12A2F50](v134, -1, -1);
      MEMORY[0x1E12A2F50](v133, -1, -1);
    }

    v135 = *(v0 + 1288);
    v136 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    (*(v136 + 32))(v135, v130, v129, ObjectType, v136);

    v121 = *(v0 + 384) + 216;
    v122 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_32;
  }

  *(v0 + 1344) = v3;
  *(v0 + 1336) = v227;
  *(v0 + 1328) = v127;
  v138 = *(v0 + 384);
  swift_beginAccess();
  v139 = *(v138 + 104);
  if ((v139 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v140 = __CocoaSet.count.getter();

      if (v140)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v141 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v141 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v141;
    }
  }

  else if (*(v139 + 16))
  {
    v142 = *(v0 + 384);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v230[0] = *(v142 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(v143);
    *(v142 + 104) = v230[0];
  }

  specialized Set._Variant.insert(_:)(v230, v3);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v3, 0);
}

{
  v81 = v0;
  v1 = *(v0 + 1528);
  if (!v1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v14, v15, "[ConversationService] Conversation wanted to redirect via a PluginAction, but could not find a plugin to handle it. Will fall back to server.", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v18 = *(v0 + 456);
    v17 = *(v0 + 464);
    v19 = *(v0 + 448);
    v20 = *(v0 + 352);

    v77 = *(v20 + 24);
    v78 = *(v20 + 16);
    PluginAction.input.getter();
    Input.parse.getter();
    if ((*(v18 + 88))(v17, v19) == *MEMORY[0x1E69D0168])
    {
      v21 = (v0 + 488);
      v22 = (v0 + 480);
      v24 = *(v0 + 480);
      v23 = *(v0 + 488);
      v25 = (v0 + 472);
      v27 = *(v0 + 464);
      v26 = *(v0 + 472);
      (*(*(v0 + 456) + 96))(v27, *(v0 + 448));
      (*(v24 + 32))(v23, v27, v26);
      USOParse.userParse.getter();
      v28 = 0;
    }

    else
    {
      v21 = (v0 + 464);
      v22 = (v0 + 456);
      v25 = (v0 + 448);
      v28 = 1;
    }

    v47 = *v21;
    v48 = *v25;
    v49 = *v22;
    v75 = *(v0 + 1504);
    v68 = *(v0 + 1312);
    v71 = *(v0 + 1288);
    v69 = *(v0 + 1208);
    v70 = *(v0 + 1320);
    v67 = *(v0 + 1200);
    v50 = *(v0 + 912);
    v51 = *(v0 + 904);
    v73 = *(v0 + 544);
    v74 = *(v0 + 1032);
    v53 = *(v0 + 504);
    v52 = *(v0 + 512);
    v54 = *(v0 + 496);
    v41 = *(v0 + 384);
    v56 = *(v0 + 360);
    v55 = *(v0 + 368);
    v72 = *(v0 + 520);
    (*(v49 + 8))(v47, v48);
    v57 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v57 - 8) + 56))(v50, v28, 1, v57);
    (*(v53 + 8))(v52, v54);
    v58 = *MEMORY[0x1E69D0780];
    v59 = type metadata accessor for ServerFallbackReason();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v51, v58, v59);
    (*(v60 + 56))(v51, 0, 1, v59);
    ConversationService.maybeDoServerFallback(bridge:forResultCandidateId:executionRequestId:rootRequestId:isDomainDirected:topNlParse:serverFallbackReason:)(v56, v55, v68, v70, v67, v69, v78, v77, 0, v50, v51);

    outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v50, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    v75(v73, v72);
    outlined destroy of ConversationService.EagerResult(v74, type metadata accessor for ConversationCommitResult);

    v42 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
    goto LABEL_19;
  }

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 544);
  v8 = *(v0 + 520);
  if (v4)
  {
    v9 = swift_slowAlloc();
    v76 = v5;
    v10 = swift_slowAlloc();
    v79 = v10;
    *v9 = 136315138;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0xE000000000000000;

    _StringGuts.grow(_:)(17);

    strcpy((v0 + 128), "FlowExtension(");
    *(v0 + 143) = -18;
    MEMORY[0x1E12A1580](*(v1 + 112), *(v1 + 120));
    MEMORY[0x1E12A1580](41, 0xE100000000000000);

    v11 = v8;
    v12 = v7;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 128), *(v0 + 136), &v79);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService] Discovered a Conversation which can handle the redirected PluginAction: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);

    v76(v12, v11);
  }

  else
  {

    v5(v7, v8);
  }

  outlined destroy of ConversationService.EagerResult(v6, type metadata accessor for ConversationCommitResult);
  v29 = *(v0 + 1512);
  v30 = *(v0 + 1328) + 1;
  if (*(v0 + 1328) == 10)
  {

    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1E12A1580](0xD000000000000030, 0x80000001DCA81620);
    *(v0 + 328) = 10;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1E12A1580](v31);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA81660);
    v33 = v79;
    v32 = v80;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = v37;
      *v36 = 136315138;
      *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v79);
      _os_log_impl(&dword_1DC659000, v34, v35, "[ConversationService] %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1E12A2F50](v37, -1, -1);
      MEMORY[0x1E12A2F50](v36, -1, -1);
    }

    v38 = *(v0 + 1288);
    v39 = *(v0 + 368);
    ObjectType = swift_getObjectType();
    (*(v39 + 32))(v38, v33, v32, ObjectType, v39);

    v41 = *(v0 + 384);
    v42 = &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply;
LABEL_19:
    v61 = *(v0 + 384);
    v62 = *(**(v41 + 216) + 208);

    v62(0xD00000000000005BLL, 0x80000001DCA814E0, v42, v61);

    v63 = *(v0 + 8);

    return v63();
  }

  *(v0 + 1344) = v1;
  *(v0 + 1336) = v29;
  *(v0 + 1328) = v30;
  v43 = *(v0 + 384);
  swift_beginAccess();
  v44 = *(v43 + 104);
  if ((v44 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 0)
    {
      v45 = __CocoaSet.count.getter();

      if (v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
        v46 = static _SetStorage.allocate(capacity:)();
      }

      else
      {
        v46 = MEMORY[0x1E69E7CD0];
      }

      *(*(v0 + 384) + 104) = v46;
    }
  }

  else if (*(v44 + 16))
  {
    v65 = *(v0 + 384);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = *(v65 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss10_NativeSetVy14SiriKitRuntime24RemoteConversationClientCGMR);
    _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v65 + 104) = v79;
  }

  specialized Set._Variant.insert(_:)(&v79, v1);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v1, 0);
}

{
  v1 = *(v0 + 1607);

  if (v1 == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService] Conversation is correctable. Setting up Siri Corrections signals", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = *(v0 + 344);

    static CorrectionsContext.builder.getter();
    if (*(v5 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_userSpecificInfoForRecognizedUser))
    {
    }

    v6 = *(v0 + 432);
    v7 = *(v0 + 416);
    v20 = *(v0 + 424);
    v21 = *(v0 + 408);
    v8 = *(v0 + 392);
    v22 = *(v0 + 400);
    v23 = *(v0 + 1344);
    v18 = *(v0 + 440);
    v19 = *(v0 + 384);
    dispatch thunk of CorrectionsContext.Builder.userId(_:)();

    dispatch thunk of CorrectionsContext.Builder.executionRequestId(_:)();

    type metadata accessor for RemoteConversationTurnData(0);

    dispatch thunk of CorrectionsContext.Builder.assistantId(_:)();

    dispatch thunk of CorrectionsContext.Builder.resultCandidateId(_:)();

    dispatch thunk of CorrectionsContext.Builder.build()();

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    CorrectionsDirectInvocation.init(identifier:userData:)();
    (*(v6 + 16))(v8, v18, v20);
    (*(v6 + 56))(v8, 0, 1, v20);
    dispatch thunk of CorrectionsPlatformClient.setUndoInvocation(directInvocation:context:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s15SiriCorrections0B7ContextVSgMd, &_s15SiriCorrections0B7ContextVSgMR);
    (*(v21 + 8))(v7, v22);
    (*(v6 + 8))(v18, v20);
    *(v19 + 280) = v23;
  }

  v9 = *(v0 + 1344);
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v9);
  swift_endAccess();
  v10 = *(v0 + 384);

  if ((*(v10 + 104) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v11 = *(v0 + 1560);
  v12 = *(v0 + 1288);
  v13 = *(v0 + 1032);
  (*(*(v0 + 368) + 16))(v11, (*(v0 + 1606) & 1) == 0, *(v0 + 1416));

  outlined destroy of ConversationService.EagerResult(v13, type metadata accessor for ConversationCommitResult);

  v14 = *(v0 + 384);
  v15 = *(**(v14 + 216) + 208);

  v15(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v14);

  v16 = *(v0 + 8);

  return v16();
}

{
  v11 = *(v0 + 1032);
  v1 = *(v0 + 944);
  v9 = *(v0 + 936);
  v10 = *(v0 + 960);
  v8 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);

  (*(v2 + 8))(v8, v3);
  (*(v1 + 8))(v10, v9);
  outlined destroy of ConversationService.EagerResult(v11, type metadata accessor for ConversationCommitResult);

  v4 = *(v0 + 384);
  v5 = *(**(v4 + 216) + 208);

  v5(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v4);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 544);
  v4 = *(v0 + 520);

  v1(v3, v4);
  outlined destroy of ConversationService.EagerResult(v2, type metadata accessor for ConversationCommitResult);

  v5 = *(v0 + 384);
  v6 = *(**(v5 + 216) + 208);

  v6(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ServiceBridgeDelegate.fetchSelfReflectionDecision(), v5, 0);
}

uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = static MessageBusActor.shared;
  *(v2 + 80) = static MessageBusActor.shared;
  v5 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, a2, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  *(v6 + 16) = *(v2 + 48);
  *(v6 + 32) = v3;

  v7 = swift_task_alloc();
  *(v2 + 96) = v7;
  *v7 = v2;
  v7[1] = ServiceBridgeDelegate.fetchSelfReflectionDecision();
  v8 = *(v2 + 40);

  return MEMORY[0x1EEE6DDE0](v8, v4, v5, 0xD00000000000001DLL, 0x80000001DCA81130, partial apply for closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision(), v6, &type metadata for SelfReflectionAgentDecision);
}

uint64_t closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  (*(a4 + 176))(partial apply for closure #1 in closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision(), v13, a3, a4);
}

uint64_t partial apply for closure #1 in closure #1 in ServiceBridgeDelegate.fetchSelfReflectionDecision()(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMd, &_sScCy14SiriKitRuntime27SelfReflectionAgentDecisionOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ServiceBridgeDelegate.fetchSelfReflectionDecision()()
{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](ServiceBridgeDelegate.fetchSelfReflectionDecision(), v1, 0);
}

uint64_t protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine, v3, 0);
}

uint64_t RemoteConversationClient.isEmpty()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](RemoteConversationClient.isEmpty(), v0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "isEmpty()", 9, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = RemoteConversationClient.isEmpty();
  v6 = MEMORY[0x1E69E6370];

  return v8(v0 + 5, &async function pointer to closure #1 in RemoteConversationClient.isEmpty(), 0, v6, v3, v4);
}

{
  v2 = *v1;

  v3 = *(v2 + 16);
  if (v0)
  {

    v4 = RemoteConversationClient.isEmpty();
  }

  else
  {
    v4 = RemoteConversationClient.isEmpty();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 72);
  if (v5 == 1)
  {
    goto LABEL_35;
  }

  if (!v5)
  {
    goto LABEL_28;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [objc_opt_self() aceObjectWithGenericCommand_];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = v9;
        goto LABEL_8;
      }
    }

LABEL_28:
    v50 = *(v4 + 192);
    v49 = *(v4 + 200);
    v52 = *(v4 + 176);
    v51 = *(v4 + 184);
    v11 = [objc_allocWithZone(MEMORY[0x1E69C7738]) init];

    outlined consume of SABaseCommand??(v5);
    if (v49 != v52)
    {
LABEL_11:
      v26 = *(v4 + 200);
      *(v4 + 184) = v11;
      a2 = *(v4 + 96);
      if ((a2 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x1E12A1FE0](v26);
      }

      else
      {
        if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
        }

        a1 = *(a2 + 8 * v26 + 32);
      }

      *(v4 + 192) = a1;
      *(v4 + 200) = v26 + 1;
      if (!__OFADD__(v26, 1))
      {
        v27 = *(v4 + 168);
        v28 = *(v4 + 152);
        v54 = v27;
        v29 = *(v4 + 128);
        v30 = *(v4 + 136);
        v32 = *(v4 + 112);
        v31 = *(v4 + 120);
        v55 = *(v4 + 104);
        v56 = *(v4 + 160);
        v33 = a1;
        v34 = type metadata accessor for TaskPriority();
        v35 = *(v34 - 8);
        (*(v35 + 56))(v27, 1, 1, v34);
        v36 = v31;
        v37 = v29;
        (*(v30 + 16))(v28, v36, v29);
        v38 = (*(v30 + 80) + 56) & ~*(v30 + 80);
        v39 = swift_allocObject();
        *(v39 + 2) = 0;
        *(v39 + 3) = 0;
        *(v39 + 4) = v55;
        *(v39 + 5) = v33;
        *(v39 + 6) = v32;
        (*(v30 + 32))(&v39[v38], v28, v37);
        outlined init with copy of ReferenceResolutionClientProtocol?(v54, v56, &_sScPSgMd, &_sScPSgMR);
        LODWORD(v37) = (*(v35 + 48))(v56, 1, v34);

        v40 = v33;

        v41 = *(v4 + 160);
        if (v37 == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(*(v4 + 160), &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v35 + 8))(v41, v34);
        }

        if (*(v39 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v42 = dispatch thunk of Actor.unownedExecutor.getter();
          v44 = v43;
          swift_unknownObjectRelease();
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        v45 = **(v4 + 88);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
        v46 = v44 | v42;
        if (v44 | v42)
        {
          v46 = v4 + 16;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          *(v4 + 32) = v42;
          *(v4 + 40) = v44;
        }

        v47 = *(v4 + 168);
        *(v4 + 48) = 1;
        *(v4 + 56) = v46;
        *(v4 + 64) = v45;
        swift_task_create();

        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_sScPSgMd, &_sScPSgMR);
        v48 = swift_task_alloc();
        *(v4 + 208) = v48;
        a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgySo13SABaseCommandCSgs5Error_pGMd, &_sScgySo13SABaseCommandCSgs5Error_pGMR);
        *v48 = v4;
        v48[1] = closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
        a1 = (v4 + 72);
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6DAC8](a1, a2, a3, a4);
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_29:
    **(v4 + 80) = v11;

    v21 = *(v4 + 8);
    goto LABEL_30;
  }

  v8 = v5;
  v10 = v8;
  v11 = v5;
LABEL_8:
  v12 = v8;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    v23 = *(v4 + 192);
    v22 = *(v4 + 200);
    v25 = *(v4 + 176);
    v24 = *(v4 + 184);

    outlined consume of SABaseCommand??(v5);
    if (v22 != v25)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  v14 = v13;

  v15 = type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v16 = swift_allocError();
  *v17 = v14;
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69CFF88], v15);
  swift_willThrow();
  outlined consume of SABaseCommand??(v5);
  v19 = *(v4 + 184);
  v18 = *(v4 + 192);
  lazy protocol witness table accessor for type SerialSubmissionError and conformance SerialSubmissionError();
  swift_allocError();
  *v20 = v18;
  v20[1] = v16;
  swift_willThrow();

  v21 = *(v4 + 8);
LABEL_30:

  return v21();
}

void outlined consume of SABaseCommand??(id a1)
{
  if (a1 != 1)
  {
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime19SettingParseOptionsVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19SettingParseOptionsVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type FlowOutputMessage.InAppResponse? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse and conformance FlowOutputMessage.InAppResponse, MEMORY[0x1E69D0248], MEMORY[0x1E69D0250]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowOutputMessage.InAppResponse? and conformance <A> A?);
  }

  return result;
}

id ExecutionOutput.__allocating_init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v128 = a8;
  v129 = a2;
  v130 = a13;
  v125 = a10;
  v126 = a7;
  updated = type metadata accessor for ContextUpdateScope();
  v122 = *(updated - 8);
  v123 = updated;
  MEMORY[0x1EEE9AC00](updated);
  v121 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v120 = v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v118 = v109 - v27;
  v28 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v115 = v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v116 = v109 - v31;
  v124 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v117 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v114 = v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v113 = v109 - v34;
  v127 = v14;
  v35 = objc_allocWithZone(v14);
  v36 = &v35[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v36 = a11;
  *(v36 + 1) = a12;
  v37 = &v35[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v37 = a3;
  *(v37 + 1) = a4;
  v38 = &v35[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v38 = a5;
  *(v38 + 1) = a6;
  v39 = &v35[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  v40 = v128;
  *v39 = v126;
  v39[1] = v40;
  v41 = &v35[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  v42 = v125;
  *v41 = a9;
  *(v41 + 1) = v42;
  v43 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v44 = type metadata accessor for RequestSummary.ExecutionSource();
  v45 = *(v44 - 8);
  v125 = v44;
  v126 = v45;
  (*(v45 + 16))(&v35[v43], v130);
  v128 = a14;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v35[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v46 = off_1E8646000;
  if (a1 && (objc_opt_self(), (v47 = swift_dynamicCastObjCClass()) != 0) && !v129)
  {
    v48 = v47;
    v49 = one-time initialization token for executor;
    v50 = a1;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.executor);
    v52 = v50;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    v55 = os_log_type_enabled(v53, v54);
    v56 = v124;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v131[0] = v59;
      *v57 = 136315394;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
      *(v57 + 12) = 2112;
      *(v57 + 14) = v48;
      *v58 = v48;
      v60 = v52;
      _os_log_impl(&dword_1DC659000, v53, v54, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v57, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v56 = v124;
      MEMORY[0x1E12A2F50](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1E12A2F50](v59, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
    }

    v61 = [v48 promptContextProto];
    v112 = v52;
    v111 = v48;
    if (v61)
    {
      v62 = v61;
      v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v132 = 0;
      memset(v131, 0, sizeof(v131));
      outlined copy of Data._Representation(v63, v65);
      BinaryDecodingOptions.init()();
      v66 = _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      v67 = v116;
      Message.init(serializedData:extensions:partial:options:)();
      v109[1] = v66;
      v110 = v63;
      v115 = v65;
      v99 = v117;
      (*(v117 + 56))(v67, 0, 1, v56);
      v100 = v113;
      (*(v99 + 32))(v113, v67, v56);
      (*(v99 + 16))(v114, v100, v56);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *&v131[0] = v104;
        *v103 = 136315394;
        *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
        *(v103 + 12) = 2080;
        v105 = v114;
        v106 = Message.textFormatString()();
        v117 = *(v99 + 8);
        (v117)(v105, v56);
        v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106._countAndFlagsBits, v106._object, v131);

        *(v103 + 14) = v107;
        _os_log_impl(&dword_1DC659000, v101, v102, "ExecutionOutput: %s: NFCU has prompt context %s", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v104, -1, -1);
        MEMORY[0x1E12A2F50](v103, -1, -1);

        outlined consume of Data._Representation(v110, v115);
        (v117)(v113, v56);
      }

      else
      {

        outlined consume of Data._Representation(v110, v115);
        v108 = *(v99 + 8);
        v108(v114, v56);
        v108(v100, v56);
      }
    }

    else
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v131[0] = v71;
        *v70 = 136315138;
        *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
        _os_log_impl(&dword_1DC659000, v68, v69, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x1E12A2F50](v71, -1, -1);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }
    }

    v72 = type metadata accessor for Parse.DirectInvocation();
    v73 = v118;
    (*(*(v72 - 8) + 56))(v118, 1, 1, v72);
    v74 = type metadata accessor for PommesContext();
    v75 = v119;
    (*(*(v74 - 8) + 56))(v119, 1, 1, v74);
    v76 = v121;
    v77 = v122;
    v78 = v123;
    (*(v122 + 104))(v121, *MEMORY[0x1E69CFF08], v123);
    v79 = type metadata accessor for ExecutionContextUpdate(0);
    v80 = objc_allocWithZone(v79);
    v81 = v120;
    outlined init with copy of ReferenceResolutionClientProtocol?(v75, v120, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v82 = v111;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v81, v111);
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v82;
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v73, &v80[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v80[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v81, &v80[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v77 + 16))(&v80[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v76, v78);
    v83 = &v80[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v83 = 0;
    v83[1] = 0;
    v80[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v133.receiver = v80;
    v133.super_class = v79;
    v46 = off_1E8646000;
    v84 = objc_msgSendSuper2(&v133, sel_init);
    (*(v77 + 8))(v76, v78);
    outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v81, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    *&v35[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v84;
    *&v35[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v85 = v129;
    v86 = v112;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Logger.executor);
    v88 = a1;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v131[0] = v93;
      *v91 = 136315394;
      *(v91 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
      *(v91 + 12) = 2112;
      *(v91 + 14) = v88;
      *v92 = a1;
      v94 = v88;
      _os_log_impl(&dword_1DC659000, v89, v90, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v91, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v92, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v92, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1E12A2F50](v93, -1, -1);
      v95 = v91;
      v46 = off_1E8646000;
      MEMORY[0x1E12A2F50](v95, -1, -1);
    }

    *&v35[OBJC_IVAR___SKRExecutionOutput_command] = a1;
    v96 = v129;
    *&v35[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v129;
    v85 = v96;
    v86 = v88;
  }

  v134.receiver = v35;
  v134.super_class = v127;
  v97 = objc_msgSendSuper2(&v134, v46[390]);
  outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v126 + 8))(v130, v125);

  return v97;
}

uint64_t specialized withCancellableContinuation<A>(body:)()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    v7 = *(v3 + 8);

    return v7(v6);
  }
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);

    v8 = *(v3 + 8);

    return v8(v6, v7);
  }
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v4 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v5 = v4[18];

    return MEMORY[0x1EEE6DFA0](closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v5, 0);
  }

  else
  {
    v6 = v4[12];

    *v6 = a1;

    v7 = v4[1];

    return v7();
  }
}

{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  v4 = v3[18];
  if (v1)
  {
    v5 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {
    v5 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  v4 = v3[18];
  if (v1)
  {
    v5 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {
    v5 = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void AceServiceInvokerImpl.publish(executionOutput:)()
{
  v5 = v0;
  v1 = v0[9];
  v2 = *(v0[7] + 16);
  os_unfair_lock_lock(v2 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v4);
  if (v1)
  {

    os_unfair_lock_unlock(v2 + 6);
  }

  else
  {
    os_unfair_lock_unlock(v2 + 6);

    v3 = v0[1];

    v3();
  }
}

uint64_t partial apply for closure #1 in SubmissionTaskRegistry.unregister(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Set._Variant.remove(_:)(v1);
  *a1 = result;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  Task.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  while (1)
  {

    v7 = static Task.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v5);
  specialized _NativeSet._delete(at:)(v5);
  result = v11;
  *v1 = v12;
  return result;
}

{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = specialized Set._Variant._migrateToNative(_:removing:)(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = *(v14 + 112) == v8 && *(v14 + 120) == v9;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v1 = v19;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        Task.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

uint64_t ExecutionContextUpdate.debugDescription.getter()
{
  v1 = v0;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for ExecutionContextUpdate(0);
  v71.receiver = v0;
  v71.super_class = v6;
  v7 = objc_msgSendSuper2(&v71, sel_debugDescription);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v72 = v8;
  v73 = v10;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v12 = v72;
  v11 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18SACFProvideContextCSgMd, &_sSo18SACFProvideContextCSgMR);
  v13 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v13);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v14 = v72;
  v15 = v73;
  v72 = v12;
  v73 = v11;

  MEMORY[0x1E12A1580](v14, v15);

  v17 = v72;
  v16 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 7;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGSgMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v18);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v19 = v72;
  v20 = v73;
  v72 = v17;
  v73 = v16;

  MEMORY[0x1E12A1580](v19, v20);

  v22 = v72;
  v21 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 2;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27SARDNativeFlowContextUpdateCSgMd, &_sSo27SARDNativeFlowContextUpdateCSgMR);
  v23 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v23);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v24 = v72;
  v25 = v73;
  v72 = v22;
  v73 = v21;

  MEMORY[0x1E12A1580](v24, v25);

  v27 = v72;
  v26 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 3;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGSgMR);
  v28 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v28);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v29 = v72;
  v30 = v73;
  v72 = v27;
  v73 = v26;

  MEMORY[0x1E12A1580](v29, v30);

  v32 = v72;
  v31 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 6;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], v5, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v33 = type metadata accessor for PommesContext();
  v34 = (*(*(v33 - 8) + 48))(v5, 1, v33);
  outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if (v34 == 1)
  {
    v35 = 28526;
  }

  else
  {
    v35 = 7562617;
  }

  if (v34 == 1)
  {
    v36 = 0xE200000000000000;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  MEMORY[0x1E12A1580](v35, v36);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v37 = v72;
  v38 = v73;
  v72 = v32;
  v73 = v31;

  MEMORY[0x1E12A1580](v37, v38);

  v40 = v72;
  v39 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 8;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGSgMR);
  v41 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v41);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v42 = v72;
  v43 = v73;
  v72 = v40;
  v73 = v39;

  MEMORY[0x1E12A1580](v42, v43);

  v45 = v72;
  v44 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 9;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks];

  v46 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v46);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v47 = v72;
  v48 = v73;
  v72 = v45;
  v73 = v44;

  MEMORY[0x1E12A1580](v47, v48);

  v50 = v72;
  v49 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 10;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  outlined init with copy of ReferenceResolutionClientProtocol?(&v1[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], v67, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v51 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v51);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v52 = v72;
  v53 = v73;
  v72 = v50;
  v73 = v49;

  MEMORY[0x1E12A1580](v52, v53);

  v55 = v72;
  v54 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 12;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v56 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8];
  v69 = *&v1[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v70 = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v57 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v57);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v58 = v72;
  v59 = v73;
  v72 = v55;
  v73 = v54;

  MEMORY[0x1E12A1580](v58, v59);

  v61 = v72;
  v60 = v73;
  v72 = 0;
  v73 = 0xE000000000000000;
  LOBYTE(v69) = 13;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (v1[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice])
  {
    v62 = 1702195828;
  }

  else
  {
    v62 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice])
  {
    v63 = 0xE400000000000000;
  }

  else
  {
    v63 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v62, v63);

  v64 = v72;
  v65 = v73;
  v72 = v61;
  v73 = v60;

  MEMORY[0x1E12A1580](v64, v65);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v72;
}

SiriKitRuntime::ExecutionContextUpdateScope __swiftcall ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(Swift::Bool isMUXEnabled)
{
  updated = type metadata accessor for ContextUpdateScope();
  v4 = *(updated - 8);
  v5 = MEMORY[0x1EEE9AC00](updated);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!isMUXEnabled)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Forcing context update scope to be .global since MUX is not enabled", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    return 0;
  }

  (*(v4 + 16))(v7, v1, updated, v5);
  v8 = (*(v4 + 88))(v7, updated);
  if (v8 == *MEMORY[0x1E69CFF00])
  {
    return 1;
  }

  if (v8 != *MEMORY[0x1E69CFF10])
  {
    if (v8 != *MEMORY[0x1E69CFF08])
    {
      (*(v4 + 8))(v7, updated);
    }

    return 0;
  }

  return 2;
}

unint64_t MultiUserContextUpdater.dispatch(forScope:currentUserId:applyContextTo:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = MultiUserContextUpdater.contextUpdaters(forScope:currentUserId:)(a1, a2);
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_16:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_17:

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
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "ContextUpdater list was evaluated to be empty. Ignoring the context update.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of MultiUserContextUpdater.dispatch(forScope:currentUserId:applyContextTo:));
    outlined destroy of ReferenceResolutionClientProtocol?(&unk_1F5826798, &_sSS_SStMd, &_sSS_SStMR);
    return v16;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = 0;
  while ((v5 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1E12A1FE0](v7, v5);
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    a3(v8);

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_12;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v5 + 8 * v7 + 32);

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:

  v10 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
}

uint64_t MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21[2] = a1;
  v23 = MEMORY[0x1E69E7CC8];
  v21[3] = a2;
  v21[4] = &v23;
  v5 = (*(*v3 + 280))(a3, a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId, partial apply for closure #1 in MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:), v21);
  if (*(v5 + 16))
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
      v22 = v10;
      *v9 = 136315138;
      v11 = Dictionary.debugDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v7, v8, "Error while dispatching context: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v23;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v22);

    v15 = v22;
    v23 = v22;
  }

  else
  {

    v15 = v23;
  }

  (*(**(v4 + 232) + 168))(1, *(v15 + 16) != 0, *(v4 + 160), *(v4 + 168));
  if (!*(v15 + 16))
  {
  }

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = MEMORY[0x1E12A1410](0x55747865746E6F43, 0xEE00726574616470);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithDomain:v17 code:-1 userInfo:isa];

  if (!v19)
  {
  }

  swift_willThrow();
}

uint64_t MultiUserContextUpdater.contextUpdaters(forScope:currentUserId:)(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v63 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v63 - v16;
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    v66 = __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v69 = v7;
    if (v21)
    {
      break;
    }

    v30 = a1;
    if (!a1)
    {
      goto LABEL_33;
    }

LABEL_11:
    if (v30 == 1)
    {
      v31 = specialized Set.contains(_:)(a2, *(v3 + 240));
      v32 = *(v7 + 16);
      if (v31)
      {
        v32(v17, a2, v6);
        (*(v7 + 56))(v17, 0, 1, v6);
        v33 = MultiUserContextUpdater.contextUpdater(forUserId:)(v17);
        outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          result = swift_allocObject();
          *(result + 16) = xmmword_1DCA70640;
          *(result + 32) = v33;
          return result;
        }

        v32(v14, a2, v6);
        v43 = Logger.logObject.getter();
        v58 = v6;
        v45 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v43, v45))
        {

          (*(v7 + 8))(v14, v58);
          return MEMORY[0x1E69E7CC0];
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v70 = v47;
        *v46 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*(v7 + 8))(v14, v58);
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v70);

        *(v46 + 4) = v62;
        v52 = "Could not find ContextUpdater for userId: %s";
      }

      else
      {
        v32(v11, a2, v6);
        v43 = Logger.logObject.getter();
        v44 = v6;
        v45 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v43, v45))
        {

          (*(v7 + 8))(v11, v44);
          return MEMORY[0x1E69E7CC0];
        }

        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v70 = v47;
        *v46 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        (*(v7 + 8))(v11, v44);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v70);

        *(v46 + 4) = v51;
        v52 = "Current userID: %s does not match any of the userIds in the known userIdSet. This is unexpected!";
      }

      _os_log_impl(&dword_1DC659000, v43, v45, v52, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1E12A2F50](v47, -1, -1);
      MEMORY[0x1E12A2F50](v46, -1, -1);

      return MEMORY[0x1E69E7CC0];
    }

    v65 = v6;
    v68 = v3;
    v35 = *(v3 + 248);
    v63[0] = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    v11 = (v35 + 56);
    v36 = 1 << *(v35 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v3 = v37 & *(v35 + 56);
    a2 = (v36 + 63) >> 6;
    v63[2] = v7 + 56;
    v64 = v7 + 16;
    v63[1] = v7 + 8;
    v66 = v35;

    v6 = 0;
    v7 = v69;
    v14 = v67;
    if (!v3)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v38 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v39 = v65;
        v40 = *(v7 + 16);
        v40(v14, *(v66 + 48) + *(v7 + 72) * (v38 | (v6 << 6)), v65);
        v40(v17, v14, v39);
        (*(v7 + 56))(v17, 0, 1, v39);
        a1 = MultiUserContextUpdater.contextUpdater(forUserId:)(v17);
        outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v41 = (*(v7 + 8))(v14, v39);
        if (a1)
        {
          break;
        }

        if (!v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x1E12A1680](v41);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63[0] = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v63[0] = v70;
    }

    while (v3);
LABEL_20:
    while (1)
    {
      v42 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v42 >= a2)
      {

        return v63[0];
      }

      v3 = *&v11[8 * v42];
      ++v6;
      if (v3)
      {
        v6 = v42;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v68 = v3;
  v64 = a2;
  v65 = v14;
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = a1;
  v25 = v23;
  v70 = v23;
  *v22 = 136315138;
  v26 = v24;
  v27 = v11;
  if (v24)
  {
    if (v24 == 1)
    {
      v28 = 0x55746E6572727563;
    }

    else
    {
      v28 = 0x72657355656D6F68;
    }

    if (v24 == 1)
    {
      v29 = 0xEB00000000726573;
    }

    else
    {
      v29 = 0xE900000000000073;
    }
  }

  else
  {
    v29 = 0xE600000000000000;
    v28 = 0x6C61626F6C67;
  }

  v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v70);

  *(v22 + 4) = v53;
  _os_log_impl(&dword_1DC659000, v19, v20, "ContextUpdateScope received: %s", v22, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  MEMORY[0x1E12A2F50](v25, -1, -1);
  MEMORY[0x1E12A2F50](v22, -1, -1);

  v11 = v27;
  a2 = v64;
  v14 = v65;
  a1 = v26;
  v3 = v68;
  v7 = v69;
  v30 = a1;
  if (a1)
  {
    goto LABEL_11;
  }

LABEL_33:
  (*(v7 + 56))(v17, 1, 1, v6);
  v54 = MultiUserContextUpdater.contextUpdater(forUserId:)(v17);
  outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1DCA70640;
    *(result + 32) = v54;
    return result;
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1DC659000, v55, v56, "Could not find shared contextUpdater instance", v57, 2u);
    MEMORY[0x1E12A2F50](v57, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t MultiUserContextUpdater.contextUpdater(forUserId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v10 = type metadata accessor for UserID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  outlined init with copy of UserID?(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
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
      _os_log_impl(&dword_1DC659000, v21, v22, "Returning shared ContextUpdater instance since userId passed is nil", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    result = (*(*v2 + 208))();
    if (!result)
    {
      (*(v11 + 56))(v6, 1, 1, v10);
      v25 = MultiUserContextUpdater.addContextUpdater(forUserId:)(v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      return v25;
    }
  }

  else
  {
    (*(v11 + 32))(v19, v9, v10);
    if (specialized Set.contains(_:)(v19, v2[30]))
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationBridge);
      v59 = *(v11 + 16);
      v59(v16, v19, v10);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v55 = v29;
        v57 = swift_slowAlloc();
        v60 = v57;
        *v29 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v11 + 16;
        v32 = v31;
        v56 = *(v11 + 8);
        v56(v16, v10);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v60);

        v34 = v55;
        *(v55 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_1DC659000, v27, v28, "Returning a ContextUpdater instance for userId: %s", v34, 0xCu);
        v36 = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x1E12A2F50](v36, -1, -1);
        MEMORY[0x1E12A2F50](v35, -1, -1);

        v38 = v56;
      }

      else
      {

        v38 = *(v11 + 8);
        v37 = v38(v16, v10);
      }

      v49 = (*(*v2 + 184))(v37);
      if (*(v49 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v51 & 1) != 0))
      {
        v52 = *(*(v49 + 56) + 8 * v50);

        v38(v19, v10);

        return v52;
      }

      else
      {

        v59(v6, v19, v10);
        (*(v11 + 56))(v6, 0, 1, v10);
        v53 = MultiUserContextUpdater.addContextUpdater(forUserId:)(v6);
        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v38(v19, v10);
        return v53;
      }
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.conversationBridge);
      (*(v11 + 16))(v13, v19, v10);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v59;
        *v42 = 136315138;
        lazy protocol witness table accessor for type UserID and conformance UserID();
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v46 = *(v11 + 8);
        v46(v13, v10);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v60);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1DC659000, v40, v41, "Current userId: %s does not exist in known userSet", v42, 0xCu);
        v48 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1E12A2F50](v48, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);

        v46(v19, v10);
      }

      else
      {

        v54 = *(v11 + 8);
        v54(v13, v10);
        v54(v19, v10);
      }

      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of UserID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}