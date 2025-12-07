uint64_t closure #1 in MultiUserContextUpdater.applyContextUpdate(_:metadata:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v8);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a2;
    v12 = swift_slowAlloc();
    v23 = a3;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    (*(*a1 + 360))();
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v10, v11, "Applying ContextUpdate for userId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v17 = v13;
    a3 = v23;
    MEMORY[0x1E12A2F50](v17, -1, -1);
    v18 = v12;
    a2 = v22;
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v19 = (*(*a1 + 416))(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *a4;
  *a4 = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v19, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v24);

  *a4 = v24;
}

uint64_t ContextUpdater.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_userId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

uint64_t ContextUpdater.applyContextUpdate(_:metadata:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for Parse.DirectInvocation();
  v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  v80 = MEMORY[0x1E69E7CC8];
  ContextUpdater.applySystemDialogActs(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs));
  ContextUpdater.applyNewTasks(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks));
  ContextUpdater.applyCompletedTasks(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks));
  v17 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v74 = v16;
  if (v17)
  {
    v18 = v17;
    [v18 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
    if (swift_dynamicCast())
    {
      v19 = v78;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = (*(*v3 + 504))(v19, *(a2 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext));
  v21 = v77;
  v75 = v19;
  v76 = a2;
  if (v20)
  {
    v22 = v20;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v24 = v22;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v69 = v10;
      v29 = v28;
      v79[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v79);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1DC659000, v25, v26, "Applied NativeFlowContext with error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v33 = v29;
      v10 = v69;
      MEMORY[0x1E12A2F50](v33, -1, -1);
      v34 = v27;
      v19 = v75;
      MEMORY[0x1E12A2F50](v34, -1, -1);
    }

    v21 = v77;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    specialized Dictionary._Variant.updateValue(_:forKey:)(v35, v36, 0xD000000000000024, 0x80000001DCA7A680);

    a2 = v76;
  }

  ContextUpdater.applyRREntities(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_rrEntities));
  outlined init with copy of ReferenceResolutionClientProtocol?(a1 + OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation, v9, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  if ((v21[6])(v9, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  }

  else
  {
    v37 = v74;
    (v21[4])(v74, v9, v10);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v39 = v21[2];
    v40 = v71;
    v39(v71, v37, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v43 = 136315138;
      LODWORD(v69) = v42;
      v39(v70, v40, v10);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = v21[1];
      v47(v40, v10);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v79);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1DC659000, v41, v69, "Applying Corrections donation: %s", v43, 0xCu);
      v49 = v77;
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x1E12A2F50](v49, -1, -1);
      v50 = v43;
      v37 = v74;
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {

      v47 = v21[1];
      v47(v40, v10);
    }

    ContextUpdater.applyCorrectionsDonation(_:)(v37);
    v47(v37, v10);
    v19 = v75;
    a2 = v76;
  }

  ContextUpdater.applyPommesContext(_:)(a1 + OBJC_IVAR___SKRExecutionContextUpdate_pommesContext);
  v51 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId + 8);
  if (v51)
  {
    v52 = *(a1 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.conversationBridge);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = a2;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v79[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, v79);
      _os_log_impl(&dword_1DC659000, v54, v55, "Restoring session snapshot to the past request %s. All past and future context updates for this request will be ignored.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      v59 = v57;
      a2 = v56;
      v19 = v75;
      MEMORY[0x1E12A2F50](v59, -1, -1);
    }

    v3[35] = v52;
    v3[36] = v51;
  }

  ContextUpdater.applyRequestExecutedOnRemoteDevice(_:)(*(a1 + OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice));
  ContextUpdater.flushSessionStateUpdates(metadata:)(a2);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.conversationBridge);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v79[0] = v64;
    *v63 = 136315138;
    (*(*v3 + 360))();
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v79);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_1DC659000, v61, v62, "Done applying context for userId: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x1E12A2F50](v64, -1, -1);
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  return v80;
}

uint64_t ContextUpdater.applySystemDialogActs(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v8 = *(v1 + 232);
    v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMR);
    v21[0] = a1;
    (*(v4 + 104))(v7, *MEMORY[0x1E69D07F0], v3);
    v9 = *(*v8 + 152);

    v9(v21, v7);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
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
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v13 = 136315138;
      v15 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
      v16 = MEMORY[0x1E12A1700](a1, v15);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v11, v12, "Applied SDA: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  else
  {
    v19 = *(v1 + 232);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D07F0], v3, v5);
    (*(*v19 + 160))(v7);
    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

uint64_t ContextUpdater.applyNewTasks(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a1 + 16))
    {
      swift_beginAccess();
      *(v1 + 264) = a1;
      swift_bridgeObjectRetain_n();

      v7 = *(v1 + 232);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v16[0] = a1;
      (*(v4 + 104))(v6, *MEMORY[0x1E69D07B8], v3);
      (*(*v7 + 152))(v16, v6);
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      v8 = v1;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationBridge);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DC659000, v10, v11, "Removing activeTasks as instructed by execution", v12, 2u);
        MEMORY[0x1E12A2F50](v12, -1, -1);
      }

      v13 = *(v8 + 232);
      (*(v4 + 104))(v6, *MEMORY[0x1E69D07B8], v3);
      (*(*v13 + 168))(v6);
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t ContextUpdater.applyCompletedTasks(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a1 + 16))
    {
      swift_beginAccess();
      *(v1 + 272) = a1;
      swift_bridgeObjectRetain_n();

      v7 = *(v1 + 232);
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v16[0] = a1;
      (*(v4 + 104))(v6, *MEMORY[0x1E69D07C8], v3);
      (*(*v7 + 152))(v16, v6);
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      v8 = v1;
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationBridge);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DC659000, v10, v11, "Removing executedTasks as instructed by execution", v12, 2u);
        MEMORY[0x1E12A2F50](v12, -1, -1);
      }

      v13 = *(v8 + 232);
      (*(v4 + 104))(v6, *MEMORY[0x1E69D07C8], v3);
      (*(*v13 + 168))(v6);
      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t ContextUpdater.applyNativeFlowContext(_:emptyServerContext:)(id a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51[-1] - v8;
  if ((a2 & 1) == 0)
  {
    if (a1)
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
        v19 = swift_slowAlloc();
        v51[0] = v19;
        *v18 = 136315138;
        v20 = (*(*v3 + 264))();
        if (v20)
        {
          v21 = v20;
          v22 = [v20 debugDescription];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v25 = 0xE300000000000000;
          v23 = 7104878;
        }

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v51);

        *(v18 + 4) = v37;
        _os_log_impl(&dword_1DC659000, v16, v17, "Current NFCU cache is %s, Updating NativeFlowContextCommand cache with new one", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1E12A2F50](v19, -1, -1);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      goto LABEL_33;
    }

LABEL_14:
    v26 = (*(*v3 + 264))(v7);
    if (v26)
    {

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.conversationBridge);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Received nil nativeFlowContextCommand from execution, but previously cached nativeFlowContextCommand during this request is not nil. Ignoring this update";
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.conversationBridge);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_24;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Both nativeFlowContextCommand cached as well as received from Execution are nil.";
    }

    _os_log_impl(&dword_1DC659000, v28, v29, v31, v30, 2u);
    MEMORY[0x1E12A2F50](v30, -1, -1);
LABEL_24:

    goto LABEL_37;
  }

  if (!a1)
  {
    goto LABEL_14;
  }

  v10 = (*(*v3 + 264))(v7.n128_f64[0]);
  if (v10)
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationBridge);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v12, v13, "Not applying an empty nativeFlowContextCommand since we already have a non-nil cached one", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    goto LABEL_34;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.conversationBridge);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DC659000, v34, v35, "Applying an empty nativeFlowContextCommand", v36, 2u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

LABEL_33:
  swift_beginAccess();
  v12 = v3[32];
  v3[32] = a1;
  a1 = a1;
LABEL_34:

  v38 = a1;
  v39 = [v38 promptContextProto];
  if (v39)
  {
    v40 = v39;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    outlined copy of Data._Representation(v41, v43);
    v44 = ContextUpdater.applyPromptContextProtoData(_:)(v9, v41, v43);

    outlined consume of Data._Representation(v41, v43);
    outlined consume of Data._Representation(v41, v43);
    goto LABEL_42;
  }

LABEL_37:
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
    _os_log_impl(&dword_1DC659000, v46, v47, "Either NativeFlowContextUpdate or PromptContextProtoData is nil", v48, 2u);
    MEMORY[0x1E12A2F50](v48, -1, -1);
  }

  v44 = ContextUpdater.applyPromptContextProtoData(_:)(v9, 0, 0xF000000000000000);
LABEL_42:
  outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return v44;
}

void *ContextUpdater.finalNativeFlowContextCommand.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 256);
  v2 = v1;
  return v1;
}

uint64_t ContextUpdater.applyPromptContextProtoData(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  if (a3 >> 60 == 15)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.conversationBridge);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "PromptContextProtoData is nil", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    v22 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    ContextUpdater.applyLegacyNLContext(_:)(v9);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    (*(v12 + 56))(a1, 1, 1, v11);
  }

  else
  {
    v42 = v3;
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined copy of Data?(a2, a3);
    outlined copy of Data._Representation(a2, a3);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
    v41 = a2;
    Message.init(serializedData:extensions:partial:options:)();
    v40 = a1;
    v23 = Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter();
    (*(*v42 + 392))(v23);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationBridge);
    (*(v12 + 16))(v14, v17, v11);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v38 = v27;
      v39 = swift_slowAlloc();
      *&v43[0] = v39;
      *v27 = 136315138;
      v28 = Message.debugDescription.getter();
      v30 = v29;
      (*(v12 + 8))(v14, v11);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v43);

      v32 = v38;
      *(v38 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_1DC659000, v25, v26, "Deserialized PromptContextProto: %s", v32, 0xCu);
      v34 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }

    Com_Apple_Siri_Product_Proto_PromptContext.toLegacyNLContext()(v9);
    v35 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
    (*(*(v35 - 8) + 56))(v9, 0, 1, v35);
    ContextUpdater.applyLegacyNLContext(_:)(v9);
    outlined consume of Data?(v41, a3);
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v36 = v40;
    (*(v12 + 32))(v40, v17, v11);
    (*(v12 + 56))(v36, 0, 1, v11);
  }

  return 0;
}

uint64_t ContextUpdater.applyLegacyNLContext(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v16 = v15;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if ((*(v16 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v17 = *(v1 + 232);
    (*(v4 + 104))(v6, *MEMORY[0x1E69D07E8], v3);
    (*(*v17 + 160))(v6);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    (*(v16 + 32))(v14, v9, v10);
    v18 = *(v1 + 232);
    v36[3] = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    v20 = *(v16 + 16);
    v20(boxed_opaque_existential_0, v14, v10);
    (*(v4 + 104))(v6, *MEMORY[0x1E69D07E8], v3);
    (*(*v18 + 152))(v36, v6);
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.conversationBridge);
    v22 = v35;
    v20(v35, v14, v10);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315138;
      lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type Siri_Nlu_External_LegacyNLContext and conformance Siri_Nlu_External_LegacyNLContext, MEMORY[0x1E69D0B30], MEMORY[0x1E69D0B28]);
      v27 = Message.debugDescription.getter();
      v29 = v28;
      v30 = *(v16 + 8);
      v30(v22, v10);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v36);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1DC659000, v23, v24, "Applied LegacyNLContext: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E12A2F50](v26, -1, -1);
      MEMORY[0x1E12A2F50](v25, -1, -1);

      v30(v14, v10);
    }

    else
    {

      v32 = *(v16 + 8);
      v32(v22, v10);
      v32(v14, v10);
    }
  }

  return 0;
}

void ContextUpdater.applyRREntities(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  if (a1)
  {
    if (*(a1 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes22ConversationSessionKeyO_ypSgtGMR);
      v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR) - 8);
      v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1DCA66060;
      v9 = v8 + v7;
      v10 = (v9 + v6[14]);
      v11 = *MEMORY[0x1E69D0818];
      v12 = type metadata accessor for ConversationSessionKey();
      (*(*(v12 - 8) + 104))(v9, v11, v12);
      v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      *v10 = a1;

      v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(v8);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
      swift_deallocClassInstance();
      ContextUpdater.updateSessionState(withData:)(v13);

      __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
      v14 = type metadata accessor for RRFilter();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;

      dispatch thunk of ReferenceResolutionClientProtocol.siriMentioned(entities:configuration:completion:)();

      outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
    }
  }
}

uint64_t sub_1DC70EE08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC70EE40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t ContextUpdater.updateSessionState(withData:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 360))(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    return dispatch thunk of ConversationSessionState.updateSharedValues(data:)();
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    dispatch thunk of ConversationSessionState.updateValues(data:userId:)();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t ContextUpdater.applyPommesContext(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for PommesContext();
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v20 = v19;
  v22 = v21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v10, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if ((*(v22 + 48))(v10, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v23 = *(v2 + 232);
    (*(v5 + 104))(v7, *MEMORY[0x1E69D07D0], v4);
    (*(*v23 + 160))(v7);
    (*(v5 + 8))(v7, v4);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.conversationBridge);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DC659000, v25, v26, "No PommesContext found", v27, 2u);
      MEMORY[0x1E12A2F50](v27, -1, -1);
    }
  }

  else
  {
    (*(v22 + 32))(v18, v10, v20);
    v28 = PommesContext.isWithinMaxSize()();
    v29 = *(v2 + 232);
    v30 = v18;
    if (v28)
    {
      v56[3] = v20;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
      v54 = v22;
      v32 = *(v22 + 16);
      v32(boxed_opaque_existential_0, v18, v20);
      (*(v5 + 104))(v7, *MEMORY[0x1E69D07D0], v4);
      (*(*v29 + 152))(v56, v7);
      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.conversationBridge);
      v34 = v55;
      v32(v55, v18, v20);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v56[0] = v38;
        *v37 = 136315138;
        v39 = PommesContext.description.getter();
        v41 = v40;
        v42 = v34;
        v43 = *(v54 + 8);
        v43(v42, v20);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v56);

        *(v37 + 4) = v44;
        _os_log_impl(&dword_1DC659000, v35, v36, "Applied PommesContext: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x1E12A2F50](v38, -1, -1);
        MEMORY[0x1E12A2F50](v37, -1, -1);

        v43(v30, v20);
      }

      else
      {

        v52 = *(v54 + 8);
        v52(v34, v20);
        v52(v30, v20);
      }
    }

    else
    {
      (*(v5 + 104))(v7, *MEMORY[0x1E69D07D0], v4);
      (*(*v29 + 160))(v7);
      (*(v5 + 8))(v7, v4);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.conversationBridge);
      (*(v22 + 16))(v15, v18, v20);
      v46 = Logger.logObject.getter();
      v47 = v22;
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        v50 = PommesContext.contextSize()();
        v51 = *(v47 + 8);
        v51(v15, v20);
        *(v49 + 4) = v50;
        _os_log_impl(&dword_1DC659000, v46, v48, "Not updating PommesContext (size: %ld because it is larger than the max allowed size", v49, 0xCu);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      else
      {
        v51 = *(v47 + 8);
        v51(v15, v20);
      }

      v51(v30, v20);
    }
  }

  return 0;
}

void SessionStateContextKeysManager.removeKeyIfNotUpdated(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SessionStateContextKeysManager.removeKeyIfNotUpdated(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - v15;
  swift_beginAccess();
  v16 = *(a1 + 24);
  if (*(v16 + 16))
  {

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v18)
    {
      outlined init with copy of Any(*(v16 + 56) + 32 * v17, v45);

      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.conversationBridge);
      v20 = *(v5 + 16);
      v20(v7, a2, v4);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v45[0] = v44;
        *v23 = 136315138;
        v20(v46, v7, v4);
        v24 = String.init<A>(describing:)();
        v26 = v25;
        (*(v5 + 8))(v7, v4);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v45);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1DC659000, v21, v22, "Not deleting key: %s because it is already updated in the current request", v23, 0xCu);
        v28 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x1E12A2F50](v28, -1, -1);
        v29 = v23;
LABEL_12:
        MEMORY[0x1E12A2F50](v29, -1, -1);

        return;
      }

      (*(v5 + 8))(v7, v4);
      return;
    }
  }

  memset(v45, 0, sizeof(v45));
  outlined destroy of ReferenceResolutionClientProtocol?(v45, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  v30 = *(v5 + 16);
  v30(v13, a2, v4);
  swift_beginAccess();
  v31 = v46;
  specialized Set._Variant.insert(_:)(v46, v13);
  v32 = *(v5 + 8);
  v44 = (v5 + 8);
  v32(v31, v4);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.conversationBridge);
  v30(v10, a2, v4);
  v21 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v34))
  {
    v35 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v45[0] = v43;
    *v35 = 136315138;
    v36 = v32;
    v30(v46, v10, v4);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v36(v10, v4);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v45);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v21, v34, "StateKey: %s marked for removal from SessionState", v35, 0xCu);
    v41 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    v29 = v35;
    goto LABEL_12;
  }

  v32(v10, v4);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0830]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for IntentTopic();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD80]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void ContextUpdater.applyRequestExecutedOnRemoteDevice(_:)(char a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *(v1 + 232);
    v13[3] = MEMORY[0x1E69E6370];
    LOBYTE(v13[0]) = 1;
    (*(v4 + 104))(v7, *MEMORY[0x1E69D0808], v3, v5);
    (*(*v8 + 152))(v13, v7);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.conversationBridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = 1;
      _os_log_impl(&dword_1DC659000, v10, v11, "#ContextUpdater: Saving to SessionState executedOnRemoteDevice:%{BOOL}d", v12, 8u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }
}

uint64_t ContextUpdater.flushSessionStateUpdates(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v93 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v93 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v93 - v18;
  v20 = *(v2 + 288);
  if (v20)
  {
    v21 = *(v2 + 280);
    v22 = one-time initialization token for conversationBridge;

    if (v22 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_3;
  }

  v104 = v13;
  v107 = v7;
  v95 = v19;
  v102 = v10;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.conversationBridge);

  v93[2] = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v108 = v4;
  v93[1] = v17;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *&v113 = v109;
    *v34 = 136315394;
    (*(*v2 + 360))();
    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v113);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    updated = ConversationContextUpdateMetadata.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(updated, v39, &v113);

    *(v34 + 14) = v40;
    v4 = v108;
    _os_log_impl(&dword_1DC659000, v31, v32, "Flushing all context updates to SessionState for userId: %s. metadata: %s", v34, 0x16u);
    v41 = v109;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  v42 = v107;
  v43 = (*(**(v2 + 232) + 176))(a1);
  v94 = v2;
  ContextUpdater.updateSessionState(withData:)(v43);
  v117 = 0;
  v118 = 0xE000000000000000;
  v21 = v43 + 64;
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v2 = v45 & *(v43 + 64);
  v115 = 0;
  v116 = 0xE000000000000000;
  v20 = (v44 + 63) >> 6;
  v99 = v5 + 16;
  v109 = (v5 + 32);
  v103 = v5;
  v105 = (v5 + 8);
  v101 = v43;

  *&v106 = 0;
  v96 = 0;
  v46 = 0;
  *(&v106 + 1) = 0xE000000000000000;
  v97 = 0xE000000000000000;
  v100 = v16;
  v98 = v43 + 64;
  if (!v2)
  {
    goto LABEL_19;
  }

  do
  {
    while (1)
    {
      v48 = v46;
LABEL_27:
      v51 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v52 = v51 | (v48 << 6);
      v53 = v101;
      v54 = v103;
      v55 = v102;
      (*(v103 + 16))(v102, *(v101 + 48) + *(v103 + 72) * v52, v4);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v53 + 56) + 32 * v52, &v113, &_sypSgMd, &_sypSgMR);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      v57 = v4;
      v58 = v104;
      v59 = &v104[*(v56 + 48)];
      (*(v54 + 32))(v104, v55, v57);
      v60 = v114;
      *v59 = v113;
      *(v59 + 1) = v60;
      (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
      v42 = v107;
      v16 = v100;
      v21 = v98;
LABEL_28:
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v58, v16, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetSgMR);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      if ((*(*(v61 - 8) + 48))(v16, 1, v61) == 1)
      {

        v67 = v117;
        v66 = v118;
        v68 = v115;
        v69 = v116;
        v70 = v94;

        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *&v113 = v109;
          *v73 = 136381443;
          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v113);

          *(v73 + 4) = v74;
          *(v73 + 12) = 2080;
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v113);

          *(v73 + 14) = v75;
          *(v73 + 22) = 2080;
          *(v73 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v70 + 144), *(v70 + 152), &v113);
          *(v73 + 32) = 2080;
          (*(*v70 + 360))();
          v76 = String.init<A>(describing:)();
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v113);

          *(v73 + 34) = v78;
          _os_log_impl(&dword_1DC659000, v71, v72, "Flushed keysToAdd: [%{private}s] and keysToRemove: [%s] for assistantId: %s, userId: %s", v73, 0x2Au);
          v79 = v109;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v79, -1, -1);
          MEMORY[0x1E12A2F50](v73, -1, -1);
        }

        else
        {
        }

        v80 = v70;
        v81 = (*(*v70 + 264))();
        v82 = v81;
        v83 = v108;
        v84 = v103;
        if (v81)
        {
          v81 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
        }

        else
        {
          *(&v113 + 1) = 0;
          *&v114 = 0;
        }

        *&v113 = v82;
        *(&v114 + 1) = v81;
        v85 = *(v84 + 104);
        v86 = v102;
        v85(v102, *MEMORY[0x1E69D0800], v83);
        ContextUpdater.updateSessionState(withValue:forKey:)(&v113, v86);
        v87 = *(v84 + 8);
        v87(v86, v83);
        v88 = outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_sypSgMd, &_sypSgMR);
        v89 = (*(*v80 + 288))(v88);
        v90 = (*(*v80 + 312))();
        v91 = type metadata accessor for AnnounceContext();
        v92 = swift_allocObject();
        *(v92 + 16) = v89;
        *(v92 + 24) = v90;
        *(&v114 + 1) = v91;
        *&v113 = v92;
        v85(v86, *MEMORY[0x1E69D07E0], v83);
        ContextUpdater.updateSessionState(withValue:forKey:)(&v113, v86);
        v87(v86, v83);
        return outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_sypSgMd, &_sypSgMR);
      }

      v62 = &v16[*(v61 + 48)];
      v4 = v108;
      (*v109)(v42, v16, v108);
      v63 = *(v62 + 1);
      v113 = *v62;
      v114 = v63;
      if (!*(&v63 + 1))
      {
        goto LABEL_17;
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(&v113, &v110, &_sypSgMd, &_sypSgMR);
      if (v111)
      {
        break;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&v110, &_sypSgMd, &_sypSgMR);
LABEL_17:
      v112[0] = v106;
      v47 = ConversationSessionKey.rawValue.getter();
      MEMORY[0x1E12A1580](v47);

      MEMORY[0x1E12A1580](*&v112[0], *(&v112[0] + 1));

      (*v105)(v42, v4);
      outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_sypSgMd, &_sypSgMR);
      *(&v106 + 1) = 0xE200000000000000;
      *&v106 = 8236;
      if (!v2)
      {
        goto LABEL_19;
      }
    }

    outlined init with take of Any(&v110, v112);
    *&v110 = 0;
    *(&v110 + 1) = 0xE000000000000000;
    MEMORY[0x1E12A1580](v96, v97);

    v64 = ConversationSessionKey.rawValue.getter();
    MEMORY[0x1E12A1580](v64);
    v42 = v107;

    v97 = 0xE200000000000000;
    MEMORY[0x1E12A1580](8250, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1E12A1580](v110, *(&v110 + 1));
    v4 = v108;

    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    (*v105)(v42, v4);
    outlined destroy of ReferenceResolutionClientProtocol?(&v113, &_sypSgMd, &_sypSgMR);
    v96 = 8236;
  }

  while (v2);
LABEL_19:
  if (v20 <= v46 + 1)
  {
    v49 = v46 + 1;
  }

  else
  {
    v49 = v20;
  }

  v50 = v49 - 1;
  while (1)
  {
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v48 >= v20)
    {
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
      v58 = v104;
      (*(*(v65 - 8) + 56))(v104, 1, 1, v65);
      v2 = 0;
      v46 = v50;
      goto LABEL_28;
    }

    v2 = *(v21 + 8 * v48);
    ++v46;
    if (v2)
    {
      v46 = v48;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_42:
  swift_once();
LABEL_3:
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationBridge);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v113 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v113);
    _os_log_impl(&dword_1DC659000, v24, v25, "Not flushing state since snapshot from request %s was requested.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  dispatch thunk of ConversationSessionState.restoreSnapshot(requestId:)();
}

uint64_t ConversationContextUpdateMetadata.description.getter()
{
  _StringGuts.grow(_:)(169);
  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7F8E0);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0x736575716572202CLL, 0xEF203A6570795474);
  v3 = RequestType.rawValue.getter();
  MEMORY[0x1E12A1580](v3);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7F900);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14FlowPluginInfoCSgMd, &_s14SiriKitRuntime14FlowPluginInfoCSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v5);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA7F920);
  type metadata accessor for UserID();
  lazy protocol witness table accessor for type UserID and conformance UserID();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0xD000000000000016, 0x80000001DCA7F940);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v7, v8);

  MEMORY[0x1E12A1580](0xD00000000000001CLL, 0x80000001DCA7F960);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v9, v10);

  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA7F980);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v11, v12);

  MEMORY[0x1E12A1580](93, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type UserID and conformance UserID()
{
  result = lazy protocol witness table cache variable for type UserID and conformance UserID;
  if (!lazy protocol witness table cache variable for type UserID and conformance UserID)
  {
    type metadata accessor for UserID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserID and conformance UserID);
  }

  return result;
}

uint64_t SessionStateContextKeysManager.provideKeysToFlush(metadata:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = type metadata accessor for RequestType();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69D0538], v10, v12);
  lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568], MEMORY[0x1E69D0578]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v34[0] == v33[6] && v34[1] == v33[7])
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v11 + 8))(v14, v10);

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (!*(a1 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo))
  {
LABEL_9:
    if (*(a1 + 16) != 1)
    {
LABEL_23:
      v17 = *(v2 + 16);
      MEMORY[0x1EEE9AC00](v15);
      v33[-2] = partial apply for closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest();
      v33[-1] = v2;
      os_unfair_lock_lock(v17 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v34);
      goto LABEL_26;
    }

    type metadata accessor for ServerFallbackDisablingUtils();
    inited = swift_initStackObject();
    v20 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    inited[2] = v20;
    inited[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
    inited[4] = 0;
    v21 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    v22 = type metadata accessor for ServerFallbackReason();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    if (one-time initialization token for fallbackDisabledOverride != -1)
    {
      swift_once();
    }

    v23 = static ServerFallbackDisablingUtils.fallbackDisabledOverride;
    os_unfair_lock_lock(static ServerFallbackDisablingUtils.fallbackDisabledOverride + 5);
    os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v23 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((specialized ServerFallbackDisablingUtils.shouldDisableServerFallback(isDomainDirected:topNlParse:serverFallbackReason:)(0, v9, v6) & 1) == 0)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
        v26 = outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        goto LABEL_25;
      }

      v25 = [objc_opt_self() sharedPreferences];
      LOBYTE(os_unfair_lock_opaque_low) = [v25 shouldDisableServerFallbackDomain];
    }

    else
    {
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
    v26 = outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
    if (os_unfair_lock_opaque_low)
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
        *v30 = 0;
        _os_log_impl(&dword_1DC659000, v28, v29, "Not flushing local context for server fallback request: Server fallback is disabled.", v30, 2u);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      goto LABEL_23;
    }

LABEL_25:
    v17 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v26);
    v33[-2] = partial apply for closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest();
    v33[-1] = v2;
    os_unfair_lock_lock(v17 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v34);
    goto LABEL_26;
  }

  v17 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v15);
  if (v18 == 1)
  {
    v33[-2] = closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest()partial apply;
  }

  else
  {
    v33[-2] = closure #1 in SessionStateContextKeysManager.provideKeysToFlushForServerFallbackRequest()partial apply;
  }

  v33[-1] = v1;
  os_unfair_lock_lock(v17 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v34);
LABEL_26:
  os_unfair_lock_unlock(v17 + 4);
  v31 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v34[0]);

  return v31;
}

uint64_t closure #1 in SessionStateContextKeysManager.provideKeysToFlushForOnDeviceRequest()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConversationSessionKey();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  swift_beginAccess();

  v12 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

  v16 = v12;
  swift_beginAccess();
  v15 = *(a1 + 32);
  (*(v5 + 104))(v7, *MEMORY[0x1E69D07E8], v4);

  specialized Set._Variant.insert(_:)(v10, v7);
  (*(v5 + 8))(v10, v4);
  specialized Sequence.forEach(_:)(v15, &v16);

  *a2 = v16;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for ConversationSessionKey();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D0820], &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMd, &_ss11_SetStorageCy16SiriMessageTypes22ConversationSessionKeyOGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0830]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for IntentTopic();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69CFD68], &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMd, &_ss11_SetStorageCy11SiriKitFlow11IntentTopicVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD78]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type IntentTopic and conformance IntentTopic, MEMORY[0x1E69CFD68], MEMORY[0x1E69CFD80]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69D08C8], &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMd, &_ss11_SetStorageCy16SiriMessageTypes6UserIDVGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConversationSessionKey();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v46 = a1;
  v47 = v5 + 16;
  v45 = v5;
  v40 = (v5 + 8);

  v13 = 0;
  v41 = v12;
  v42 = a1 + 56;
  v43 = a2;
  v44 = v4;
  while (v11)
  {
LABEL_11:
    v18 = *(v45 + 72);
    v19 = *(v45 + 16);
    v19(v7, *(v46 + 48) + v18 * (__clz(__rbit64(v11)) | (v13 << 6)), v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v7;
    v22 = isUniquelyReferenced_nonNull_native;
    v23 = *a2;
    v50 = v23;
    v24 = v21;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if ((v22 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      v7 = v24;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v22);
      v7 = v24;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

      v26 = v31;
    }

    v33 = v50;
    if (v30)
    {
      v14 = (v50[7] + 32 * v26);
      v15 = v14[1];
      v48 = *v14;
      v49 = v15;
      *v14 = 0u;
      v14[1] = 0u;
      v4 = v44;
    }

    else
    {
      v50[(v26 >> 6) + 8] |= 1 << v26;
      v4 = v44;
      v19((v33[6] + v26 * v18), v7, v44);
      v34 = (v33[7] + 32 * v26);
      *v34 = 0u;
      v34[1] = 0u;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_24;
      }

      v33[2] = v37;
      v48 = 0uLL;
      *&v49 = 0;
      *(&v49 + 1) = 1;
    }

    v11 &= v11 - 1;
    v16 = v43;
    *v43 = v33;
    a2 = v16;
    outlined destroy of ReferenceResolutionClientProtocol?(&v48, &_ss8Sendable_pSgSgMd, &_ss8Sendable_pSgSgMR);
    (*v40)(v7, v4);
    v12 = v41;
    v8 = v42;
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v12)
    {
    }

    v11 = *(v8 + 8 * v17);
    ++v13;
    if (v11)
    {
      v13 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ContextUpdater.updateSessionState(withValue:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for UserID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 360))(v8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    return dispatch thunk of ConversationSessionState.updateSharedValue(_:forKey:)();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    dispatch thunk of ConversationSessionState.updateValue(_:forKey:userId:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v46 & 1);
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<RemoteConversationClient>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationBridgeInstrumentationUtil.logContextFlowSubmitted(contextUpdateReceived:contextUpdateError:requestId:)(Swift::Bool contextUpdateReceived, Swift::Bool contextUpdateError, Swift::String requestId)
{
  object = requestId._object;
  countAndFlagsBits = requestId._countAndFlagsBits;
  v8 = [objc_allocWithZone(MEMORY[0x1E69CF328]) init];
  if (v8)
  {
    v15 = v8;
    [v8 setContextUpdateError:contextUpdateError];
    [v15 setContextUpdateReceived:contextUpdateReceived];
    v9 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(countAndFlagsBits, object, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      [v9 setContextSubmissionMessage:v15];
      [*(v3 + 16) emitMessage_];

      v11 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DC659000, v15, v13, "Failed to create ORCHSchemaORCHConversationContextSubmitted event", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }
  }

  v11 = v15;
LABEL_9:
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_44Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t AceServiceInvokerImpl._submitAllSerialExecute(_:)()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  }

  else
  {

    v3 = AceServiceInvokerImpl._submitAllSerialExecute(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 112);
  *(v0 + 64) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);

    v4 = *(v0 + 40);
    specialized static AceServiceInvokerImpl.genericErrorLogger(originalCommand:error:)(v4, *(v0 + 48));
    swift_willThrow();

    v5 = *(*(v3 + 160) + 16);
    os_unfair_lock_lock(v5 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v20);
    os_unfair_lock_unlock(v5 + 6);
  }

  else
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.ace);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v20);

      *(v11 + 4) = v15;
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    v16 = *(v0 + 88);
    swift_willThrow();
    v17 = *(*(v16 + 160) + 16);
    os_unfair_lock_lock(v17 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v20);
    os_unfair_lock_unlock(v17 + 6);
  }

  v18 = *(v0 + 8);

  return v18();
}

void AceServiceInvokerImpl._submitAllSerialExecute(_:)()
{
  v10 = v0;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.ace);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "AceServiceInvoker successfully submitted all commands serially", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[14];
  v6 = v0[11];

  v7 = *(*(v6 + 160) + 16);
  os_unfair_lock_lock(v7 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v9);
  os_unfair_lock_unlock(v7 + 6);
  if (!v5)
  {

    v8 = v0[1];

    v8();
  }
}

uint64_t protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)(a1, a2);
}

uint64_t AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v3[19] = swift_task_alloc();
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingText();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingSection();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v8 = type metadata accessor for DialogEngineOutput();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:), 0, 0);
}

char *AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)()
{
  v385 = v0;
  super_class = v0[23].super_class;
  receiver = v0[22].receiver;
  v3 = v0[22].super_class;
  v4 = *(v3 + 2);
  v4(super_class, v0[8].receiver, receiver);
  v5 = (*(v3 + 11))(super_class, receiver);
  v383 = v0;
  if (v5 == *MEMORY[0x1E69CFF20])
  {
    v6 = v0[23].super_class;
    v8 = v0[21].receiver;
    v7 = v0[21].super_class;
    v9 = v0[20].super_class;
    (*(v0[22].super_class + 12))(v6, v0[22].receiver);
    v8[4](v7, v6, v9);
    v10 = TemplatingResult.sections.getter();
    v11 = *(v10 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v13 = 0;
      v14 = v0[14].super_class;
      v370 = v14 + 16;
      v15 = (v14 + 32);
      v375 = *(v10 + 16);
      while (v13 < *(v10 + 16))
      {
        v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v17 = *(v14 + 9);
        (*(v14 + 2))(v383[20].receiver, v10 + v16 + v17 * v13, v383[14].receiver);
        v18 = v383;
        if (TemplatingSection.spokenOnly.getter())
        {
          v19 = *v15;
          (*v15)(v383[19].super_class, v383[20].receiver, v383[14].receiver);
          v384[0] = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1);
            v18 = v383;
            v12 = v384[0];
          }

          v21 = v12[2];
          v20 = v12[3];
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
            v18 = v383;
            v12 = v384[0];
          }

          v22 = v18[19].super_class;
          v23 = v18[14].receiver;
          v12[2] = v21 + 1;
          v15 = (v14 + 32);
          v19((v12 + v16 + v21 * v17), v22, v23);
          v11 = v375;
        }

        else
        {
          (*(v14 + 1))(v383[20].receiver, v383[14].receiver);
        }

        if (v11 == ++v13)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
    }

    else
    {
      v18 = v0;
LABEL_39:

      v57 = v12[2];
      if (v57)
      {
        v58 = v18[14].super_class;
        v59 = v18[13].receiver;
        v384[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
        v60 = v12;
        v18 = v383;
        v61 = v384[0];
        v62 = *(v58 + 2);
        v58 = (v58 + 16);
        v63 = v60 + ((*(v58 + 64) + 32) & ~*(v58 + 64));
        v366 = *(v58 + 7);
        v371 = v62;
        v362 = (v59 + 8);
        v359 = (v58 - 8);
        do
        {
          v64 = v18[19].receiver;
          v65 = v18[13].super_class;
          v66 = v18[14].receiver;
          v67 = v18[12].super_class;
          v371(v64, v63, v66);
          TemplatingSection.content.getter();
          v68 = TemplatingText.text.getter();
          v70 = v69;
          (*v362)(v65, v67);
          (*v359)(v64, v66);
          v384[0] = v61;
          v72 = *(v61 + 16);
          v71 = *(v61 + 24);
          if (v72 >= v71 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
            v61 = v384[0];
          }

          *(v61 + 16) = v72 + 1;
          v73 = v61 + 16 * v72;
          *(v73 + 32) = v68;
          *(v73 + 40) = v70;
          v63 += v366;
          --v57;
          v18 = v383;
        }

        while (v57);
      }

      else
      {

        v61 = MEMORY[0x1E69E7CC0];
      }

      v18[6].receiver = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      v74 = BidirectionalCollection<>.joined(separator:)();
      v356 = v75;
      v357 = v74;

      v76 = TemplatingResult.sections.getter();
      v12 = v76;
      v11 = *(v76 + 16);
      v77 = MEMORY[0x1E69E7CC0];
      if (!v11)
      {
LABEL_57:

        v87 = *(v77 + 16);
        if (v87)
        {
          v88 = v18[14].super_class;
          v89 = v18[13].receiver;
          v384[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
          v18 = v383;
          v90 = v384[0];
          v91 = *(v88 + 2);
          v88 = (v88 + 16);
          v92 = v77 + ((*(v88 + 64) + 32) & ~*(v88 + 64));
          v367 = *(v88 + 7);
          v372 = v91;
          v360 = (v88 - 8);
          v363 = (v89 + 8);
          do
          {
            v93 = v18[19].receiver;
            v95 = v18[13].super_class;
            v94 = v18[14].receiver;
            v96 = v18[12].super_class;
            v372(v93, v92, v94);
            TemplatingSection.content.getter();
            v97 = TemplatingText.text.getter();
            v99 = v98;
            (*v363)(v95, v96);
            (*v360)(v93, v94);
            v384[0] = v90;
            v101 = *(v90 + 16);
            v100 = *(v90 + 24);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v90 = v384[0];
            }

            *(v90 + 16) = v101 + 1;
            v102 = v90 + 16 * v101;
            *(v102 + 32) = v97;
            *(v102 + 40) = v99;
            v92 += v367;
            --v87;
            v18 = v383;
          }

          while (v87);
        }

        else
        {

          v90 = MEMORY[0x1E69E7CC0];
        }

        v18[6].super_class = v90;
        v11 = v18;
        v361 = BidirectionalCollection<>.joined(separator:)();
        v355 = v103;

        v12 = TemplatingResult.sections.getter();
        v104 = v12[2];
        v105 = MEMORY[0x1E69E7CC0];
        if (!v104)
        {
LABEL_75:

          v114 = *(v105 + 16);
          if (v114)
          {
            v115 = v18[14].super_class;
            v116 = v18[13].receiver;
            v384[0] = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114, 0);
            v18 = v383;
            v117 = v384[0];
            v118 = *(v115 + 2);
            v115 = (v115 + 16);
            v119 = v105 + ((*(v115 + 64) + 32) & ~*(v115 + 64));
            v368 = *(v115 + 7);
            v373 = v118;
            v120 = (v116 + 48);
            v364 = (v116 + 8);
            v121 = (v115 - 8);
            do
            {
              v122 = v18;
              v123 = v18[12].receiver;
              v124 = v18[12].super_class;
              v373(v18[16].super_class, v119, v18[14].receiver);
              TemplatingSection.redactedContent.getter();
              if ((*v120)(v123, 1, v124) == 1)
              {
                outlined destroy of ReferenceResolutionClientProtocol?(v18[12].receiver, &_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
                v125 = 0;
                v126 = 0xE000000000000000;
              }

              else
              {
                v127 = v18[12].receiver;
                v128 = v122[12].super_class;
                v125 = TemplatingText.text.getter();
                v126 = v129;
                (*v364)(v127, v128);
              }

              v18 = v122;
              (*v121)(v122[16].super_class, v122[14].receiver);
              v384[0] = v117;
              v131 = *(v117 + 16);
              v130 = *(v117 + 24);
              if (v131 >= v130 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1);
                v18 = v383;
                v117 = v384[0];
              }

              *(v117 + 16) = v131 + 1;
              v132 = v117 + 16 * v131;
              *(v132 + 32) = v125;
              *(v132 + 40) = v126;
              v119 += v368;
              --v114;
            }

            while (v114);
          }

          else
          {

            v117 = MEMORY[0x1E69E7CC0];
          }

          v18[7].receiver = v117;
          v11 = v18;
          v133 = BidirectionalCollection<>.joined(separator:)();
          v353 = v134;
          v354 = v133;

          v12 = TemplatingResult.sections.getter();
          v135 = v12[2];
          v136 = MEMORY[0x1E69E7CC0];
          if (!v135)
          {
LABEL_96:

            v146 = *(v136 + 16);
            if (v146)
            {
              v147 = v18[14].super_class;
              v148 = v18[13].receiver;
              v384[0] = MEMORY[0x1E69E7CC0];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v146, 0);
              v18 = v383;
              v149 = v384[0];
              v150 = *(v147 + 2);
              v147 = (v147 + 16);
              v151 = v136 + ((*(v147 + 64) + 32) & ~*(v147 + 64));
              v369 = *(v147 + 7);
              v374 = v150;
              v152 = (v148 + 48);
              v365 = (v148 + 8);
              v153 = (v147 - 8);
              do
              {
                v154 = v18;
                v155 = v18[12].super_class;
                v156 = v18[11].super_class;
                v374(v18[15].receiver, v151, v18[14].receiver);
                TemplatingSection.redactedContent.getter();
                if ((*v152)(v156, 1, v155) == 1)
                {
                  outlined destroy of ReferenceResolutionClientProtocol?(v18[11].super_class, &_s11SiriKitFlow14TemplatingTextVSgMd, &_s11SiriKitFlow14TemplatingTextVSgMR);
                  v157 = 0;
                  v158 = 0xE000000000000000;
                }

                else
                {
                  v159 = v18[12].super_class;
                  v160 = v18[11].super_class;
                  v157 = TemplatingText.text.getter();
                  v158 = v161;
                  (*v365)(v160, v159);
                }

                v18 = v154;
                (*v153)(v154[15].receiver, v154[14].receiver);
                v384[0] = v149;
                v163 = *(v149 + 16);
                v162 = *(v149 + 24);
                if (v163 >= v162 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1);
                  v18 = v383;
                  v149 = v384[0];
                }

                *(v149 + 16) = v163 + 1;
                v164 = v149 + 16 * v163;
                *(v164 + 32) = v157;
                *(v164 + 40) = v158;
                v151 += v369;
                --v146;
              }

              while (v146);
            }

            else
            {

              v149 = MEMORY[0x1E69E7CC0];
            }

            v165 = v18[21].receiver;
            v166 = v18[21].super_class;
            v167 = v18[20].super_class;
            v18[7].super_class = v149;
            v168 = v18;
            v169 = BidirectionalCollection<>.joined(separator:)();
            v171 = v170;

            v165[1](v166, v167);
            goto LABEL_224;
          }

          v137 = 0;
          v138 = v18[14].super_class;
          v139 = (v138 + 32);
          v370 = v138 + 16;
          v378 = v12[2];
          while (v137 < v12[2])
          {
            v11 = (*(v138 + 80) + 32) & ~*(v138 + 80);
            v140 = *(v138 + 9);
            (*(v138 + 2))(v383[16].receiver, v12 + v11 + v140 * v137, v383[14].receiver);
            v18 = v383;
            if (TemplatingSection.spokenOnly.getter())
            {
              (*(v138 + 1))(v383[16].receiver, v383[14].receiver);
            }

            else
            {
              v141 = *v139;
              (*v139)(v383[15].super_class, v383[16].receiver, v383[14].receiver);
              v384[0] = v136;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v136 + 16) + 1, 1);
                v18 = v383;
                v136 = v384[0];
              }

              v143 = *(v136 + 16);
              v142 = *(v136 + 24);
              if (v143 >= v142 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1);
                v18 = v383;
                v136 = v384[0];
              }

              v144 = v18[15].super_class;
              v145 = v18[14].receiver;
              *(v136 + 16) = v143 + 1;
              v139 = (v138 + 32);
              v141((v136 + v11 + v143 * v140), v144, v145);
              v135 = v378;
            }

            if (v135 == ++v137)
            {
              goto LABEL_96;
            }
          }

          goto LABEL_130;
        }

        v106 = 0;
        v107 = v18[14].super_class;
        v370 = v12[2];
        v377 = (v107 + 32);
        while (v106 < v12[2])
        {
          v11 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v108 = *(v107 + 9);
          (*(v107 + 2))(v383[17].super_class, v12 + v11 + v108 * v106, v383[14].receiver);
          v18 = v383;
          if (TemplatingSection.spokenOnly.getter())
          {
            v109 = *v377;
            (*v377)(v383[17].receiver, v383[17].super_class, v383[14].receiver);
            v384[0] = v105;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 16) + 1, 1);
              v18 = v383;
              v105 = v384[0];
            }

            v111 = *(v105 + 16);
            v110 = *(v105 + 24);
            if (v111 >= v110 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
              v18 = v383;
              v105 = v384[0];
            }

            v112 = v18[17].receiver;
            v113 = v18[14].receiver;
            *(v105 + 16) = v111 + 1;
            v109((v105 + v11 + v111 * v108), v112, v113);
            v104 = v370;
          }

          else
          {
            (*(v107 + 1))(v383[17].super_class, v383[14].receiver);
          }

          if (v104 == ++v106)
          {
            goto LABEL_75;
          }
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v78 = 0;
      v79 = v18[14].super_class;
      v370 = *(v76 + 16);
      v376 = (v79 + 32);
      while (v78 < v12[2])
      {
        v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v81 = *(v79 + 9);
        (*(v79 + 2))(v383[18].super_class, v12 + v80 + v81 * v78, v383[14].receiver);
        v18 = v383;
        if (TemplatingSection.spokenOnly.getter())
        {
          (*(v79 + 1))(v383[18].super_class, v383[14].receiver);
        }

        else
        {
          v82 = *v376;
          (*v376)(v383[18].receiver, v383[18].super_class, v383[14].receiver);
          v384[0] = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 16) + 1, 1);
            v18 = v383;
            v77 = v384[0];
          }

          v84 = *(v77 + 16);
          v83 = *(v77 + 24);
          if (v84 >= v83 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
            v18 = v383;
            v77 = v384[0];
          }

          v85 = v18[18].receiver;
          v86 = v18[14].receiver;
          *(v77 + 16) = v84 + 1;
          v82((v77 + v80 + v84 * v81), v85, v86);
          v11 = v370;
        }

        if (v11 == ++v78)
        {
          goto LABEL_57;
        }
      }
    }

    __break(1u);
    goto LABEL_129;
  }

  if (v5 == *MEMORY[0x1E69CFF30])
  {
    v24 = v0[23].super_class;
    (*(v0[22].super_class + 12))(v24, v0[22].receiver);
    v12 = *v24;
    v25 = [*v24 dialog];
    v370 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for PatternExecutionDialog, 0x1E699A0C0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v11 >> 62))
    {
      v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v358 = v12;
      if (!v26)
      {
LABEL_132:

        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_133;
      }

LABEL_16:
      v384[0] = MEMORY[0x1E69E7CC0];
      v27 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        goto LABEL_182;
      }

      v28 = 0;
      v29 = v384[0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1E12A1FE0](v28, v11);
        }

        else
        {
          v30 = *(v11 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = [v30 unfilteredFullSpeak];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v384[0] = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v29 = v384[0];
        }

        ++v28;
        *(v29 + 16) = v37 + 1;
        v38 = v29 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
      }

      while (v26 != v28);

      v12 = v358;
LABEL_133:
      v383[4].receiver = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
      v208 = BidirectionalCollection<>.joined(separator:)();
      v356 = v209;
      v357 = v208;

      v210 = [v12 dialog];
      v211 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v211 >> 62)
      {
        v212 = __CocoaSet.count.getter();
        if (v212)
        {
LABEL_135:
          v384[0] = MEMORY[0x1E69E7CC0];
          v27 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v212 & ~(v212 >> 63), 0);
          if ((v212 & 0x8000000000000000) == 0)
          {
            v213 = 0;
            v214 = v384[0];
            do
            {
              if ((v211 & 0xC000000000000001) != 0)
              {
                v215 = MEMORY[0x1E12A1FE0](v213, v211);
              }

              else
              {
                v215 = *(v211 + 8 * v213 + 32);
              }

              v216 = v215;
              v217 = [v215 unfilteredFullPrint];
              v218 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v220 = v219;

              v384[0] = v214;
              v222 = *(v214 + 16);
              v221 = *(v214 + 24);
              if (v222 >= v221 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v221 > 1), v222 + 1, 1);
                v214 = v384[0];
              }

              ++v213;
              *(v214 + 16) = v222 + 1;
              v223 = v214 + 16 * v222;
              *(v223 + 32) = v218;
              *(v223 + 40) = v220;
            }

            while (v212 != v213);

            v12 = v358;
LABEL_146:
            v383[4].super_class = v214;
            v361 = BidirectionalCollection<>.joined(separator:)();
            v355 = v224;

            v225 = [v12 dialog];
            v226 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v226 >> 62)
            {
              v227 = __CocoaSet.count.getter();
              if (v227)
              {
LABEL_148:
                v384[0] = MEMORY[0x1E69E7CC0];
                v27 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v227 & ~(v227 >> 63), 0);
                if ((v227 & 0x8000000000000000) == 0)
                {
                  v228 = 0;
                  v229 = v384[0];
                  v230 = v226;
                  v380 = v226 & 0xC000000000000001;
                  v231 = v226;
                  v232 = v227;
                  do
                  {
                    if (v380)
                    {
                      v233 = MEMORY[0x1E12A1FE0](v228, v230);
                    }

                    else
                    {
                      v233 = *(v230 + 8 * v228 + 32);
                    }

                    v234 = v233;
                    v235 = [v233 redactedFullSpeak];
                    v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v238 = v237;

                    v239 = HIBYTE(v238) & 0xF;
                    if ((v238 & 0x2000000000000000) == 0)
                    {
                      v239 = v236 & 0xFFFFFFFFFFFFLL;
                    }

                    v240 = v239 == 0;
                    v241 = &selRef_redactedSupportingSpeak;
                    if (!v240)
                    {
                      v241 = &selRef_redactedFullSpeak;
                    }

                    v242 = [v234 *v241];
                    v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v245 = v244;

                    v384[0] = v229;
                    v247 = *(v229 + 16);
                    v246 = *(v229 + 24);
                    if (v247 >= v246 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v247 + 1, 1);
                      v229 = v384[0];
                    }

                    ++v228;
                    *(v229 + 16) = v247 + 1;
                    v248 = v229 + 16 * v247;
                    *(v248 + 32) = v243;
                    *(v248 + 40) = v245;
                    v230 = v231;
                  }

                  while (v232 != v228);

                  v12 = v358;
LABEL_163:
                  v383[5].receiver = v229;
                  v249 = BidirectionalCollection<>.joined(separator:)();
                  v251 = v250;

                  v252 = [v12 dialog];
                  v253 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v353 = v251;
                  v354 = v249;
                  if (v253 >> 62)
                  {
                    v254 = __CocoaSet.count.getter();
                    if (v254)
                    {
LABEL_165:
                      v255 = v253;
                      v384[0] = MEMORY[0x1E69E7CC0];
                      v27 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v254 & ~(v254 >> 63), 0);
                      if ((v254 & 0x8000000000000000) == 0)
                      {
                        v256 = 0;
                        v257 = v384[0];
                        v258 = v255;
                        do
                        {
                          if ((v255 & 0xC000000000000001) != 0)
                          {
                            v259 = MEMORY[0x1E12A1FE0](v256);
                          }

                          else
                          {
                            v259 = *(v258 + 8 * v256 + 32);
                          }

                          v260 = v259;
                          v261 = [v259 redactedFullPrint];
                          v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v264 = v263;

                          v265 = HIBYTE(v264) & 0xF;
                          if ((v264 & 0x2000000000000000) == 0)
                          {
                            v265 = v262 & 0xFFFFFFFFFFFFLL;
                          }

                          v240 = v265 == 0;
                          v266 = &selRef_redactedSupportingPrint;
                          if (!v240)
                          {
                            v266 = &selRef_redactedFullPrint;
                          }

                          v267 = [v260 *v266];
                          v268 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v270 = v269;

                          v384[0] = v257;
                          v272 = *(v257 + 16);
                          v271 = *(v257 + 24);
                          if (v272 >= v271 >> 1)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v271 > 1), v272 + 1, 1);
                            v257 = v384[0];
                          }

                          ++v256;
                          *(v257 + 16) = v272 + 1;
                          v273 = v257 + 16 * v272;
                          *(v273 + 32) = v268;
                          *(v273 + 40) = v270;
                          v258 = v255;
                        }

                        while (v254 != v256);

                        v12 = v358;
                        goto LABEL_180;
                      }

                      goto LABEL_184;
                    }
                  }

                  else
                  {
                    v254 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v254)
                    {
                      goto LABEL_165;
                    }
                  }

                  v257 = MEMORY[0x1E69E7CC0];
LABEL_180:
                  v168 = v383;
                  v383[5].super_class = v257;
                  v169 = BidirectionalCollection<>.joined(separator:)();
                  v171 = v274;

LABEL_223:

LABEL_224:
                  v326 = v168[11].receiver;
                  v327 = v168[9].super_class;
                  v328 = v168[10].receiver;
                  v329 = v168[9].receiver;
                  v330 = v329[5];
                  v331 = v329[6];
                  v332 = *(v168[10].super_class + 2);
                  v332(v326, v168[8].super_class, v328);
                  v333 = type metadata accessor for FlowOutputMessage.InAppResponse();
                  (*(*(v333 - 8) + 56))(v327, 1, 1, v333);
                  v382 = type metadata accessor for ExecutionOutput(0);
                  v334 = objc_allocWithZone(v382);
                  v335 = &v334[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
                  *v335 = v330;
                  *(v335 + 1) = v331;
                  v336 = &v334[OBJC_IVAR___SKRExecutionOutput_fullPrint];
                  *v336 = v361;
                  v336[1] = v355;
                  v337 = &v334[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
                  *v337 = v357;
                  v337[1] = v356;
                  v338 = &v334[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
                  *v338 = v169;
                  v338[1] = v171;
                  v339 = &v334[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
                  *v339 = v354;
                  v339[1] = v353;
                  v332(&v334[OBJC_IVAR___SKRExecutionOutput_executionSource], v326, v328);
                  outlined init with copy of ReferenceResolutionClientProtocol?(v327, &v334[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
                  v340 = one-time initialization token for executor;

                  if (v340 != -1)
                  {
                    swift_once();
                  }

                  v341 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v341, static Logger.executor);
                  v342 = Logger.logObject.getter();
                  v343 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v342, v343))
                  {
                    v344 = swift_slowAlloc();
                    v345 = swift_slowAlloc();
                    v346 = swift_slowAlloc();
                    v384[0] = v346;
                    *v344 = 136315394;
                    *(v344 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v384);
                    *(v344 + 12) = 2112;
                    *(v344 + 14) = 0;
                    *v345 = 0;
                    _os_log_impl(&dword_1DC659000, v342, v343, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v344, 0x16u);
                    outlined destroy of ReferenceResolutionClientProtocol?(v345, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                    MEMORY[0x1E12A2F50](v345, -1, -1);
                    __swift_destroy_boxed_opaque_existential_1Tm(v346);
                    MEMORY[0x1E12A2F50](v346, -1, -1);
                    MEMORY[0x1E12A2F50](v344, -1, -1);
                  }

                  v348 = v383[10].super_class;
                  v347 = v383[11].receiver;
                  v350 = v383[9].super_class;
                  v349 = v383[10].receiver;
                  *&v334[OBJC_IVAR___SKRExecutionOutput_command] = 0;
                  *&v334[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
                  v383[1].receiver = v334;
                  v383[1].super_class = v382;
                  v351 = objc_msgSendSuper2(v383 + 1, sel_init);
                  v383[24].receiver = v351;
                  outlined destroy of ReferenceResolutionClientProtocol?(v350, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
                  (*(v348 + 1))(v347, v349);
                  v352 = swift_task_alloc();
                  v383[24].super_class = v352;
                  *v352 = v383;
                  *(v352 + 1) = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);

                  return AceServiceInvokerImpl.publish(executionOutput:)(v351);
                }

LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
                goto LABEL_185;
              }
            }

            else
            {
              v227 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v227)
              {
                goto LABEL_148;
              }
            }

            v229 = MEMORY[0x1E69E7CC0];
            goto LABEL_163;
          }

LABEL_182:
          __break(1u);
          goto LABEL_183;
        }
      }

      else
      {
        v212 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v212)
        {
          goto LABEL_135;
        }
      }

      v214 = MEMORY[0x1E69E7CC0];
      goto LABEL_146;
    }

LABEL_131:
    v26 = __CocoaSet.count.getter();
    v358 = v12;
    if (!v26)
    {
      goto LABEL_132;
    }

    goto LABEL_16;
  }

  if (v5 == *MEMORY[0x1E69CFF28])
  {
    v39 = v0[23].super_class;
    (*(v0[22].super_class + 12))(v39, v0[22].receiver);
    v370 = *v39;
    v27 = specialized Sequence.flatMap<A>(_:)(*v39);
    if (!(v27 >> 62))
    {
      v40 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_28;
    }

LABEL_185:
    v275 = v27;
    v40 = __CocoaSet.count.getter();
    v27 = v275;
LABEL_28:
    if (v40)
    {
      v41 = v27;
      v384[0] = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0);
      if (v40 < 0)
      {
        __break(1u);
        goto LABEL_232;
      }

      v43 = 0;
      v44 = v384[0];
      v45 = v41;
      v46 = v41 & 0xC000000000000001;
      v47 = v41;
      do
      {
        if (v46)
        {
          v48 = MEMORY[0x1E12A1FE0](v43, v45);
        }

        else
        {
          v48 = *(v45 + 8 * v43 + 32);
        }

        v49 = v48;
        v50 = [v48 unfilteredFullSpeak];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v384[0] = v44;
        v55 = *(v44 + 16);
        v54 = *(v44 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
          v44 = v384[0];
        }

        ++v43;
        *(v44 + 16) = v55 + 1;
        v56 = v44 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
        v45 = v47;
      }

      while (v40 != v43);
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }

    v383[2].receiver = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v189 = BidirectionalCollection<>.joined(separator:)();
    v356 = v190;
    v357 = v189;

    v191 = specialized Sequence.flatMap<A>(_:)(v370);
    if (v191 >> 62)
    {
      v276 = v191;
      v192 = __CocoaSet.count.getter();
      v191 = v276;
      if (v192)
      {
LABEL_118:
        v193 = v191;
        v384[0] = MEMORY[0x1E69E7CC0];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v192 & ~(v192 >> 63), 0);
        if ((v192 & 0x8000000000000000) == 0)
        {
          v194 = 0;
          v195 = v384[0];
          v196 = v193;
          v197 = v193 & 0xC000000000000001;
          v198 = v193;
          do
          {
            if (v197)
            {
              v199 = MEMORY[0x1E12A1FE0](v194, v196);
            }

            else
            {
              v199 = *(v196 + 8 * v194 + 32);
            }

            v200 = v199;
            v201 = [v199 unfilteredFullPrint];
            v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v204 = v203;

            v384[0] = v195;
            v206 = *(v195 + 16);
            v205 = *(v195 + 24);
            if (v206 >= v205 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v205 > 1), v206 + 1, 1);
              v195 = v384[0];
            }

            ++v194;
            *(v195 + 16) = v206 + 1;
            v207 = v195 + 16 * v206;
            *(v207 + 32) = v202;
            *(v207 + 40) = v204;
            v196 = v198;
          }

          while (v192 != v194);

LABEL_188:
          v383[2].super_class = v195;
          v361 = BidirectionalCollection<>.joined(separator:)();
          v355 = v277;

          v278 = specialized Sequence.flatMap<A>(_:)(v370);
          if (v278 >> 62)
          {
            v301 = v278;
            v279 = __CocoaSet.count.getter();
            v278 = v301;
            if (v279)
            {
LABEL_190:
              v280 = v278;
              v384[0] = MEMORY[0x1E69E7CC0];
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v279 & ~(v279 >> 63), 0);
              if ((v279 & 0x8000000000000000) == 0)
              {
                v281 = 0;
                v282 = v384[0];
                v283 = v280;
                v381 = v280 & 0xC000000000000001;
                v284 = v280;
                v285 = v279;
                do
                {
                  if (v381)
                  {
                    v286 = MEMORY[0x1E12A1FE0](v281, v283);
                  }

                  else
                  {
                    v286 = *(v283 + 8 * v281 + 32);
                  }

                  v287 = v286;
                  v288 = [v286 unfilteredRedactedFullSpeak];
                  v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v291 = v290;

                  v292 = HIBYTE(v291) & 0xF;
                  if ((v291 & 0x2000000000000000) == 0)
                  {
                    v292 = v289 & 0xFFFFFFFFFFFFLL;
                  }

                  v240 = v292 == 0;
                  v293 = &selRef_redactedSupportingSpeak;
                  if (!v240)
                  {
                    v293 = &selRef_unfilteredRedactedFullSpeak;
                  }

                  v294 = [v287 *v293];
                  v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v297 = v296;

                  v384[0] = v282;
                  v299 = *(v282 + 16);
                  v298 = *(v282 + 24);
                  if (v299 >= v298 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v298 > 1), v299 + 1, 1);
                    v282 = v384[0];
                  }

                  ++v281;
                  *(v282 + 16) = v299 + 1;
                  v300 = v282 + 16 * v299;
                  *(v300 + 32) = v295;
                  *(v300 + 40) = v297;
                  v283 = v284;
                }

                while (v285 != v281);

LABEL_205:
                v383[3].receiver = v282;
                v302 = BidirectionalCollection<>.joined(separator:)();
                v304 = v303;

                v305 = specialized Sequence.flatMap<A>(_:)(v370);

                v353 = v304;
                v354 = v302;
                if (v305 >> 62)
                {
                  v306 = __CocoaSet.count.getter();
                  if (v306)
                  {
LABEL_207:
                    v384[0] = MEMORY[0x1E69E7CC0];
                    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v306 & ~(v306 >> 63), 0);
                    if ((v306 & 0x8000000000000000) == 0)
                    {
                      v307 = 0;
                      v308 = v384[0];
                      v309 = v305;
                      do
                      {
                        if ((v305 & 0xC000000000000001) != 0)
                        {
                          v310 = MEMORY[0x1E12A1FE0](v307);
                        }

                        else
                        {
                          v310 = *(v309 + 8 * v307 + 32);
                        }

                        v311 = v310;
                        v312 = [v310 unfilteredRedactedFullPrint];
                        v313 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v315 = v314;

                        v316 = HIBYTE(v315) & 0xF;
                        if ((v315 & 0x2000000000000000) == 0)
                        {
                          v316 = v313 & 0xFFFFFFFFFFFFLL;
                        }

                        v240 = v316 == 0;
                        v317 = &selRef_redactedSupportingPrint;
                        if (!v240)
                        {
                          v317 = &selRef_unfilteredRedactedFullPrint;
                        }

                        v318 = [v311 *v317];
                        v319 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v321 = v320;

                        v384[0] = v308;
                        v323 = *(v308 + 16);
                        v322 = *(v308 + 24);
                        if (v323 >= v322 >> 1)
                        {
                          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v322 > 1), v323 + 1, 1);
                          v308 = v384[0];
                        }

                        ++v307;
                        *(v308 + 16) = v323 + 1;
                        v324 = v308 + 16 * v323;
                        *(v324 + 32) = v319;
                        *(v324 + 40) = v321;
                        v309 = v305;
                      }

                      while (v306 != v307);

                      goto LABEL_222;
                    }

LABEL_234:
                    __break(1u);
                    return result;
                  }
                }

                else
                {
                  v306 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v306)
                  {
                    goto LABEL_207;
                  }
                }

                v308 = MEMORY[0x1E69E7CC0];
LABEL_222:
                v168 = v383;
                v383[3].super_class = v308;
                v169 = BidirectionalCollection<>.joined(separator:)();
                v171 = v325;
                goto LABEL_223;
              }

LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          else
          {
            v279 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v279)
            {
              goto LABEL_190;
            }
          }

          v282 = MEMORY[0x1E69E7CC0];
          goto LABEL_205;
        }

LABEL_232:
        __break(1u);
        goto LABEL_233;
      }
    }

    else
    {
      v192 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v192)
      {
        goto LABEL_118;
      }
    }

    v195 = MEMORY[0x1E69E7CC0];
    goto LABEL_188;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v172 = v0[23].receiver;
  v173 = v0[22].receiver;
  v174 = v383[8].receiver;
  v175 = type metadata accessor for Logger();
  __swift_project_value_buffer(v175, static Logger.executor);
  v4(v172, v174, v173);
  v176 = Logger.logObject.getter();
  v177 = static os_log_type_t.error.getter();
  v178 = os_log_type_enabled(v176, v177);
  v180 = v383[22].super_class;
  v179 = v383[23].receiver;
  v181 = v383[22].receiver;
  if (v178)
  {
    v182 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    v384[0] = v379;
    *v182 = 136315138;
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type DialogEngineOutput and conformance DialogEngineOutput, 255, MEMORY[0x1E69CFF38], MEMORY[0x1E69CFF40]);
    v183 = dispatch thunk of CustomStringConvertible.description.getter();
    v185 = v184;
    v186 = *(v180 + 1);
    v186(v179, v181);
    v187 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v185, v384);

    *(v182 + 4) = v187;
    _os_log_impl(&dword_1DC659000, v176, v177, "Publish called with an unexpected dialogEngineOutput: %s. Ignoring publish attempt", v182, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v379);
    MEMORY[0x1E12A2F50](v379, -1, -1);
    MEMORY[0x1E12A2F50](v182, -1, -1);
  }

  else
  {

    v186 = *(v180 + 1);
    v186(v179, v181);
  }

  v186(v383[23].super_class, v383[22].receiver);

  v188 = v383->super_class;

  return v188();
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow17TemplatingSectionVGMR, MEMORY[0x1E69CFEF8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredK0V06scoredK0tGMR, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x1E69D09E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x1E69D2828]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam15ActionCandidateVGMR, MEMORY[0x1E69CE370]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x1E69D1790]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x1E69D1740]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AffinityValueFetcher_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime20AffinityValueFetcher_pGMR, &_s14SiriKitRuntime20AffinityValueFetcher_pMd, &_s14SiriKitRuntime20AffinityValueFetcher_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR, &_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5ParseOGMR, MEMORY[0x1E69D0188]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR, MEMORY[0x1E69CE360]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMd, &_ss23_ContiguousArrayStorageCy21InternalSwiftProtobuf07Google_F12_StringValueVGMR, MEMORY[0x1E69AA9A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D36_Nlu_External_DelegatedUserDialogActVGMR, MEMORY[0x1E69D0BE8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE17ConfirmationStateOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE17ConfirmationStateOGMR, MEMORY[0x1E69CFD08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5InputVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow5InputVGMR, MEMORY[0x1E69D0100]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow24CorrectionsActionOutcomeOGMR, MEMORY[0x1E69D0058]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19NSExtensionProtocol_pGMR, &_s14SiriKitRuntime19NSExtensionProtocol_pMd, &_s14SiriKitRuntime19NSExtensionProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23ParseUserDataAttachmentVGMR, type metadata accessor for ParseUserDataAttachment);
  *v3 = result;
  return result;
}

uint64_t closure #1 in ConversationOutputSubmitter.publishDialogEngineOutput(fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionSource:requestId:assistantId:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v43 = a7;
  v44 = a8;
  v39 = a4;
  v40 = a5;
  v38 = a2;
  v48 = a14;
  v49 = a15;
  v46 = a12;
  v47 = a13;
  v45 = a11;
  v41 = a9;
  v42 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMd, &_s16SiriMessageTypes14RequestSummaryV15ExecutionSourceOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v35 - v21;
  v23 = type metadata accessor for UUID();
  v36 = *(v23 - 8);
  v37 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v35 - v27;
  v29 = *MEMORY[0x1E69D0460];
  v30 = type metadata accessor for MessageSource();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v28, v29, v30);
  (*(v31 + 56))(v28, 0, 1, v30);
  DialogEngineOutputMessage.Builder.source.setter();
  if (!a3)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v36 + 8))(v25, v37);
  }

  DialogEngineOutputMessage.Builder.assistantId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v39, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  DialogEngineOutputMessage.Builder.sessionId.setter();
  if (!a6)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v36 + 8))(v25, v37);
  }

  DialogEngineOutputMessage.Builder.requestId.setter();

  DialogEngineOutputMessage.Builder.fullPrint.setter();

  DialogEngineOutputMessage.Builder.fullSpeak.setter();

  DialogEngineOutputMessage.Builder.redactedFullPrint.setter();

  DialogEngineOutputMessage.Builder.redactedFullSpeak.setter();
  v32 = type metadata accessor for RequestSummary.ExecutionSource();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v19, v49, v32);
  (*(v33 + 56))(v19, 0, 1, v32);
  return DialogEngineOutputMessage.Builder.executionSource.setter();
}

uint64_t AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:)()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);
  }

  else
  {
    v2 = AceServiceInvokerImpl.publish(dialogEngineOutput:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ConversationTaskObservationDelegate.executionDidComplete() in conformance RemoteConversationService()
{
  *(v1 + 16) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for ConversationTaskObservationDelegate.executionDidComplete() in conformance RemoteConversationService, v2, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "executionDidComplete()", 22, 2);
  v5 = (*(**(v1 + 168) + 216) + **(**(v1 + 168) + 216));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in RemoteConversationService.cancel(cancellationReason:reply:);

  return v5();
}

uint64_t AsyncSerialQueue.wait()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.wait(), 0, 0);
}

{
  v10 = v0;
  v1 = v0[2];
  v2 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in AsyncSerialQueue.wait();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v9);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v9;
  v0[3] = v9;

  if (v4)
  {

    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = AsyncSerialQueue.wait();
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v5, v4, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{

  return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.wait(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t destroy for ConversationCommitResult(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v4 = type metadata accessor for PluginAction();
LABEL_12:
      v5 = *(*(v4 - 8) + 8);

      return v5(a1, v4);
    }

    if (result != 3)
    {
      return result;
    }
  }

  else if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = type metadata accessor for FlowUnhandledReason();
    goto LABEL_12;
  }
}

id ConversationCommitResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PluginAction();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v30 - v6;
  v7 = type metadata accessor for FlowUnhandledReason();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for ConversationCommitResult(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ConversationCommitResult(v1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v21 = specialized static ConversationCommitResultXPC.flowNeedsReparse(executionRequestID:userID:)(*v19, v19[1], v19[2], v19[3]);
      goto LABEL_9;
    }

    v22 = v31;
    (*(v31 + 32))(v4, v19, v2);
    v23 = specialized static ConversationCommitResultXPC.flowWantsToRedirect(nextPluginAction:)(v4);
    (*(v22 + 8))(v4, v2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = specialized static ConversationCommitResultXPC.flowWasHandled(activeTasks:completedTasks:)(*v19, v19[1]);
LABEL_9:
      v23 = v21;

      return v23;
    }

    (*(v8 + 32))(v16, v19, v7);
    (*(v8 + 16))(v13, v16, v7);
    v24 = (*(v8 + 88))(v13, v7);
    if (v24 == *MEMORY[0x1E69CFB50])
    {
      v25 = v24;
      (*(v8 + 96))(v13, v7);
      v26 = v30;
      outlined init with take of PrescribedTool?(v13, v30);
      outlined init with copy of PrescribedTool?(v26, v10);
      (*(v8 + 104))(v10, v25, v7);
      v23 = specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(v10);
      v27 = *(v8 + 8);
      v27(v10, v7);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
      v27(v16, v7);
    }

    else
    {
      v23 = specialized static ConversationCommitResultXPC.flowWasNotHandled(flowUnhandledReason:)(v16);
      v28 = *(v8 + 8);
      v28(v16, v7);
      v28(v13, v7);
    }
  }

  return v23;
}

uint64_t outlined init with copy of ConversationCommitResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationCommitResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static ConversationCommitResultXPC.flowWasHandled(activeTasks:completedTasks:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationCommitResultXPC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___SKRConversationCommitResult_type] = 1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_activeTasks] = a1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_completedTasks] = a2;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason] = 0;
  v6 = &v5[OBJC_IVAR___SKRConversationCommitResult_prescribedTool];
  *v6 = 0;
  v6[8] = 1;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_error] = 0;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData] = xmmword_1DCA69F00;
  v7 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v5[OBJC_IVAR___SKRConversationCommitResult_reparseUserID];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext] = 0;
  v10.receiver = v5;
  v10.super_class = v4;

  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall ConversationCommitResultXPC.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Siri_Nlu_External_Task();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - v8;
  v10 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_type);
  v11 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000, v7);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v65 = v1;
  v12 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_activeTasks);
  v13 = *(v12 + 16);
  v70 = v4;
  if (v13)
  {
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v14 + 56);
    v71 = (v14 - 8);
    v72 = v17;
    v73 = MEMORY[0x1E69E7CC0];
    v67 = v15;
    v68 = v14;
    v15(v9, v16, v3);
    while (1)
    {
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      v18 = Message.serializedData(partial:)();
      v20 = v19;
      (*v71)(v9, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      }

      v22 = *(v73 + 2);
      v21 = *(v73 + 3);
      if (v22 >= v21 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v73);
      }

      v23 = v73;
      *(v73 + 2) = v22 + 1;
      v24 = &v23[16 * v22];
      *(v24 + 4) = v18;
      *(v24 + 5) = v20;
      v16 += v72;
      if (!--v13)
      {
        break;
      }

      v67(v9, v16, v3);
    }
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v25 = Array._bridgeToObjectiveC()().super.isa;

  v26 = MEMORY[0x1E12A1410](0x6154657669746361, 0xEB00000000736B73);
  [(objc_class *)isa encodeObject:v25 forKey:v26];

  v27 = *(v65 + OBJC_IVAR___SKRConversationCommitResult_completedTasks);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v69;
    v30 = *(v70 + 16);
    v31 = v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v72 = *(v70 + 72);
    v73 = v30;
    v32 = (v70 + 8);
    v33 = MEMORY[0x1E69E7CC0];
    v70 += 16;
    (v30)(v69, v31, v3);
    while (1)
    {
      lazy protocol witness table accessor for type PrescribedTool and conformance PrescribedTool(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      v34 = Message.serializedData(partial:)();
      v36 = v35;
      (*v32)(v29, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      }

      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      if (v38 >= v37 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v33);
      }

      *(v33 + 2) = v38 + 1;
      v39 = &v33[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v36;
      v29 = v69;
      v31 += v72;
      if (!--v28)
      {
        break;
      }

      (v73)(v69, v31, v3);
    }
  }

  v40 = Array._bridgeToObjectiveC()().super.isa;

  v41 = MEMORY[0x1E12A1410](0x6574656C706D6F63, 0xEE00736B73615464);
  v42 = isa;
  [(objc_class *)isa encodeObject:v40 forKey:v41];

  v43 = v65;
  v44 = *(v65 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
  if (v44 <= 3)
  {
    if ((v44 - 1) < 3)
    {
      v45 = 0x80000001DCA7A8E0;
      v46 = 0xD000000000000013;
LABEL_23:
      v47 = MEMORY[0x1E12A1410](v46, v45);
      [(objc_class *)v42 encodeInteger:v44 forKey:v47];
LABEL_32:

      goto LABEL_33;
    }

    if (!v44)
    {
      goto LABEL_33;
    }

LABEL_43:
    v74 = *(v65 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  switch(v44)
  {
    case 4:
      v51 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v42 encodeInteger:4 forKey:v51];

      if ((*(v43 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool + 8) & 1) == 0)
      {
        v44 = *(v43 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
        v46 = 0x6269726373657270;
        v45 = 0xEE006C6F6F546465;
        goto LABEL_23;
      }

      break;
    case 5:
      v48 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v42 encodeInteger:5 forKey:v48];

      v49 = *(v43 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
      if (v49)
      {
        v50 = v49;
        v47 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A960);
        [(objc_class *)v42 encodeObject:v50 forKey:v47];

        goto LABEL_32;
      }

      break;
    case 6:
      v47 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA7A8E0);
      [(objc_class *)v42 encodeInteger:6 forKey:v47];
      goto LABEL_32;
    default:
      goto LABEL_43;
  }

LABEL_33:
  v52 = *(v43 + OBJC_IVAR___SKRConversationCommitResult_error);
  if (v52)
  {
    v53 = v52;
    v54 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
    [(objc_class *)v42 encodeObject:v53 forKey:v54];
  }

  v55 = (v43 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData);
  v56 = *(v43 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8);
  if (v56 >> 60 != 15)
  {
    v57 = *v55;
    outlined copy of Data._Representation(*v55, *(v43 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8));
    v58 = Data._bridgeToObjectiveC()().super.isa;
    v59 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7A910);
    [(objc_class *)v42 encodeObject:v58 forKey:v59];

    outlined consume of Data?(v57, v56);
  }

  if (*(v43 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID + 8))
  {
    v60 = MEMORY[0x1E12A1410](*(v43 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID));
    v61 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7A930);
    [(objc_class *)v42 encodeObject:v60 forKey:v61];
  }

  if (*(v43 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID + 8))
  {
    v62 = MEMORY[0x1E12A1410](*(v43 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID));
    v63 = MEMORY[0x1E12A1410](0x5565737261706572, 0xED00004449726573);
    [(objc_class *)v42 encodeObject:v62 forKey:v63];
  }
}

unint64_t specialized FlowUnhandledReasonXPC.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationClient.commit(bridge:)(void *a1)
{
  v2 = type metadata accessor for ConversationCommitResult(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id ConversationCommitResultXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PluginAction();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriXRedirectContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowUnhandledReason();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v13;
  v17 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_type);
  if (v17 <= 1)
  {
    if (!v17)
    {
      v21 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_error);
      if (!v21)
      {
        goto LABEL_47;
      }

      swift_willThrow();
      return v21;
    }

    if (v17 == 1)
    {
      v30 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_activeTasks);
      v31 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_completedTasks);
      v32 = v43;
      *v43 = v30;
      v32[1] = v31;
      type metadata accessor for ConversationCommitResult(0);
      goto LABEL_20;
    }

LABEL_44:
    v45 = v17;
    goto LABEL_45;
  }

  if (v17 == 2)
  {
    v22 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_flowUnhandledReason);
    if (v22 > 3)
    {
      if (v22 == 4)
      {
        if (*(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool + 8))
        {
          v37 = v14;
          v38 = type metadata accessor for PrescribedTool();
          (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
        }

        else
        {
          v39 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
          if (v39 == 1)
          {
            v37 = v14;
            static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
          }

          else
          {
            if (v39)
            {
              v45 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_prescribedTool);
              goto LABEL_45;
            }

            v37 = v14;
            static PrescribedTool.searchTool.getter();
          }

          v40 = type metadata accessor for PrescribedTool();
          (*(*(v40 - 8) + 56))(v11, 0, 1, v40);
        }

        v35 = v37;
        (*(v37 + 104))(v11, *MEMORY[0x1E69CFB50], v9);
        (*(v37 + 32))(v16, v11, v9);
        goto LABEL_40;
      }

      if (v22 == 5)
      {
        v33 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_siriXRedirectContext);
        if (!v33)
        {
          goto LABEL_48;
        }

        v34 = v14;
        (*((*MEMORY[0x1E69E7D40] & *v33) + 0x60))(v15.n128_f64[0]);
        (*(v6 + 32))(v16, v8, v5);
        v35 = v34;
        (*(v34 + 104))(v16, *MEMORY[0x1E69CFB58], v9);
        goto LABEL_40;
      }

      if (v22 != 6)
      {
        goto LABEL_51;
      }

      v36 = MEMORY[0x1E69CFB68];
    }

    else
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          v23 = MEMORY[0x1E69CFB70];
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_49;
          }

          v23 = MEMORY[0x1E69CFB60];
        }

        v35 = v14;
        (*(v14 + 104))(&v41 - v13, *v23, v9, v15);
        goto LABEL_40;
      }

      v36 = MEMORY[0x1E69CFB78];
    }

    v35 = v14;
    (*(v14 + 104))(&v41 - v13, *v36, v9);
LABEL_40:
    (*(v35 + 32))(v43, v16, v9);
    type metadata accessor for ConversationCommitResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17 != 3)
  {
    if (v17 == 4)
    {
      v24 = (v1 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID);
      v25 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_reparseExecutionRequestID + 8);
      if (v25)
      {
        v26 = (v1 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID);
        v27 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_reparseUserID + 8);
        if (v27)
        {
          v28 = *v26;
          v29 = v43;
          *v43 = *v24;
          v29[1] = v25;
          v29[2] = v28;
          v29[3] = v27;
          type metadata accessor for ConversationCommitResult(0);
LABEL_20:
          swift_storeEnumTagMultiPayload();
        }
      }

      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD00000000000006ALL, 0x80000001DCA7F500, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 208);
      __break(1u);
    }

    goto LABEL_44;
  }

  v18 = *(v1 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData + 8);
  if (v18 >> 60 == 15)
  {
    while (1)
    {
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000067, 0x80000001DCA7F5F0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 202);
      __break(1u);
LABEL_47:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000057, 0x80000001DCA7F730, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 172);
      __break(1u);
LABEL_48:
      specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000060, 0x80000001DCA7F660, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 193);
      __break(1u);
LABEL_49:
      if (!v22)
      {
        specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0xD000000000000056, 0x80000001DCA7F6D0, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/XPCTypes/ConversationCommitResult.swift", 127, 2, 181);
        __break(1u);
      }

LABEL_51:
      v45 = v22;
LABEL_45:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  outlined copy of Data._Representation(*(v1 + OBJC_IVAR___SKRConversationCommitResult_nextPluginActionData), v18);
  v19 = v44;
  result = PluginAction.init(data:)();
  if (!v19)
  {
    (*(v42 + 32))(v43, v4, v2);
    type metadata accessor for ConversationCommitResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t specialized RunSiriKitExecutorProcessorExecutionDelegate.fetchSelfReflectionDecision(reply:)(uint64_t (*a1)(char *))
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
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x80000001DCA7EE00, &v8);
    _os_log_impl(&dword_1DC659000, v3, v4, "Need not do %s for RSKE initiated execution", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v9 = 2;
  return a1(&v9);
}

uint64_t protocol witness for DecisionMaking.commitConversation(_:) in conformance DecisionEngine()
{
  v1 = *(v0 + 64);
  v2 = **(v0 + 72);
  swift_beginAccess();
  *(v2 + 184) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t partial apply for closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(a1, v4, v5, v6);
}

uint64_t closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.ExecutionTaskContext.registerTasks(activeTasks:completedTasks:), v5, 0);
}

uint64_t closure #1 in RemoteConversationClient.isEmpty()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationClient.isEmpty(), 0, 0);
}

uint64_t closure #1 in RemoteConversationClient.isEmpty()()
{
  v15 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = closure #1 in RemoteConversationClient.reset();
    v5 = v0[2];
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x287974706D457369, 0xE900000000000029, partial apply for closure #1 in closure #1 in RemoteConversationClient.isEmpty(), v3, v6);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v14);
      _os_log_impl(&dword_1DC659000, v8, v9, "Tried to call %{public}s on an invalid connection to a RemoteConversation. Will not reconnect until a StartTurn comes in.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    *v0[2] = 1;
    v12 = v0[1];

    return v12();
  }
}

void closure #1 in closure #1 in RemoteConversationClient.isEmpty()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = aBlock - v15;
  (*(v13 + 16))(aBlock - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = a5;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = a6;
  v19 = _Block_copy(aBlock);

  [a2 *a7];
  _Block_release(v19);
}

uint64_t @objc SendableRemoteConversationXPCWrapper.isEmpty(reply:)(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(a1 + 16);
  v16[4] = a5;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v16[3] = a6;
  v14 = _Block_copy(v16);

  [v13 *a7];

  _Block_release(v14);
}

uint64_t partial apply for closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[38] = swift_task_alloc();
  v6[39] = type metadata accessor for RemoteConversationService.State(0);
  v6[40] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[41] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.isEmpty(reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.isEmpty(reply:)()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = *(v0 + 320);

    v16 = *(v15 + 40);
    v17 = *(v15 + 56);
    *(v0 + 48) = *(v15 + 72);
    *(v0 + 16) = v16;
    *(v0 + 32) = v17;
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    if (!*(v0 + 120))
    {
      v29 = *(v0 + 320);
      v30 = *(v0 + 288);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 96, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      v30(1);
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
      v26 = v29;
      goto LABEL_7;
    }

    v5 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), v0 + 56);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 56, v0 + 136);
    v24 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v23, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
    v25 = swift_allocObject();
    v25[2] = v18;
    v25[3] = v24;
    v25[4] = v21;
    v25[5] = v20;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), (v25 + 6));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #2 in closure #1 in RemoteConversationService.isEmpty(reply:), v25);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
LABEL_6:
    v26 = v5;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 288);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), v0 + 176);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 176, v0 + 216);
    v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v12, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = v13;
    v14[4] = v9;
    v14[5] = v8;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 216), (v14 + 6));

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v14);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined destroy of RemoteConversationService.State(v5 + v10, type metadata accessor for SiriRequest);
    goto LABEL_6;
  }

  (*(v0 + 288))(1);
LABEL_9:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t partial apply for closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[5] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v7, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)()
{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 56) + **(v3 + 56));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:);

  return v6(v2, v3);
}

uint64_t protocol witness for Conversational.isEmpty() in conformance Conversation()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for Conversational.isEmpty() in conformance Conversation, v2, 0);
}

{
  v1 = (*(**(*(v0 + 16) + 112) + 184))();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:)(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RemoteConversationService.isEmpty(reply:), v2, 0);
}

uint64_t closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:)()
{
  (*(v0 + 16))(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in RemoteConversationService.isCorrectable(reply:);

  return v6(v2, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff()(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t RemoteConversationClient.isEmpty()(uint64_t a1)
{
  v10 = v1;
  v2 = *(v1 + 40);
  if (v2 == 2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v9);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    LOBYTE(v2) = 1;
  }

  v7 = *(v1 + 8);

  return v7(v2 & 1);
}

{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(1);
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(char a1)
{
  v2 = *(*v1 + 1184);
  *(*v1 + 1606) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

{
  v2 = *(*v1 + 1184);
  *(*v1 + 1607) = a1;

  return MEMORY[0x1EEE6DFA0](ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:), v2, 0);
}

uint64_t ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)(uint64_t a1)
{
  if (*(v1 + 1606))
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ConversationService] Conversation complete, removing from active conversations", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 1576) = v5;
    *v5 = v1;
    v5[1] = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);

    return RemoteConversationClient.isCorrectable()();
  }

  else
  {
    v7 = *(v1 + 384);

    if ((*(v7 + 104) & 0xC000000000000001) != 0)
    {

      __CocoaSet.count.getter();
    }

    v8 = *(v1 + 1560);
    v9 = *(v1 + 1288);
    v10 = *(v1 + 1032);
    (*(*(v1 + 368) + 16))(v8, (*(v1 + 1606) & 1) == 0, *(v1 + 1416));

    outlined destroy of ConversationService.EagerResult(v10, type metadata accessor for ConversationCommitResult);

    v11 = *(v1 + 384);
    v12 = *(**(v11 + 216) + 208);

    v12(0xD00000000000005BLL, 0x80000001DCA814E0, &closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)partial apply, v11);

    v13 = *(v1 + 8);

    return v13();
  }
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1528) = a1;
  *(v4 + 1536) = v1;

  v5 = *(v3 + 1184);
  if (v1)
  {
    v6 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  else
  {
    v6 = ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void RunSiriKitExecutorProcessorExecutionDelegate.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 568))(a1, a2 & 1);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v6[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8], &v11);
      _os_log_impl(&dword_1DC659000, v7, v8, "RunSiriKitExecutorProcessor already released, ignoring close of %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }
  }
}

void RunSiriKitExecutorProcessor.close(withExecutionOutput:needsUserInput:)(void *a1, char a2)
{
  v3 = v2;
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
    v21 = v11;
    *v10 = 136315138;
    v12 = [v7 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a2;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v21);
    a2 = v14;

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v8, v9, "<<<--- %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  if ((*(*v3 + 448))())
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v18, "Ignoring close() because request already finished", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }
  }

  else
  {

    RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(v7, 0, 0, a2 & 1);
  }
}

uint64_t RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v95 = a1;
  v85 = type metadata accessor for RequestType();
  v92 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v91 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v80[-v11];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV_SbtMd, &_s16SiriMessageTypes6UserIDV_SbtMR);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v80[-v13];
  v94 = type metadata accessor for UserID();
  v14 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v80[-v17];
  v83 = type metadata accessor for UUID();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v19 = &v80[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.conversationBridge);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v90 = v14;
  v84 = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v81 = v6;
    v6 = v24;
    v25 = swift_slowAlloc();
    v93 = v12;
    v26 = v25;
    v96 = v25;
    *v6 = 136315138;
    if (a3)
    {
      v27 = a2;
    }

    else
    {
      v27 = 7104878;
    }

    if (a3)
    {
      v28 = a3;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v96);

    *(v6 + 4) = v29;
    _os_log_impl(&dword_1DC659000, v21, v22, "Handling close() from Execution kicked off by RSKE, errorString=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v12 = v93;
    MEMORY[0x1E12A2F50](v30, -1, -1);
    v31 = v6;
    LOBYTE(v6) = v81;
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  if (a3)
  {
    v32 = *(v5 + 32);
    if (v32)
    {
      v33 = *(v5 + 40);
      v34 = *(v5 + 16);
      v35 = objc_allocWithZone(MEMORY[0x1E69C7778]);

      v36 = [v35 init];
      UUID.init()();
      v37 = UUID.uuidString.getter();
      v93 = v12;
      v39 = v38;
      (*(v82 + 8))(v19, v83);
      v40 = MEMORY[0x1E12A1410](v37, v39);

      [v36 setAceId_];

      v41 = v36;
      v42 = [v34 aceId];
      [v41 setRefId_];

      [v41 setErrorCode_];
      v43 = v84;
      v44 = MEMORY[0x1E12A1410](v84, a3);
      [v41 setReason_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DCA66060;
      *(inited + 32) = 0x6567617373654DLL;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = v43;
      *(inited + 56) = a3;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of ReferenceResolutionClientProtocol?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v47 = MEMORY[0x1E12A1410](0x6F69747563657845, 0xEF6567646972426ELL);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v49 = [v46 initWithDomain:v47 code:-1 userInfo:isa];

      v12 = v93;
      v32(v41, v49);

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v32, v33);
    }
  }

  else
  {
    specialized static RunSiriKitExecutorProcessor.replyRunSiriKitExecutorCompleted(forCommand:needsUserInput:needsServerExecution:replyHandler:topicSwitchDetected:)(*(v5 + 16), v6 & 1, 0, *(v5 + 32), *(v5 + 40), 0);
  }

  RunSiriKitExecutorProcessor.userMetadata.getter(v12);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtMR);
  if ((*(*(v50 - 8) + 48))(v12, 1, v50) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMd, &_s16SiriMessageTypes6UserIDV6userId_Sb05meetsD16SessionThresholdtSgMR);
    v51 = 0;
  }

  else
  {
    v52 = v12[*(v50 + 48)];
    v54 = v86;
    v53 = v87;
    v55 = *(v87 + 48);
    v56 = *(v90 + 32);
    v57 = v94;
    v56(v86, v12, v94);
    v54[v55] = v52;
    v58 = v54[*(v53 + 48)];
    v59 = v88;
    v56(v88, v54, v57);
    v60 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_source);
    LODWORD(v93) = v58;
    if (v60 > 1)
    {
      LODWORD(v90) = 1;
    }

    else
    {
      LODWORD(v90) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v62 = v91;
    v61 = v92;
    v63 = v85;
    v64 = (*(v92 + 16))(v91, v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestType, v85);
    v65 = (*(*v5 + 472))(v64);
    v66 = v89;
    v67 = v94;
    v56(v89, v59, v94);
    LODWORD(v88) = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsPersonalRequestThreshold);
    type metadata accessor for ConversationContextUpdateMetadata(0);
    v51 = swift_allocObject();
    *(v51 + 16) = v90 & 1;
    (*(v61 + 32))(v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType, v62, v63);
    *(v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_flowPluginInfo) = v65;
    v56((v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId), v66, v67);
    *(v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_emptyServerContext) = 0;
    *(v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold) = v93;
    *(v51 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold) = v88;
  }

  v68 = *(v5 + 48);
  v69 = *(v5 + 136);
  v92 = *(v5 + 144);
  v93 = v69;
  v94 = *(v5 + 24);
  v70 = *(v5 + 152);
  v90 = *(v5 + 160);
  v91 = v70;
  v71 = v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_sessionId;
  v72 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId);
  v73 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_plannerInvocationId + 8);
  v74 = swift_allocObject();
  v75 = v95;
  *(v74 + 16) = v5;
  *(v74 + 24) = v75;
  v76 = *(*v68 + 296);

  v77 = v75;
  v76(v77, v93, v92, 0, 0, v5 + 96, v94, v51, v91, v90, v71, v72, v73, partial apply for closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v74);

  (*(*v5 + 648))(v78);

  return (*(*v5 + 456))(1);
}

uint64_t sub_1DC721114()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23[-v9];
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v11 = objc_allocWithZone(type metadata accessor for RunSiriKitExecutorResponseMessage());
  v12 = RunSiriKitExecutorResponseMessage.init(build:)();
  if (v12)
  {
    v13 = v12;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = one-time initialization token for shared;

    v16 = v13;
    if (v15 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = static MessageBusActor.shared;
    v18 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, 255, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = a4;
    v19[5] = v16;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v19);
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v16, v21, "Could not build RunSiriKitExecutorResponseMessage: missing fields?", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

uint64_t sub_1DC721428()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t closure #1 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  MessageBase.assistantId.getter();
  RunSiriKitExecutorResponseMessage.Builder.assistantId.setter();
  RequestMessageBase.requestId.getter();
  RunSiriKitExecutorResponseMessage.Builder.requestId.setter();
  SessionMessageBase.sessionId.getter();
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  RunSiriKitExecutorResponseMessage.Builder.sessionId.setter();
  v13 = *MEMORY[0x1E69D0460];
  v14 = type metadata accessor for MessageSource();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v8, v13, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  RunSiriKitExecutorResponseMessage.Builder.source.setter();
  v16 = a3;
  RunSiriKitExecutorResponseMessage.Builder.response.setter();
  v17 = a4;
  RunSiriKitExecutorResponseMessage.Builder.error.setter();
  RunSiriKitExecutorMessage.invocationId.getter();
  return RunSiriKitExecutorResponseMessage.Builder.invocationId.setter();
}

void SessionStateContextKeysManager.removeKey(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SessionStateContextKeysManager.removeKey(_:)(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a2, v28);
  outlined destroy of ReferenceResolutionClientProtocol?(v28, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  swift_endAccess();
  v12 = *(v4 + 16);
  v27 = a2;
  v12(v8, a2, v3);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v11, v8);
  v13 = *(v4 + 8);
  v13(v11, v3);
  swift_endAccess();
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v15 = v26;
  v12(v26, v27, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v12;
    v27 = v13;
    v19 = v18;
    v20 = swift_slowAlloc();
    *&v28[0] = v20;
    *v19 = 136315138;
    v25(v11, v15, v3);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v27(v15, v3);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1DC659000, v16, v17, "StateKey: %s marked for removal from SessionState", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  else
  {

    v13(v15, v3);
  }
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ConversationSessionKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of Sendable((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = *(a3 + 144);
  if (v10)
  {
    v11 = *(a3 + 136);
    v12 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);

    v14 = a2;
    v15 = one-time initialization token for shared;
    v16 = a4;
    if (v15 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = static MessageBusActor.shared;
    v18 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = a3;
    v19[5] = a2;
    v19[6] = v11;
    v19[7] = v10;
    v19[8] = v16;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v19);
    (*(*v12 + 120))();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v24 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v24, v21, "Failed to find requestId for logging selg message", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = v24;
  }
}

uint64_t sub_1DC721E44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

Swift::Void __swiftcall RunSiriKitExecutorProcessor.safelyCloseContextUpdater()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = one-time initialization token for shared;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v9 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater(), v10);
  (*(*v5 + 120))();
}

uint64_t sub_1DC722084()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t RunSiriKitExecutorProcessor.requestFinished.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t partial apply for closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)();
}

uint64_t closure #1 in $defer #1 () in ConversationService.handleConversationOrSendErrorToBridge(_:needsPrepare:speechData:turnData:bridge:userInput:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return ConversationService.cleanupEmptyActiveConversations()();
}

uint64_t ConversationService.cleanupEmptyActiveConversations()()
{
  *(v1 + 152) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;
  *(v1 + 160) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupEmptyActiveConversations(), v2, 0);
}

{
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v2 = v0[19];
  swift_beginAccess();
  v3 = *(v2 + 104);
  if ((v3 & 0xC000000000000001) == 0)
  {
    v11 = -1;
    v12 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v13 = *(v3 + 56);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v0[24] = v1;
    v4 = v0 + 24;
    v9 = v11 & v13;
    v0[22] = v6;
    v0[23] = ~v12;
    v0[21] = v3;
    v10 = 63 - v12;

    v8 = 0;
    goto LABEL_7;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for RemoteConversationClient();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type RemoteConversationClient and conformance RemoteConversationClient, 255, type metadata accessor for RemoteConversationClient, &protocol conformance descriptor for RemoteConversationClient);
  Set.Iterator.init(_cocoa:)();
  v0[24] = v1;
  v4 = v0 + 24;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v0[22] = v6;
  v0[23] = v7;
  v0[21] = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_7:
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      v16 = v8;
      while (1)
      {
        v15 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v15 >= (v10 >> 6))
        {
          goto LABEL_19;
        }

        v14 = *(v6 + 8 * v15);
        ++v16;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_28:
      v19 = __CocoaSet.count.getter();
      v23 = v19;
      if (!v19)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_12:
    v17 = (v14 - 1) & v14;
    v18 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    goto LABEL_13;
  }

  v22 = __CocoaSet.Iterator.next()();
  if (!v22)
  {
    goto LABEL_19;
  }

  v0[18] = v22;
  swift_dynamicCast();
  v18 = v0[17];
  v15 = v8;
  v17 = v9;
LABEL_13:
  v0[26] = v15;
  v0[27] = v17;
  v0[25] = v18;
  if (v18)
  {
    v19 = ConversationService.cleanupEmptyActiveConversations();
    v20 = v18;
    v21 = 0;

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

LABEL_19:
  v10 = v0[24];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[21]);

  if (v10 >> 62)
  {
    goto LABEL_28;
  }

  v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
LABEL_21:
    if (v23 >= 1)
    {
      v24 = 0;
      v25 = v10 & 0xC000000000000001;
      v26 = *v4 + 32;
      do
      {
        if (v25)
        {
          v27 = MEMORY[0x1E12A1FE0](v24, *v4);
        }

        else
        {
          v27 = *(v26 + 8 * v24);
        }

        ++v24;
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v27);
        swift_endAccess();
      }

      while (v23 != v24);
      goto LABEL_29;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

LABEL_29:

  v28 = v0[1];

  return v28();
}

{
  v20 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = static os_log_type_t.debug.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    v6 = StaticString.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v19);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = StaticString.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1DC659000, v3, v2, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v12 = v0[25];
  v13 = v12[19];
  v14 = v12[20];
  __swift_project_boxed_opaque_existential_1(v12 + 16, v13);
  v18 = (*(v14 + 16) + **(v14 + 16));
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = ConversationService.cleanupEmptyActiveConversations();
  v16 = MEMORY[0x1E69E6370];

  return v18(v0 + 30, &async function pointer to closure #1 in RemoteConversationClient.isEmpty(), 0, v16, v13, v14);
}

{
  v2 = *v1;

  v3 = *(v2 + 200);
  if (v0)
  {

    v4 = ConversationService.cleanupEmptyActiveConversations();
  }

  else
  {
    v4 = ConversationService.cleanupEmptyActiveConversations();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  if (*(v0 + 241))
  {

    MEMORY[0x1E12A1680](v1);
    if (*((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    *(v0 + 192) = *(v0 + 128);
    v4 = *(v0 + 168);
    if (v4 < 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v9 = v2;
    v7 = v3;
    if (!v2)
    {
      v10 = v3;
      while (1)
      {
        v7 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v7 >= ((*(v0 + 184) + 64) >> 6))
        {
          goto LABEL_18;
        }

        v9 = *(*(v0 + 176) + 8 * v7);
        ++v10;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_13:
    v8 = (v9 - 1) & v9;
    v6 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v9)))));

    goto LABEL_14;
  }

  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 168);
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v5 = __CocoaSet.Iterator.next()();
  if (!v5)
  {
    goto LABEL_18;
  }

  *(v0 + 144) = v5;
  type metadata accessor for RemoteConversationClient();
  swift_dynamicCast();
  v6 = *(v0 + 136);
  v7 = v3;
  v8 = v2;
LABEL_14:
  *(v0 + 208) = v7;
  *(v0 + 216) = v8;
  *(v0 + 200) = v6;
  if (v6)
  {
    v11 = ConversationService.cleanupEmptyActiveConversations();
    v12 = v6;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

LABEL_18:
  v7 = *(v0 + 192);
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(*(v0 + 168));

  if (!(v7 >> 62))
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

LABEL_27:
  v11 = __CocoaSet.count.getter();
  v14 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (v14 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v15 = 0;
  v16 = v7 & 0xC000000000000001;
  v17 = *(v0 + 192) + 32;
  do
  {
    if (v16)
    {
      v18 = MEMORY[0x1E12A1FE0](v15, *(v0 + 192));
    }

    else
    {
      v18 = *(v17 + 8 * v15);
    }

    ++v15;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v18);
    swift_endAccess();
  }

  while (v14 != v15);
LABEL_28:

  v19 = *(v0 + 8);

  return v19();
}

{

  MEMORY[0x1E12A1680](v1);
  if (*((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[16] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v2 = v0[26];
    v3 = v0[27];
    v0[24] = v0[16];
    v4 = v0[21];
    if (v4 < 0)
    {
      break;
    }

    v5 = v3;
    v6 = v2;
    if (v3)
    {
LABEL_8:
      v8 = (v5 - 1) & v5;
      v9 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));

      goto LABEL_11;
    }

    v7 = v2;
    while (1)
    {
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v6 >= ((v0[23] + 64) >> 6))
      {
        goto LABEL_15;
      }

      v5 = *(v0[22] + 8 * v6);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v10 = __CocoaSet.Iterator.next()();
  if (v10)
  {
    v0[18] = v10;
    type metadata accessor for RemoteConversationClient();
    swift_dynamicCast();
    v9 = v0[17];
    v6 = v2;
    v8 = v3;
LABEL_11:
    v0[26] = v6;
    v0[27] = v8;
    v0[25] = v9;
    if (v9)
    {
      v11 = ConversationService.cleanupEmptyActiveConversations();
      v12 = v9;
      v13 = 0;

      return MEMORY[0x1EEE6DFA0](v11, v12, v13);
    }
  }

LABEL_15:
  v14 = v0[24];
  outlined consume of Set<RemoteConversationClient>.Iterator._Variant(v0[21]);

  if (v14 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    v15 = v11;
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_26;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  v18 = v0[24] + 32;
  do
  {
    if (v17)
    {
      v19 = MEMORY[0x1E12A1FE0](v16, v0[24]);
    }

    else
    {
      v19 = *(v18 + 8 * v16);
    }

    ++v16;
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v19);
    swift_endAccess();
  }

  while (v15 != v16);
LABEL_26:

  v20 = v0[1];

  return v20();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t partial apply for closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(a1, v4, v5, v7, v6);
}

uint64_t closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:), v6, 0);
}

uint64_t closure #2 in closure #1 in ConversationBridge.handleRunSiriKitExecutorMessage(_:)()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[6] + 32), *(v0[6] + 56));
  *v1 = dispatch thunk of MessagePublishing.postMessage(_:)() & 1;
  v2 = v0[1];

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1)
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
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:), v9, 0);
}

void (*closure #1 in closure #1 in RunSiriKitExecutorProcessor.synchronizedClose(executionOutput:errorString:needsUserInput:)())(void *, void)
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = *(v5 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
  v7 = (*(*v5 + 376))();
  (*(*v6 + 160))(v7, 1, v4 != 0, v3, v2, 0, 0, v1);
  result = (*(*v5 + 392))(v0 + 2);
  if (__OFADD__(*v9, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v9;
    result(v0 + 2, 0);
    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t partial apply for closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(a1, v4, v5, v6);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 128) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater(), v5, 0);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.safelyCloseContextUpdater()()
{
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 120) + 96, v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    outlined init with take of NSExtensionProtocol((v0 + 56), v0 + 16);
    v2 = *(*(v1 + 48) + 16);
    *(v0 + 136) = v2;
    v3 = *(*v2 + 136);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater();

    return v7();
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t ConcurrentTaskPool.wait()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](ConcurrentTaskPool.wait(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v0[4] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in ConcurrentTaskPool.wait();
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_ScTyyts5NeverOGSg_TG5TA_0(v0 + 2);
  v0[5] = 0;
  os_unfair_lock_unlock((v0[4] + 16));
  v4 = v0[2];
  v0[6] = v4;

  if (v4)
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = ConcurrentTaskPool.wait();
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v5, v4, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

{

  return MEMORY[0x1EEE6DFA0](ConcurrentTaskPool.wait(), 0, 0);
}

{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  v4 = swift_task_alloc();
  *(v4 + 16) = partial apply for closure #1 in ConcurrentTaskPool.wait();
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_ScTyyts5NeverOGSg_TG5TA_0(v0 + 2);
  if (v1)
  {
    os_unfair_lock_unlock((v0[4] + 16));
  }

  else
  {
    v0[5] = 0;
    os_unfair_lock_unlock((v0[4] + 16));
    v6 = v0[2];
    v0[6] = v6;

    if (v6)
    {
      v7 = swift_task_alloc();
      v0[7] = v7;
      *v7 = v0;
      v7[1] = ConcurrentTaskPool.wait();
      v8 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA40](v7, v6, v8);
    }

    else
    {
      v9 = v0[1];

      return v9();
    }
  }
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t closure #1 in ConcurrentTaskPool.wait()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
    swift_beginAccess();
    swift_retain_n();
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    swift_endAccess();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater()()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater(), v1, 0);
}

{

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 40))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3 = v0[1];

  return v3();
}

{
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 120) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater, v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v2 = *(*(v1 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) + 16);
    *(v0 + 136) = v2;
    v3 = *(*v2 + 136);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = closure #1 in ConversationRequestProcessor.safelyCloseContextUpdater();

    return v7();
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t destroy for DecisionEngineResponse(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for Input();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:)()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationServiceSerialFacade.doExecutionWork(function:work:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v20 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = StaticString.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[2] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1DC659000, v4, v5, "Error performing %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t partial apply for closure #1 in ConversationService.markNotBusyAsync()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in ConversationService.markNotBusyAsync()(a1, v4, v5, v6);
}

uint64_t closure #1 in ConversationService.markNotBusyAsync()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationService.markNotBusyAsync(), v0, 0);
}

{
  v6 = v0;
  v1 = *(v0 + 40);
  *(v1 + 136) = 0;

  v2 = *(v1 + 128);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v2, &v5);
  OS_dispatch_semaphore.signal()();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in JetsamHelper.releaseJetsamTransaction()@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 16), *(a1 + 24), &v14);
    _os_log_impl(&dword_1DC659000, v5, v6, "os_transaction(%s) end", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v9 = (a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  v10 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
  v11 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8);
  v12 = v11 != 0;
  *v9 = 0;
  v9[1] = 0;
  result = outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(v10, v11);
  *a2 = v12;
  return result;
}

Swift::Void __swiftcall MultiUserContextUpdater.close()()
{
  v1 = v0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMR);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - v2;
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
    *v7 = 0;
    _os_log_impl(&dword_1DC659000, v5, v6, "Closing all ContextUpdater instances", v7, 2u);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v8 = (*(*v1 + 184))();
  v9 = v8;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v16 << 6);
      v19 = *(v9 + 48);
      v20 = type metadata accessor for UserID();
      (*(*(v20 - 8) + 16))(v3, v19 + *(*(v20 - 8) + 72) * v18, v20);
      v21 = *(*(v9 + 56) + 8 * v18);
      *&v3[*(v26 + 48)] = v21;
      v22 = *(*v21 + 480);

      v22();
      outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_0A10KitRuntime14ContextUpdaterC5valuetMR);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  v24 = (*(*v1 + 208))(v23);
  if (v24)
  {
    (*(*v24 + 480))(v24);
  }
}

Swift::Void __swiftcall ContextUpdater.close()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v64 - v6;
  v7 = type metadata accessor for ConversationSessionKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v64 - v12;
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
    *v17 = 0;
    _os_log_impl(&dword_1DC659000, v15, v16, "Closing ContextUpdater", v17, 2u);
    MEMORY[0x1E12A2F50](v17, -1, -1);
  }

  (*(*v1 + 360))();
  v18 = type metadata accessor for UserID();
  v19 = (*(*(v18 - 8) + 48))(v13, 1, v18);
  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v19 != 1)
  {
    v24 = *(v8 + 104);
    v24(v10, *MEMORY[0x1E69D07F0], v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v69 = *(v8 + 8);
    v69(v10, v7);
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMd, &_sSay12SiriNLUTypes0A29_Nlu_External_SystemDialogActVGMR);
      v25 = swift_dynamicCast();
      v26 = v76;
      if (!v25)
      {
        v26 = 0;
      }

      v66 = v26;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
      v66 = 0;
    }

    v24(v10, *MEMORY[0x1E69D07B8], v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v69(v10, v7);
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      v27 = swift_dynamicCast();
      v28 = v76;
      if (!v27)
      {
        v28 = 0;
      }

      v65 = v28;
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
      v65 = 0;
    }

    v24(v10, *MEMORY[0x1E69D07C8], v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v69(v10, v7);
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMd, &_sSay12SiriNLUTypes0A18_Nlu_External_TaskVGMR);
      if (swift_dynamicCast())
      {
        v29 = v76;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
      v29 = 0;
    }

    v30 = *MEMORY[0x1E69D0818];
    v67 = v24;
    v24(v10, v30, v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v69(v10, v7);
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
      if (swift_dynamicCast())
      {
        v31 = v76;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
      v31 = 0;
    }

    v67(v10, *MEMORY[0x1E69D07E8], v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v64 = v8 + 8;
    v69(v10, v7);
    if (v75)
    {
      v32 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      v33 = v68;
      v34 = swift_dynamicCast();
      (*(*(v32 - 8) + 56))(v33, v34 ^ 1u, 1, v32);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
      v35 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
      (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
    }

    v36 = swift_beginAccess();
    if (*(*(v1 + 240) + 16))
    {
      ContextUpdater.flushResponseText(legacyNLContext:)(v68);
    }

    v37 = (*(*v1 + 384))(v36);
    *&v74 = 0xD000000000000017;
    *(&v74 + 1) = 0x80000001DCA7E220;
    MEMORY[0x1EEE9AC00](v37);
    *(&v64 - 2) = &v74;
    v38 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v64 - 4), v37);

    if ((v38 & 1) == 0)
    {

LABEL_44:
      v62 = outlined destroy of ReferenceResolutionClientProtocol?(v68, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
      (*(**(v1 + 232) + 184))(v62);
      *(v1 + 240) = MEMORY[0x1E69E7CC0];

      v23 = (v1 + 256);
      goto LABEL_45;
    }

    v39 = type metadata accessor for ConversationalContextContainer();
    v40 = objc_allocWithZone(v39);
    v41 = v65;
    *&v40[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_systemDialogActs] = v66;
    *&v40[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_activeTasks] = v41;
    *&v40[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_executedTasks] = v29;
    *&v40[OBJC_IVAR____TtC14SiriKitRuntime30ConversationalContextContainer_entities] = v31;
    v73.receiver = v40;
    v73.super_class = v39;
    v66 = objc_msgSendSuper2(&v73, sel_init);
    outlined init with copy of ReferenceResolutionClientProtocol?(v68, v4, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v42 = type metadata accessor for ServerPromptData(0);
    v43 = objc_allocWithZone(v42);
    outlined init with copy of ReferenceResolutionClientProtocol?(v4, v43 + OBJC_IVAR____TtC14SiriKitRuntime16ServerPromptData_legacyNLContext, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v72.receiver = v43;
    v72.super_class = v42;
    v44 = objc_msgSendSuper2(&v72, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v4, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v45 = v44;
    v46 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v46;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 1, isUniquelyReferenced_nonNull_native, &v74);
    v48 = v74;
    v49 = v66;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v48;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 0, v50, &v74);
    v51 = v74;
    v67(v10, *MEMORY[0x1E69D0800], v7);
    ContextUpdater.valueFromSessionState(forKey:)(&v74);
    v69(v10, v7);
    if (v75)
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
      if (swift_dynamicCast())
      {
        v52 = v70;
        [v70 copy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v53 = v70;
        }

        else
        {
          v53 = 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v74, &_sypSgMd, &_sypSgMR);
    }

    v53 = 0;
LABEL_43:
    updated = type metadata accessor for ServerBoundContextUpdateContainer();
    v55 = objc_allocWithZone(updated);
    *&v55[OBJC_IVAR____TtC14SiriKitRuntime33ServerBoundContextUpdateContainer_contextUpdate] = v53;
    v71.receiver = v55;
    v71.super_class = updated;
    v56 = v53;
    v57 = objc_msgSendSuper2(&v71, &_OBJC_LABEL_PROTOCOL___SAAceReferable);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, 2, v58, &v74);
    v59 = v74;
    v60 = *(v1 + 216);
    v61 = *(v1 + 224);
    __swift_project_boxed_opaque_existential_1((v1 + 192), v60);
    (*(v61 + 8))(v59, closure #1 in ContextUpdater.close(), 0, v60, v61);

    goto LABEL_44;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "Closing shared instance of ContextUpdater without further operations", v22, 2u);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  (*(**(v1 + 232) + 184))();
  swift_beginAccess();
  *(v1 + 240) = MEMORY[0x1E69E7CC0];

  v23 = (v1 + 256);
LABEL_45:
  swift_beginAccess();
  v63 = *v23;
  *v23 = 0;
}

Swift::Void __swiftcall SessionStateContextKeysManager.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in SessionStateContextKeysManager.reset()(uint64_t a1)
{
  swift_beginAccess();
  *(a1 + 24) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  *(a1 + 32) = MEMORY[0x1E69E7CD0];
}

uint64_t ConversationService.cleanupEmptyActiveConversations()(uint64_t a1)
{
  v11 = v1;
  v2 = *(v1 + 240);
  *(v1 + 241) = v2;
  if (v2 == 2)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v10);
      _os_log_impl(&dword_1DC659000, v3, v4, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v7 = *(v1 + 160);
    v8 = ConversationService.cleanupEmptyActiveConversations();
  }

  else
  {
    v7 = *(v1 + 160);
    v8 = ConversationService.cleanupEmptyActiveConversations();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x287974706D457369, 0xE900000000000029, &v8);
    _os_log_impl(&dword_1DC659000, v2, v3, "Connection to RemoteConversation was invalidated while calling %{public}s. Will return true.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v6 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](ConversationService.cleanupEmptyActiveConversations(), v6, 0);
}

uint64_t type metadata accessor for UserSpecificInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for UserSpecificInfo;
  if (!type metadata singleton initialization cache for UserSpecificInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v34 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "acceptInitialInput(inputIdentifier:speechData:reply:)", 53, 2);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v17 = one-time initialization token for shared;

  v18 = a2;
  v32 = v14;
  v33 = v18;
  v20 = v9;
  v21 = a4;
  v22 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v5;
  if (v17 != -1)
  {
    swift_once();
  }

  v24 = static ConversationActor.shared;
  v25 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, v19, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v26 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = v24;
  *(v28 + 3) = v25;
  v29 = v34;
  *(v28 + 4) = v23;
  *(v28 + 5) = v29;
  *(v28 + 6) = v21;
  (*(v10 + 32))(&v28[v26], v22, v20);
  *&v28[v27] = v33;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v32, &async function pointer to partial apply for closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v28);
}

uint64_t sub_1DC725E34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t type metadata accessor for RemoteConversationSpeechData(uint64_t a1)
{
  result = type metadata singleton initialization cache for RemoteConversationSpeechData;
  if (!type metadata singleton initialization cache for RemoteConversationSpeechData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for DecisionEngineResponse(0);
  v8[18] = swift_task_alloc();
  v8[19] = type metadata accessor for ConversationHelperInput(0);
  v8[20] = swift_task_alloc();
  v8[21] = type metadata accessor for RemoteConversationTurnData(0);
  v8[22] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v8[23] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v9, 0);
}

uint64_t ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[17] = type metadata accessor for UserInputResult(0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[21] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:), v5, 0);
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 600) = a4;
  *(v5 + 280) = a3;
  *(v5 + 288) = v4;
  *(v5 + 264) = a1;
  *(v5 + 272) = a2;
  v6 = type metadata accessor for RemoteConversationOrReformedInput(0);
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  *(v5 + 352) = v7;
  *(v5 + 360) = *(v7 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  *(v5 + 432) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 440) = v8;
  *(v5 + 448) = *(v8 - 8);
  *(v5 + 456) = swift_task_alloc();
  v9 = type metadata accessor for Input();
  *(v5 + 464) = v9;
  *(v5 + 472) = *(v9 - 8);
  *(v5 + 480) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  *(v5 + 488) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:), v10, 0);
}

uint64_t ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[35];
  v5 = v0[33];
  v6 = type metadata accessor for Logger();
  v0[62] = __swift_project_value_buffer(v6, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/ConversationHelper.swift", 39, 2, "loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)", 84, 2);
  (*(v2 + 16))(v1, v5, v3);
  if (v4 > 4)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = 5;
      _os_log_impl(&dword_1DC659000, v14, v15, "Too many reformations encountered when finding a handler for input. (Max count = %ld).", v16, 0xCu);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v18 = v0[59];
    v17 = v0[60];
    v19 = v0[58];

    (*(v18 + 8))(v17, v19);

    v20 = v0[1];

    return v20(0);
  }

  else
  {
    v0[63] = v0[35];
    v7 = v0[57];
    v8 = v0[54];
    v0[30] = MEMORY[0x1E69E7CC8];
    v0[31] = MEMORY[0x1E69E7CC0];
    UUID.init()();
    Input.parse.getter();
    v9 = type metadata accessor for Parse();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    specialized SimpleOrderedDictionary.subscript.setter(v8, v7);
    v10 = v0[30];
    v0[64] = v10;
    v11 = v0[31];
    v0[65] = v11;
    v12 = swift_task_alloc();
    v0[66] = v12;
    *v12 = v0;
    v12[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);

    return ConversationHandlerLocator.allHandlers(for:)(v10, v11);
  }
}

{
  v2 = *v1;
  *(v2 + 584) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v3 = *(v2 + 488);
    v4 = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
  }

  else
  {
    v5 = *(v2 + 488);
    (*(v2 + 552))(*(v2 + 368), *(v2 + 440));
    v4 = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v96 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 408), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  outlined init with take of RemoteConversationOrReformedInput?(v1, v2);
  outlined init with take of RemoteConversationOrReformedInput?(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 328), &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMd, &_s14SiriKitRuntime33RemoteConversationOrReformedInputOSgMR);
    v7 = *(v0 + 568) + 1;
    if (v7 == *(v0 + 544))
    {
LABEL_3:
      v8 = *(v0 + 480);
      v9 = *(v0 + 464);
      v10 = *(v0 + 472);

LABEL_9:
      (*(v10 + 8))(v8, v9);
      v94 = 0;
LABEL_22:

      v57 = *(v0 + 8);

      return v57(v94);
    }

    v18 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
    while (1)
    {
      *(v0 + 568) = v7;
      v31 = *(v0 + 536);
      if (v7 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v32 = *(v0 + 596);
      v33 = *(v0 + 440);
      v34 = *(v0 + 448);
      v36 = *(v0 + 408);
      v35 = *(v0 + 416);
      v37 = *(v0 + 352);
      v38 = *(v0 + 600);
      outlined init with copy of ReferenceResolutionClientProtocol?(v31 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v7, v35, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v18);
      v39 = *(v37 + 48);
      (*(v34 + 32))(v36, v35, v33);
      outlined init with take of RemoteConversationOrReformedInput(v35 + v32, v36 + v39, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if (v38 != 1)
      {
        break;
      }

      v40 = *(v0 + 400);
      v41 = *(v0 + 352);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v40, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v18);
      v42 = v40 + *(v41 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v42 + 8, v0 + 136);
      outlined destroy of RemoteConversationOrReformedInput(v42, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v43 = *(v0 + 160);
      v44 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v43);
      v45 = (*(v44 + 16))(v43, v44);
      v47 = *(v0 + 552);
      v48 = *(v0 + 440);
      v49 = *(v0 + 400);
      if (v45 == 0xD000000000000021 && 0x80000001DCA7CC80 == v46)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v47(v49, v48);
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v47(v49, v48);
        if ((v50 & 1) == 0)
        {
          break;
        }
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v18);
      v51 = v18;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v89 = *(v0 + 552);
        v92 = *(v0 + 408);
        v20 = *(v0 + 384);
        v19 = *(v0 + 392);
        v87 = v19;
        v88 = *(v0 + 440);
        v21 = *(v0 + 352);
        v22 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v95 = v90;
        *v22 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v19, v20, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v51);
        v23 = v20 + *(v21 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol(v23 + 8, v0 + 176);
        outlined destroy of RemoteConversationOrReformedInput(v23, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
        v25 = *(v0 + 200);
        v24 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v25);
        v26 = (*(v24 + 16))(v25, v24);
        v28 = v27;
        outlined destroy of ReferenceResolutionClientProtocol?(v87, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v51);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
        v89(v20, v88);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v95);

        *(v22 + 4) = v29;
        _os_log_impl(&dword_1DC659000, v52, v53, "[ConversationHelper] Skipping %s as we should not fall back to it.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x1E12A2F50](v90, -1, -1);
        MEMORY[0x1E12A2F50](v22, -1, -1);

        v30 = v92;
      }

      else
      {
        v54 = *(v0 + 408);
        v55 = *(v0 + 392);

        outlined destroy of ReferenceResolutionClientProtocol?(v55, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v51);
        v30 = v54;
      }

      result = outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v51);
      v18 = v51;
      v7 = *(v0 + 568) + 1;
      if (v7 == *(v0 + 544))
      {
        goto LABEL_3;
      }
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v93 = *(v0 + 552);
      v91 = *(v0 + 440);
      v61 = *(v0 + 376);
      v60 = *(v0 + 384);
      v62 = *(v0 + 352);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v95 = v64;
      *v63 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v61, v60, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v65 = v60 + *(v62 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v65 + 8, v0 + 96);
      outlined destroy of RemoteConversationOrReformedInput(v65, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v66 = *(v0 + 120);
      v67 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v66);
      v68 = (*(v67 + 16))(v66, v67);
      v70 = v69;
      outlined destroy of ReferenceResolutionClientProtocol?(v61, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v93(v60, v91);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v95);

      *(v63 + 4) = v71;
      _os_log_impl(&dword_1DC659000, v58, v59, "[ConversationHelper] Trying handler: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1E12A2F50](v64, -1, -1);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    else
    {
      v79 = *(v0 + 376);

      outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    }

    v80 = *(v0 + 368);
    v81 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v80, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v82 = v80 + *(v81 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v82 + 8, v0 + 56);
    outlined destroy of RemoteConversationOrReformedInput(v82, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v83 = swift_task_alloc();
    *(v0 + 576) = v83;
    *v83 = v0;
    v83[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v84 = *(v0 + 480);
    v85 = *(v0 + 336);
    v86 = *(v0 + 272);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v85, v0 + 56, v84, v86);
  }

  else
  {
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v13 = *(v0 + 312);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));

    outlined init with take of RemoteConversationOrReformedInput(v11, v12, type metadata accessor for RemoteConversationOrReformedInput);
    outlined init with take of RemoteConversationOrReformedInput(v12, v13, type metadata accessor for RemoteConversationOrReformedInput);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v56 = *(v0 + 312);

      v94 = *v56;
      goto LABEL_22;
    }

    v14 = *(v0 + 504);
    (*(*(v0 + 472) + 32))(*(v0 + 480), *(v0 + 312), *(v0 + 464));
    if (v14 == 4)
    {

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = 5;
        _os_log_impl(&dword_1DC659000, v15, v16, "Too many reformations encountered when finding a handler for input. (Max count = %ld).", v17, 0xCu);
        MEMORY[0x1E12A2F50](v17, -1, -1);
      }

      v10 = *(v0 + 472);
      v8 = *(v0 + 480);
      v9 = *(v0 + 464);

      goto LABEL_9;
    }

    *(v0 + 504) = v14 + 1;
    v72 = *(v0 + 456);
    v73 = *(v0 + 432);
    v74 = MEMORY[0x1E69E7CC0];
    *(v0 + 240) = MEMORY[0x1E69E7CC8];
    *(v0 + 248) = v74;
    UUID.init()();
    Input.parse.getter();
    v75 = type metadata accessor for Parse();
    (*(*(v75 - 8) + 56))(v73, 0, 1, v75);
    specialized SimpleOrderedDictionary.subscript.setter(v73, v72);
    v76 = *(v0 + 240);
    v77 = *(v0 + 248);
    *(v0 + 512) = v76;
    *(v0 + 520) = v77;
    v78 = swift_task_alloc();
    *(v0 + 528) = v78;
    *v78 = v0;
    v78[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);

    return ConversationHandlerLocator.allHandlers(for:)(v76, v77);
  }
}

{
  v88 = v0;
  v1 = *(v0 + 536);
  v2 = *(v1 + 16);
  *(v0 + 544) = v2;
  if (!v2)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_18;
  }

  v3 = *(v0 + 440);
  v4 = *(v0 + 448);
  v5 = *(v0 + 424);
  v6 = *(v0 + 352);
  v7 = *(*(v0 + 360) + 80);
  *(v0 + 592) = v7;
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + ((v7 + 32) & ~v7), v5, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v8 = v5 + *(v6 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v8 + 8, v0 + 16);
  outlined destroy of RemoteConversationOrReformedInput(v8, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
  v9 = *(v4 + 8);
  *(v0 + 552) = v9;
  *(v0 + 560) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v3);
  if (!*(v0 + 40))
  {

LABEL_18:
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1DC659000, v65, v66, "[ConversationHelper] No conversation handler found for input, returning nil", v67, 2u);
      MEMORY[0x1E12A2F50](v67, -1, -1);
    }

    v69 = *(v0 + 472);
    v68 = *(v0 + 480);
    v70 = *(v0 + 464);

LABEL_21:
    (*(v69 + 8))(v68, v70);

    v71 = *(v0 + 8);

    return v71(0);
  }

  v10 = *(v0 + 352);
  result = outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19ConversationHandler_pSgMd, &_s14SiriKitRuntime19ConversationHandler_pSgMR);
  v12 = 0;
  *(v0 + 596) = *(v10 + 48);
  v13 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
  while (1)
  {
    *(v0 + 568) = v12;
    v17 = *(v0 + 536);
    if (v12 >= *(v17 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = *(v0 + 596);
    v19 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 352);
    v24 = *(v0 + 600);
    outlined init with copy of ReferenceResolutionClientProtocol?(v17 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v12, v21, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v25 = *(v23 + 48);
    (*(v20 + 32))(v22, v21, v19);
    outlined init with take of RemoteConversationOrReformedInput(v21 + v18, v22 + v25, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    if (v24 != 1)
    {
      break;
    }

    v26 = *(v0 + 400);
    v27 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v26, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v28 = v26 + *(v27 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v28 + 8, v0 + 136);
    outlined destroy of RemoteConversationOrReformedInput(v28, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), v29);
    v31 = (*(v30 + 16))(v29, v30);
    v33 = *(v0 + 552);
    v34 = *(v0 + 440);
    v35 = *(v0 + 400);
    if (v31 == 0xD000000000000021 && 0x80000001DCA7CC80 == v32)
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v33(v35, v34);
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v33(v35, v34);
      if ((v36 & 1) == 0)
      {
        break;
      }
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v13);
    v37 = v13;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v82 = *(v0 + 552);
      v85 = *(v0 + 408);
      v41 = *(v0 + 384);
      v40 = *(v0 + 392);
      v80 = v40;
      v81 = *(v0 + 440);
      v42 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = v83;
      *v43 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v40, v41, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v37);
      v44 = v41 + *(v42 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v44 + 8, v0 + 176);
      outlined destroy of RemoteConversationOrReformedInput(v44, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v46 = *(v0 + 200);
      v45 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v46);
      v47 = (*(v45 + 16))(v46, v45);
      v49 = v48;
      outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v37);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      v82(v41, v81);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v87);

      *(v43 + 4) = v50;
      _os_log_impl(&dword_1DC659000, v38, v39, "[ConversationHelper] Skipping %s as we should not fall back to it.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1E12A2F50](v83, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);

      v16 = v85;
    }

    else
    {
      v14 = *(v0 + 408);
      v15 = *(v0 + 392);

      outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v37);
      v16 = v14;
    }

    result = outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v37);
    v13 = v37;
    v12 = *(v0 + 568) + 1;
    if (v12 == *(v0 + 544))
    {
      v68 = *(v0 + 480);
      v70 = *(v0 + 464);
      v69 = *(v0 + 472);

      goto LABEL_21;
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v86 = *(v0 + 552);
    v84 = *(v0 + 440);
    v54 = *(v0 + 376);
    v53 = *(v0 + 384);
    v55 = *(v0 + 352);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v87 = v57;
    *v56 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v54, v53, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v58 = v53 + *(v55 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v58 + 8, v0 + 96);
    outlined destroy of RemoteConversationOrReformedInput(v58, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v59 = *(v0 + 120);
    v60 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v59);
    v61 = (*(v60 + 16))(v59, v60);
    v63 = v62;
    outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v86(v53, v84);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v87);

    *(v56 + 4) = v64;
    _os_log_impl(&dword_1DC659000, v51, v52, "[ConversationHelper] Trying handler: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x1E12A2F50](v57, -1, -1);
    MEMORY[0x1E12A2F50](v56, -1, -1);
  }

  else
  {
    v72 = *(v0 + 376);

    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  }

  v73 = *(v0 + 368);
  v74 = *(v0 + 352);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v73, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v75 = v73 + *(v74 + 48);
  outlined init with copy of ReferenceResolutionClientProtocol(v75 + 8, v0 + 56);
  outlined destroy of RemoteConversationOrReformedInput(v75, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
  v76 = swift_task_alloc();
  *(v0 + 576) = v76;
  *v76 = v0;
  v76[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
  v77 = *(v0 + 480);
  v78 = *(v0 + 336);
  v79 = *(v0 + 272);

  return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v78, v0 + 56, v77, v79);
}

{
  v87 = v0;
  v1 = *(v0 + 584);
  (*(v0 + 552))(*(v0 + 368), *(v0 + 440));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 584);
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v86 = v8;
    *v7 = 136315138;
    *(v0 + 256) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v86);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v3, v4, "[ConversationHelper] Error during loadConversationAndAccept: %s. Will try the next handler", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v6 = *(v0 + 408);
  }

  result = outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
  v14 = *(v0 + 568) + 1;
  if (v14 == *(v0 + 544))
  {
LABEL_5:
    v15 = *(v0 + 480);
    v16 = *(v0 + 464);
    v17 = *(v0 + 472);

    (*(v17 + 8))(v15, v16);

    v18 = *(v0 + 8);

    return v18(0);
  }

  else
  {
    v19 = &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR;
    while (1)
    {
      *(v0 + 568) = v14;
      v32 = *(v0 + 536);
      if (v14 >= *(v32 + 16))
      {
        __break(1u);
        return result;
      }

      v33 = *(v0 + 596);
      v34 = *(v0 + 440);
      v35 = *(v0 + 448);
      v37 = *(v0 + 408);
      v36 = *(v0 + 416);
      v38 = *(v0 + 352);
      v39 = *(v0 + 600);
      outlined init with copy of ReferenceResolutionClientProtocol?(v32 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(*(v0 + 360) + 72) * v14, v36, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v19);
      v40 = *(v38 + 48);
      (*(v35 + 32))(v37, v36, v34);
      outlined init with take of RemoteConversationOrReformedInput(v36 + v33, v37 + v40, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      if (v39 != 1)
      {
        break;
      }

      v41 = *(v0 + 400);
      v42 = *(v0 + 352);
      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v41, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v19);
      v43 = v41 + *(v42 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v43 + 8, v0 + 136);
      outlined destroy of RemoteConversationOrReformedInput(v43, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v44 = *(v0 + 160);
      v45 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v44);
      v46 = (*(v45 + 16))(v44, v45);
      v48 = *(v0 + 552);
      v49 = *(v0 + 440);
      v50 = *(v0 + 400);
      if (v46 == 0xD000000000000021 && 0x80000001DCA7CC80 == v47)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v48(v50, v49);
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
        v48(v50, v49);
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 392), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v19);
      v52 = v19;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v81 = *(v0 + 552);
        v84 = *(v0 + 408);
        v21 = *(v0 + 384);
        v20 = *(v0 + 392);
        v79 = v20;
        v80 = *(v0 + 440);
        v22 = *(v0 + 352);
        v23 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v86 = v82;
        *v23 = 136315138;
        outlined init with copy of ReferenceResolutionClientProtocol?(v20, v21, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v52);
        v24 = v21 + *(v22 + 48);
        outlined init with copy of ReferenceResolutionClientProtocol(v24 + 8, v0 + 176);
        outlined destroy of RemoteConversationOrReformedInput(v24, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
        v25 = *(v0 + 200);
        v26 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v25);
        v27 = (*(v26 + 16))(v25, v26);
        v29 = v28;
        outlined destroy of ReferenceResolutionClientProtocol?(v79, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v52);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
        v81(v21, v80);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v86);

        *(v23 + 4) = v30;
        _os_log_impl(&dword_1DC659000, v53, v54, "[ConversationHelper] Skipping %s as we should not fall back to it.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v82);
        MEMORY[0x1E12A2F50](v82, -1, -1);
        MEMORY[0x1E12A2F50](v23, -1, -1);

        v31 = v84;
      }

      else
      {
        v55 = *(v0 + 408);
        v56 = *(v0 + 392);

        outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v52);
        v31 = v55;
      }

      result = outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, v52);
      v19 = v52;
      v14 = *(v0 + 568) + 1;
      if (v14 == *(v0 + 544))
      {
        goto LABEL_5;
      }
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), *(v0 + 376), &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v85 = *(v0 + 552);
      v83 = *(v0 + 440);
      v60 = *(v0 + 376);
      v59 = *(v0 + 384);
      v61 = *(v0 + 352);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v86 = v63;
      *v62 = 136315138;
      outlined init with copy of ReferenceResolutionClientProtocol?(v60, v59, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v64 = v59 + *(v61 + 48);
      outlined init with copy of ReferenceResolutionClientProtocol(v64 + 8, v0 + 96);
      outlined destroy of RemoteConversationOrReformedInput(v64, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
      v65 = *(v0 + 120);
      v66 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v65);
      v67 = (*(v66 + 16))(v65, v66);
      v69 = v68;
      outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      v85(v59, v83);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v86);

      *(v62 + 4) = v70;
      _os_log_impl(&dword_1DC659000, v57, v58, "[ConversationHelper] Trying handler: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1E12A2F50](v63, -1, -1);
      MEMORY[0x1E12A2F50](v62, -1, -1);
    }

    else
    {
      v71 = *(v0 + 376);

      outlined destroy of ReferenceResolutionClientProtocol?(v71, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    }

    v72 = *(v0 + 368);
    v73 = *(v0 + 352);
    outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 408), v72, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
    v74 = v72 + *(v73 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol(v74 + 8, v0 + 56);
    outlined destroy of RemoteConversationOrReformedInput(v74, type metadata accessor for ConversationHandlerLocator.ScoredHandler);
    v75 = swift_task_alloc();
    *(v0 + 576) = v75;
    *v75 = v0;
    v75[1] = ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:);
    v76 = *(v0 + 480);
    v77 = *(v0 + 336);
    v78 = *(v0 + 272);

    return ConversationHelper.loadConversationAndAccept(handler:input:conversationHelperInput:)(v77, v0 + 56, v76, v78);
  }
}

uint64_t specialized SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v32 = v2;
  v17 = *v2;
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v17 + 56);
    v22 = type metadata accessor for Parse();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v16, v21 + *(v23 + 72) * v20, v22);
    (*(v23 + 56))(v16, 0, 1, v22);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(v5 + 16))(v10, a2, v4);
    v24 = v33;
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v13, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    specialized Dictionary.subscript.setter(v13, v10);
    (*(v5 + 8))(a2, v4);
    return outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  }

  else
  {
    v26 = type metadata accessor for Parse();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v27 = *(v5 + 16);
    v27(v10, a2, v4);
    outlined init with copy of ReferenceResolutionClientProtocol?(v33, v13, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v28 = v32;
    specialized Dictionary.subscript.setter(v13, v10);
    v27(v7, a2, v4);
    v29 = v28[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
    }

    (*(v5 + 8))(a2, v4);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    v29[2] = v31 + 1;
    result = (*(v5 + 32))(v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v7, v4);
    v28[1] = v29;
  }

  return result;
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)(uint64_t a1)
{
  v2 = *(*v1 + 184);
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v2, 0);
}

{
  v2 = *(*v1 + 184);
  *(*v1 + 240) = a1;

  return MEMORY[0x1EEE6DFA0](DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:), v2, 0);
}

uint64_t DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)()
{
  if (v0[27])
  {

    v1 = v0[27];
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[10];
    v5 = v0[7];
    v6 = *(v2 + 24);
    v7 = type metadata accessor for Input();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v3 + v6, v5, v7);
    (*(v8 + 56))(v3 + v6, 0, 1, v7);
    *v3 = v1;
    *(v3 + 8) = 1;
    *(v3 + *(v2 + 28)) = 0;
    DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v3, *v4, v4[1], 12589, 0xE200000000000000);
    type metadata accessor for ConversationSELFHelper();
    static ConversationSELFHelper.shared.getter();
    if (v1)
    {
    }

    v12 = v0[18];
    v13 = v0[15];
    v14 = *(v0[17] + 24);
    outlined init with copy of ReferenceResolutionClientProtocol?(v12 + v14, v13, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v15 = *(v8 + 48);
    v16 = v15(v13, 1, v7);
    v18 = v0[15];
    v17 = v0[16];
    if (v16 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
      v19 = type metadata accessor for Siri_Nlu_External_UUID();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
    }

    else
    {
      Input.parseHypothesisId.getter(v0[16]);
      (*(v8 + 8))(v18, v7);
    }

    v20 = v0[14];
    outlined init with copy of ReferenceResolutionClientProtocol?(v12 + v14, v20, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v21 = v15(v20, 1, v7);
    v22 = v0[14];
    if (v21 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    }

    else
    {
      Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
      (*(v8 + 8))(v22, v7);
    }

    v23 = v0[20];
    v24 = v0[18];
    v25 = v0[16];
    v26 = v0[6];
    dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
    outlined destroy of RemoteConversationTurnData(v23, type metadata accessor for ConversationHelperInput);
    _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v24, v26, type metadata accessor for DecisionEngineResponse);

    v27 = v0[1];

    return v27();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
    v10 = v0[9];

    return specialized Sequence<>.containsConversationTriggeredByPeer()(v10);
  }
}

{
  v32 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/DecisionEngine.swift", 35, 2, "findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:)", 90, 2);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[DecisionEngine] Finding conversation for unambiguous input", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 80);

  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(v6, v5, type metadata accessor for RemoteConversationTurnData);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  if (v9)
  {
    v11 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = *(*(v10 + *(v11 + 32)) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
    *(v0 + 40) = v14;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22RequestConjunctionInfoCSgMd, &_s16SiriMessageTypes22RequestConjunctionInfoCSgMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    outlined destroy of RemoteConversationTurnData(v10, type metadata accessor for RemoteConversationTurnData);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v31);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v7, v8, "ConjunctionInfo: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationTurnData(v10, type metadata accessor for RemoteConversationTurnData);
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 160);
  v22 = *(v0 + 104);
  v23 = *(v0 + 64);
  v30 = *(v0 + 88);
  _s14SiriKitRuntime26RemoteConversationTurnDataVWOcTm_1(*(v0 + 80), v21 + *(v20 + 20), type metadata accessor for RemoteConversationTurnData);
  *v21 = v23;
  *(v21 + *(v20 + 24)) = v30;
  *(v0 + 200) = *(v22 + 32);
  v24 = v23;
  swift_unknownObjectRetain();
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
  v26 = *(v0 + 160);
  v27 = *(v0 + 72);
  v28 = *(v0 + 56);

  return ConversationHelper.selectActiveConversation(input:activeConversations:conversationHelperInput:)(v28, v27, v26);
}

{
  if (*(v0 + 248) == 1 && *(*(v0 + 80) + *(*(v0 + 168) + 44)) == 1)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DC659000, v1, v2, "[DecisionEngine] No active peer triggered conversation but invoked by peer to peer EORR. Falling back to peer", v3, 2u);
      MEMORY[0x1E12A2F50](v3, -1, -1);
    }

    v4 = *(v0 + 160);
    v5 = *(v0 + 136);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    outlined destroy of RemoteConversationTurnData(v4, type metadata accessor for ConversationHelperInput);
    v8 = *(v5 + 24);
    v9 = type metadata accessor for Input();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7 + v8, v6, v9);
    (*(v10 + 56))(v7 + v8, 0, 1, v9);
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + *(v5 + 28)) = 1;

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = DecisionEngine.findBestConversationForUnambiguousInput(_:speechData:activeConversations:turnData:bridge:);
    v14 = *(v0 + 160);
    v15 = *(v0 + 56);

    return ConversationHelper.loadNewConversation(input:conversationHelperInput:priorReformationCount:isFallback:)(v15, v14, 0, 0);
  }
}

{

  v1 = v0[30];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[10];
  v5 = v0[7];
  v6 = *(v2 + 24);
  v7 = type metadata accessor for Input();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, v5, v7);
  (*(v8 + 56))(v3 + v6, 0, 1, v7);
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + *(v2 + 28)) = 0;
  DecisionEngineCurareDonator.donateDecisionEngineResponse(decisionEngineResponse:requestId:rcId:)(v3, *v4, v4[1], 12589, 0xE200000000000000);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  if (v1)
  {
  }

  v9 = v0[18];
  v10 = v0[15];
  v11 = *(v0[17] + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v9 + v11, v10, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, v7);
  v15 = v0[15];
  v14 = v0[16];
  if (v13 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[15], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v16 = type metadata accessor for Siri_Nlu_External_UUID();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  else
  {
    Input.parseHypothesisId.getter(v0[16]);
    (*(v8 + 8))(v15, v7);
  }

  v17 = v0[14];
  outlined init with copy of ReferenceResolutionClientProtocol?(v9 + v11, v17, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v18 = v12(v17, 1, v7);
  v19 = v0[14];
  if (v18 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0[14], &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  }

  else
  {
    Input.inputOrAlternativesInterpretableAsUniversalAction.getter();
    (*(v8 + 8))(v19, v7);
  }

  v20 = v0[20];
  v21 = v0[18];
  v22 = v0[16];
  v23 = v0[6];
  dispatch thunk of ConversationSELFHelper.emitDecisionEngineDecision(flowHandlerId:parseHypothesisId:isInterpretableAsUniversalAction:isExistingFlowSelected:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  outlined destroy of RemoteConversationTurnData(v20, type metadata accessor for ConversationHelperInput);
  _s14SiriKitRuntime22DecisionEngineResponseVWObTm_0(v21, v23, type metadata accessor for DecisionEngineResponse);

  v24 = v0[1];

  return v24();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1, MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Parse();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMR);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSDySSypGGMR);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UserID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}