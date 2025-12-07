uint64_t Conversation.speculativelyExecute(from:)(uint64_t a1)
{
  if (PrepareResponse.next.getter())
  {
  }

  else
  {
    if (PrepareResponse.needsExecute.getter())
    {
      v2 = v1[56];
      v3 = v1[49];
      v4 = v1[35];
      swift_beginAccess();
      outlined init with copy of Conversation.State(v4 + v2, v3, type metadata accessor for Conversation.State);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v5 = v1[59];
        v6 = v1[56];
        v7 = v1[35];
        outlined destroy of Conversation.State(v7 + v6, type metadata accessor for Conversation.State);
        *(v7 + v6) = v5;
        swift_storeEnumTagMultiPayload();
      }

      v9 = v1[44];
      v8 = v1[45];
      v10 = v1[43];
      outlined destroy of Conversation.State(v1[49], type metadata accessor for Conversation.State);
      swift_endAccess();
      static ConversationSELFHelper.shared.getter();

      dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

      (*(v9 + 8))(v8, v10);
      v32 = v1[59];
      goto LABEL_18;
    }
  }

  v11 = v1[58];
  v12 = v1[56];
  v13 = v1[52];
  v14 = v1[53];
  v15 = v1[35];
  (*(v1[44] + 8))(v1[45], v1[43]);
  outlined init with copy of Conversation.State(v15 + v12, v14, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v14, v13, type metadata accessor for Conversation.State);
  LODWORD(v14) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v13, type metadata accessor for Conversation.State);
  v16 = v1[35];
  if (v14 || (v1[58] = v11, (*(v16 + v1[57]) & 1) != 0))
  {
LABEL_13:
    outlined init with copy of Conversation.State(v16 + v1[56], v1[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v1[57];
      v21 = v1[35];
      outlined destroy of Conversation.State(v1[47], type metadata accessor for Conversation.State);
      if (*(v21 + v20) == 1)
      {
        v22 = v1[56];
        v23 = v1[48];
        v24 = v1[35];
        *v23 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v23, v24 + v22);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v1[47], type metadata accessor for Conversation.State);
    }

    v32 = 0;
LABEL_18:

    v25 = v1[1];

    return v25(v32);
  }

  v17 = v1[50];
  v18 = v1[51];
  outlined init with copy of Conversation.State(v16 + v1[56], v18, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v18, v17, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v16 = v1[35];
    goto LABEL_13;
  }

  outlined destroy of Conversation.State(v1[50], type metadata accessor for Conversation.State);
  v19 = static Task<>.isCancelled.getter();
  v16 = v1[35];
  if (v19)
  {
    goto LABEL_13;
  }

  v27 = (*(**(v16 + 112) + 216))();
  if (v27)
  {
    v1[59] = v27;
    v1[60] = *(v27 + 16);

    v28 = swift_task_alloc();
    v1[61] = v28;
    *v28 = v1;
    v28[1] = Conversation.speculativelyExecute(from:);
    v29 = v1[45];

    return FlowAgent.prepare()(v29);
  }

  else
  {
    static ConversationSELFHelper.shared.getter();

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v30 = 0xD00000000000002FLL;
    v30[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v31 = v1[1];

    return v31();
  }
}

{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for FlowTraceEvent();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = type metadata accessor for PrepareResponseType();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v5 = type metadata accessor for PrepareResponse();
  v2[43] = v5;
  v2[44] = *(v5 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = type metadata accessor for Conversation.State(0);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v1, 0);
}

{
  v2 = *(v1 + 480);
  *(v1 + 536) = dispatch thunk of AnyFlow.siriEnvironment.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.speculativelyExecute(from:), v2, 0);
}

{
  v2 = PrepareResponse.next.getter();
  v1[69] = v2;
  if (v2)
  {
    v3 = v1[59];
    v4 = swift_task_alloc();
    v1[70] = v4;
    *v4 = v1;
    v4[1] = Conversation.speculativelyExecute(from:);

    return Conversation.removeNode(node:)(v3);
  }

  v6 = v1[56];
  v7 = v1[48];
  v8 = v1[35];
  *v7 = v1[59];
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  outlined assign with take of Conversation.State(v7, v8 + v6);
  swift_endAccess();
  static ConversationSELFHelper.shared.getter();

  dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextEnded(rcId:)();

  v9 = v1[68];
  v10 = v1[56];
  v11 = v1[52];
  v12 = v1[53];
  v13 = v1[35];
  (*(v1[44] + 8))(v1[45], v1[43]);
  outlined init with copy of Conversation.State(v13 + v10, v12, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v12, v11, type metadata accessor for Conversation.State);
  LODWORD(v12) = (swift_getEnumCaseMultiPayload() - 1) & 0xFFFFFFFD;
  outlined destroy of Conversation.State(v11, type metadata accessor for Conversation.State);
  v14 = v1[35];
  if (v12)
  {
    goto LABEL_10;
  }

  v1[58] = v9;
  if (*(v14 + v1[57]))
  {
    goto LABEL_10;
  }

  v15 = v1[50];
  v16 = v1[51];
  outlined init with copy of Conversation.State(v14 + v1[56], v16, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v16, v15, type metadata accessor for Conversation.State);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v14 = v1[35];
LABEL_10:
    outlined init with copy of Conversation.State(v14 + v1[56], v1[47], type metadata accessor for Conversation.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v1[57];
      v19 = v1[35];
      outlined destroy of Conversation.State(v1[47], type metadata accessor for Conversation.State);
      if (*(v19 + v18) == 1)
      {
        v20 = v1[56];
        v21 = v1[48];
        v22 = v1[35];
        *v21 = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v21, v22 + v20);
        swift_endAccess();
      }
    }

    else
    {
      outlined destroy of Conversation.State(v1[47], type metadata accessor for Conversation.State);
    }

    v23 = v1[1];

    return v23(0);
  }

  outlined destroy of Conversation.State(v1[50], type metadata accessor for Conversation.State);
  v17 = static Task<>.isCancelled.getter();
  v14 = v1[35];
  if (v17)
  {
    goto LABEL_10;
  }

  v24 = (*(**(v14 + 112) + 216))();
  if (v24)
  {
    v1[59] = v24;
    v1[60] = *(v24 + 16);

    v25 = swift_task_alloc();
    v1[61] = v25;
    *v25 = v1;
    v25[1] = Conversation.speculativelyExecute(from:);
    v26 = v1[45];

    return FlowAgent.prepare()(v26);
  }

  else
  {
    static ConversationSELFHelper.shared.getter();

    dispatch thunk of ConversationSELFHelper.emitEagerExecutionContextFailed(rcId:reason:)();

    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    swift_allocError();
    *v27 = 0xD00000000000002FLL;
    v27[1] = 0x80000001DCA7E9D0;
    swift_willThrow();

    v28 = v1[1];

    return v28();
  }
}

uint64_t protocol witness for Conversational.commit() in conformance Conversation(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.commit()(a1);
}

uint64_t Conversation.commit()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for Conversation.State(0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v1, 0);
}

uint64_t Conversation.commit()()
{
  v38 = v0;
  v1 = *(v0[9] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v1);
  OS_dispatch_semaphore.signal()();
  v2 = SiriEnvironment.currentProcess.getter();
  v3 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v3)
  {
    v4 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v4 = 0;
  }

  *(v0[9] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = v4;

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136315138;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v36);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v6, v7, "[Conversation] Submits commit task. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  v13 = v0[16];
  v14 = v0[9];
  v15 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined init with copy of Conversation.State(v14 + v15, v13, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
      swift_allocError();
      *v28 = 0xD00000000000002FLL;
      v28[1] = 0x80000001DCA7E730;
      swift_willThrow();
      break;
    case 2:
      v18 = 0;
      v17 = *v0[16];
      goto LABEL_13;
    case 1:
      v17 = *(v0[16] + 8);

LABEL_13:
      v0[17] = v17;
      v0[18] = v18;
      v19 = v0[15];
      v35 = v18;
      v20 = v0[13];
      v21 = v0[9];
      v22 = type metadata accessor for TaskPriority();
      v23 = *(*(v22 - 8) + 56);

      v23(v20, 1, 1, v22);
      v24 = _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type Conversation and conformance Conversation, type metadata accessor for Conversation, &protocol conformance descriptor for Conversation);
      v25 = swift_allocObject();
      v25[2] = v21;
      v25[3] = v24;
      v25[4] = v21;
      v25[5] = v35;
      v25[6] = v17;
      swift_retain_n();
      v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime24ConversationCommitResultO_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in Conversation.commit(), v25);
      v0[19] = v26;
      *v19 = v26;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();

      outlined assign with take of Conversation.State(v19, v14 + v15);
      swift_endAccess();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for OSSignposter();
      v0[20] = __swift_project_value_buffer(v27, static Signposter.executor);
      static OSSignpostID.exclusive.getter();

      return MEMORY[0x1EEE6DFA0](Conversation.commit(), 0, 0);
    default:
      v29 = v0[16];
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
      MEMORY[0x1E12A1580](0x292874696D6D6F63, 0xE800000000000000);
      MEMORY[0x1E12A1580](0xD00000000000002DLL, 0x80000001DCA7E700);
      v30 = v36;
      v31 = v37;
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      swift_allocError();
      *v32 = v30;
      v32[1] = v31;
      swift_willThrow();
      outlined destroy of Conversation.State(v29, type metadata accessor for Conversation.State);
      break;
  }

  v33 = v0[1];

  return v33();
}

{
  v0[21] = OSSignposter.beginIntervalTelemetryEnabled(_:id:)("execution_time", 14, 2, v0[12]);
  v1 = swift_task_alloc();
  v0[22] = v1;
  v2 = type metadata accessor for ConversationCommitResult(0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v1 = v0;
  v1[1] = Conversation.commit();
  v4 = v0[19];
  v5 = v0[8];
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5, v4, v2, v3, v6);
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Conversation.commit();
  }

  else
  {
    v2 = Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[20], "execution_time", 14, 2);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  $defer #1 <A>() in OSSignposter.withIntervalSignpostTelemetryEnabledAsync<A>(_:id:around:)(v0[20], "execution_time", 14, 2);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](Conversation.commit(), v4, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DC6E55BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t OSSignposter.beginIntervalTelemetryEnabled(_:id:)(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v11, v12, v15, a1, "enableTelemetry=YES", v14, 2u);
      MEMORY[0x1E12A2F50](v14, -1, -1);
LABEL_10:

      (*(v8 + 16))(v10, a4, v7);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      return OSSignpostIntervalState.init(id:isOpen:)();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v17;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t closure #1 in Conversation.commit()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a1;
  v6[13] = a4;
  v6[16] = type metadata accessor for Conversation.State(0);
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for ConversationCommitResult(0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.commit(), a4, 0);
}

uint64_t closure #1 in Conversation.commit()()
{
  v22 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    v6 = ObjectIdentifier.debugDescription.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC659000, v2, v3, "[Conversation] Running queued commit task. %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E12A2F50](v5, -1, -1);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v9 = v0[14];
  if (v9)
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "[Conversation] Speculation task is still running, will wait for it to complete.", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[22] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGSgMR);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v13 = v0;
    v13[1] = closure #1 in Conversation.commit();
    v16 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 11, v9, v14, v15, v16);
  }

  else
  {
    v17 = v0[15];
    v0[24] = v17;
    swift_retain_n();
    v18 = swift_task_alloc();
    v0[25] = v18;
    *v18 = v0;
    v18[1] = closure #1 in Conversation.commit();
    v19 = v0[12];

    return Conversation.execute(from:)(v19, v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {
    v4 = closure #1 in Conversation.commit();
  }

  else
  {
    v4 = closure #1 in Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v26 = v0;
  v1 = v0[26];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[12];
    v4 = v0[13];
    swift_storeEnumTagMultiPayload();
    v5 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
    swift_beginAccess();
    outlined assign with take of Conversation.State(v2, v4 + v5);
    swift_endAccess();
    swift_willThrow();

    outlined destroy of Conversation.State(v3, type metadata accessor for ConversationCommitResult);

    v6 = v0[1];
    goto LABEL_12;
  }

  v7 = v0[13];
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  swift_beginAccess();
  if (*(v7 + v8) != 1)
  {
    outlined init with copy of Conversation.State(v0[12], v0[20], type metadata accessor for ConversationCommitResult);
    v9 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v9, v12);
    v14 = v0[20];
    if (!v13)
    {

      outlined destroy of Conversation.State(v14, type metadata accessor for ConversationCommitResult);
      goto LABEL_11;
    }

    v15 = v0[19];
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v11 = 136315138;
    outlined init with copy of Conversation.State(v14, v15, type metadata accessor for ConversationCommitResult);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    outlined destroy of Conversation.State(v14, type metadata accessor for ConversationCommitResult);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);

    *(v11 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v9, v12, "[Conversation] commit done, result: %s.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A2F50](v16, -1, -1);
    goto LABEL_8;
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC659000, v9, v10, "[Conversation] commit paused.", v11, 2u);
LABEL_8:
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

LABEL_11:
  v21 = v0[17];
  v22 = v0[13];
  swift_storeEnumTagMultiPayload();
  v23 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  swift_beginAccess();
  outlined assign with take of Conversation.State(v21, v22 + v23);
  swift_endAccess();

  v6 = v0[1];
LABEL_12:

  return v6();
}

{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = closure #1 in Conversation.commit();
  }

  else
  {
    v4 = closure #1 in Conversation.commit();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = v0[11];
  v0[24] = v1;

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = closure #1 in Conversation.commit();
  v3 = v0[12];

  return Conversation.execute(from:)(v3, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  type metadata accessor for RemoteConversationService.State(0);
  v5[20] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v6, 0);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, v4, v5, v6, (v1 + 5));
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v18 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000039, 0x80000001DCA85AA0, &v17);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&dword_1DC659000, v4, v5, "RemoteConversationService: %s sending loaded flow info to ExecutionBridge: %@", v7, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = v11[3];
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v13);
  [(*(v14 + 104))(v13 v14)];
  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

uint64_t @objc ServiceBridgeErrorHandlingProxy.close(withExecutionOutput:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v9 = a3;

  v11 = specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(v10, a4, a5);
  if (v11)
  {
    [v11 *a6];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall FlowPluginInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_supportsOnDeviceNL);
  v4 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA83CC0);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_isPersonalRequest);
  v6 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83CE0);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime14FlowPluginInfo_sensitivityPolicy);
  v8 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA83D00);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

char *initializeWithCopy for SiriRequest(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for Input();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = *&a2[v11 + 8];

  if (v14 >> 60 == 15)
  {
    *v12 = *v13;
  }

  else
  {
    v15 = *v13;
    outlined copy of Data._Representation(*v13, v14);
    *v12 = v15;
    *(v12 + 1) = v14;
  }

  v16 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v16] = *&a2[v16];
  v17 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = type metadata accessor for SiriRequestIdentities(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);

  if (v22(v19, 1, v20))
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
    memcpy(v18, v19, *(*(v23 - 8) + 64));
  }

  else
  {
    v24 = type metadata accessor for IdentifiedUser();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v19, 1, v24))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(v18, v19, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v25 + 16))(v18, v19, v24);
      (*(v25 + 56))(v18, 0, 1, v24);
    }

    v28 = *(v20 + 20);
    if (v26(&v19[v28], 1, v24))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
      memcpy(&v18[v28], &v19[v28], *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v25 + 16))(&v18[v28], &v19[v28], v24);
      (*(v25 + 56))(&v18[v28], 0, 1, v24);
    }

    *&v18[*(v20 + 24)] = *&v19[*(v20 + 24)];
    v30 = *(v21 + 56);

    v30(v18, 0, 1, v20);
  }

  return a1;
}

uint64_t outlined init with take of SiriRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of CaarRankingProviding.getCaarRanking(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)()
{
  v28 = v0;
  v1 = v0[31];
  v2 = v0[29];
  outlined init with take of SiriRequest(v0[30], v1, type metadata accessor for UserInputResult);
  outlined init with copy of RemoteConversationService.State(v1, v2, type metadata accessor for UserInputResult);
  LODWORD(v1) = swift_getEnumCaseMultiPayload();
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for UserInputResult);
  if (v1 == 2)
  {
    v3 = v0[33];
    v4 = v0[23];
    v5 = v0[21];
    v6 = v0[16];
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with copy of ReferenceResolutionClientProtocol(v6, v4);
    outlined init with copy of ReferenceResolutionClientProtocol((v0 + 2), v4 + 40);
    outlined init with copy of RemoteConversationService.State(v3, v4 + v7, type metadata accessor for SiriRequest);
    swift_storeEnumTagMultiPayload();
    v8 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
    swift_beginAccess();
    outlined assign with take of RemoteConversationService.State(v4, v5 + v8);
    swift_endAccess();
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = v0[31];
  v10 = v0[28];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.executor);
  outlined init with copy of RemoteConversationService.State(v9, v10, type metadata accessor for UserInputResult);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[28];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    v18 = UserInputResult.description.getter();
    v20 = v19;
    outlined destroy of RemoteConversationService.State(v15, type metadata accessor for UserInputResult);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v12, v13, "FlowExtensionContext: accept() returned %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  else
  {

    outlined destroy of RemoteConversationService.State(v15, type metadata accessor for UserInputResult);
  }

  v22 = v0[31];
  v23 = v0[19];
  v24 = UserInputResult.xpcRepresentation.getter();
  v23();

  outlined destroy of RemoteConversationService.State(v22, type metadata accessor for UserInputResult);
  outlined destroy of RemoteConversationService.State(v0[33], type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v25 = v0[1];

  return v25();
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 424) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v7 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[32];
  v27 = v0[17];
  v28 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v22 = v4[4];
  v23 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v23, v2, v5, v22);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  type metadata accessor for SessionConfigurationProvider();
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v24, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  type metadata accessor for NLRoutingDecisionProvider();
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v25, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  type metadata accessor for FlowRedirectContextProvider();
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v11 = v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v11 + 8);
  v12 = *(v26 + 20);
  v13 = type metadata accessor for Input();
  (*(*(v13 - 8) + 16))(v28 + v12, v27, v13);
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  v16 = *(v15 + 96);

  v0[47] = v16(v14, v15);
  v0[48] = v17;
  v18 = *(v26 + 48);
  v19 = swift_task_alloc();
  v0[49] = v19;
  *v19 = v0;
  v19[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v20 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v28 + v18, v20);
}

{
  v1 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v1, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 432);
  v9 = *(v0 + 128);
  v10 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v10;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v11 = v9[3];
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v11);
  (*(v12 + 56))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *(v13 + 16) = v0 + 16;
  *(v13 + 24) = v7;
  *(v13 + 32) = v8;
  v21 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v17 = *(v0 + 240);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);

  return v21(v17, v15, v16, v18, &closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply, v13, v19);
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[32];
  v27 = v0[17];
  v28 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v22 = v4[4];
  v23 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v23, v2, v5, v22);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  type metadata accessor for SessionConfigurationProvider();
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v24, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  type metadata accessor for NLRoutingDecisionProvider();
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v25, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  type metadata accessor for FlowRedirectContextProvider();
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v11 = v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v11 + 8);
  v12 = *(v26 + 20);
  v13 = type metadata accessor for Input();
  (*(*(v13 - 8) + 16))(v28 + v12, v27, v13);
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  v16 = *(v15 + 96);

  v0[47] = v16(v14, v15);
  v0[48] = v17;
  v18 = *(v26 + 48);
  v19 = swift_task_alloc();
  v0[49] = v19;
  *v19 = v0;
  v19[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v20 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v28 + v18, v20);
}

{
  v1 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v1, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 432);
  v9 = *(v0 + 128);
  v10 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v10;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v11 = v9[3];
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v11);
  (*(v12 + 56))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *(v13 + 16) = v0 + 16;
  *(v13 + 24) = v7;
  *(v13 + 32) = v8;
  v21 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v17 = *(v0 + 240);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);

  return v21(v17, v15, v16, v18, &closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)partial apply, v13, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 424) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  else
  {
    v7 = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v19 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[53];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000061, 0x80000001DCA85E20, &v18);
    *(v7 + 12) = 2080;
    v0[15] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1DC659000, v4, v5, "%s: Error calling conversation.accept: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  v13 = v0[53];
  v14 = v0[19];
  v15 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v13);
  v14();

  outlined destroy of RemoteConversationService.State(v0[33], type metadata accessor for SiriRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v16 = v0[1];

  return v16();
}

{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[32];
  v27 = v0[17];
  v28 = v0[33];
  v4 = v0[16];
  v5 = v4[3];
  v22 = v4[4];
  v23 = v0[18];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(v6 + 88))(v7, v6);
  (*(v1 + 16))(v2, v8 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession, v3);

  v0[41] = ConversationTurnState.makeCurrentRequestForSiriEnvironment(speechData:positionInSession:)(v23, v2, v5, v22);
  (*(v1 + 8))(v2, v3);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  (*(v10 + 32))(v9, v10);
  type metadata accessor for SessionConfigurationProvider();
  swift_allocObject();
  v0[42] = SessionConfigurationProvider.init(sessionConfiguration:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_genAIFallbackSuppressReason, v24, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C27GenAIFallbackSuppressReasonOSgMR);
  type metadata accessor for NLRoutingDecisionProvider();
  swift_allocObject();
  v0[43] = NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
  outlined init with copy of ReferenceResolutionClientProtocol?(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_flowRedirectContext, v25, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  type metadata accessor for FlowRedirectContextProvider();
  swift_allocObject();
  v0[44] = FlowRedirectContextProvider.init(flowRedirectContext:)();
  v11 = v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId;
  v0[45] = *(v23 + OBJC_IVAR____TtC14SiriKitRuntime28RemoteConversationSpeechData_rcId);
  v0[46] = *(v11 + 8);
  v12 = *(v26 + 20);
  v13 = type metadata accessor for Input();
  (*(*(v13 - 8) + 16))(v28 + v12, v27, v13);
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  v16 = *(v15 + 96);

  v0[47] = v16(v14, v15);
  v0[48] = v17;
  v18 = *(v26 + 48);
  v19 = swift_task_alloc();
  v0[49] = v19;
  *v19 = v0;
  v19[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v20 = v0[18];

  return RemoteConversationService.makeRequestIdentities(from:)(v28 + v18, v20);
}

{
  v1 = *(*v0 + 320);

  return MEMORY[0x1EEE6DFA0](specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v1, 0);
}

{
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 432);
  v9 = *(v0 + 128);
  v10 = *(v0 + 376);
  *v7 = *(v0 + 360);
  v7[1] = v1;
  *(v7 + v6[6]) = v5;
  *(v7 + v6[7]) = v4;
  *(v7 + v6[8]) = v10;
  *(v7 + v6[9]) = 0;
  *(v7 + v6[10]) = v3;
  *(v7 + v6[11]) = v2;
  v11 = v9[3];
  v12 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v11);
  (*(v12 + 56))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  type metadata accessor for ConversationSELFHelper();
  *(v0 + 400) = static ConversationSELFHelper.shared.getter();
  Input.identifier.getter();
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *(v13 + 16) = v0 + 16;
  *(v13 + 24) = v7;
  *(v13 + 32) = v8;
  v21 = (*MEMORY[0x1E69D0030] + MEMORY[0x1E69D0030]);
  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  *v14 = v0;
  v14[1] = specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  v17 = *(v0 + 240);
  v18 = *(v0 + 208);
  v19 = *(v0 + 216);

  return v21(v17, v15, v16, v18, &async function pointer to partial apply for closure #1 in RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:), v13, v19);
}

uint64_t closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)()
{
  v1 = *(*v0 + 720);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v1, 0);
}

{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);

  v4 = v0[1];

  return v4();
}

{
  v115 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 552);
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 712);
      v6 = *(v0 + 560);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v8 = swift_allocError();
      *v9 = 0xD000000000000058;
      v9[1] = 0x80000001DCA85FC0;
      v10 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v8);

      v6(v10);
      outlined destroy of RemoteConversationService.State(v5 + v7, type metadata accessor for SiriRequest);
      __swift_destroy_boxed_opaque_existential_1Tm(v5 + 5);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      v19 = *(v0 + 560);
      v113 = 0;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA859E0);
      MEMORY[0x1E12A1580](0xD000000000000038, 0x80000001DCA86020);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v20 = swift_allocError();
      *v21 = 0;
      v21[1] = 0xE000000000000000;
      v22 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v20);

      v19(v22);
    }

LABEL_8:

    v23 = *(v0 + 8);

    return v23();
  }

  v11 = *(v0 + 712);
  *(v0 + 728) = *(v11 + 80);
  outlined init with take of ReferenceResolutionClientProtocol(v11, v0 + 16);
  v12 = *(v11 + 40);
  v13 = *(v11 + 56);
  *(v0 + 88) = *(v11 + 72);
  *(v0 + 72) = v13;
  *(v0 + 56) = v12;
  if (*(v0 + 80))
  {
    v14 = *(v0 + 560);
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
    v15 = swift_allocError();
    *v16 = 0xD000000000000062;
    v16[1] = 0x80000001DCA85F50;
    v17 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v15);

    v18 = v17;
LABEL_6:
    v14(v18);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    goto LABEL_8;
  }

  v25 = *(v0 + 664);
  RemoteConversationService.FlowAndInputRegistry.getRegisteredActingFlow(uuid:)(*(v0 + 576), v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    v27 = *(v0 + 656);
    v28 = *(v0 + 576);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 664), &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtSgMR);
    RemoteConversationService.FlowAndInputRegistry.getRegisteredFlow(uuid:)(v28, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR);
    if ((*(*(v29 - 8) + 48))(v27, 1, v29) == 1)
    {
      v14 = *(v0 + 560);
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 656), &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtSgMR);
      v113 = 0;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      MEMORY[0x1E12A1580](0xD000000000000020, 0x80000001DCA85F00);
      MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA859E0);
      MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA85F30);
      lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
      v30 = swift_allocError();
      *v31 = 0;
      v31[1] = 0xE000000000000000;
      v17 = specialized static FlowExtensionUserInputResultXPC.error(_:)(v30);

      v18 = v17;
      goto LABEL_6;
    }

    v52 = *(v0 + 688);
    v53 = *(v0 + 680);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 632);
    v58 = *(v0 + 552);
    v59 = *(v54 + *(v29 + 48));
    *(v0 + 760) = v59;
    *(v0 + 768) = *(v54 + *(v29 + 64));
    (*(v53 + 32))(v52);

    Input.parse.getter();
    v60 = Parse.usoTasks.getter();
    (*(v56 + 8))(v55, v57);
    type metadata accessor for FlowPluginInfo();
    outlined init with copy of ReferenceResolutionClientProtocol(v58 + 80, v0 + 136);
    v61 = FlowPluginInfo.__allocating_init(pluginBundle:)((v0 + 136));
    type metadata accessor for FlowAgent();
    v62 = swift_allocObject();
    *(v0 + 776) = v62;
    swift_defaultActor_initialize();
    *(v62 + 130) = 0;
    *(v62 + 136) = 0;
    *(v62 + 144) = 0;
    *(v62 + 112) = v59;
    *(v62 + 120) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

    dispatch thunk of AnyFlow.unbox<A>(as:)();

    v63 = *(v0 + 200) != 0;
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 176, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    *(v62 + 128) = v63;
    *(v62 + 129) = v63;
    *(v62 + 152) = v60;
    *(v62 + 160) = v61;
    v107 = SiriKitRuntimeState.taskService.getter();
    v64 = *(v58 + 64);
    v104 = *(v58 + 56);
    v65 = one-time initialization token for defaultTimeout;

    v105 = v64;

    if (v65 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 624);
    v112 = *(v0 + 616);
    v67 = *(v0 + 600);
    v111 = v67;
    v68 = *(v0 + 592);
    v103 = *(v0 + 608);
    v69 = __swift_project_value_buffer(v68, static JetsamHelper.defaultTimeout);
    v70 = *(v67 + 16);
    v106 = v66;
    v109 = v68;
    v70(v66, v69, v68);
    v71 = type metadata accessor for ServerFallbackDisablingUtils();
    v72 = swift_allocObject();
    v72[2] = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
    v72[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
    v72[4] = 0;
    *(v0 + 240) = v71;
    *(v0 + 248) = &protocol witness table for ServerFallbackDisablingUtils;
    *(v0 + 216) = v72;
    v73 = type metadata accessor for CorrectionsUndoManager();
    v74 = swift_allocObject();
    *(v74 + 40) = 0u;
    *(v74 + 56) = 0;
    *(v74 + 24) = 0u;
    *(v74 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
    swift_beginAccess();
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v0 + 256, v74 + 24, &_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
    swift_endAccess();
    v70(v112, v66, v68);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 216, v0 + 296);
    *(v0 + 360) = v73;
    *(v0 + 368) = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, 255, type metadata accessor for CorrectionsUndoManager, &protocol conformance descriptor for CorrectionsUndoManager);
    *(v0 + 336) = v74;
    type metadata accessor for Conversation(0);
    v75 = swift_allocObject();
    *(v0 + 784) = v75;
    swift_defaultActor_initialize();
    type metadata accessor for Conversation.State(0);
    swift_storeEnumTagMultiPayload();
    v76 = v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = 0;
    v77 = (v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    *v77 = 12589;
    v77[1] = 0xE200000000000000;
    v78 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
    v79 = type metadata accessor for UUID();
    (*(*(v79 - 8) + 56))(v75 + v78, 1, 1, v79);
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused) = 0;
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = 0;
    type metadata accessor for InstrumentedStack(0);
    v80 = swift_allocObject();
    v80[5] = MEMORY[0x1E69E7CC8];
    v80[3] = 0;
    v80[4] = 0;
    v80[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMd, &_s14SiriKitRuntime4NodeCyAA9FlowAgentCGMR);
    swift_allocObject();
    swift_retain_n();

    v81 = specialized Node.init(value:parent:)(v62, 0);
    specialized OrderedForest._push(_:)(v81);
    v82 = v81[2];
    type metadata accessor for InstrumentedStack.TrackedFlowAgent(0);
    swift_allocObject();

    v84 = specialized InstrumentedStack.TrackedFlowAgent.init(agent:parent:)(v83, 0);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v80[5];
    v80[5] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, v82, isUniquelyReferenced_nonNull_native);
    v80[5] = v113;
    swift_endAccess();

    *(v75 + 112) = v80;
    v70(v103, v112, v109);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v86 = static OS_dispatch_queue.main.getter();
    type metadata accessor for JetsamHelper(0);
    v87 = swift_allocObject();
    v88 = (v87 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction);
    *v88 = 0;
    v88[1] = 0;
    v87[2] = 0xD000000000000023;
    v87[3] = 0x80000001DCA7E400;
    v87[4] = dispatch_semaphore_create(1);
    v87[5] = v86;
    (*(v111 + 32))(v87 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v103, v109);
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper) = v87;
    swift_beginAccess();
    *(v76 + 8) = &protocol witness table for RemoteConversationService;
    swift_unknownObjectWeakAssign();
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService) = v107;
    v89 = (v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginId);
    *v89 = v104;
    v89[1] = v105;
    v90 = *(v62 + 160);
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo) = v90;
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 336, v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_correctionsEngine);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 296, v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils);
    type metadata accessor for SiriEnvironment();
    swift_allocObject();

    v91 = v90;
    *(v75 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rootEnvironment) = SiriEnvironment.init(parent:)();
    type metadata accessor for SiriCorrectionsClientProvider();
    swift_allocObject();

    SiriCorrectionsClientProvider.init()();
    SiriEnvironment.correctionsClientProvider.setter();

    SiriEnvironment.correctionsClientProvider.getter();
    v92 = *(v0 + 360);
    v93 = *(v0 + 368);
    v94 = __swift_project_boxed_opaque_existential_1((v0 + 336), v92);
    *(v0 + 400) = v92;
    *(v0 + 408) = *(v93 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 376));
    (*(*(v92 - 8) + 16))(boxed_opaque_existential_0, v94, v92);
    dispatch thunk of SiriCorrectionsClientProvider.correctionsClient.setter();

    type metadata accessor for UserIdentityProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type UserIdentityProvider and conformance UserIdentityProvider, 255, MEMORY[0x1E69D0010], MEMORY[0x1E69D0008]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    type metadata accessor for FlowTaskProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type FlowTaskProvider and conformance FlowTaskProvider, 255, MEMORY[0x1E69CFB28], MEMORY[0x1E69CFB20]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    type metadata accessor for CallStateEnvironmentProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, 255, MEMORY[0x1E69D0098], MEMORY[0x1E69D0090]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    type metadata accessor for ScopedReferenceResolutionDataProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type ScopedReferenceResolutionDataProvider and conformance ScopedReferenceResolutionDataProvider, 255, MEMORY[0x1E69D27E0], MEMORY[0x1E69D27D8]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    type metadata accessor for AceServiceContextProvider();
    _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type AceServiceContextProvider and conformance AceServiceContextProvider, 255, MEMORY[0x1E69D0068], MEMORY[0x1E69D0060]);

    dispatch thunk of SiriEnvironment.requireProvider<A>(of:)();

    dispatch thunk of AnyFlow.siriEnvironment.setter();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    v96 = *(v111 + 8);
    v96(v112, v109);
    v96(v106, v109);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));

    v97 = swift_task_alloc();
    *(v0 + 792) = v97;
    *v97 = v0;
    v97[1] = closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:);
    v98 = *(v0 + 688);
    v99 = *(v0 + 584);
    v100 = *(v0 + 568);
    v101 = *(v0 + 560);
    v102 = *(v0 + 552);

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(v0 + 16, v75, v98, v99, 0, v101, v100, v102);
  }

  else
  {
    v32 = *(v0 + 696);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 664);
    v36 = *(v0 + 552);
    v37 = *(v26 + 48);
    v38 = *(v35 + *(v26 + 64));
    *(v0 + 736) = v38;
    (*(v33 + 32))(v32, v35, v34);
    outlined init with take of ReferenceResolutionClientProtocol((v35 + v37), v0 + 96);
    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    v110 = __swift_project_boxed_opaque_existential_1((v0 + 96), v39);
    type metadata accessor for EncoreConversation(0);
    v41 = v36[8];
    v108 = v36[7];
    type metadata accessor for FlowPluginInfo();
    outlined init with copy of ReferenceResolutionClientProtocol((v36 + 10), v0 + 416);

    v42 = FlowPluginInfo.__allocating_init(pluginBundle:)((v0 + 416));
    v43 = SiriKitRuntimeState.taskService.getter();
    v44 = v36[20];

    default argument 7 of EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(&v113);

    v45 = specialized EncoreConversation.__allocating_init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)(v110, v108, v41, v42, v43, v36, &protocol witness table for RemoteConversationService, v44, v38, &v113, v39, v40);
    *(v0 + 744) = v45;

    v46 = swift_task_alloc();
    *(v0 + 752) = v46;
    *v46 = v0;
    v46[1] = closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:);
    v47 = *(v0 + 696);
    v48 = *(v0 + 584);
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    v51 = *(v0 + 552);

    return specialized RemoteConversationService.doAccept(conversationTurnState:conversation:input:speechData:wasConversationAlreadyActive:reply:)(v0 + 16, v45, v47, v48, 0, v50, v49, v51);
  }
}

{
  v1 = *(*v0 + 720);

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:), v1, 0);
}

{
  v1 = v0[87];
  v2 = v0[85];
  v3 = v0[84];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 7), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  v4 = v0[1];

  return v4();
}

uint64_t Conversation.State.assertAcceptedInput(function:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v21 = a4;
  v7 = type metadata accessor for Conversation.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  outlined init with copy of Conversation.State(v5, v20 - v11, type metadata accessor for Conversation.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of Conversation.State(v12, type metadata accessor for Conversation.State);
  if (EnumCaseMultiPayload == 5)
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    strcpy(v20, "Cannot call ");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;
    v14 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v14);

    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA7E5A0);
    v15 = v20[0];
    v16 = v20[1];
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
  }

  else
  {
    outlined init with copy of Conversation.State(v5, v9, type metadata accessor for Conversation.State);
    if (!swift_getEnumCaseMultiPayload())
    {
      v16 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48)];
      outlined init with take of Conversation.State(v9, a1, type metadata accessor for SiriRequest);
      return v16;
    }

    outlined destroy of Conversation.State(v9, type metadata accessor for Conversation.State);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x6320746F6E6E6143, 0xEC000000206C6C61);
    v17 = StaticString.description.getter();
    MEMORY[0x1E12A1580](v17);

    MEMORY[0x1E12A1580](0xD000000000000026, 0x80000001DCA7E600);
    v15 = v20[0];
    v16 = v20[1];
    lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  }

  swift_allocError();
  *v18 = v15;
  v18[1] = v16;
  swift_willThrow();
  return v16;
}

uint64_t lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Conversation.execute(from:)(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v4 = type metadata accessor for ConversationCommitResult(0);
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v5 = type metadata accessor for FlowUnhandledReason();
  v3[53] = v5;
  v3[54] = *(v5 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
  v3[59] = swift_task_alloc();
  v6 = type metadata accessor for PluginAction();
  v3[60] = v6;
  v3[61] = *(v6 - 8);
  v3[62] = swift_task_alloc();
  v7 = type metadata accessor for ExecuteResponseType();
  v3[63] = v7;
  v3[64] = *(v7 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for FlowTraceEvent();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTimeInterval();
  v3[70] = v9;
  v3[71] = *(v9 - 8);
  v3[72] = swift_task_alloc();
  v10 = type metadata accessor for ExecuteResponse();
  v3[73] = v10;
  v3[74] = *(v10 - 8);
  v3[75] = swift_task_alloc();
  v11 = type metadata accessor for PrepareResponseType();
  v3[76] = v11;
  v3[77] = *(v11 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v12 = type metadata accessor for PrepareResponse();
  v3[80] = v12;
  v3[81] = *(v12 - 8);
  v3[82] = swift_task_alloc();
  v3[83] = type metadata accessor for Conversation.State(0);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

uint64_t RemoteConversationService.sendActiveTasks(_:rcId:)()
{
  v40 = v0;
  v1 = v0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v3 + v4, v2, type metadata accessor for RemoteConversationService.State);
  RemoteConversationService.State.activeTurn.getter(v1 + 56);
  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for RemoteConversationService.State);
  if (*(v1 + 80))
  {
    v6 = *(v1 + 208);
    v5 = *(v1 + 216);
    v8 = *(v1 + 192);
    v7 = *(v1 + 200);
    v10 = *(v1 + 176);
    v9 = *(v1 + 184);
    v11 = *(v1 + 144);
    outlined init with take of ReferenceResolutionClientProtocol((v1 + 56), v1 + 16);
    v12 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = type metadata accessor for PommesContext();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    (*(v9 + 104))(v8, *MEMORY[0x1E69CFF08], v10);
    v14 = type metadata accessor for ExecutionContextUpdate(0);
    v15 = objc_allocWithZone(v14);
    outlined init with copy of ReferenceResolutionClientProtocol?(v6, v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v7, 0);
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = v11;
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v5, &v15[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v15[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, &v15[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v9 + 16))(&v15[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v8, v10);
    v16 = &v15[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v16 = 0;
    v16[1] = 0;
    v15[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    *(v1 + 120) = v15;
    *(v1 + 128) = v14;
    v17 = objc_msgSendSuper2((v1 + 120), sel_init);
    *(v1 + 240) = v17;
    (*(v9 + 8))(v8, v10);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    *(v1 + 248) = __swift_project_value_buffer(v18, static Logger.executor);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v1 + 152);
      v22 = *(v1 + 160);
      v23 = *(v1 + 144);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315650;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA85C90, &v39);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v39);
      *(v24 + 22) = 2080;
      v26 = type metadata accessor for Siri_Nlu_External_Task();
      v27 = MEMORY[0x1E12A16D0](v23, v26);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v39);

      *(v24 + 24) = v29;
      _os_log_impl(&dword_1DC659000, v19, v20, "RemoteConversationService: %s sending active tasks if rcId='%s' is selected: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v25, -1, -1);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    v31 = *(v1 + 40);
    v30 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v31);
    *(v1 + 256) = (*(v30 + 64))(v31, v30);
    v32 = swift_task_alloc();
    *(v1 + 264) = v32;
    *v32 = v1;
    v32[1] = RemoteConversationService.sendActiveTasks(_:rcId:);

    return AceServiceInvokerImpl.publish(executionContextUpdate:)(v17);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v1 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.executor);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DC659000, v35, v36, "Cannot send active task list to Execution Bridge: We're not in an active turn", v37, 2u);
      MEMORY[0x1E12A2F50](v37, -1, -1);
    }

    v38 = *(v1 + 8);

    return v38();
  }
}

{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = RemoteConversationService.sendActiveTasks(_:rcId:);
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = RemoteConversationService.sendActiveTasks(_:rcId:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v17 = v0;
  v1 = *(v0 + 272);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 136) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v3, v4, "Error sending active task list to SiriRequestDispatcher: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 272);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t FlowAgent.prepare()()
{
  v49 = v0;
  v1 = *(v0 + 208);
  swift_beginAccess();
  if (*(v1 + 130) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 208);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v48[0] = v7;
      *v6 = 136315138;
      *(v0 + 192) = *(v5 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v48);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s prepare cancelled before call.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    static PrepareResponse.complete()();
    goto LABEL_21;
  }

  v11 = *(v0 + 208);
  swift_beginAccess();
  if ((*(v11 + 129) & 1) == 0)
  {
LABEL_20:
    static PrepareResponse.ongoing(needsExecute:)();
LABEL_21:

    v43 = *(v0 + 8);

    return v43();
  }

  v12 = *(*(v0 + 208) + 112);
  *(v0 + 312) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);
  dispatch thunk of AnyFlow.unbox<A>(as:)();
  if (!*(v0 + 80))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
    goto LABEL_20;
  }

  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v13, static Logger.executor);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48[0] = v17;
    *v16 = 136315138;
    *(v0 + 184) = v12;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v48);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v14, v15, "[Conversation] %s prepare.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 304);
  v47 = *(v0 + 208);
  v21 = static Log.executor;
  OSSignpostID.init(log:)();
  v45 = static os_signpost_type_t.begin.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DCA6B020;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DCA66060;
  v24 = ObjectIdentifier.hashValue.getter();
  v25 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E65A8];
  *(v23 + 56) = MEMORY[0x1E69E6530];
  *(v23 + 64) = v26;
  *(v23 + 32) = v24;
  v27 = String.init(format:_:)();
  v29 = v28;
  v30 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v31 = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 64) = v31;
  *(v22 + 32) = v27;
  *(v22 + 40) = v29;
  v32 = AnyFlow.description.getter();
  *(v22 + 96) = v30;
  *(v22 + 104) = v31;
  *(v22 + 72) = v32;
  *(v22 + 80) = v33;
  v34 = AnyFlow.description.getter();
  v35 = MEMORY[0x1E12A15C0](v34);

  *(v22 + 136) = v25;
  *(v22 + 144) = v26;
  *(v22 + 112) = v35;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v45, &dword_1DC659000, v21, "flow-prepare", 12, 2, v46, "START id=%{public}s name=%{public}s flowTypeId=%lx", 50, 2, v22);

  type metadata accessor for SiriEnvironment();
  *(v0 + 152) = v12;
  v36 = swift_task_alloc();
  *(v36 + 16) = v47;
  *(v36 + 24) = v0 + 16;
  *(v0 + 328) = type metadata accessor for AnyFlow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy11SiriKitFlow15PrepareResponseVs5Error_pGMd, &_sScTy11SiriKitFlow15PrepareResponseVs5Error_pGMR);
  lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();

  v37 = *(v0 + 144);
  *(v0 + 336) = v37;
  *(v47 + 144) = v37;

  v38 = swift_task_alloc();
  *(v0 + 344) = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 352) = v39;
  *v38 = v0;
  v38[1] = FlowAgent.prepare();
  v40 = *(v0 + 280);
  v41 = *(v0 + 264);
  v42 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v40, v37, v41, v39, v42);
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = FlowAgent.prepare();
  }

  else
  {
    v4 = FlowAgent.prepare();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[39];
  v13 = v0[38];
  v2 = v0[37];
  v14 = v0[36];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[25];
  v9 = v0[26];
  (*(v3 + 32))(v8, v0[35], v5);
  *(v9 + 129) = (PrepareResponse.needsExecute.getter() & 1) == 0;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMR) + 48);
  *v4 = v1;
  (*(v3 + 16))(&v4[v10], v8, v5);
  (*(v6 + 104))(v4, *MEMORY[0x1E69CFB08], v7);

  static FlowTrace.trace(event:)();

  (*(v6 + 8))(v4, v7);
  $defer #1 () in FlowAgent.prepare()(v13);
  (*(v2 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v11 = v0[1];

  return v11();
}

{
  v33 = v0;
  v1 = v0[45];
  v0[20] = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    (*(v0[28] + 8))(v0[29], v0[27]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[39];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      v0[22] = v5;
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v32);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s prepare cancelled.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }
  }

  else
  {
    v11 = v0[45];
    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[45];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      v0[21] = v15;
      v18 = v15;
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v32);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v13, v14, "[Conversation] Error preparing flow: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }

  v22 = v0[38];
  v23 = v0[39];
  v24 = v0[37];
  v30 = v0[45];
  v31 = v0[36];
  v25 = v0[31];
  v26 = v0[32];
  v27 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15PrepareResponseV8responsetMR);
  *v26 = v23;

  static PrepareResponse.complete()();
  (*(v25 + 104))(v26, *MEMORY[0x1E69CFB08], v27);
  static FlowTrace.trace(event:)();
  (*(v25 + 8))(v26, v27);
  static PrepareResponse.complete()();

  $defer #1 () in FlowAgent.prepare()(v22);
  (*(v24 + 8))(v22, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v28 = v0[1];

  return v28();
}

uint64_t Conversation.execute(from:)()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v56 = v0;
  if (PrepareResponse.needsExecute.getter())
  {
    if (!PrepareResponse.next.getter())
    {
      v9 = *(v0 + 568);
      **(v0 + 576) = 300;
      (*(v9 + 104))();
      v10 = swift_task_alloc();
      *(v0 + 856) = v10;
      *v10 = v0;
      v10[1] = Conversation.execute(from:);
      v11 = *(v0 + 600);
      v12 = *(v0 + 576);

      return FlowAgent.execute(timeout:)(v11, v12);
    }
  }

  else
  {
  }

  v1 = *(v0 + 768);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 352);
  (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
  outlined init with copy of Conversation.State(v4 + v1, v2, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v2, v3, type metadata accessor for Conversation.State);
  LODWORD(v2) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v3, type metadata accessor for Conversation.State);
  if (v2 == 2 && (static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
  {
    v5 = (*(**(v0 + 736) + 216))();
    if (v5)
    {
      *(v0 + 800) = v5;
      *(v0 + 808) = *(v5 + 16);

      v6 = swift_task_alloc();
      *(v0 + 816) = v6;
      *v6 = v0;
      v6[1] = Conversation.execute(from:);
      v7 = *(v0 + 656);

      return FlowAgent.prepare()(v7);
    }

    v13 = *(v0 + 768);
    v14 = *(v0 + 672);
    v15 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v14, v15 + v13);
    swift_endAccess();
  }

  *(v0 + 1096) = *(v0 + 792);
  v16 = *(v0 + 728);
  v17 = *(v0 + 696);
  v18 = *(v0 + 352);
  static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v18 + v16, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = v18 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (Strong)
  {
    v21 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v54 = (*(v21 + 16) + **(v21 + 16));
    v23 = swift_task_alloc();
    *(v0 + 1112) = v23;
    *v23 = v0;
    v23[1] = Conversation.execute(from:);

    return v54(ObjectType, v21);
  }

  else
  {
    v24 = (*(**(v0 + 736) + 216))();
    if (v24)
    {
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v55 = v29;
        *v28 = 136315394;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v55);
        *(v28 + 12) = 2080;
        v30 = type metadata accessor for Siri_Nlu_External_Task();

        v32 = MEMORY[0x1E12A16D0](v31, v30);
        v34 = v33;

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v55);

        *(v28 + 14) = v35;
        _os_log_impl(&dword_1DC659000, v26, v27, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v29, -1, -1);
        MEMORY[0x1E12A2F50](v28, -1, -1);
      }

      v36 = *(v0 + 336);
      v37 = *(*(v25 + 16) + 152);

      v38 = MEMORY[0x1E69E7CC0];
      *v36 = v37;
      v36[1] = v38;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 1096);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v55 = v43;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v55);
        *(v42 + 12) = 2080;
        if (v41)
        {
          v44 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v44 = MEMORY[0x1E69E7CC0];
        }

        v45 = type metadata accessor for Siri_Nlu_External_Task();
        v46 = MEMORY[0x1E12A16D0](v44, v45);
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v55);

        *(v42 + 14) = v49;
        _os_log_impl(&dword_1DC659000, v39, v40, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v43, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      v50 = MEMORY[0x1E69E7CC0];
      if (*(v0 + 1096))
      {
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
      }

      v52 = *(v0 + 336);
      *v52 = v50;
      v52[1] = v51;
      swift_storeEnumTagMultiPayload();
    }

    v53 = *(v0 + 8);

    return v53();
  }
}

{
  v87 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 704) = __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 352);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v86 = v6;
    *v5 = 136315138;
    v7 = (v4 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v86);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DC659000, v2, v3, "[Conversation] Finally executing rcId: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v11 = *(v0 + 696);
  v12 = *(v0 + 352);
  v84 = *(v0 + 344);
  *(v0 + 712) = type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  v13 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  *(v0 + 720) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId;
  v14 = (v12 + v13);
  swift_beginAccess();
  v15 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  *(v0 + 728) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v12 + v15, v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(v12 + 112);
  *(v0 + 736) = v16;
  v17 = *(*v16 + 160);

  v17(v18);
  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextStarted(rcId:hypothesisId:fromPlugin:stackDepth:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v84)
  {
    v19 = *(v84 + 16);
    v20 = *(v0 + 352) + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 744) = Strong;
    if (Strong)
    {
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      v26 = v19 + 152;
      v25 = *(v19 + 152);
      v24 = *(v26 + 8);
      v28 = *v14;
      v27 = v14[1];
      *(v0 + 752) = v27;
      v29 = *(v22 + 8);

      v83 = (v29 + *v29);
      v30 = swift_task_alloc();
      *(v0 + 760) = v30;
      *v30 = v0;
      v30[1] = Conversation.execute(from:);

      return v83(v24, v25, v28, v27, ObjectType, v22);
    }
  }

  v32 = *(v0 + 688);
  v33 = *(v0 + 680);
  v34 = *(v0 + 352);
  v35 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 768) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 776) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v34 + v35, v32, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v32, v33, type metadata accessor for Conversation.State);
  LODWORD(v32) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v33, type metadata accessor for Conversation.State);
  if (v32 != 2)
  {

    v39 = 0;
LABEL_16:
    *(v0 + 1096) = v39;
    v40 = *(v0 + 728);
    v41 = *(v0 + 696);
    v42 = *(v0 + 352);
    static ConversationSELFHelper.shared.getter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v42 + v40, v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v43 = v42 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = v44;
    if (v44)
    {
      v45 = *(v43 + 8);
      v46 = swift_getObjectType();
      v85 = (*(v45 + 16) + **(v45 + 16));
      v47 = swift_task_alloc();
      *(v0 + 1112) = v47;
      *v47 = v0;
      v47[1] = Conversation.execute(from:);

      return v85(v46, v45);
    }

    else
    {
      v48 = (*(**(v0 + 736) + 216))();
      if (v48)
      {
        v49 = v48;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v86 = v53;
          *v52 = 136315394;
          *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v86);
          *(v52 + 12) = 2080;
          v54 = type metadata accessor for Siri_Nlu_External_Task();

          v56 = MEMORY[0x1E12A16D0](v55, v54);
          v58 = v57;

          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v86);

          *(v52 + 14) = v59;
          _os_log_impl(&dword_1DC659000, v50, v51, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v52, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v53, -1, -1);
          MEMORY[0x1E12A2F50](v52, -1, -1);
        }

        v60 = *(v0 + 336);
        v61 = *(*(v49 + 16) + 152);

        v62 = MEMORY[0x1E69E7CC0];
        *v60 = v61;
        v60[1] = v62;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = *(v0 + 1096);
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v86 = v67;
          *v66 = 136315394;
          *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v86);
          *(v66 + 12) = 2080;
          if (v65)
          {
            v68 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v68 = MEMORY[0x1E69E7CC0];
          }

          v71 = type metadata accessor for Siri_Nlu_External_Task();
          v72 = MEMORY[0x1E12A16D0](v68, v71);
          v74 = v73;

          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v86);

          *(v66 + 14) = v75;
          _os_log_impl(&dword_1DC659000, v63, v64, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v66, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v67, -1, -1);
          MEMORY[0x1E12A2F50](v66, -1, -1);
        }

        v76 = MEMORY[0x1E69E7CC0];
        if (*(v0 + 1096))
        {
        }

        else
        {
          v77 = MEMORY[0x1E69E7CC0];
        }

        v78 = *(v0 + 336);
        *v78 = v76;
        v78[1] = v77;
        swift_storeEnumTagMultiPayload();
      }

      v79 = *(v0 + 8);

      return v79();
    }
  }

  *(v0 + 1120) = *MEMORY[0x1E69CFFD8];
  *(v0 + 1124) = *MEMORY[0x1E69CFFE0];
  v36 = MEMORY[0x1E69E7F48];
  *(v0 + 1128) = *MEMORY[0x1E69CFB18];
  *(v0 + 1132) = *v36;
  *(v0 + 1136) = *MEMORY[0x1E69CFFC0];
  v37 = MEMORY[0x1E69CFFB8];
  *(v0 + 1140) = *MEMORY[0x1E69CFFC8];
  *(v0 + 1144) = *v37;
  v38 = *(v0 + 344);
  *(v0 + 784) = 0u;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {

LABEL_14:
    v39 = *(v0 + 792);
    goto LABEL_16;
  }

  if (!v38)
  {
    v38 = (*(**(v0 + 736) + 216))();
    if (!v38)
    {
      v80 = *(v0 + 768);
      v81 = *(v0 + 672);
      v82 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v81, v82 + v80);
      swift_endAccess();
      goto LABEL_14;
    }
  }

  *(v0 + 800) = v38;
  *(v0 + 808) = *(v38 + 16);

  v69 = swift_task_alloc();
  *(v0 + 816) = v69;
  *v69 = v0;
  v69[1] = Conversation.execute(from:);
  v70 = *(v0 + 656);

  return FlowAgent.prepare()(v70);
}

{
  v1 = *(*v0 + 352);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v55 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 352);
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 768) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_state;
  *(v0 + 776) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;

  swift_beginAccess();
  swift_beginAccess();
  outlined init with copy of Conversation.State(v3 + v4, v1, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v1, v2, type metadata accessor for Conversation.State);
  LODWORD(v1) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v2, type metadata accessor for Conversation.State);
  if (v1 != 2)
  {

    v8 = 0;
LABEL_7:
    *(v0 + 1096) = v8;
    v9 = *(v0 + 728);
    v10 = *(v0 + 696);
    v11 = *(v0 + 352);
    static ConversationSELFHelper.shared.getter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v11 + v9, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = v11 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = Strong;
    if (Strong)
    {
      v14 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v53 = (*(v14 + 16) + **(v14 + 16));
      v16 = swift_task_alloc();
      *(v0 + 1112) = v16;
      *v16 = v0;
      v16[1] = Conversation.execute(from:);

      return v53(ObjectType, v14);
    }

    else
    {
      v18 = (*(**(v0 + 736) + 216))();
      if (v18)
      {
        v19 = v18;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v54 = v23;
          *v22 = 136315394;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v54);
          *(v22 + 12) = 2080;
          v24 = type metadata accessor for Siri_Nlu_External_Task();

          v26 = MEMORY[0x1E12A16D0](v25, v24);
          v28 = v27;

          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v54);

          *(v22 + 14) = v29;
          _os_log_impl(&dword_1DC659000, v20, v21, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v23, -1, -1);
          MEMORY[0x1E12A2F50](v22, -1, -1);
        }

        v30 = *(v0 + 336);
        v31 = *(*(v19 + 16) + 152);

        v32 = MEMORY[0x1E69E7CC0];
        *v30 = v31;
        v30[1] = v32;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = *(v0 + 1096);
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v54 = v37;
          *v36 = 136315394;
          *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v54);
          *(v36 + 12) = 2080;
          if (v35)
          {
            v38 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v38 = MEMORY[0x1E69E7CC0];
          }

          v41 = type metadata accessor for Siri_Nlu_External_Task();
          v42 = MEMORY[0x1E12A16D0](v38, v41);
          v44 = v43;

          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v54);

          *(v36 + 14) = v45;
          _os_log_impl(&dword_1DC659000, v33, v34, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v37, -1, -1);
          MEMORY[0x1E12A2F50](v36, -1, -1);
        }

        v46 = MEMORY[0x1E69E7CC0];
        if (*(v0 + 1096))
        {
        }

        else
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        v48 = *(v0 + 336);
        *v48 = v46;
        v48[1] = v47;
        swift_storeEnumTagMultiPayload();
      }

      v49 = *(v0 + 8);

      return v49();
    }
  }

  *(v0 + 1120) = *MEMORY[0x1E69CFFD8];
  *(v0 + 1124) = *MEMORY[0x1E69CFFE0];
  v5 = MEMORY[0x1E69E7F48];
  *(v0 + 1128) = *MEMORY[0x1E69CFB18];
  *(v0 + 1132) = *v5;
  *(v0 + 1136) = *MEMORY[0x1E69CFFC0];
  v6 = MEMORY[0x1E69CFFB8];
  *(v0 + 1140) = *MEMORY[0x1E69CFFC8];
  *(v0 + 1144) = *v6;
  v7 = *(v0 + 344);
  *(v0 + 784) = 0u;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {

LABEL_5:
    v8 = *(v0 + 792);
    goto LABEL_7;
  }

  if (!v7)
  {
    v7 = (*(**(v0 + 736) + 216))();
    if (!v7)
    {
      v50 = *(v0 + 768);
      v51 = *(v0 + 672);
      v52 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v51, v52 + v50);
      swift_endAccess();
      goto LABEL_5;
    }
  }

  *(v0 + 800) = v7;
  *(v0 + 808) = *(v7 + 16);

  v39 = swift_task_alloc();
  *(v0 + 816) = v39;
  *v39 = v0;
  v39[1] = Conversation.execute(from:);
  v40 = *(v0 + 656);

  return FlowAgent.prepare()(v40);
}

{
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[59];

  ExecuteResponse.nextPluginAction.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[53];
    v5 = v0[54];
    v6 = v0[52];
    outlined destroy of ReferenceResolutionClientProtocol?(v0[59], &_s11SiriKitFlow12PluginActionVSgMd, &_s11SiriKitFlow12PluginActionVSgMR);
    ExecuteResponse.unhandledReason.getter();
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      v7 = v0[129];
      v8 = v0[101];
      v9 = (v0[44] + v0[90]);
      outlined destroy of ReferenceResolutionClientProtocol?(v0[52], &_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR);
      v10 = *v9;
      v11 = v9[1];
      v0[132] = v11;

      v12 = ExecuteResponse.next.getter();
      v0[133] = v12;
      v13 = *(v8 + 152);
      v0[134] = v13;

      v14 = ExecuteResponse.onChildFlowCompletion.getter();
      v0[135] = v14;
      v15 = swift_task_alloc();
      v0[136] = v15;
      *v15 = v0;
      v15[1] = Conversation.execute(from:);

      return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v10, v11, 0, v12, v13, v7, v14);
    }

    v25 = v0[57];
    v26 = v0[58];
    v27 = v0[53];
    v28 = v0[54];
    v69 = *(v28 + 32);
    v69(v26, v0[52], v27);
    (*(v28 + 16))(v25, v26, v27);
    if ((*(v28 + 88))(v25, v27) == *MEMORY[0x1E69CFB70])
    {
      v62 = v0[81];
      v64 = v0[80];
      v65 = v0[82];
      v58 = v0[74];
      v59 = v0[73];
      v60 = v0[75];
      v61 = v0[48];
      v63 = v0[47];
      v67 = v0[46];
      v29 = v0[44];
      v30 = (v29 + v0[90]);
      v55 = *(v0[54] + 8);
      v55(v0[57], v0[53]);
      SiriEnvironment.currentRequest.getter();
      v31 = CurrentRequest.executionRequestId.getter();
      v33 = v32;

      if (v33)
      {
        v34 = v31;
      }

      else
      {
        v34 = 0;
      }

      v57 = v34;
      if (!v33)
      {
        v33 = 0xE000000000000000;
      }

      SiriEnvironment.currentRequest.getter();
      v56 = CurrentRequest.rootRequestId.getter();
      v36 = v35;

      v38 = *(v29 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 24);
      v37 = *(v29 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 32);
      __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils), v38);
      v39 = *v30;
      v40 = v30[1];
      v41 = *(v37 + 40);

      v41(v57, v33, v56, v36, v39, v40, v38, v37);

      (*(v58 + 8))(v60, v59);
      (*(v62 + 8))(v65, v64);
      if ((*(v61 + 48))(v67, 1, v63) != 1)
      {
        v52 = v0[50];
        v53 = v0[46];
        v54 = v0[42];
        v55(v0[58], v0[53]);
        outlined init with take of Conversation.State(v53, v52, type metadata accessor for ConversationCommitResult);
        outlined init with take of Conversation.State(v52, v54, type metadata accessor for ConversationCommitResult);
        goto LABEL_18;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v0[46], &_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR);
    }

    else
    {
      v42 = v0[82];
      v43 = v0[81];
      v44 = v0[80];
      v45 = v0[75];
      v46 = v0[74];
      v47 = v0[73];
      v48 = v0[57];
      v50 = v0[53];
      v49 = v0[54];

      (*(v46 + 8))(v45, v47);
      (*(v43 + 8))(v42, v44);
      (*(v49 + 8))(v48, v50);
    }

    v69(v0[42], v0[58], v0[53]);
  }

  else
  {
    v17 = v0[81];
    v70 = v0[80];
    v71 = v0[82];
    v66 = v0[75];
    v18 = v0[74];
    v19 = v0[73];
    v20 = v0[61];
    v21 = v0[62];
    v22 = v0[60];
    v68 = v0[59];
    v23 = v0[42];

    (*(v18 + 8))(v66, v19);
    (*(v17 + 8))(v71, v70);
    v24 = *(v20 + 32);
    v24(v21, v68, v22);
    v24(v23, v21, v22);
  }

  swift_storeEnumTagMultiPayload();
LABEL_18:

  v51 = v0[1];

  return v51();
}

{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v63 = v0;

  v60 = *(v0 + 1048);
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = ExecuteResponse.requireInput.getter();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = *(v0 + 768);
    v9 = *(v0 + 672);
    v10 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v9, v10 + v8);
    swift_endAccess();
    v11 = v60;
    goto LABEL_12;
  }

  v12 = *(v0 + 864);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v13, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v13, v14, type metadata accessor for Conversation.State);
  LODWORD(v13) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v14, type metadata accessor for Conversation.State);
  v11 = v60;
  if (v13 != 2)
  {
LABEL_12:
    *(v0 + 1096) = v11;
    v22 = *(v0 + 728);
    v23 = *(v0 + 696);
    v24 = *(v0 + 352);
    static ConversationSELFHelper.shared.getter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v24 + v22, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v25 = v24 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1104) = Strong;
    if (Strong)
    {
      v27 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v61 = (*(v27 + 16) + **(v27 + 16));
      v29 = swift_task_alloc();
      *(v0 + 1112) = v29;
      *v29 = v0;
      v29[1] = Conversation.execute(from:);

      return v61(ObjectType, v27);
    }

    else
    {
      v30 = (*(**(v0 + 736) + 216))();
      if (v30)
      {
        v31 = v30;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v62 = v35;
          *v34 = 136315394;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v62);
          *(v34 + 12) = 2080;
          v36 = type metadata accessor for Siri_Nlu_External_Task();

          v38 = MEMORY[0x1E12A16D0](v37, v36);
          v40 = v39;

          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v62);

          *(v34 + 14) = v41;
          _os_log_impl(&dword_1DC659000, v32, v33, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v35, -1, -1);
          MEMORY[0x1E12A2F50](v34, -1, -1);
        }

        v42 = *(v0 + 336);
        v43 = *(*(v31 + 16) + 152);

        v44 = MEMORY[0x1E69E7CC0];
        *v42 = v43;
        v42[1] = v44;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = *(v0 + 1096);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v62 = v49;
          *v48 = 136315394;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v62);
          *(v48 + 12) = 2080;
          if (v47)
          {
            v50 = *(*(*(v0 + 1096) + 16) + 152);
          }

          else
          {
            v50 = MEMORY[0x1E69E7CC0];
          }

          v51 = type metadata accessor for Siri_Nlu_External_Task();
          v52 = MEMORY[0x1E12A16D0](v50, v51);
          v54 = v53;

          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v62);

          *(v48 + 14) = v55;
          _os_log_impl(&dword_1DC659000, v45, v46, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v49, -1, -1);
          MEMORY[0x1E12A2F50](v48, -1, -1);
        }

        v56 = MEMORY[0x1E69E7CC0];
        if (*(v0 + 1096))
        {
        }

        else
        {
          v57 = MEMORY[0x1E69E7CC0];
        }

        v58 = *(v0 + 336);
        *v58 = v56;
        v58[1] = v57;
        swift_storeEnumTagMultiPayload();
      }

      v59 = *(v0 + 8);

      return v59();
    }
  }

  *(v0 + 792) = v60;
  *(v0 + 784) = v12;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v0 + 352) + *(v0 + 776)))
  {
LABEL_11:
    v11 = *(v0 + 792);
    goto LABEL_12;
  }

  v15 = (*(**(v0 + 736) + 216))();
  if (!v15)
  {
    v19 = *(v0 + 768);
    v20 = *(v0 + 672);
    v21 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v20, v21 + v19);
    swift_endAccess();
    goto LABEL_11;
  }

  *(v0 + 800) = v15;
  *(v0 + 808) = *(v15 + 16);

  v16 = swift_task_alloc();
  *(v0 + 816) = v16;
  *v16 = v0;
  v16[1] = Conversation.execute(from:);
  v17 = *(v0 + 656);

  return FlowAgent.prepare()(v17);
}

{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = v2[72];
    v4 = v2[71];
    v5 = v2[70];
    v6 = v2[44];

    (*(v4 + 8))(v3, v5);
    v7 = Conversation.execute(from:);
    v8 = v6;
  }

  else
  {
    v9 = v2[44];
    (*(v2[71] + 8))(v2[72], v2[70]);
    v7 = Conversation.execute(from:);
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v72 = v0;
  v1 = ExecuteResponse.retriggerNL.getter();
  v69 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  if (v2)
  {
    v10 = v2;
    v67 = *(v0 + 640);
    v68 = v1;
    v11 = *(v0 + 336);
    v12 = v3;
    v13 = v4;

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v69, v67);
    *v11 = v68;
    v11[1] = v10;
    v11[2] = v12;
    v11[3] = v13;
    swift_storeEnumTagMultiPayload();
LABEL_3:

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = *(v0 + 792);
  v17 = ExecuteResponse.requireInput.getter();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v69, v6);
  if (v17)
  {
    v18 = *(v0 + 768);
    v19 = *(v0 + 672);
    v20 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v19, v20 + v18);
    swift_endAccess();
  }

  else
  {
    v21 = *(v0 + 864);
    v22 = *(v0 + 688);
    v23 = *(v0 + 680);
    outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v22, type metadata accessor for Conversation.State);
    outlined init with take of Conversation.State(v22, v23, type metadata accessor for Conversation.State);
    LODWORD(v22) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
    outlined destroy of Conversation.State(v23, type metadata accessor for Conversation.State);
    if (v22 == 2)
    {
      *(v0 + 792) = v16;
      *(v0 + 784) = v21;
      if ((static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
      {
        v24 = (*(**(v0 + 736) + 216))();
        if (v24)
        {
          *(v0 + 800) = v24;
          *(v0 + 808) = *(v24 + 16);

          v25 = swift_task_alloc();
          *(v0 + 816) = v25;
          *v25 = v0;
          v25[1] = Conversation.execute(from:);
          v26 = *(v0 + 656);

          return FlowAgent.prepare()(v26);
        }

        v27 = *(v0 + 768);
        v28 = *(v0 + 672);
        v29 = *(v0 + 352);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        outlined assign with take of Conversation.State(v28, v29 + v27);
        swift_endAccess();
      }

      v16 = *(v0 + 792);
    }
  }

  *(v0 + 1096) = v16;
  v30 = *(v0 + 728);
  v31 = *(v0 + 696);
  v32 = *(v0 + 352);
  static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v32 + v30, v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = v32 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (!Strong)
  {
    v38 = (*(**(v0 + 736) + 216))();
    if (v38)
    {
      v39 = v38;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v71 = v43;
        *v42 = 136315394;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v71);
        *(v42 + 12) = 2080;
        v44 = type metadata accessor for Siri_Nlu_External_Task();

        v46 = MEMORY[0x1E12A16D0](v45, v44);
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v71);

        *(v42 + 14) = v49;
        _os_log_impl(&dword_1DC659000, v40, v41, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v43, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);
      }

      v50 = *(v0 + 336);
      v51 = *(*(v39 + 16) + 152);

      v52 = MEMORY[0x1E69E7CC0];
      *v50 = v51;
      v50[1] = v52;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 1096);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v71 = v57;
        *v56 = 136315394;
        *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v71);
        *(v56 + 12) = 2080;
        if (v55)
        {
          v58 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        v59 = type metadata accessor for Siri_Nlu_External_Task();
        v60 = MEMORY[0x1E12A16D0](v58, v59);
        v62 = v61;

        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v71);

        *(v56 + 14) = v63;
        _os_log_impl(&dword_1DC659000, v53, v54, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v57, -1, -1);
        MEMORY[0x1E12A2F50](v56, -1, -1);
      }

      v64 = MEMORY[0x1E69E7CC0];
      if (*(v0 + 1096))
      {
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      v66 = *(v0 + 336);
      *v66 = v64;
      v66[1] = v65;
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_3;
  }

  v35 = *(v33 + 8);
  ObjectType = swift_getObjectType();
  v70 = (*(v35 + 16) + **(v35 + 16));
  v37 = swift_task_alloc();
  *(v0 + 1112) = v37;
  *v37 = v0;
  v37[1] = Conversation.execute(from:);

  return v70(ObjectType, v35);
}

{
  v1 = *(*v0 + 352);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v33 = v0;
  v1 = (*(**(v0 + 736) + 216))();
  if (v1)
  {
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v32);
      *(v5 + 12) = 2080;
      v7 = type metadata accessor for Siri_Nlu_External_Task();

      v9 = MEMORY[0x1E12A16D0](v8, v7);
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v32);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v6, -1, -1);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v13 = *(v0 + 336);
    v14 = *(*(v2 + 16) + 152);

    v15 = MEMORY[0x1E69E7CC0];
    *v13 = v14;
    v13[1] = v15;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 1096);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v32);
      *(v19 + 12) = 2080;
      if (v18)
      {
        v21 = *(*(*(v0 + 1096) + 16) + 152);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v22 = type metadata accessor for Siri_Nlu_External_Task();
      v23 = MEMORY[0x1E12A16D0](v21, v22);
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v32);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v16, v17, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v20, -1, -1);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    v27 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 1096))
    {
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v29 = *(v0 + 336);
    *v29 = v27;
    v29[1] = v28;
    swift_storeEnumTagMultiPayload();
  }

  v30 = *(v0 + 8);

  return v30();
}

{
  v1 = v0[101];
  v2 = v0[44];
  FlowAgent.complete()();
  v0[128] = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v1 = v0[44];
  v0[109] = *(v0[101] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v1 = *(v0 + 808);
  v2 = *(v0 + 784);
  type metadata accessor for SiriEnvironment();
  v3 = *(v1 + 112);
  *(v0 + 328) = v3;
  type metadata accessor for AnyFlow();
  _s14SiriKitRuntime22CorrectionsUndoManagerCAcA0D6EngineAAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  swift_retain_n();
  static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)();
  *(v0 + 888) = v2;

  if (*(v1 + 120))
  {
    outlined init with copy of Any(v0 + 16, v0 + 48);

    dispatch thunk of AnyChildCompletion.completion(exitValue:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 48, &_sypSgMd, &_sypSgMR);
  }

  v4 = *(v0 + 800);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  *v6 = v3;
  outlined init with copy of Any(v0 + 16, (v6 + 1));
  (*(v7 + 104))(v6, v5, v8);
  static FlowTrace.trace(event:)();
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 896) = v9;
  *v9 = v0;
  v9[1] = Conversation.execute(from:);

  return Conversation.removeNode(node:)(v4);
}

{
  v1 = v0[110];
  v2 = v0[101];
  v3 = (v0[44] + v0[90]);

  v4 = *v3;
  v5 = v3[1];
  v0[114] = v5;

  v6 = PrepareResponse.next.getter();
  v0[115] = v6;
  v7 = *(v2 + 152);
  v0[116] = v7;

  v8 = PrepareResponse.onChildFlowCompletion.getter();
  v0[117] = v8;
  v9 = swift_task_alloc();
  v0[118] = v9;
  *v9 = v0;
  v9[1] = Conversation.execute(from:);

  return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v4, v5, 0, v6, v7, v1, v8);
}

{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v55 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 904);
  v5 = *(v0 + 888);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  outlined init with copy of Conversation.State(*(v0 + 352) + *(v0 + 768), v6, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v6, v7, type metadata accessor for Conversation.State);
  LODWORD(v6) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v7, type metadata accessor for Conversation.State);
  if (v6 == 2)
  {
    *(v0 + 792) = v4;
    *(v0 + 784) = v5;
    if ((static Task<>.isCancelled.getter() & 1) == 0 && (*(*(v0 + 352) + *(v0 + 776)) & 1) == 0)
    {
      v8 = (*(**(v0 + 736) + 216))();
      if (v8)
      {
        *(v0 + 800) = v8;
        *(v0 + 808) = *(v8 + 16);

        v9 = swift_task_alloc();
        *(v0 + 816) = v9;
        *v9 = v0;
        v9[1] = Conversation.execute(from:);
        v10 = *(v0 + 656);

        return FlowAgent.prepare()(v10);
      }

      v12 = *(v0 + 768);
      v13 = *(v0 + 672);
      v14 = *(v0 + 352);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      outlined assign with take of Conversation.State(v13, v14 + v12);
      swift_endAccess();
    }

    v4 = *(v0 + 792);
  }

  *(v0 + 1096) = v4;
  v15 = *(v0 + 728);
  v16 = *(v0 + 696);
  v17 = *(v0 + 352);
  static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v17 + v15, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = v17 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1104) = Strong;
  if (Strong)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v53 = (*(v20 + 16) + **(v20 + 16));
    v22 = swift_task_alloc();
    *(v0 + 1112) = v22;
    *v22 = v0;
    v22[1] = Conversation.execute(from:);

    return v53(ObjectType, v20);
  }

  else
  {
    v23 = (*(**(v0 + 736) + 216))();
    if (v23)
    {
      v24 = v23;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54 = v28;
        *v27 = 136315394;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v54);
        *(v27 + 12) = 2080;
        v29 = type metadata accessor for Siri_Nlu_External_Task();

        v31 = MEMORY[0x1E12A16D0](v30, v29);
        v33 = v32;

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v54);

        *(v27 + 14) = v34;
        _os_log_impl(&dword_1DC659000, v25, v26, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }

      v35 = *(v0 + 336);
      v36 = *(*(v24 + 16) + 152);

      v37 = MEMORY[0x1E69E7CC0];
      *v35 = v36;
      v35[1] = v37;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 1096);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54 = v42;
        *v41 = 136315394;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v54);
        *(v41 + 12) = 2080;
        if (v40)
        {
          v43 = *(*(*(v0 + 1096) + 16) + 152);
        }

        else
        {
          v43 = MEMORY[0x1E69E7CC0];
        }

        v44 = type metadata accessor for Siri_Nlu_External_Task();
        v45 = MEMORY[0x1E12A16D0](v43, v44);
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v54);

        *(v41 + 14) = v48;
        _os_log_impl(&dword_1DC659000, v38, v39, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v42, -1, -1);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      v49 = MEMORY[0x1E69E7CC0];
      if (*(v0 + 1096))
      {
      }

      else
      {
        v50 = MEMORY[0x1E69E7CC0];
      }

      v51 = *(v0 + 336);
      *v51 = v49;
      v51[1] = v50;
      swift_storeEnumTagMultiPayload();
    }

    v52 = *(v0 + 8);

    return v52();
  }
}

{
  v1 = *(*v0 + 352);

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v1, 0);
}

{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Conversation.execute(from:)(uint64_t a1)
{
  v2 = *(v1 + 1120);
  v3 = *(v1 + 632);
  v4 = *(v1 + 616);
  v5 = *(v1 + 608);
  PrepareResponse.type.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == v2)
  {
    v7 = (*(v1 + 352) + *(v1 + 720));
    v8 = *v7;
    v9 = v7[1];
    *(v1 + 824) = v9;

    v10 = PrepareResponse.next.getter();
    *(v1 + 832) = v10;
    v11 = PrepareResponse.onChildFlowCompletion.getter();
    *(v1 + 840) = v11;
    v12 = swift_task_alloc();
    *(v1 + 848) = v12;
    *v12 = v1;
    v12[1] = Conversation.execute(from:);
    v13 = *(v1 + 800);

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v8, v9, v13, v10, 0, 0, v11);
  }

  else if (v6 == *(v1 + 1124))
  {
    v15 = *(v1 + 808);

    return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v15, 0);
  }

  else
  {
    v16 = *(v1 + 624);
    v17 = *(v1 + 616);
    v18 = *(v1 + 608);
    _StringGuts.grow(_:)(33);
    *(v1 + 296) = 0;
    *(v1 + 304) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0xD00000000000001FLL, 0x80000001DCA7E890);
    PrepareResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v17 + 8))(v16, v18);
    v19 = *(v1 + 296);
    v20 = *(v1 + 304);

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v19, v20, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, 495);
  }
}

{
  v2 = *(v1 + 1136);
  v3 = *(v1 + 528);
  v4 = *(v1 + 504);
  v5 = *(v1 + 512);
  ExecuteResponse.type.getter();
  v6 = (*(v5 + 88))(v3, v4);
  if (v6 == v2)
  {
    v7 = (*(v1 + 352) + *(v1 + 720));
    v8 = *v7;
    v9 = v7[1];
    *(v1 + 952) = v9;

    v10 = ExecuteResponse.next.getter();
    *(v1 + 960) = v10;
    v11 = ExecuteResponse.onChildFlowCompletion.getter();
    *(v1 + 968) = v11;
    v12 = swift_task_alloc();
    *(v1 + 976) = v12;
    *v12 = v1;
    v12[1] = Conversation.execute(from:);
    v13 = *(v1 + 800);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = 0;
    v18 = v11;
LABEL_3:

    return Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(v14, v15, v13, v16, v17, 0, v18);
  }

  if (v6 == *(v1 + 1140))
  {
    v20 = *(v1 + 808);

    return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v20, 0);
  }

  if (v6 == *(v1 + 1144))
  {
    v21 = *(v1 + 808);
    v22 = (*(v1 + 352) + *(v1 + 720));
    (*(**(v1 + 736) + 232))(*(v1 + 800));

    flushProcessWideSiriEnvironmentCache()();
    v23 = *v22;
    v24 = v22[1];
    *(v1 + 984) = v24;

    v25 = ExecuteResponse.next.getter();
    *(v1 + 992) = v25;
    v26 = *(v21 + 152);
    *(v1 + 1000) = v26;

    v27 = ExecuteResponse.onChildFlowCompletion.getter();
    *(v1 + 1008) = v27;
    v28 = swift_task_alloc();
    *(v1 + 1016) = v28;
    *v28 = v1;
    v28[1] = Conversation.execute(from:);
    v13 = *(v1 + 800);
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    goto LABEL_3;
  }

  if (v6 != *MEMORY[0x1E69CFFD0])
  {
    v35 = *(v1 + 728);
    v36 = *(v1 + 696);
    v37 = *(v1 + 520);
    v38 = *(v1 + 512);
    v86 = *(v1 + 504);
    v39 = *(v1 + 352);
    static ConversationSELFHelper.shared.getter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v39 + v35, v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _StringGuts.grow(_:)(35);
    *(v1 + 312) = 0;
    *(v1 + 320) = 0xE000000000000000;
    MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA7E910);
    ExecuteResponse.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v38 + 8))(v37, v86);
    v32 = *(v1 + 312);
    v33 = *(v1 + 320);
    v34 = 559;
    goto LABEL_16;
  }

  v29 = *(v1 + 424);
  v30 = *(v1 + 432);
  v31 = *(v1 + 408);

  ExecuteResponse.unhandledReason.getter();
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 408), &_s11SiriKitFlow0C15UnhandledReasonOSgMd, &_s11SiriKitFlow0C15UnhandledReasonOSgMR);
    v32 = 0xD000000000000080;
    v33 = 0x80000001DCA7E940;
    v34 = 539;
LABEL_16:

    return specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v32, v33, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/Runtime/Conversation.swift", 95, 2, v34);
  }

  v40 = *(v1 + 728);
  v41 = *(v1 + 696);
  v42 = *(v1 + 448);
  v43 = *(v1 + 424);
  v44 = *(v1 + 432);
  v45 = *(v1 + 352);
  v87 = *(v1 + 440);
  v85 = *(v44 + 32);
  v85(v42, *(v1 + 408), v43);
  static ConversationSELFHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v45 + v40, v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextFailed(rcId:hypothesisId:reason:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v44 + 16))(v87, v42, v43);
  if ((*(v44 + 88))(v87, v43) == *MEMORY[0x1E69CFB70])
  {
    v80 = *(v1 + 648);
    v82 = *(v1 + 640);
    v83 = *(v1 + 656);
    v76 = *(v1 + 592);
    v77 = *(v1 + 584);
    v78 = *(v1 + 600);
    v79 = *(v1 + 384);
    v81 = *(v1 + 376);
    v46 = *(v1 + 352);
    v84 = *(v1 + 360);
    v47 = (v46 + *(v1 + 720));
    v73 = *(*(v1 + 432) + 8);
    v73(*(v1 + 440), *(v1 + 424));
    SiriEnvironment.currentRequest.getter();
    v48 = CurrentRequest.executionRequestId.getter();
    v50 = v49;

    if (v50)
    {
      v51 = v48;
    }

    else
    {
      v51 = 0;
    }

    v75 = v51;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE000000000000000;
    }

    SiriEnvironment.currentRequest.getter();
    v74 = CurrentRequest.rootRequestId.getter();
    v54 = v53;

    v56 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 24);
    v55 = *(v46 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils + 32);
    __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_serverFallbackDisablingUtils), v56);
    v57 = *v47;
    v58 = v47[1];
    v59 = *(v55 + 40);

    v59(v75, v52, v74, v54, v57, v58, v56, v55);

    (*(v76 + 8))(v78, v77);
    (*(v80 + 8))(v83, v82);
    if ((*(v79 + 48))(v84, 1, v81) != 1)
    {
      v69 = *(v1 + 392);
      v70 = *(v1 + 360);
      v71 = *(v1 + 336);
      v73(*(v1 + 448), *(v1 + 424));
      outlined init with take of Conversation.State(v70, v69, type metadata accessor for ConversationCommitResult);
      outlined init with take of Conversation.State(v69, v71, type metadata accessor for ConversationCommitResult);
      goto LABEL_31;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(*(v1 + 360), &_s14SiriKitRuntime24ConversationCommitResultOSgMd, &_s14SiriKitRuntime24ConversationCommitResultOSgMR);
  }

  else
  {
    v60 = *(v1 + 656);
    v61 = *(v1 + 648);
    v62 = *(v1 + 640);
    v63 = *(v1 + 600);
    v64 = *(v1 + 592);
    v65 = *(v1 + 584);
    v67 = *(v1 + 432);
    v66 = *(v1 + 440);
    v68 = *(v1 + 424);

    (*(v64 + 8))(v63, v65);
    (*(v61 + 8))(v60, v62);
    (*(v67 + 8))(v66, v68);
  }

  v85(*(v1 + 336), *(v1 + 448), *(v1 + 424));
  swift_storeEnumTagMultiPayload();
LABEL_31:

  v72 = *(v1 + 8);

  return v72();
}

{
  v2 = v1[100];
  v1[129] = dispatch thunk of AnyFlow.siriEnvironment.getter();
  v3 = swift_task_alloc();
  v1[130] = v3;
  *v3 = v1;
  v3[1] = Conversation.execute(from:);

  return Conversation.removeNode(node:)(v2);
}

{
  v2 = *(*v1 + 352);
  *(*v1 + 1048) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v2 = *(v1 + 808);
  *(v1 + 880) = dispatch thunk of AnyFlow.siriEnvironment.getter();

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v2 = *(*v1 + 352);
  *(*v1 + 904) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.execute(from:), v2, 0);
}

{
  v64 = v1;
  v61 = *(v1 + 792);
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *(v1 + 640);
  v5 = *(v1 + 600);
  v6 = *(v1 + 592);
  v7 = *(v1 + 584);
  v8 = ExecuteResponse.requireInput.getter();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v8)
  {
    v9 = *(v1 + 768);
    v10 = *(v1 + 672);
    v11 = *(v1 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v10, v11 + v9);
    swift_endAccess();
    v12 = v61;
    goto LABEL_13;
  }

  v13 = *(v1 + 864);
  v14 = *(v1 + 688);
  v15 = *(v1 + 680);
  outlined init with copy of Conversation.State(*(v1 + 352) + *(v1 + 768), v14, type metadata accessor for Conversation.State);
  outlined init with take of Conversation.State(v14, v15, type metadata accessor for Conversation.State);
  LODWORD(v14) = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  outlined destroy of Conversation.State(v15, type metadata accessor for Conversation.State);
  if (v14 != 2)
  {
    v12 = v61;
    goto LABEL_13;
  }

  *(v1 + 792) = v61;
  *(v1 + 784) = v13;
  if (static Task<>.isCancelled.getter() & 1) != 0 || (*(*(v1 + 352) + *(v1 + 776)))
  {
LABEL_12:
    v12 = *(v1 + 792);
LABEL_13:
    *(v1 + 1096) = v12;
    v23 = *(v1 + 728);
    v24 = *(v1 + 696);
    v25 = *(v1 + 352);
    static ConversationSELFHelper.shared.getter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v25 + v23, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    dispatch thunk of ConversationSELFHelper.emitFinalExecutionContextEnded(rcId:hypothesisId:)();

    outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v26 = v25 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 1104) = Strong;
    if (Strong)
    {
      v28 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v62 = (*(v28 + 16) + **(v28 + 16));
      v30 = swift_task_alloc();
      *(v1 + 1112) = v30;
      *v30 = v1;
      v30[1] = Conversation.execute(from:);

      return v62(ObjectType, v28);
    }

    else
    {
      v31 = (*(**(v1 + 736) + 216))();
      if (v31)
      {
        v32 = v31;
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v63 = v36;
          *v35 = 136315394;
          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v63);
          *(v35 + 12) = 2080;
          v37 = type metadata accessor for Siri_Nlu_External_Task();

          v39 = MEMORY[0x1E12A16D0](v38, v37);
          v41 = v40;

          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v63);

          *(v35 + 14) = v42;
          _os_log_impl(&dword_1DC659000, v33, v34, "[Conversation] %s: flow was handled, stack is non-empty. Active tasks: %s", v35, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v36, -1, -1);
          MEMORY[0x1E12A2F50](v35, -1, -1);
        }

        v43 = *(v1 + 336);
        v44 = *(*(v32 + 16) + 152);

        v45 = MEMORY[0x1E69E7CC0];
        *v43 = v44;
        v43[1] = v45;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = *(v1 + 1096);
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v63 = v50;
          *v49 = 136315394;
          *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xEE00293A6D6F7266, &v63);
          *(v49 + 12) = 2080;
          if (v48)
          {
            v51 = *(*(*(v1 + 1096) + 16) + 152);
          }

          else
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          v52 = type metadata accessor for Siri_Nlu_External_Task();
          v53 = MEMORY[0x1E12A16D0](v51, v52);
          v55 = v54;

          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v63);

          *(v49 + 14) = v56;
          _os_log_impl(&dword_1DC659000, v46, v47, "[Conversation] %s: flow was handled, stack is empty. Completed tasks: %s", v49, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v50, -1, -1);
          MEMORY[0x1E12A2F50](v49, -1, -1);
        }

        v57 = MEMORY[0x1E69E7CC0];
        if (*(v1 + 1096))
        {
        }

        else
        {
          v58 = MEMORY[0x1E69E7CC0];
        }

        v59 = *(v1 + 336);
        *v59 = v57;
        v59[1] = v58;
        swift_storeEnumTagMultiPayload();
      }

      v60 = *(v1 + 8);

      return v60();
    }
  }

  v16 = (*(**(v1 + 736) + 216))();
  if (!v16)
  {
    v20 = *(v1 + 768);
    v21 = *(v1 + 672);
    v22 = *(v1 + 352);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v21, v22 + v20);
    swift_endAccess();
    goto LABEL_12;
  }

  *(v1 + 800) = v16;
  *(v1 + 808) = *(v16 + 16);

  v17 = swift_task_alloc();
  *(v1 + 816) = v17;
  *v17 = v1;
  v17[1] = Conversation.execute(from:);
  v18 = *(v1 + 656);

  return FlowAgent.prepare()(v18);
}

uint64_t FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for CancellationError();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for TimeoutError();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for FlowTraceEvent();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v7 = type metadata accessor for ExecuteResponse();
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTimeInterval();
  v3[30] = v8;
  v9 = *(v8 - 8);
  v3[31] = v9;
  v3[32] = *(v9 + 64);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.execute(timeout:), v2, 0);
}

uint64_t FlowAgent.execute(timeout:)()
{
  v40 = v0;
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 130) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[16];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39 = v7;
      *v6 = 136315138;
      v0[13] = *(v5 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v39);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s execute cancelled before call.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    static ExecuteResponse.complete()();

    v11 = v0[1];

    return v11();
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v0[35] = __swift_project_value_buffer(v13, static Logger.executor);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[16];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136315138;
      v0[12] = *(v16 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v39);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1DC659000, v14, v15, "[Conversation] %s execute.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A2F50](v18, -1, -1);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v23 = v0[33];
    v22 = v0[34];
    v24 = v0[31];
    v25 = v0[30];
    v27 = v0[15];
    v26 = v0[16];
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    (*(v24 + 16))(v23, v27, v25);
    v30 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type FlowAgent and conformance FlowAgent, v29, type metadata accessor for FlowAgent, &protocol conformance descriptor for FlowAgent);
    v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = v26;
    *(v32 + 3) = v30;
    *(v32 + 4) = v26;
    (*(v24 + 32))(&v32[v31], v23, v25);
    swift_retain_n();
    v33 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC11SiriKitFlow15ExecuteResponseV_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in FlowAgent.execute(timeout:), v32);
    v0[36] = v33;
    *(v26 + 136) = v33;

    v34 = swift_task_alloc();
    v0[37] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0[38] = v35;
    *v34 = v0;
    v34[1] = FlowAgent.execute(timeout:);
    v36 = v0[28];
    v37 = v0[26];
    v38 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v36, v33, v37, v35, v38);
  }
}

{
  v30 = v0;
  v1 = v0[16];
  v2 = *(v0[27] + 32);
  v2(v0[29], v0[28], v0[26]);
  if (*(v1 + 130) == 1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[16];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29 = v7;
      *v6 = 136315138;
      v0[11] = *(v5 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v29);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s execute cancelled.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v27 = v0[29];
    v11 = v0[26];
    v12 = v0[27];
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];
    v16 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMR);
    *v13 = *(v16 + 112);

    static ExecuteResponse.complete()();
    (*(v14 + 104))(v13, *MEMORY[0x1E69CFB00], v15);
    static FlowTrace.trace(event:)();
    (*(v14 + 8))(v13, v15);
    static ExecuteResponse.complete()();

    (*(v12 + 8))(v27, v11);
  }

  else
  {
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[27];
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[23];
    v23 = v0[16];
    v28 = v0[14];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMd, &_s11SiriKitFlow03AnyC0C4flow_AA15ExecuteResponseV8responsetMR) + 48);
    *v21 = *(v23 + 112);
    (*(v19 + 16))(&v21[v24], v17, v18);
    (*(v20 + 104))(v21, *MEMORY[0x1E69CFB00], v22);

    static FlowTrace.trace(event:)();

    (*(v20 + 8))(v21, v22);
    v2(v28, v17, v18);
  }

  v25 = v0[1];

  return v25();
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = FlowAgent.execute(timeout:);
  }

  else
  {
    v4 = FlowAgent.execute(timeout:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v40 = v0;
  v1 = v0[39];
  v0[5] = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[16];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136315138;
      v0[10] = *(v5 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v38);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, v3, v4, "[Conversation] %s timed out during execution", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v11 = v0[39];
    v12 = v0[16];
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v0[9] = *(v12 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;

    v38 = v13;
    v39 = v15;
    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA83110);
    v16 = v38;
    v17 = v39;
    lazy protocol witness table accessor for type TimedOutError and conformance TimedOutError();
LABEL_9:
    swift_allocError();
    *v32 = v16;
    v32[1] = v17;
    swift_willThrow();

    goto LABEL_13;
  }

  v18 = v0[39];
  v0[6] = v18;
  v19 = v18;
  if (swift_dynamicCast())
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[16];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      v0[8] = *(v22 + 112);
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v38);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v20, v21, "[Conversation] %s cancelled during execution", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    v11 = v0[39];
    v28 = v0[16];
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v0[7] = *(v28 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;

    v38 = v29;
    v39 = v31;
    MEMORY[0x1E12A1580](0xD00000000000001BLL, 0x80000001DCA830F0);
    v16 = v38;
    v17 = v39;
    lazy protocol witness table accessor for type CancelledError and conformance CancelledError();
    goto LABEL_9;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1DC659000, v33, v34, "Unknown result from withTimeout, assuming timed out", v35, 2u);
    MEMORY[0x1E12A2F50](v35, -1, -1);
  }

  swift_willThrow();

LABEL_13:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1DC6E9E18()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in FlowAgent.execute(timeout:)(uint64_t a1)
{
  v4 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowAgent.execute(timeout:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t closure #1 in FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.execute(timeout:), a4, 0);
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_s8Sendable_pSgtMR);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v48 - v3;
  v4 = type metadata accessor for ConversationSessionKey();
  v60 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMR);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v9;
  v61 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v61 + 64;
  v12 = 1 << *(v61 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v61 + 64);
  v15 = (v12 + 63) >> 6;
  v50 = v60 + 16;
  v63 = v60 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v48 = v15;
  v49 = v11;
  v55 = v6;
  v51 = v10;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v24 = v60;
    v23 = v61;
    v25 = *(v61 + 48);
    v62 = *(v60 + 72);
    v26 = v52;
    (*(v60 + 16))(v52, v25 + v62 * v22, v4);
    v27 = *(v23 + 56) + 32 * v22;
    v28 = v54;
    outlined init with copy of Any(v27, v26 + *(v54 + 48));
    v29 = v53;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v53, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_p5valuetMR);
    v30 = *(v28 + 48);
    v31 = v4;
    v32 = v58;
    v33 = &v58[*(v59 + 48)];
    v34 = *(v24 + 32);
    v34(v58, v29, v31);
    outlined init with take of Any((v29 + v30), &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    swift_dynamicCast();
    v35 = v56;
    v36 = &v56[*(v57 + 48)];
    v37 = v32;
    v4 = v31;
    v34(v56, v37, v31);
    v38 = *(v33 + 1);
    *v36 = *v33;
    *(v36 + 1) = v38;
    v39 = v55;
    v34(v55, v35, v4);
    v40 = *(v36 + 1);
    v64 = *v36;
    v65 = v40;
    v10 = v51;
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v41 = -1 << *(v10 + 32);
    v42 = result & ~v41;
    v43 = v42 >> 6;
    if (((-1 << v42) & ~*(v16 + 8 * (v42 >> 6))) == 0)
    {
      v44 = 0;
      v45 = (63 - v41) >> 6;
      while (++v43 != v45 || (v44 & 1) == 0)
      {
        v46 = v43 == v45;
        if (v43 == v45)
        {
          v43 = 0;
        }

        v44 |= v46;
        v47 = *(v16 + 8 * v43);
        if (v47 != -1)
        {
          v19 = __clz(__rbit64(~v47)) + (v43 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v42) & ~*(v16 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = (v34)(*(v10 + 48) + v19 * v62, v39, v4);
    v20 = (*(v10 + 56) + 32 * v19);
    v20[1] = v65;
    *v20 = v64;
    ++*(v10 + 16);
    v15 = v48;
    v11 = v49;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_ypSg5valuetMR);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v49 - v3;
  v4 = type metadata accessor for ConversationSessionKey();
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  v62 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMR);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v62 + 64;
  v12 = 1 << *(v62 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v62 + 64);
  v15 = (v12 + 63) >> 6;
  v51 = v61 + 16;
  v64 = v61 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v49 = v15;
  v50 = v11;
  v56 = v6;
  v52 = v10;
  while (v14)
  {
LABEL_15:
    v22 = __clz(__rbit64(v14)) | (v18 << 6);
    v24 = v61;
    v23 = v62;
    v25 = *(v62 + 48);
    v63 = *(v61 + 72);
    v26 = v53;
    (*(v61 + 16))(v53, v25 + v63 * v22, v4);
    v27 = *(v23 + 56) + 32 * v22;
    v28 = v55;
    outlined init with copy of ReferenceResolutionClientProtocol?(v27, v26 + *(v55 + 48), &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    v29 = v54;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v54, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMd, &_s16SiriMessageTypes22ConversationSessionKeyO3key_s8Sendable_pSg5valuetMR);
    v30 = (v29 + *(v28 + 48));
    v31 = v4;
    v32 = v59;
    v33 = &v59[*(v60 + 48)];
    v34 = *(v24 + 32);
    v34(v59, v29, v31);
    v35 = v30[1];
    v65 = *v30;
    v66 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    swift_dynamicCast();
    v36 = v57;
    v37 = &v57[*(v58 + 48)];
    v38 = v32;
    v4 = v31;
    v34(v57, v38, v31);
    v39 = *(v33 + 1);
    *v37 = *v33;
    *(v37 + 1) = v39;
    v40 = v56;
    v34(v56, v36, v4);
    v41 = *(v37 + 1);
    v65 = *v37;
    v66 = v41;
    v10 = v52;
    lazy protocol witness table accessor for type RequestType and conformance RequestType(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v42 = -1 << *(v10 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v16 + 8 * (v43 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v42) >> 6;
      while (++v44 != v46 || (v45 & 1) == 0)
      {
        v47 = v44 == v46;
        if (v44 == v46)
        {
          v44 = 0;
        }

        v45 |= v47;
        v48 = *(v16 + 8 * v44);
        if (v48 != -1)
        {
          v19 = __clz(__rbit64(~v48)) + (v44 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v43) & ~*(v16 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = (v34)(*(v10 + 48) + v19 * v63, v40, v4);
    v20 = (*(v10 + 56) + 32 * v19);
    v20[1] = v66;
    *v20 = v65;
    ++*(v10 + 16);
    v15 = v49;
    v11 = v50;
  }

  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v21);
    ++v18;
    if (v14)
    {
      v18 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *initializeWithCopy for Conversation.State(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;

      goto LABEL_25;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      v12 = type metadata accessor for SiriRequest(0);
      v13 = v12[5];
      v14 = type metadata accessor for Input();
      v15 = *(*(v14 - 8) + 16);

      v15(&a1[v13], &a2[v13], v14);
      *&a1[v12[6]] = *&a2[v12[6]];
      *&a1[v12[7]] = *&a2[v12[7]];
      v16 = v12[8];
      v17 = &a1[v16];
      v18 = &a2[v16];
      v19 = *&a2[v16 + 8];

      if (v19 >> 60 == 15)
      {
        *v17 = *v18;
      }

      else
      {
        v20 = *v18;
        outlined copy of Data._Representation(*v18, v19);
        *v17 = v20;
        *(v17 + 1) = v19;
      }

      *&a1[v12[9]] = *&a2[v12[9]];
      *&a1[v12[10]] = *&a2[v12[10]];
      *&a1[v12[11]] = *&a2[v12[11]];
      v21 = v12[12];
      __dst = &a1[v21];
      v22 = &a2[v21];
      v23 = type metadata accessor for SiriRequestIdentities(0);
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);

      v26 = v22;
      if (v25(v22, 1, v23))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
        memcpy(__dst, v22, *(*(v27 - 8) + 64));
      }

      else
      {
        v39 = v24;
        v28 = type metadata accessor for IdentifiedUser();
        v29 = *(v28 - 8);
        v30 = v26;
        v31 = v26;
        v32 = *(v29 + 48);
        if (v32(v31, 1, v28))
        {
          v33 = v29;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(__dst, v30, *(*(v34 - 8) + 64));
        }

        else
        {
          (*(v29 + 16))(__dst, v30, v28);
          v33 = v29;
          (*(v29 + 56))(__dst, 0, 1, v28);
        }

        v35 = *(v23 + 20);
        if (v32(&v30[v35], 1, v28))
        {
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
          memcpy(&__dst[v35], &v30[v35], *(*(v36 - 8) + 64));
        }

        else
        {
          (*(v33 + 16))(&__dst[v35], &v30[v35], v28);
          (*(v33 + 56))(&__dst[v35], 0, 1, v28);
        }

        *&__dst[*(v23 + 24)] = *&v30[*(v23 + 24)];
        v37 = *(v39 + 56);

        v37(__dst, 0, 1, v23);
      }

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR);
      *&a1[*(v38 + 48)] = *&a2[*(v38 + 48)];

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      *a1 = v7;
      *(a1 + 1) = v8;

LABEL_25:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t FlowAgent.prepare()(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for FlowTraceEvent();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for PrepareResponse();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[36] = v6;
  v2[37] = *(v6 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FlowAgent.prepare(), v1, 0);
}

uint64_t closure #1 in FlowAgent.execute(timeout:)()
{
  v1 = DispatchTimeInterval.seconds.getter();

  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = type metadata accessor for ExecuteResponse();
  *v2 = v0;
  v2[1] = closure #1 in FlowAgent.execute(timeout:);
  v4 = v0[2];
  v5 = v0[3];
  v6.n128_f64[0] = v1;

  return MEMORY[0x1EEE40F70](v4, &async function pointer to partial apply for closure #1 in closure #1 in FlowAgent.execute(timeout:), v5, v3, v6);
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = closure #1 in FlowAgent.execute(timeout:);
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = closure #1 in FlowAgent.execute(timeout:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  *(*(v0 + 24) + 136) = 0;

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 24);

  *(v1 + 136) = 0;

  v2 = *(v0 + 8);

  return v2();
}

double DispatchTimeInterval.seconds.getter()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E69E7F48])
  {
    (*(v2 + 96))(v5, v1);
    return *v5;
  }

  if (v6 == *MEMORY[0x1E69E7F38])
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v9 = 1000.0;
    return v8 / v9;
  }

  if (v6 == *MEMORY[0x1E69E7F30])
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v9 = 1000000.0;
    return v8 / v9;
  }

  if (v6 == *MEMORY[0x1E69E7F28])
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v9 = 1000000000.0;
    return v8 / v9;
  }

  if (v6 != *MEMORY[0x1E69E7F40])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Cannot convert unknown DispatchTimeInterval to seconds, returning Double.infinity", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return INFINITY;
}

uint64_t closure #1 in FlowAgent.on(input:)(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.on(input:), 0, 0);
}

uint64_t closure #1 in FlowAgent.on(input:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  v5 = *(v1 + 56);
  v6 = *(v1 + 40);
  v7 = *(v1 + 16);
  v8 = static os_signpost_type_t.end.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1DCA66060;
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v2;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v8, &dword_1DC659000, v4, "flow-on-input", 13, 2, v5, "END accepted=%d", 15);

  v3(v5, v6);
  *v7 = v2;

  v12 = *(v1 + 8);

  return v12();
}

{
  v29 = static os_signpost_type_t.begin.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[8];
  v26 = v1[7];
  v5 = v1[6];
  v28 = v1[5];
  v27 = static Log.executor;
  v1[11] = static Log.executor;
  v1[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DCA6EB80;
  Input.identifier.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v3, v4);
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = AnyFlow.description.getter();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DCA66060;
  v15 = ObjectIdentifier.hashValue.getter();
  v16 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E65A8];
  *(v14 + 56) = MEMORY[0x1E69E6530];
  *(v14 + 64) = v17;
  *(v14 + 32) = v15;
  v18 = String.init(format:_:)();
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v18;
  *(v6 + 120) = v19;
  v20 = AnyFlow.description.getter();
  v21 = MEMORY[0x1E12A15C0](v20);

  *(v6 + 176) = v16;
  *(v6 + 184) = v17;
  *(v6 + 152) = v21;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v29, &dword_1DC659000, v27, "flow-on-input", 13, 2, v26, "START inputid=%{public}s flow=%{public}s flowid=%{public}s flowTypeId=%lx", 73, 2, v6);

  v22 = *(v5 + 8);
  v1[13] = v22;
  v1[14] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v26, v28);
  v30 = (*MEMORY[0x1E69CF988] + MEMORY[0x1E69CF988]);
  v23 = swift_task_alloc();
  v1[15] = v23;
  *v23 = v1;
  v23[1] = closure #1 in FlowAgent.on(input:);
  v24 = v1[3];

  return v30(v24);
}

void FlowAgent.on(input:)()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 64);

    MEMORY[0x1EEE6DFA0](FlowAgent.on(input:), v3, 0);
  }
}

uint64_t outlined init with copy of UserInputResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserInputResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in RemoteConversationService.prepare(bridge:reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.prepare(bridge:reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.prepare(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = type metadata accessor for RemoteConversationService.State(0);
  v6[14] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[15] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.prepare(bridge:reply:), v7, 0);
}

uint64_t protocol witness for Conversational.prepare() in conformance Conversation()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return Conversation.prepare()();
}

uint64_t partial apply for closure #1 in Conversation.prepare()(uint64_t a1)
{
  v4 = *(type metadata accessor for SiriRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in Conversation.prepare()(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t closure #1 in Conversation.prepare()(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[7];

    return MEMORY[0x1EEE6DFA0](closure #1 in Conversation.prepare(), v7, 0);
  }
}

uint64_t partial apply for closure #1 in RemoteConversationService.commit(bridge:reply:)(uint64_t a1)
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

  return closure #1 in RemoteConversationService.commit(bridge:reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.commit(bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  type metadata accessor for ConversationCommitResult(0);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for RemoteConversationService.State(0);
  v6[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[16] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.commit(bridge:reply:), v7, 0);
}

uint64_t closure #1 in RemoteConversationService.commit(bridge:reply:)()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v3, v1, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = v0[15];
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
      outlined init with take of ReferenceResolutionClientProtocol((v5 + 40), (v0 + 2));
      outlined destroy of RemoteConversationService.State(v5 + v6, type metadata accessor for SiriRequest);
      v7 = v0[5];
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      v26 = (*(v8 + 48) + **(v8 + 48));
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = closure #1 in RemoteConversationService.commit(bridge:reply:);
      v10 = v0[13];

      return v26(v10, v7, v8);
    }

    v13 = 0x80000001DCA85CE0;
    v14 = 0xD00000000000003ELL;
  }

  else
  {
    v12 = v0[15];

    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1E12A1580](0x74784520776F6C46, 0xEF206E6F69736E65);
    MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA837A0);
    MEMORY[0x1E12A1580](0xD000000000000023, 0x80000001DCA85D20);
    v14 = 0;
    v13 = 0xE000000000000000;

    outlined destroy of ReferenceResolutionClientProtocol?((v12 + 5), &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

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
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v27);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1DC659000, v16, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  else
  {
  }

  v21 = v0[11];
  lazy protocol witness table accessor for type IllegalStateError and conformance IllegalStateError();
  v22 = swift_allocError();
  *v23 = v14;
  v23[1] = v13;
  v24 = specialized static ConversationCommitResultXPC.error(_:)(v22);

  v21(v24);

  v25 = v0[1];

  return v25();
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = closure #1 in RemoteConversationService.commit(bridge:reply:);
  }

  else
  {
    v4 = closure #1 in RemoteConversationService.commit(bridge:reply:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = ConversationCommitResult.xpcRepresentation.getter();
  v3();

  outlined destroy of RemoteConversationService.State(v2, type metadata accessor for ConversationCommitResult);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[11];
  v4 = specialized static ConversationCommitResultXPC.error(_:)(v1);
  v3();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  v5 = v0[1];

  return v5();
}

uint64_t partial apply for closure #1 in Conversation.commit()(uint64_t a1)
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

  return closure #1 in Conversation.commit()(a1, v4, v5, v6, v7, v8);
}

uint64_t protocol witness for ConversationTaskObservationDelegate.conversationWillExecute(flowPluginInfo:activeTasks:rcId:) in conformance RemoteConversationService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(a1, a2, a3, a4);
}

uint64_t closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v6, 0);
}

uint64_t FlowAgent.on(input:)()
{
  v1 = *(v0 + 120);
  if (v1 == 1)
  {
    v2 = *(v0 + 64);
    v3 = *(v2 + 128);
    swift_beginAccess();
    *(v2 + 129) = v3;
  }

  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow03AnyC0C4flow_AA5InputV5inputSb6resulttMd, &_s11SiriKitFlow03AnyC0C4flow_AA5InputV5inputSb6resulttMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v4 = v5;
  v12 = type metadata accessor for Input();
  (*(*(v12 - 8) + 16))(&v4[v10], v8, v12);
  v4[v11] = v1;
  (*(v7 + 104))(v4, *MEMORY[0x1E69CFAF8], v6);
  static FlowTrace.trace(event:)();
  (*(v7 + 8))(v4, v6);

  v13 = *(v0 + 8);

  return v13(v1);
}

{
  v20 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[6] = *(v4 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, v2, v3, "%s on input.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v11 = v0[7];
  v10 = v0[8];
  type metadata accessor for SiriEnvironment();
  v12 = *(v10 + 112);
  v0[12] = v12;
  v0[5] = v12;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  swift_retain_n();
  v14 = swift_task_alloc();
  v0[14] = v14;
  v15 = type metadata accessor for AnyFlow();
  v16 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  *v14 = v0;
  v14[1] = FlowAgent.on(input:);
  v17 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE40DB8](v0 + 15, v0 + 5, &async function pointer to partial apply for closure #1 in FlowAgent.on(input:), v13, v15, v17, v16);
}

uint64_t Conversation.accept(request:)(char a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 404) = a1;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v2, 0);
}

uint64_t Conversation.accept(request:)()
{
  if (*(v0 + 404) == 1)
  {

    v1 = *(v0 + 328);
    v2 = *(v0 + 272);
    v3 = *(v0 + 208);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48);
    outlined init with copy of Conversation.State(v4, v3, type metadata accessor for SiriRequest);
    *(v3 + v6) = v1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v3, v5 + v2);
    swift_endAccess();
    type metadata accessor for UserInputResult(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();

    v10 = *(v0 + 8);

    return v10();
  }

  v7 = *(v0 + 336);

  if (!v7)
  {
    **(v0 + 136) = 0;
    type metadata accessor for UserInputResult(0);
    goto LABEL_8;
  }

  v8 = *(v0 + 336);
  *(v0 + 328) = v8;
  *(v0 + 336) = swift_weakLoadStrong();
  v9 = *(v8 + 16);
  *(v0 + 344) = v9;

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v9, 0);
}

{
  v1 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v1, 0);
}

{
  v1 = *(*(v0 + 152) + 112);
  *(v0 + 296) = v1;
  if ((*(*v1 + 184))())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DC659000, v3, v4, "Checking if corrections flow accepts input", v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 304) = v6;
    *v6 = v0;
    v6[1] = Conversation.accept(request:);
    v7 = *(v0 + 144);

    return Conversation.attemptCorrectionsOn(request:)(v7);
  }

  else
  {
    v9 = (*(*v1 + 192))();
    *(v0 + 320) = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskService;
    if (v9)
    {
      *(v0 + 328) = v9;
      v10 = v9;
      *(v0 + 336) = swift_weakLoadStrong();
      v11 = *(v10 + 16);
      *(v0 + 344) = v11;

      return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v11, 0);
    }

    else
    {
      **(v0 + 136) = 0;
      type metadata accessor for UserInputResult(0);
      swift_storeEnumTagMultiPayload();

      v12 = *(v0 + 8);

      return v12();
    }
  }
}

{
  v1 = v0[19];
  v0[44] = *(v0[43] + 112);
  return MEMORY[0x1EEE6DFA0](Conversation.accept(request:), v1, 0);
}

{
  v1 = v0[46];
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = v0[19];
    v7 = Conversation.accept(request:);
    goto LABEL_9;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_8;
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

  v0[47] = v6;
  v2 = v0[19];
  v7 = Conversation.accept(request:);
LABEL_9:
  v5 = v7;
  v3 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v2, v3);
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v13 = *(v0 + 160);
  type metadata accessor for FlowTaskProvider();
  v5 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v6 = *(v2 + 16);
  v6(v3, v1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v4);

  dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
  SiriEnvironment.flowTask.setter();
  SiriEnvironment.currentRequest.getter();
  v6(v3, v1 + v5, v4);

  FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
  v7 = type metadata accessor for FlowTaskMetadata();
  (*(*(v7 - 8) + 56))(v13, 0, 1, v7);
  CurrentRequest.flowTaskMetadata.setter();

  v8 = *(v0 + 328);
  v9 = *(v0 + 400);
  v10 = *(v0 + 144);

  *(v0 + 384) = *(v8 + 16);

  v11 = swift_task_alloc();
  *(v0 + 392) = v11;
  *v11 = v0;
  v11[1] = Conversation.accept(request:);

  return FlowAgent.on(input:)(v10 + v9);
}

{
  v11 = v0;
  if (*(v0 + 312))
  {
    v1 = *(v0 + 296);
    v10 = *(v0 + 312);
    v2 = (*(*v1 + 208))(&v10, 0);

    v3 = *(v0 + 272);
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMd, &_s14SiriKitRuntime0A7RequestV7request_AA4NodeCyAA9FlowAgentCG08selectedG0tMR) + 48);
    outlined init with copy of Conversation.State(v5, v4, type metadata accessor for SiriRequest);
    *(v4 + v7) = v2;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of Conversation.State(v4, v6 + v3);
    swift_endAccess();
    type metadata accessor for UserInputResult(0);
  }

  else
  {
    **(v0 + 136) = 0;
    type metadata accessor for UserInputResult(0);
  }

  swift_storeEnumTagMultiPayload();

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 328);
  v2 = *(v0 + 400);
  v3 = *(v0 + 144);

  *(v0 + 384) = *(v1 + 16);

  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = Conversation.accept(request:);

  return FlowAgent.on(input:)(v3 + v2);
}

id UserInputResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserInputResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = (*(v3 + 32))(v5, v8, v2);
      v11 = specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)(v5, v10);
      (*(v3 + 8))(v5, v2);
      return v11;
    }

    else
    {
      v16 = type metadata accessor for FlowExtensionUserInputResultXPC();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 0;
      *&v17[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
      *&v17[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
      v17[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
      return objc_msgSendSuper2(&v18, sel_init, v17, v16, v19.receiver, v19.super_class);
    }
  }

  else
  {
    v13 = *v8;
    v14 = type metadata accessor for FlowExtensionUserInputResultXPC();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
    *&v15[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
    *&v15[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
    v15[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = v13;
    return objc_msgSendSuper2(&v19, sel_init, v18.receiver, v18.super_class, v15, v14);
  }
}

Swift::Void __swiftcall FlowExtensionUserInputResultXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type);
  v4 = MEMORY[0x1E12A1410](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = (v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
  v6 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8);
  if (v6 >> 60 != 15)
  {
    v7 = *v5;
    outlined copy of Data._Representation(*v5, *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8));
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7A890);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v9];

    outlined consume of Data?(v7, v6);
  }

  v10 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x1E12A1410](0x726F727265, 0xE500000000000000);
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }

  v13 = *(v1 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude);
  v14 = MEMORY[0x1E12A1410](0x6564756C637865, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];
}

uint64_t RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:)()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = OBJC_IVAR____TtC14SiriKitRuntime25RemoteConversationService_state;
  swift_beginAccess();
  outlined init with copy of RemoteConversationService.State(v2 + v7, v1, type metadata accessor for RemoteConversationService.State);
  RemoteConversationService.State.activeTurn.getter(v0 + 16);
  outlined destroy of RemoteConversationService.State(v1, type metadata accessor for RemoteConversationService.State);
  v8 = *(v2 + 168);
  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 56, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = *(v0 + 56);
  *(v9 + 40) = *(v0 + 72);
  *(v9 + 56) = *(v0 + 88);
  *(v9 + 64) = v2;
  *(v9 + 72) = v5;
  *(v9 + 80) = v4;
  *(v9 + 88) = v3;
  v10 = *(*v8 + 208);
  v11 = v6;

  v10(0xD000000000000039, 0x80000001DCA85AA0, &async function pointer to partial apply for closure #1 in RemoteConversationService.conversationWillExecute(flowPluginInfo:activeTasks:rcId:), v9);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime21ConversationTurnState_pSgMd, &_s14SiriKitRuntime21ConversationTurnState_pSgMR);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DC6EEC04()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t RemoteConversationService.State.activeTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteConversationService.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RemoteConversationService.State(v2, v6, type metadata accessor for RemoteConversationService.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    outlined init with take of ReferenceResolutionClientProtocol(v6, v11);
    outlined destroy of ReferenceResolutionClientProtocol?(v6 + 40, &_s14SiriKitRuntime14Conversational_pSgMd, &_s14SiriKitRuntime14Conversational_pSgMR);
    return outlined init with take of ReferenceResolutionClientProtocol(v11, a1);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMd, &_s14SiriKitRuntime21ConversationTurnState_p04turnF0_AA14Conversational_p12conversationAA0A7RequestV7requesttMR) + 64);
    outlined init with take of ReferenceResolutionClientProtocol(v6, v11);
    outlined destroy of RemoteConversationService.State(v6 + v8, type metadata accessor for SiriRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 5);
    return outlined init with take of ReferenceResolutionClientProtocol(v11, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return outlined destroy of RemoteConversationService.State(v6, type metadata accessor for RemoteConversationService.State);
}

uint64_t specialized ServiceBridgeErrorHandlingProxy.withErrorHandler(onError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  aBlock[4] = a2;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a3;
  v4 = _Block_copy(aBlock);

  v5 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return v11;
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
      *v10 = 0;
      _os_log_impl(&dword_1DC659000, v8, v9, "ServiceBridgeXPC proxy is not of type ServiceBridgeXPC. The connection may have been invalidated due to there being no current Siri turn.", v10, 2u);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    return 0;
  }
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      Task.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Parse.DirectInvocation and conformance Parse.DirectInvocation, MEMORY[0x1E69D0140], MEMORY[0x1E69D0148]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Parse.DirectInvocation and conformance Parse.DirectInvocation, MEMORY[0x1E69D0140], MEMORY[0x1E69D0150]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parse.DirectInvocation? and conformance <A> A?);
  }

  return result;
}

void IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v9 = *v4;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  if (a1)
  {
    v13 = a1;
    [v13 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for INIntent();
    if (swift_dynamicCast())
    {
      v35 = v9;
      v36 = a3;
      v37 = a4;
      v14 = v38;
      v15 = [v13 intentId];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      (*(v11 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
      v32 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v14;
      (*(v11 + 32))(v33 + v32, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *(v33 + ((v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
      v34 = v14;
      specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(v17, v19, v36, v37, partial apply for closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:));
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.instrumentation);
      v24 = v13;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v39[0] = v28;
        *v27 = 136315138;
        v29 = INIntent.debugDescriptionLite.getter();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v39);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1DC659000, v25, v26, "Unexpected failure when cloning intent: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v27, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.instrumentation);
    v37 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v37, v21, "Intent is nil, not sending handleIntentStarted event.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }
  }
}

uint64_t sub_1DC6F1278()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

void specialized IntentLoggingEventSink.safeHandle(intentId:context:intentIdClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {
    a5(a1);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v12);
      _os_log_impl(&dword_1DC659000, oslog, v8, "IntentLoggingEventSink ignoring %s event with missing intent Id", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ExecutionContextUpdate.init(coder:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18ContextUpdateScopeOSgMd, &_s11SiriKitFlow18ContextUpdateScopeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v180 = &v177 - v3;
  updated = type metadata accessor for ContextUpdateScope();
  v199 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v185 = &v177 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v178 = &v177 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v204 = &v177 - v8;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v179);
  v184 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v192 = &v177 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v197 = &v177 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_TaskVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v201 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v206 = &v177 - v17;
  v220 = type metadata accessor for Siri_Nlu_External_Task();
  v217 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v214 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v216 = &v177 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v215 = &v177 - v24;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v177 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v177 - v29;
  v31 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v200 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v205 = &v177 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v208 = &v177 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v209 = &v177 - v38;
  v39 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v210 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v219 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v177 - v42;
  v187 = type metadata accessor for NSFastEnumerationIterator();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v207 = &v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v211 = &v177 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v212 = &v177 - v48;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SACFProvideContext, 0x1E69C7748);
  v189 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
  v188 = NSCoder.decodeObject<A>(of:forKey:)();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v49 = swift_allocObject();
  v202 = xmmword_1DCA65720;
  *(v49 + 16) = xmmword_1DCA65720;
  v50 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v49 + 32) = v50;
  v218 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v49 + 40) = v218;
  NSCoder.decodeObject(of:forKey:)();

  v191 = v30;
  v198 = a1;
  v190 = v50;
  if (!*(&v223 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v222, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v221 = 0;
    goto LABEL_16;
  }

  v177 = v227;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v228)
  {
    v195 = (v210 + 7);
    v51 = (v210 + 4);
    v194 = (v210 + 2);
    v221 = MEMORY[0x1E69E7CC0];
    v193 = v210 + 1;
    while (1)
    {
      outlined init with take of Any(&v227, &v222);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v52 = v225;
      v53 = v226;
      v224 = 0;
      v222 = 0u;
      v223 = 0u;
      outlined copy of Data._Representation(v225, v226);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_SystemDialogAct and conformance Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69D0B48], MEMORY[0x1E69D0B40]);
      v54 = v209;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v195)(v54, 0, 1, v39);
      v55 = *v51;
      (*v51)(v43, v54, v39);
      (*v194)(v219, v43, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v221 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v221 + 2) + 1, 1, v221);
      }

      v57 = *(v221 + 2);
      v56 = *(v221 + 3);
      if (v57 >= v56 >> 1)
      {
        v221 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v221);
      }

      outlined consume of Data._Representation(v52, v53);
      v58 = v210;
      (v210[1])(v43, v39);
      v59 = v221;
      *(v221 + 2) = v57 + 1;
      v55(&v59[((*(v58 + 80) + 32) & ~*(v58 + 80)) + v58[9] * v57], v219, v39);
      NSFastEnumerationIterator.next()();
      if (!v228)
      {
        goto LABEL_15;
      }
    }

    v158 = v198;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v159 = type metadata accessor for Logger();
    __swift_project_value_buffer(v159, static Logger.executor);
    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_1DC659000, v160, v161, "Element in decoded array is not Data", v162, 2u);
      MEMORY[0x1E12A2F50](v162, -1, -1);
    }

    (*(v186 + 8))(v212, v187);
    goto LABEL_97;
  }

  v221 = MEMORY[0x1E69E7CC0];
LABEL_15:
  (*(v186 + 8))(v212, v187);

  a1 = v198;
  v30 = v191;
LABEL_16:
  v60 = v192;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v61 = JSONDecoder.init()();
  v62 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v62)
  {
    v63 = v62;
    v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay32SiriReferenceResolutionDataModel8RREntityVGMd, &_sSay32SiriReferenceResolutionDataModel8RREntityVGMR);
    lazy protocol witness table accessor for type [RREntity] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v64, v66);
    v208 = v222;
  }

  else
  {
    v208 = 0;
  }

  v67 = type metadata accessor for PommesContext();
  (*(*(v67 - 8) + 56))(v30, 1, 1, v67);
  v68 = NSCoder.decodeObject<A>(of:forKey:)();
  v219 = v61;
  if (v68)
  {
    v69 = v68;
    v70 = v60;
    v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
    lazy protocol witness table accessor for type PommesContext? and conformance <A> A?();
    v74 = v182;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);

    outlined consume of Data._Representation(v71, v73);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v74, v30, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v80 = v220;
    v81 = v190;
    v60 = v70;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.executor);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    v78 = os_log_type_enabled(v76, v77);
    v81 = v190;
    if (v78)
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC659000, v76, v77, "Can't decode PommesContext data into Data", v79, 2u);
      MEMORY[0x1E12A2F50](v79, -1, -1);
    }

    v80 = v220;
  }

  v82 = swift_allocObject();
  *(v82 + 16) = v202;
  v83 = v218;
  *(v82 + 32) = v81;
  *(v82 + 40) = v83;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v223 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v222, &_sypSgMd, &_sypSgMR);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v210 = 0;
    goto LABEL_41;
  }

  v195 = v227;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v228)
  {
    v212 = (v217 + 56);
    v84 = (v217 + 32);
    v209 = (v217 + 16);
    v85 = MEMORY[0x1E69E7CC0];
    v210 = (v217 + 8);
    while (1)
    {
      outlined init with take of Any(&v227, &v222);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v86 = v225;
      v87 = v226;
      v224 = 0;
      v222 = 0u;
      v223 = 0u;
      outlined copy of Data._Representation(v225, v226);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      v88 = v206;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v212)(v88, 0, 1, v80);
      v89 = v80;
      v90 = *v84;
      v91 = v85;
      v92 = v215;
      (*v84)(v215, v88, v89);
      v93 = v92;
      v85 = v91;
      (*v209)(v216, v93, v89);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v91[2] + 1, 1, v91);
      }

      v95 = v85[2];
      v94 = v85[3];
      if (v95 >= v94 >> 1)
      {
        v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v85);
      }

      outlined consume of Data._Representation(v86, v87);
      v96 = v217;
      v97 = v220;
      (*(v217 + 8))(v215, v220);
      v85[2] = v95 + 1;
      v90(v85 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v95, v216, v97);
      v80 = v97;
      NSFastEnumerationIterator.next()();
      if (!v228)
      {
        goto LABEL_40;
      }
    }

    v163 = v198;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    __swift_project_value_buffer(v164, static Logger.executor);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.error.getter();
    v167 = os_log_type_enabled(v165, v166);
    v168 = v191;
    if (v167)
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_1DC659000, v165, v166, "Element in decoded array is not of type Data", v169, 2u);
      MEMORY[0x1E12A2F50](v169, -1, -1);
    }

    (*(v186 + 8))(v211, v187);
    goto LABEL_96;
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v210 = v85;
  (*(v186 + 8))(v211, v187);

  a1 = v198;
  v60 = v192;
  v81 = v190;
LABEL_41:
  v98 = swift_allocObject();
  *(v98 + 16) = v202;
  v99 = v218;
  *(v98 + 32) = v81;
  *(v98 + 40) = v99;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v223 + 1))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v222, &_sypSgMd, &_sypSgMR);
    goto LABEL_53;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    v220 = 0;
    v114 = updated;
    goto LABEL_56;
  }

  v211 = v227;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v228)
  {
    v100 = (v217 + 32);
    v215 = (v217 + 16);
    v216 = (v217 + 56);
    v101 = MEMORY[0x1E69E7CC0];
    v102 = MEMORY[0x1E6969080];
    v212 = (v217 + 8);
    while (1)
    {
      outlined init with take of Any(&v227, &v222);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v103 = v225;
      v104 = v226;
      v224 = 0;
      v222 = 0u;
      v223 = 0u;
      outlined copy of Data._Representation(v225, v226);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Siri_Nlu_External_Task and conformance Siri_Nlu_External_Task, MEMORY[0x1E69D0948], MEMORY[0x1E69D0940]);
      v105 = v201;
      v106 = v102;
      Message.init<A>(contiguousBytes:extensions:partial:options:)();
      (*v216)(v105, 0, 1, v80);
      v107 = v80;
      v108 = *v100;
      v109 = v213;
      (*v100)(v213, v105, v107);
      (*v215)(v214, v109, v107);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v101 + 2) + 1, 1, v101);
      }

      v111 = *(v101 + 2);
      v110 = *(v101 + 3);
      if (v111 >= v110 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v101);
      }

      outlined consume of Data._Representation(v103, v104);
      v112 = v217;
      v113 = v220;
      (*(v217 + 8))(v213, v220);
      *(v101 + 2) = v111 + 1;
      v108(&v101[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v111], v214, v113);
      v80 = v113;
      NSFastEnumerationIterator.next()();
      v102 = v106;
      if (!v228)
      {
        goto LABEL_55;
      }
    }

    v170 = v198;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v171 = type metadata accessor for Logger();
    __swift_project_value_buffer(v171, static Logger.executor);
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    v174 = os_log_type_enabled(v172, v173);
    v168 = v191;
    if (v174)
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_1DC659000, v172, v173, "Element in decoded array is not of type Data", v175, 2u);
      MEMORY[0x1E12A2F50](v175, -1, -1);
    }

    (*(v186 + 8))(v207, v187);
LABEL_96:
    outlined destroy of ReferenceResolutionClientProtocol?(v168, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
LABEL_97:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v101 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v220 = v101;
  (*(v186 + 8))(v207, v187);

  a1 = v198;
  v114 = updated;
  v60 = v192;
LABEL_56:
  v115 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v115 - 8) + 56))(v197, 1, 1, v115);
  v116 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v116)
  {
    v117 = v116;
    v118 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v120 = v119;
    lazy protocol witness table accessor for type Parse.DirectInvocation? and conformance <A> A?();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v127 = v197;
    outlined destroy of ReferenceResolutionClientProtocol?(v197, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined consume of Data._Representation(v118, v120);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v60, v127, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    v125 = v199;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for Logger();
    __swift_project_value_buffer(v128, static Logger.executor);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_1DC659000, v129, v130, "Successfully decoded undoDirectInvocation data into Optional<Parse.DirectInvocation>", v131, 2u);
      MEMORY[0x1E12A2F50](v131, -1, -1);
    }

    v122 = v117;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    __swift_project_value_buffer(v121, static Logger.executor);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();
    v124 = os_log_type_enabled(v122, v123);
    v125 = v199;
    if (v124)
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_1DC659000, v122, v123, "Can't decode undoDirectInvocation data into Data", v126, 2u);
      MEMORY[0x1E12A2F50](v126, -1, -1);
    }
  }

  v132 = *MEMORY[0x1E69CFF08];
  v133 = *(v125 + 104);
  v134 = v204;
  v133(v204, v132, v114);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v135 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v135)
  {
    v136 = v135;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v137 = v180;
    ContextUpdateScope.init(rawValue:)();

    (*(v125 + 8))(v134, v114);
    v138 = *(v125 + 48);
    if (v138(v137, 1, v114) == 1)
    {
      v139 = v178;
      v133(v178, v132, v114);
      v140 = v138(v137, 1, v114);
      v141 = v139;
      v125 = v199;
      if (v140 != 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v137, &_s11SiriKitFlow18ContextUpdateScopeOSgMd, &_s11SiriKitFlow18ContextUpdateScopeOSgMR);
      }
    }

    else
    {
      v141 = v178;
      (*(v125 + 32))(v178, v137, v114);
    }

    (*(v125 + 32))(v204, v141, v114);
  }

  v142 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA7AE80);
  v143 = [a1 containsValueForKey_];

  if (v143)
  {
    v144 = NSCoder.decodeObject<A>(of:forKey:)();
    v145 = v204;
    if (v144)
    {
      v222 = 0uLL;
      v146 = v144;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v147 = v222;
      if (!*(&v222 + 1))
      {
        v147 = 0;
      }

      v217 = *(&v222 + 1);
      v218 = v147;
    }

    else
    {
      v217 = 0;
      v218 = 0;
    }
  }

  else
  {
    v217 = 0;
    v218 = 0;
    v145 = v204;
  }

  v148 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA7AEA0);
  LODWORD(v216) = [a1 decodeBoolForKey_];

  ObjectType = swift_getObjectType();
  v150 = v197;
  v151 = v184;
  outlined init with copy of ReferenceResolutionClientProtocol?(v197, v184, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v152 = v191;
  v153 = v183;
  outlined init with copy of ReferenceResolutionClientProtocol?(v191, v183, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v154 = v199;
  v155 = v185;
  v156 = updated;
  (*(v199 + 16))(v185, v145, updated);
  v157 = (*(ObjectType + 168))(v189, v188, v221, v210, v220, v151, v208, v153, v155, v218, v217, v216);

  (*(v154 + 8))(v145, v156);
  outlined destroy of ReferenceResolutionClientProtocol?(v150, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v152, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  swift_deallocPartialClassInstance();
  return v157;
}

void SessionStateContextKeysManager.updateValue(_:forKey:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ConversationSessionKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      specialized _NativeDictionary.copy()(MEMORY[0x1E69D0820], &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69D0820]);
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
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return outlined init with take of Any(a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      specialized _NativeDictionary.copy()(MEMORY[0x1E69E6D30], &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69E6D30]);
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
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return outlined init with take of Any(a1, v21);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConversationSessionKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ConversationSessionKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v47 = v5;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v45 = *(v6 + 72);
      v27 = v26 + v45 * v25;
      if (v43)
      {
        (*v44)(v46, v27, v47);
        v28 = (*(v9 + 56) + 32 * v25);
        v29 = v28[1];
        v48 = *v28;
        v49 = v29;
      }

      else
      {
        (*v40)(v46, v27, v47);
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v9 + 56) + 32 * v25, &v48, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v6 = v41;
        v9 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v6 = v41;
      v9 = v42;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v45 * v19, v46, v47);
      v20 = (*(v11 + 56) + 32 * v19);
      v21 = v49;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1E12A23D0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UserID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v48 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v6 + 16);
    v41 = v8;
    v42 = v6;
    v45 = (v6 + 32);
    v17 = result + 64;
    v18 = v44;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v42 + 72) * v25;
      v46 = *(v42 + 72);
      v47 = v22;
      if (v43)
      {
        (*v45)(v18, v26, v48);
        v27 = (*(v8 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v18, v26, v48);
        v30 = (*(v8 + 56) + 16 * v25);
        v29 = *v30;
        v28 = v30[1];
        outlined copy of Data._Representation(*v30, v28);
      }

      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08D0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v18 = v44;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v18 = v44;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v10 + 48) + v46 * v19, v18, v48);
      v20 = (*(v10 + 56) + 16 * v19);
      *v20 = v29;
      v20[1] = v28;
      ++*(v10 + 16);
      v8 = v41;
      v15 = v47;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v8 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69CE370], &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ConversationSessionKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820], MEMORY[0x1E69D0830]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for ConversationSessionKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type ConversationSessionKey and conformance ConversationSessionKey, 255, MEMORY[0x1E69D0820], MEMORY[0x1E69D0828]);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t ContextUpdater.domainHints.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime14ContextUpdater_domainHints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.toLegacyNLContext()@<X0>(uint64_t a1@<X8>)
{
  v30 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_LegacyNLContext.LegacyContextSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_LegacyNLContext.init()();
  Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter();
  Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter();
  Siri_Nlu_External_LegacyNLContext.strictPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.getter();
  Siri_Nlu_External_LegacyNLContext.previousDomainName.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.getter();
  Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D0B18], v4);
  Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter();
  v8 = Com_Apple_Siri_Product_Proto_PromptContext.responseOptions.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v26[2] = a1;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v31;
    v12 = *(v2 + 16);
    v11 = v2 + 16;
    v13 = *(v11 + 64);
    v26[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v27 = *(v11 + 56);
    v28 = v12;
    v15 = (v11 - 8);
    do
    {
      v16 = v29;
      v17 = v30;
      v18 = v11;
      v28(v29, v14, v30);
      v19 = Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
      v21 = v20;
      (*v15)(v16, v17);
      v31 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v23 + 1;
      v24 = v10 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v14 += v27;
      --v9;
      v11 = v18;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  return MEMORY[0x1E129C3A0](v10);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes22ConversationSessionKeyO_ypSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOypSgGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v9, v5, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMd, &_s16SiriMessageTypes22ConversationSessionKeyO_ypSgtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ConversationSessionKey();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = *v3;
  return MEMORY[0x1EEE6DFA0](protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl, 0, 0);
}

uint64_t protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl()
{
  v1 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(*(v0 + 16), *(v0 + 64), *(v0 + 24));
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl;

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(v1);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  else
  {
    v2 = protocol witness for AceServiceInvokerAsync.submitAllSerial(_:setRefId:executionSource:) in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for RequestSummary.ExecutionSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  if (a2)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = &outlined read-only object #0 of AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v15 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a1;
  *(v16 + 5) = v3;
  *(v16 + 6) = v13;
  (*(v8 + 32))(&v16[v15], &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  v17 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v12, &async function pointer to partial apply for closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), v16, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  v18 = *(*(v3 + 160) + 16);
  os_unfair_lock_lock((v18 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v18 + 16), &v21);
  os_unfair_lock_unlock((v18 + 24));

  return v17;
}

uint64_t sub_1DC6F5674()
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