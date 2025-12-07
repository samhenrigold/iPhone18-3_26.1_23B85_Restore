uint64_t _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  v1 = v0[5];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v5 = v0[13];
  v6 = v0[3];

  return AttachmentLedgerServiceProvider.updateAttachment(input:)(v5, v6, v3, v2);
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v2 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[12] + 24);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(v4 + 48);
  LODWORD(v3) = v6(v2, 1, v3);
  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v3 == 1)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[13], v0[2], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[10];
    v10 = v0[6];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    v11 = v6(v9, 1, v10);
    v12 = v0[10];
    v13 = v0[8];
    if (v11 == 1)
    {
      v14 = v0[6];
      *v13 = 0;
      v13[1] = 0xE000000000000000;
      v13[2] = 0;
      v13[3] = 0;
      UnknownStorage.init()();
      if (v6(v12, 1, v14) != 1)
      {
        outlined destroy of NSObject?(v0[10], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[10], v13, type metadata accessor for AttachmentLedger_ErrorResponse);
    }

    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v16 = v0[4];

    return AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(v16);
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v2 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  outlined init with copy of Attachment.MMCSMetadata(v0[8], v1, type metadata accessor for AttachmentLedger_ErrorResponse);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v7, v8, v5, v6);
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 152) = v0;

  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v3 = sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[13];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[8], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:), 0, 0);
}

uint64_t AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)()
{
  v1 = v0[3];
  if (v1[2])
  {
    v2 = v0[8];
    v3 = v0[9];
    v4 = v0[7];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0[2], v4, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      outlined destroy of NSObject?(v0[7], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
LABEL_6:
      v7 = *(v0[3] + 24);
      v8 = 1000000000000000 * v7;
      v9 = (v7 * 0x38D7EA4C68000uLL) >> 64;
      static Clock<>.continuous.getter();
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:);

      return specialized Clock.sleep(for:tolerance:)(v8, v9, 0, 0, 1);
    }

    v5 = v0[10];
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[7], v5, type metadata accessor for AttachmentLedger_ErrorResponse);
    v6 = *(v5 + 16);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_ErrorResponse);
    if (v6)
    {
      v1[2] = v6 - 1;
      if (v6 != 1)
      {
        goto LABEL_6;
      }

      if (one-time initialization token for attachmentLedgerTopic == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_10:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.attachmentLedgerTopic);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEB26000, v13, v14, "Exceeded max retry attempts", v15, 2u);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    v1 = v0[3];
  }

  v17 = *v1;
  v16 = v1[1];
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError();
  swift_allocError();
  *v18 = v17;
  v18[1] = v16;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtSgMR);
  v6[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS8IteratorVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v2 = v0[33];
  v3 = v0[34];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

{

  return MEMORY[0x1EEE6DFA0](closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), 0, 0);
}

{
  v1 = v0[33];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[28];
    v5 = v0[29];
    v7 = v0[27];
    v8 = *(v2 + 48);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v1, v0[32], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    (*(v6 + 32))(v5, v1 + v8, v7);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v9 = v0[31];
    v10 = v0[32];
    v11 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v11, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(v10, v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v0[17] = v15;
      *v14 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[18] = Strong;
        type metadata accessor for PluginAttachmentLedgerTopic(0);
        v17 = String.init<A>(reflecting:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v21 = v0[31];
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v0 + 17);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2080;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
      v23 = Message.debugDescription.getter();
      v25 = v24;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v0 + 17);

      *(v14 + 14) = v26;
      _os_log_impl(&dword_1AEB26000, v12, v13, "%s Attempting to drain operation %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    else
    {
      v20 = v0[31];

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    }

    v27 = v0[22];
    v28 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = swift_task_alloc();
    v0[39] = v29;
    *v29 = v0;
    v29[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
    v30 = v0[32];
    v31 = v0[26];
    v33 = v0[21];
    v32 = v0[22];

    return sendUpdateAttachmentRequest #1 @Sendable (input:previousError:) in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v31, v30, v32, v33);
  }
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 320) = v0;

  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v3 = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  else
  {
    v3 = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined init with copy of Attachment.MMCSMetadata(v0[26], v0[25], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v0[15] = v4;
    *v3 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[16] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v6 = String.init<A>(reflecting:)();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v10 = v0[25];
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, v0 + 15);

    *(v3 + 4) = v11;
    *(v3 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentResponse and conformance AttachmentLedger_UpdateAttachmentResponse, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentResponse);
    v12 = Message.debugDescription.getter();
    v14 = v13;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v0 + 15);

    *(v3 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v1, v2, "%s Finished operation: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }

  else
  {
    v9 = v0[25];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  }

  v16 = v0[32];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  outlined init with copy of Attachment.MMCSMetadata(v20, v0[24], type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  CheckedContinuation.resume(returning:)();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);
  (*(v18 + 8))(v17, v19);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v21 = swift_task_alloc();
  v0[37] = v21;
  *v21 = v0;
  v21[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v22 = v0[33];
  v23 = v0[34];

  return MEMORY[0x1EEE6D9C8](v22, 0, 0, v23);
}

{
  v1 = v0[40];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v0[12] = v6;
    *v5 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[14] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = v0[40];
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v0 + 12);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2080;
    v0[13] = v11;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v0 + 12);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s Failed operation, error: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v17 = v0[32];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v0[11] = v0[40];
  CheckedContinuation.resume(throwing:)();
  (*(v19 + 8))(v18, v20);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v21 = swift_task_alloc();
  v0[37] = v21;
  *v21 = v0;
  v21[1] = closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:);
  v22 = v0[33];
  v23 = v0[34];

  return MEMORY[0x1EEE6D9C8](v22, 0, 0, v23);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v58 = a2;
  v61 = a1;
  v57 = a3;
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v60 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v53 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61 + *(v3 + 24), v11, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v25 = *(v13 + 48);
  v26 = v25(v11, 1, v12);
  v53 = v25;
  if (v26 == 1)
  {
    *v17 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v25(v11, 1, v12) != 1)
    {
      outlined destroy of NSObject?(v11, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v11, v17, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  v27 = *v17;
  v28 = v17[1];
  outlined copy of Data._Representation(*v17, v28);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v17, type metadata accessor for AttachmentLedger_EncryptionID);
  UUID.init(data:)(v27, v28, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.attachmentLedgerTopic);
    v30 = v61;
    v31 = v59;
    outlined init with copy of Attachment.MMCSMetadata(v61, v59, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v32 = v60;
    outlined init with copy of Attachment.MMCSMetadata(v30, v60, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = v61;
      *v35 = 136315394;
      v36 = v56;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v31 + *(v54 + 24), v56, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
      v37 = v53;
      if (v53(v36, 1, v12) == 1)
      {
        v38 = v55;
        *v55 = xmmword_1AEE0C200;
        UnknownStorage.init()();
        if (v37(v36, 1, v12) != 1)
        {
          outlined destroy of NSObject?(v36, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
        }
      }

      else
      {
        v38 = v55;
        outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v36, v55, type metadata accessor for AttachmentLedger_EncryptionID);
      }

      v43 = *v38;
      v44 = v38[1];
      outlined copy of Data._Representation(*v38, v44);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_EncryptionID);
      v45 = Data.description.getter();
      v47 = v46;
      outlined consume of Data._Representation(v43, v44);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v59, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v62);

      *(v35 + 4) = v48;
      *(v35 + 12) = 2048;
      v49 = *v60;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v60, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *(v35 + 14) = v49;
      _os_log_impl(&dword_1AEB26000, v33, v34, "Invalid encryptionID: %s for participant: %llu", v35, 0x16u);
      v50 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1B27120C0](v50, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    v51 = swift_allocError();
    *v52 = 1;
    result = swift_willThrow();
    *v58 = v51;
  }

  else
  {
    v39 = *(v22 + 32);
    v39(v24, v20, v21);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR) + 48);
    v41 = v57;
    *v57 = *v61;
    return (v39)(v41 + v40, v24, v21);
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = type metadata accessor for TaskPriority();
  v4 = (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v9 = *(v2 + 24);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v4, v5, v6, v7, v8);
  }

  v10 = *(v0 + 176);
  outlined init with copy of UserNotificationCenter(*(v0 + 168), v0 + 16);
  v11 = swift_allocObject();
  outlined init with take of ContiguousBytes((v0 + 16), v11 + 16);
  *(v11 + 56) = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  v13 = Task<>.init(priority:timeout:operation:)();
  *(v0 + 200) = v13;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 216) = v7;
  *v14 = v0;
  v14[1] = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  v8 = MEMORY[0x1E69E7288];
  v4 = v0 + 128;
  v5 = v13;
  v6 = v12;

  return MEMORY[0x1EEE6DA10](v4, v5, v6, v7, v8);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  else
  {
    v2 = closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v30 = v0;
  v1 = v0[16];
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29[0] = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for UUID();
    v8 = MEMORY[0x1B2710180](v1, v7);
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v29);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received newDecryptionIDs: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  else
  {
  }

  v12 = v0[28];
  swift_beginAccess();
  if (swift_weakLoadStrong() && (PluginAttachmentLedgerTopic.triggerResubscribe()(), v13 = v12, , v12))
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v17 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[17] = Strong;
        type metadata accessor for PluginAttachmentLedgerTopic(0);
        v21 = String.init<A>(reflecting:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v29);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2112;
      v26 = v13;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v27;
      *v18 = v27;
      _os_log_impl(&dword_1AEB26000, v15, v16, "%s Failed to retry, reason: %@", v17, 0x16u);
      outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    swift_willThrow();

    v24 = v0[1];
  }

  else
  {

    v24 = v0[1];
  }

  return v24();
}

{
  v22 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v0[19] = Strong;
      type metadata accessor for PluginAttachmentLedgerTopic(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v9 = 7104878;
      v11 = 0xE300000000000000;
    }

    v13 = v0[28];
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v21);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2080;
    v0[18] = v13;
    v15 = v13;
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%s Failed to see any updated decryptionIDs, error: %s. Retrying anyways", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  else
  {
    v12 = v0[28];
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    PluginAttachmentLedgerTopic.triggerResubscribe()();
  }

  v19 = v0[1];

  return v19();
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOGGMR);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = (*(v6 + 32))(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v8 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  MEMORY[0x1B270F520](v7, v8);

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v9 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<[UUID], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  v11 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 3, v11, v9);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  else
  {
    v2 = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 160) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:), 0, 0);
}

{
  v34 = v0;
  v1 = v0[20];
  if (v1)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = v0[8];
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v33 = v7;
        *v6 = 136315138;
        v8 = MEMORY[0x1B2710180](v1, v5);
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v33);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1AEB26000, v3, v4, "Saw updated decryptionIDs: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1B27120C0](v7, -1, -1);
        MEMORY[0x1B27120C0](v6, -1, -1);
      }

      v11 = v0[7];
      v32 = *(v1 + 16);
      if (v32 != *(v11 + 16))
      {
LABEL_16:
        v28 = v0[5];
        (*(v0[16] + 8))(v0[17], v0[15]);
        *v28 = v1;

        v27 = v0[1];
        goto LABEL_17;
      }

      if (!v32 || v11 == v1)
      {
        break;
      }

      v12 = 0;
      v13 = *(v0[9] + 80);
      v14 = (v13 + 32) & ~v13;
      v30 = v11 + v14;
      v31 = v1 + v14;
      while (v12 < *(v1 + 16))
      {
        v15 = v0[9];
        v16 = v1;
        v17 = *(v15 + 16);
        v18 = *(v15 + 72) * v12;
        v17(v0[11], v31 + v18, v0[8]);
        v20 = v0[10];
        v19 = v0[11];
        v22 = v0[8];
        v21 = v0[9];
        v17(v20, v30 + v18, v22);
        v1 = v16;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
        v23 = *(v21 + 8);
        v23(v20, v22);
        v23(v19, v22);
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (v32 == ++v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_12:

    v24 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<AnyPublisher<[UUID], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA03AnyC0VySay10Foundation4UUIDVGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:);
    v26 = v0[15];

    return MEMORY[0x1EEE6D8C8](v0 + 3, v26, v24);
  }

  else
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v27 = v0[1];
LABEL_17:

    return v27();
  }
}

{
  *(v0 + 32) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void PluginAttachmentLedgerTopic.triggerResubscribe()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = PluginAttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "%s triggered a resubscribe", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore11UploadTokenV_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a3, v24 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void closure #1 in PluginAttachmentLedgerTopic.triggerResubscribe()(uint64_t a1)
{
  (*(*a1 + 344))(&v13);
  v2 = v13;
  v3 = v16;
  outlined consume of PluginAttachmentLedgerTopic.State(v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1));
  if (v3 >> 62)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.attachmentLedgerTopic);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = PluginAttachmentLedgerTopic.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1AEB26000, v5, v6, "Not re-subscribing since the state is invalid. %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
  }

  else
  {
    v13 = v2;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    (*(*a1 + 352))(&v13);
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
  }
}

void PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(uint64_t a1, uint64_t a2)
{
  v163 = a2;
  v160 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  MEMORY[0x1EEE9AC00](v160);
  v5 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = MEMORY[0x1EEE9AC00](v151);
  v162 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v164 = (&v151 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v151 - v10;
  v11 = type metadata accessor for UUID();
  v169 = *(v11 - 8);
  v170 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v157 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v151 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v151 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v153 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v159 = &v151 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v152 = &v151 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v156 = &v151 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v161 = &v151 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v151 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v158 = &v151 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v151 - v33;
  v34 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v166 = (&v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v151 - v37;
  v39 = type metadata accessor for DispatchPredicate();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (&v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = v2;
  v43 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v42 = v43;
  (*(v40 + 104))(v42, *MEMORY[0x1E69E8020], v39);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  (*(v40 + 8))(v42, v39);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v38, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV5AddedV13OneOf_ContentOSgMR);
  v45 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.OneOf_Content(0);
  if ((*(*(v45 - 8) + 48))(v38, 1, v45) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v72 = v165;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v38, v165, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Log.attachmentLedgerTopic);
      v74 = v164;
      outlined init with copy of Attachment.MMCSMetadata(v72, v164, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v170;
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v172[0] = v80;
        *v79 = 136315138;
        v81 = *v74;
        v82 = v74[1];
        outlined copy of Data._Representation(v81, v82);
        v83 = v159;
        UUID.init(data:)(v81, v82, v159);
        v84 = v83;
        v85 = v153;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v84, v153, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v86 = v169;
        if ((*(v169 + 48))(v85, 1, v78) == 1)
        {
          v87 = 7104878;
          v88 = 0xE300000000000000;
        }

        else
        {
          v118 = v155;
          (*(v86 + 32))(v155, v85, v78);
          (*(v86 + 16))(v154, v118, v78);
          v119 = String.init<A>(reflecting:)();
          v120 = v78;
          v87 = v119;
          v88 = v121;
          (*(v86 + 8))(v118, v120);
        }

        v90 = v162;
        outlined destroy of NSObject?(v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v164, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v172);

        *(v79 + 4) = v122;
        _os_log_impl(&dword_1AEB26000, v75, v76, "Notified of new attachments %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1B27120C0](v80, -1, -1);
        MEMORY[0x1B27120C0](v79, -1, -1);

        v89 = v171;
        v72 = v165;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v74, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v89 = v171;
        v90 = v162;
      }

      PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(v72, v163);
      if (v89)
      {
        outlined init with copy of Attachment.MMCSMetadata(v72, v90, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v123 = v89;
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v172[0] = v128;
          *v126 = 136315394;
          lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
          v129 = Message.debugDescription.getter();
          v130 = v90;
          v132 = v131;
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v130, type metadata accessor for AttachmentLedger_AttachmentMetadata);
          v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v132, v172);

          *(v126 + 4) = v133;
          *(v126 + 12) = 2112;
          v134 = v89;
          v135 = _swift_stdlib_bridgeErrorToNSError();
          *(v126 + 14) = v135;
          *v127 = v135;
          _os_log_impl(&dword_1AEB26000, v124, v125, "Failed to handle new attachment %s for reason: %@", v126, 0x16u);
          outlined destroy of NSObject?(v127, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v127, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          MEMORY[0x1B27120C0](v128, -1, -1);
          MEMORY[0x1B27120C0](v126, -1, -1);
        }

        else
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v90, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        swift_willThrow();
      }

      v70 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
      v71 = v72;
      goto LABEL_45;
    }

    v55 = v166;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v38, v166, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack);
    v56 = *v55;
    v57 = v55[1];
    outlined copy of Data._Representation(v56, v57);
    v58 = v168;
    UUID.init(data:)(v56, v57, v168);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    v60 = __swift_project_value_buffer(v59, static Log.attachmentLedgerTopic);
    v61 = v158;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v58, v158, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v165 = v60;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v172[0] = v65;
      *v64 = 136315138;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61, v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v67 = v169;
      v66 = v170;
      if ((*(v169 + 48))(v30, 1, v170) == 1)
      {
        v68 = 7104878;
        v69 = 0xE300000000000000;
      }

      else
      {
        v91 = *(v67 + 32);
        v164 = v65;
        v92 = v155;
        v91(v155, v30, v66);
        (*(v67 + 16))(v154, v92, v66);
        v68 = String.init<A>(reflecting:)();
        v69 = v93;
        v94 = v92;
        v65 = v164;
        (*(v67 + 8))(v94, v66);
      }

      outlined destroy of NSObject?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v172);

      *(v64 + 4) = v95;
      _os_log_impl(&dword_1AEB26000, v62, v63, "Received attachmentACK %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1B27120C0](v65, -1, -1);
      MEMORY[0x1B27120C0](v64, -1, -1);

      v58 = v168;
    }

    else
    {

      outlined destroy of NSObject?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v96 = v161;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v58, v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v97 = v169;
    v98 = v170;
    v99 = *(v169 + 48);
    v100 = (v99)(v96, 1, v170);
    v101 = v167;
    if (v100 == 1)
    {
      outlined destroy of NSObject?(v96, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v102 = v156;
    }

    else
    {
      v164 = v99;
      v103 = v157;
      (*(v97 + 32))(v157, v96, v98);
      v104 = v97;
      v105 = (*(*v101 + 600))(v172);
      v106 = specialized Dictionary.removeValue(forKey:)(v103);
      v105(v172, 0);
      if (v106)
      {
        v107 = v98;

        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v172[0] = v111;
          *v110 = 136315138;
          v172[6] = v106;
          type metadata accessor for Attachment(0);

          v112 = String.init<A>(reflecting:)();
          v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, v172);

          *(v110 + 4) = v114;
          _os_log_impl(&dword_1AEB26000, v108, v109, "Found attachment %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v111);
          MEMORY[0x1B27120C0](v111, -1, -1);
          MEMORY[0x1B27120C0](v110, -1, -1);
        }

        v115 = v169;
        v116 = v157;
        PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(v106, v163, 1);

        (*(v115 + 8))(v116, v107);
        v117 = v168;
        goto LABEL_44;
      }

      (*(v104 + 8))(v103, v98);
      v58 = v168;
      v102 = v156;
      v99 = v164;
    }

    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v58, v102, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v172[0] = v171;
      *v138 = 136315394;
      v139 = PluginAttachmentLedgerTopic.description.getter();
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, v172);

      *(v138 + 4) = v141;
      *(v138 + 12) = 2080;
      v142 = v152;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v102, v152, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v99)(v142, 1, v98) == 1)
      {
        v143 = 7104878;
        v144 = 0xE300000000000000;
      }

      else
      {
        v145 = v169;
        v146 = v155;
        (*(v169 + 32))(v155, v142, v98);
        (*(v145 + 16))(v154, v146, v98);
        v143 = String.init<A>(reflecting:)();
        v144 = v147;
        (*(v145 + 8))(v146, v98);
      }

      outlined destroy of NSObject?(v102, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, v172);

      *(v138 + 14) = v148;
      _os_log_impl(&dword_1AEB26000, v136, v137, "%s pendingAttachment with UUID %s not found", v138, 0x16u);
      v149 = v171;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v149, -1, -1);
      MEMORY[0x1B27120C0](v138, -1, -1);

      v58 = v168;
    }

    else
    {

      outlined destroy of NSObject?(v102, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v150 = 4;
    swift_willThrow();
    v117 = v58;
LABEL_44:
    outlined destroy of NSObject?(v117, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v70 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added.Ack;
    v71 = v166;
    goto LABEL_45;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_47:
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(a1, v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v172[0] = v50;
    *v49 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v51 = Message.debugDescription.getter();
    v53 = v52;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v172);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_1AEB26000, v47, v48, "Unknown added event received %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1B27120C0](v50, -1, -1);
    MEMORY[0x1B27120C0](v49, -1, -1);

    return;
  }

  v70 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
  v71 = v5;
LABEL_45:
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v71, v70);
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:)(uint64_t *a1, uint64_t a2)
{
  v92 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v96 = (v88 - v7);
  v8 = type metadata accessor for UUID();
  v97 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v90 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v88 - v11;
  v94 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v88 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    v95 = v8;
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(a1, v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v99[0] = v89;
    *v27 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v28 = Message.debugDescription.getter();
    v29 = a1;
    v30 = v14;
    v31 = v24;
    v33 = v32;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v33, v99);
    v24 = v31;
    v14 = v30;
    a1 = v29;

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1AEB26000, v25, v26, "Notified of attachment being removed %s", v27, 0xCu);
    v35 = v89;
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v27, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
  }

  v36 = *a1;
  v37 = a1[1];
  outlined copy of Data._Representation(*a1, v37);
  v38 = v96;
  UUID.init(data:)(v36, v37, v96);
  v39 = v97;
  v40 = v95;
  if ((*(v97 + 48))(v38, 1, v95) == 1)
  {
    outlined destroy of NSObject?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of Attachment.MMCSMetadata(a1, v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v99[0] = v44;
      *v43 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v45 = Message.debugDescription.getter();
      v47 = v46;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v99);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1AEB26000, v41, v42, "Failed to process attachmentUUID on remove message: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1B27120C0](v44, -1, -1);
      MEMORY[0x1B27120C0](v43, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v14, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v74 = 1;
    return swift_willThrow();
  }

  v49 = (*(v39 + 32))(v100, v38, v40);
  v50 = *(*v98 + 632);
  v51 = v50(v49);
  v88[1] = v24;
  if (v51 >> 62)
  {
    v52 = __CocoaSet.count.getter();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  MEMORY[0x1EEE9AC00](v53);
  v54 = &v88[-4];
  v55 = v98;
  v88[-2] = v100;
  v56 = (*(*v55 + 648))(v99);
  v58 = v57;
  v59 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:), &v88[-4]);
  if (!(*v58 >> 62))
  {
    v60 = *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60 >= v59)
    {
      goto LABEL_13;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v54 = v59;
  v60 = __CocoaSet.count.getter();
  v59 = v54;
  if (v60 < v54)
  {
    goto LABEL_29;
  }

LABEL_13:
  specialized Array.replaceSubrange<A>(_:with:)(v59, v60);
  v61 = v56(v99, 0);
  v54 = v98;
  v62 = v50(v61);
  if (!(v62 >> 62))
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_30:
  v63 = __CocoaSet.count.getter();
LABEL_15:

  if (v52 == v63)
  {

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v99[0] = v67;
      *v66 = 136315138;
      (*(*v54 + 584))();
      type metadata accessor for Attachment(0);
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v68 = Dictionary.Keys.description.getter();
      v70 = v69;

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v99);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_1AEB26000, v64, v65, "Failed to remove attachment, attachment not found, pendingAttachments: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x1B27120C0](v67, -1, -1);
      MEMORY[0x1B27120C0](v66, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v72 = 4;
    swift_willThrow();
    return (*(v97 + 8))(v100, v40);
  }

  else
  {
    v75 = v97;
    v76 = v90;
    v96 = *(v97 + 16);
    (v96)(v90, v100, v40);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v99[0] = v93;
      *v79 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      LODWORD(v89) = v78;
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v76;
      v83 = v82;
      v94 = *(v75 + 8);
      v94(v81, v40);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v83, v99);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_1AEB26000, v77, v89, "Successfully removed attachment %s", v79, 0xCu);
      v85 = v93;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1B27120C0](v85, -1, -1);
      MEMORY[0x1B27120C0](v79, -1, -1);
    }

    else
    {

      v94 = *(v75 + 8);
      v94(v76, v40);
    }

    swift_beginAccess();
    v86 = v100;
    specialized Dictionary.removeValue(forKey:)(v100);
    swift_endAccess();

    v87 = v91;
    (v96)(v91, v86, v40);
    (*(v75 + 56))(v87, 0, 1, v40);
    PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v87, v92);
    outlined destroy of NSObject?(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (v94)(v86, v40);
  }
}

uint64_t PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v21 - v12;
  v22 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v21 - v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  outlined init with take of UUID?(v13, v16 + v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v16 + v15) = v23;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v2;
  aBlock[4] = partial apply for closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_59_0;
  v17 = _Block_copy(aBlock);
  v18 = v22;

  static DispatchQoS.unspecified.getter();
  v28 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v19 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v27 + 8))(v5, v19);
  (*(v25 + 8))(v8, v26);
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentStatusChanged(_:_:)(unsigned int (**a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v178 = a2;
  v202 = a1;
  v192 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  MEMORY[0x1EEE9AC00](v192);
  v197 = (&v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v196 = (&v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v178 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v185 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v194 = &v178 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v187 = &v178 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v178 - v15;
  v16 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v198 = (&v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v178 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v181 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v184 = &v178 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v193 = &v178 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v183 = &v178 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v191 = &v178 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v182 = &v178 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v186 = &v178 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v195 = &v178 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v189 = &v178 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v190 = &v178 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v178 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v178 - v45;
  v47 = type metadata accessor for DispatchPredicate();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = (&v178 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = v2;
  v51 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v50 = v51;
  (*(v48 + 104))(v50, *MEMORY[0x1E69E8020], v47);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  (*(v48 + 8))(v50, v47);
  if ((v51 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v53 = *(v8 + 56);
  v208 = v46;
  v53(v46, 1, 1, v7);
  v46 = v202;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v202, v20, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV13StatusChangedV13OneOf_ContentOSgMR);
  v54 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.OneOf_Content(0);
  if ((*(*(v54 - 8) + 48))(v20, 1, v54) != 1)
  {
    v67 = v8;
    v201 = v7;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v202 = v8;
    if (EnumCaseMultiPayload == 1)
    {
      v69 = v198;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, v198, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v70 = *v69;
      v71 = v69[1];
      outlined copy of Data._Representation(*v69, v71);
      UUID.init(data:)(v70, v71, v44);
      v72 = v208;
      outlined assign with take of ActivitySession.DomainAssertionWrapper?(v44, v208, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      v197 = __swift_project_value_buffer(v73, static Log.attachmentLedgerTopic);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = v195;
      v78 = v189;
      if (v76)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v207 = v80;
        *v79 = 136315138;
        swift_beginAccess();
        v81 = v190;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v190, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v81, v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v83 = v201;
        v82 = v202;
        if (v202[6](v78, 1, v201) == 1)
        {
          v84 = 7104878;
          v85 = 0xE300000000000000;
        }

        else
        {
          v102 = v188;
          (*(v82 + 32))(v188, v78, v83);
          (*(v82 + 16))(v187, v102, v83);
          v84 = String.init<A>(reflecting:)();
          v85 = v103;
          v104 = v102;
          v77 = v195;
          (*(v82 + 8))(v104, v83);
        }

        outlined destroy of NSObject?(v190, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v207);

        *(v79 + 4) = v105;
        _os_log_impl(&dword_1AEB26000, v74, v75, "Received attachmentStatusACK %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x1B27120C0](v80, -1, -1);
        MEMORY[0x1B27120C0](v79, -1, -1);

        v72 = v208;
      }

      else
      {
      }

      v106 = v199;
      swift_beginAccess();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = v201;
      v107 = v202;
      v109 = v202[6];
      v110 = v109(v77, 1, v201);
      v111 = v194;
      if (v110 == 1)
      {
        outlined destroy of NSObject?(v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_30:

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          *&v205 = v208;
          *v124 = 136315394;
          v125 = PluginAttachmentLedgerTopic.description.getter();
          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &v205);

          *(v124 + 4) = v127;
          *(v124 + 12) = 2080;
          v128 = v186;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v186, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v129 = v128;
          v130 = v182;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v129, v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v131 = v201;
          if (v109(v130, 1, v201) == 1)
          {
            v132 = 7104878;
            v133 = 0xE300000000000000;
          }

          else
          {
            v164 = v202;
            v165 = v188;
            v202[4](v188, v130, v131);
            (*(v164 + 16))(v187, v165, v131);
            v132 = String.init<A>(reflecting:)();
            v166 = v131;
            v133 = v167;
            (*(v164 + 8))(v165, v166);
          }

          outlined destroy of NSObject?(v186, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v205);

          *(v124 + 14) = v168;
          _os_log_impl(&dword_1AEB26000, v122, v123, "%s Attachment with UUID %s not found", v124, 0x16u);
          v169 = v208;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v169, -1, -1);
          MEMORY[0x1B27120C0](v124, -1, -1);
        }

        lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
        swift_allocError();
        *v170 = 4;
        swift_willThrow();
        v120 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
        v121 = v198;
        goto LABEL_54;
      }

      v112 = (*(v107 + 32))(v194, v77, v108);
      v113 = (*(*v106 + 608))(v112);
      if (!*(v113 + 16) || (v114 = specialized __RawDictionaryStorage.find<A>(_:)(v111), (v115 & 1) == 0))
      {

        (v202[1])(v111, v201);
        goto LABEL_30;
      }

      v116 = *(*(v113 + 56) + 16 * v114);

      v117 = v198;
      v118 = v180;
      outlined init with copy of Attachment.MMCSMetadata(v198, v180, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      swift_storeEnumTagMultiPayload();
      v119 = v200;
      v116(v118);
      if (v119)
      {

        outlined destroy of NSObject?(v118, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
        (v202[1])(v111, v201);
        v120 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack;
        v121 = v117;
LABEL_54:
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v121, v120);
        return outlined destroy of NSObject?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      outlined destroy of NSObject?(v118, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
      (v202[1])(v111, v201);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v117, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
LABEL_58:
      swift_beginAccess();
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v72, v178);
      return outlined destroy of NSObject?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v87 = v196;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, v196, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
    v88 = *v87;
    v89 = v87[1];
    outlined copy of Data._Representation(v88, v89);
    UUID.init(data:)(v88, v89, v44);
    v72 = v208;
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v44, v208, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    v198 = __swift_project_value_buffer(v90, static Log.attachmentLedgerTopic);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v207 = v94;
      *v93 = 136315138;
      swift_beginAccess();
      v95 = v191;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v191, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v96 = v183;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v95, v183, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v97 = v201;
      if ((*(v67 + 48))(v96, 1, v201) == 1)
      {
        v98 = 7104878;
        v99 = 0xE300000000000000;
      }

      else
      {
        v134 = v188;
        (*(v67 + 32))(v188, v96, v97);
        (*(v67 + 16))(v187, v134, v97);
        v98 = String.init<A>(reflecting:)();
        v135 = v67;
        v99 = v136;
        (*(v135 + 8))(v134, v97);
      }

      v101 = v193;
      outlined destroy of NSObject?(v191, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v207);

      *(v93 + 4) = v137;
      _os_log_impl(&dword_1AEB26000, v91, v92, "Received attachmentStatusFullUpdate %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x1B27120C0](v94, -1, -1);
      MEMORY[0x1B27120C0](v93, -1, -1);

      v67 = v202;
      v100 = v199;
    }

    else
    {

      v100 = v199;
      v101 = v193;
    }

    swift_beginAccess();
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v138 = v201;
    v197 = *(v67 + 48);
    if (v197(v101, 1, v201) == 1)
    {
      outlined destroy of NSObject?(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_39:

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *&v205 = v152;
        *v151 = 136315394;
        v153 = PluginAttachmentLedgerTopic.description.getter();
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v205);

        *(v151 + 4) = v155;
        *(v151 + 12) = 2080;
        v156 = v184;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v72, v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v157 = v181;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v156, v181, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v158 = v201;
        if (v197(v157, 1, v201) == 1)
        {
          v159 = 7104878;
          v160 = 0xE300000000000000;
        }

        else
        {
          v171 = v202;
          v172 = v188;
          v202[4](v188, v157, v158);
          (*(v171 + 16))(v187, v172, v158);
          v159 = String.init<A>(reflecting:)();
          v173 = v158;
          v160 = v174;
          (*(v171 + 8))(v172, v173);
        }

        outlined destroy of NSObject?(v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v160, &v205);

        *(v151 + 14) = v175;
        _os_log_impl(&dword_1AEB26000, v149, v150, "%s Attachment with UUID %s not found", v151, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v152, -1, -1);
        MEMORY[0x1B27120C0](v151, -1, -1);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v176 = 4;
      swift_willThrow();
      v120 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full;
      v121 = v196;
      goto LABEL_54;
    }

    v139 = v185;
    v140 = (*(v67 + 32))(v185, v101, v138);
    v141 = *(*v100 + 632);
    v195 = (*v100 + 632);
    v142 = v141;
    v143 = v141(v140);
    MEMORY[0x1EEE9AC00](v143);
    *(&v178 - 2) = v139;
    v144 = v200;
    v145 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v178 - 4), v143);
    v147 = v146;
    v200 = v144;

    if (v147)
    {
      (*(v67 + 8))(v139, v201);
      v72 = v208;
      goto LABEL_39;
    }

    result = v142(v148);
    if ((result & 0xC000000000000001) == 0)
    {
      v72 = v208;
      v161 = v185;
      if ((v145 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v145 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_46:

        v162 = v196;
        v163 = v200;
        AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full.uploadStatus.getter(&v205);
        if (v163)
        {
          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v162, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);

          (v202[1])(v161, v201);
          return outlined destroy of NSObject?(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        v203 = v205;
        v204 = v206;
        Attachment.update(_:)(&v203);
        v177 = v202;

        outlined consume of Attachment.MMCSMetadata.UploadStatus(v203, *(&v203 + 1), v204);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v162, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Full);
        (*(v177 + 8))(v161, v201);
        goto LABEL_58;
      }

      __break(1u);
      return result;
    }

    MEMORY[0x1B2710B10](v145, result);
    v72 = v208;
    v161 = v185;
    goto LABEL_46;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_60:
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Log.attachmentLedgerTopic);
  v56 = v197;
  outlined init with copy of Attachment.MMCSMetadata(v46, v197, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.fault.getter();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v208;
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v207 = v62;
    *v61 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged, &protocol conformance descriptor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v63 = Message.debugDescription.getter();
    v65 = v64;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v56, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v207);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_1AEB26000, v57, v58, "Unknown added event received %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x1B27120C0](v62, -1, -1);
    MEMORY[0x1B27120C0](v61, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v56, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
  }

  return outlined destroy of NSObject?(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v58 = a3;
  v57 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v56 = &v55 - v7;
  v8 = type metadata accessor for UUID();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = v9;
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v10 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMR);
  v60 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMR);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v4 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v21 = (*(*v4 + 648))(v69);
    v25 = v24;

    MEMORY[0x1B2710150](v26);
    if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v21)(v69, 0);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v27 = v4[13];
  *(swift_allocObject() + 16) = v27;
  type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR, MEMORY[0x1E695C068]);
  v28 = v59;
  Publisher.compactMap<A>(_:)();

  (*(v10 + 8))(v12, v28);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher, AttachmentLedger_AttachmentEncryption> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMd, &_s7Combine10PublishersO10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_J10EncryptionVG_GANGMR, MEMORY[0x1E695BC80]);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  v29 = v64;
  Publisher<>.removeDuplicates()();
  v60[1](v14, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v33 = v66;
  v32 = v67;
  v34 = *(v66 + 16);
  v35 = a1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v64 = a1;
  v36 = v65;
  v60 = v34;
  (v34)(v65, v35, v67);
  v37 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v38 = swift_allocObject();
  v39 = v38;
  *(v38 + 16) = v30;
  v40 = v36;
  v41 = v64;
  (*(v33 + 32))(v38 + v37, v40, v32);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.CompactMap<Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>.Publisher, AttachmentLedger_AttachmentEncryption>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC10CompactMapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_L10EncryptionVG_GAPGGMR, MEMORY[0x1E695BD38]);
  v42 = v62;
  Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v17, v42);
  v43 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentListeners;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(v4 + v43);
  v45 = v68;
  *(v4 + v43) = 0x8000000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v41 + v31);
  v47 = *(v45 + 16);
  v48 = (v46 & 1) == 0;
  v49 = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = v46;
  if (*(v45 + 24) >= v49)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_16:
    specialized _NativeDictionary.copy()();
    v45 = v68;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
  v45 = v68;
  specialized __RawDictionaryStorage.find<A>(_:)(v41 + v31);
  if ((v39 & 1) != (v50 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v51 = v58;
  *(v4 + v43) = v45;
  if ((v39 & 1) == 0)
  {
    (v60)(v65, v41 + v31, v67);
    v41 = v64;
    specialized _NativeDictionary._insert(at:key:value:)();
  }

  AnyCancellable.store(in:)();
  swift_endAccess();

  if ((v51 & 1) == 0)
  {
    v53 = v56;
    v54 = v67;
    (v60)(v56, v41 + v31, v67);
    (*(v66 + 56))(v53, 0, 1, v54);
    PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v53, v57);
    return outlined destroy of NSObject?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return result;
}

NSObject *PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v49, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v42 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v18;
    v24 = v23;
    v48[0] = v23;
    *v22 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
    v25 = Message.debugDescription.getter();
    v27 = v26;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v48);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v19, v20, "Notified of new attachment %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  outlined init with copy of Attachment.MMCSMetadata(v49, v8, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v29 = outlined init with copy of UserNotificationCenter((v3 + 26), v48);
  v30 = v3[13];
  (*(*v3 + 392))(v46, v29);
  v44[0] = v46[0];
  v44[1] = v46[1];
  v44[2] = v46[2];
  v45 = v47;
  v31 = v43;
  result = specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(v8, v48, v30, v44);
  if (!v31)
  {
    v33 = result;

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      v46[0] = v33;
      type metadata accessor for Attachment(0);

      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v48);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1AEB26000, v34, v35, "Full received attachment: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1B27120C0](v37, -1, -1);
      MEMORY[0x1B27120C0](v36, -1, -1);
    }

    PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(v33, v42, 0);
  }

  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v16 = *(v9 - 8);
    outlined init with copy of Attachment.MMCSMetadata(v8 + *(v16 + 72) * v7, a3, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = v5;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.attachmentLedgerTopic);
    (*(v9 + 16))(v11, a3, v8);
    outlined init with copy of Attachment.MMCSMetadata(a1, v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = a1;
      v17 = v16;
      v28 = swift_slowAlloc();
      v32 = v28;
      *v17 = 136315394;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = a3;
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v32);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
      v22 = Message.debugDescription.getter();
      v24 = v23;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v32);
      a3 = v30;

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Local encryptionSlot updated for attachment: %s to %s", v17, 0x16u);
      v26 = v28;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v26, -1, -1);
      v27 = v17;
      a1 = v29;
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      (*(v9 + 8))(v11, v8);
    }

    PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(a3, a1);
  }

  return result;
}

uint64_t PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v71 = v12;
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - v13;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v68 = *(updated - 8);
  v16 = MEMORY[0x1EEE9AC00](updated);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v62 - v19;
  v69 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v76 = v3;
  v77 = a1;
  v78 = a2;
  v23 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest);
  v75 = v22;
  v64 = v23;
  static Message.with(_:)();
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.attachmentLedgerTopic);
  v25 = *(v10 + 16);
  v73 = a1;
  v66 = v25;
  v67 = v10 + 16;
  v25(v14, a1, v9);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v74 = v10;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v62 = v8;
    v30 = v29;
    v31 = swift_slowAlloc();
    v63 = v3;
    v32 = v31;
    v79[0] = v31;
    *v30 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v9;
    v36 = v35;
    v37 = v14;
    v38 = v34;
    (*(v10 + 8))(v37, v34);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, v79);

    *(v30 + 4) = v39;
    _os_log_impl(&dword_1AEB26000, v26, v27, "[Encryption] Updating attachment %s's encryption", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v40 = v32;
    v3 = v63;
    MEMORY[0x1B27120C0](v40, -1, -1);
    v41 = v30;
    v8 = v62;
    MEMORY[0x1B27120C0](v41, -1, -1);
  }

  else
  {

    v42 = v14;
    v38 = v9;
    (*(v10 + 8))(v42, v9);
  }

  v43 = v65;
  outlined init with copy of Attachment.MMCSMetadata(v75, v65, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v79[0] = v47;
    *v46 = 136315138;
    v48 = Message.debugDescription.getter();
    v50 = v49;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v79);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1AEB26000, v44, v45, "[Encryption] Encryption update message %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  }

  v52 = v38;
  v53 = type metadata accessor for TaskPriority();
  (*(*(v53 - 8) + 56))(v8, 1, 1, v53);
  v54 = v75;
  v55 = v70;
  outlined init with copy of Attachment.MMCSMetadata(v75, v70, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v56 = v72;
  v66(v72, v73, v52);
  v57 = (*(v68 + 80) + 40) & ~*(v68 + 80);
  v58 = v74;
  v59 = (v69 + *(v74 + 80) + v57) & ~*(v74 + 80);
  v60 = swift_allocObject();
  *(v60 + 2) = 0;
  *(v60 + 3) = 0;
  *(v60 + 4) = v3;
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v55, &v60[v57], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  (*(v58 + 32))(&v60[v59], v56, v52);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:), v60);

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v54, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
}

uint64_t Subscribers.Completion<>.pluginShutdownReason.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for PluginRpcError(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = outlined destroy of NSObject?(v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v15 = 5;
LABEL_3:
    *a1 = v15;
    return result;
  }

  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, v13, type metadata accessor for PluginRpcError);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v13, v11, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v11;

    if (v16 == 14)
    {
      v15 = 7;
      goto LABEL_3;
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 6;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for PluginRpcError);
  }

  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v21 = a1;
  v22 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);
  static Message.with(_:)();
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v9, v7, type metadata accessor for AttachmentLedger_SubscribeRequest);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = Message.debugDescription.getter();
    v17 = v16;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_SubscribeRequest);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v11, v12, "[Subscribe] Sending attachmentAck message=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_SubscribeRequest);
  }

  PassthroughSubject.send(_:)();

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for AttachmentLedger_SubscribeRequest);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11[-v7];
  type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck(0);
  v12 = a2;
  v13 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.AttachmentAck and conformance AttachmentLedger_SubscribeRequest.AttachmentAck, type metadata accessor for AttachmentLedger_SubscribeRequest.AttachmentAck, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest.AttachmentAck);
  static Message.with(_:)();
  v9 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v8, a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-1] - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AEE07B20;
    v18[0] = UUID.uuid.getter();
    v18[1] = v15;
    *(v14 + 32) = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v18, &v19);
    *(v14 + 40) = v16;
    (*(v10 + 8))(v12, v9);

    *a1 = v14;
  }

  a1[1] = a3;
  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.updateLocalTopicEncryptionID()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest, &protocol conformance descriptor for AttachmentLedger_SubscribeRequest);
    static Message.with(_:)();
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v7;
    v28 = v26;
    *v17 = 136315138;
    v18 = v4;
    v20 = v0[29];
    v19 = v0[30];
    __swift_project_boxed_opaque_existential_1(v0 + 26, v20);
    (*(v19 + 8))(v20, v19);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v2 + 8))(v18, v1);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v28);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1AEB26000, v15, v16, "[Encryption] Updating localEncryptionID to: %s", v17, 0xCu);
    v25 = v26;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v7 = v27;
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  PassthroughSubject.send(_:)();

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_SubscribeRequest);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateLocalTopicEncryptionID()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  type metadata accessor for AttachmentLedger_EncryptionID(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v6 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v5, a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[29];
  v9 = a2[30];
  __swift_project_boxed_opaque_existential_1(a2 + 26, v8);
  (*(v9 + 8))(v8, v9);
  v16[0] = UUID.uuid.getter();
  v16[1] = v10;
  v11 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v16, &v17);
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v11;
  *(a1 + 8) = v13;
  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-v9];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0);
  v14 = a2;
  v15 = a3;
  v16 = a4;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate);
  static Message.with(_:)();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(updated - 8) + 56))(v10, 0, 1, updated);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v10, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0);
  v9 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(a2 + 112);
  v12 = *(a2 + 120);

  *a1 = v13;
  *(a1 + 1) = v12;
  v17 = a3;
  v18 = a4;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container, &protocol conformance descriptor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  static Message.with(_:)();
  v14 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v14], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c10EncryptionE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v11, &a1[v14], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container);
  return (*(v9 + 56))(&a1[v14], 0, 1, updated);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = UUID.uuid.getter();
  v16[1] = v9;
  v10 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v16, &v17);
  v12 = v11;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v10;
  *(a1 + 8) = v12;
  outlined init with copy of Attachment.MMCSMetadata(a3, v8, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v13 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentEncryptionUpdate.Container(0) + 24);
  outlined destroy of NSObject?(a1 + v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v8, a1 + v13, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  return (*(v6 + 56))(a1 + v13, 0, 1, v5);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:), 0, 0);
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v1, v4);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  }

  else
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 112), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v3 = closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v42 = v0;

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.attachmentLedgerTopic);
  v7 = v3;
  v8 = *(v4 + 16);
  v8(v2, v5, v7);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v39 = v11;
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v17 = 136315394;
    v8(v15, v12, v14);
    (*(v13 + 56))(v15, 0, 1, v14);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v13 + 48))(v16, 1, v14) == 1)
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v24 = *(v0 + 80);
      v23 = *(v0 + 88);
      v26 = *(v0 + 64);
      v25 = *(v0 + 72);
      (*(v25 + 32))(v23, *(v0 + 48), v26);
      v8(v24, v23, v26);
      v19 = String.init<A>(reflecting:)();
      v18 = v27;
      (*(v25 + 8))(v23, v26);
    }

    v28 = *(v0 + 136);
    v29 = *(v0 + 96);
    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    outlined destroy of NSObject?(*(v0 + 56), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v30 + 8))(v29, v31);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v41);

    *(v17 + 4) = v32;
    *(v17 + 12) = 2080;
    *(v0 + 16) = v28;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v34 = String.init<A>(reflecting:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v41);

    *(v17 + 14) = v36;
    _os_log_impl(&dword_1AEB26000, v10, v39, "Failed to update encryption material for attachment %s, reason: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  else
  {
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v20, v21);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t PluginAttachmentLedgerTopic.uploadTokenRequest.getter()
{
  type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);
  return static Message.with(_:)();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.requestUploadToken()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 288))(&v21);
  if ((v26 & 0x8000000000000000) == 0 || ((v4 = v23 | v22, v5 = v25 | v27, v26 == 0x8000000000000000) ? (v6 = (v23 | v22 | v21 | v24 | v25 | v27) == 0) : (v6 = 0), v6))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v21, v22, v23, v24, v25, v26, v27);
  }

  else
  {
    v7 = v21;
    v8 = v24;
    v9 = v26;
    v10 = outlined consume of PluginAttachmentLedgerTopic.State(v21, v22, v23, v24, v25, v26, v27);
    if (v9 == 0x8000000000000000 && v7 == 1 && !(v4 | v8 | v5))
    {
      result = (*(*a1 + 368))(v10);
      *a2 = result;
      return result;
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.attachmentLedgerTopic);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    v17 = PluginAttachmentLedgerTopic.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Requested uploadToken without being subscribed on %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v20 = 3;
  return swift_willThrow();
}

uint64_t PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.refreshUploadToken(), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = type metadata accessor for UploadToken(0);
  *v1 = v0;
  v1[1] = PluginAttachmentLedgerTopic.refreshUploadToken();
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000014, 0x80000001AEE324A0, closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()partial apply, v4, v2);
}

{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.refreshUploadToken(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  (*(v10 + 16))(&v20 - v11, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_192;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v18 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v5, v16);
  _Block_release(v16);

  (*(v24 + 8))(v5, v18);
  (*(v22 + 8))(v8, v23);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - v8;
  (*(*a1 + 288))(&v43, v7);
  if ((v48 & 0x8000000000000000) == 0 || (v10 = v45 | v44, v11 = v47 | v49, v48 == 0x8000000000000000) && !(v10 | v43 | v46 | v11))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v43, v44, v45, v46, v47, v48, v49);
LABEL_5:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.attachmentLedgerTopic);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136315138;
      v17 = PluginAttachmentLedgerTopic.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v43);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, v13, v14, "Requested uploadToken without being subscribed on %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    v20 = swift_allocError();
    *v21 = 3;
    v43 = v20;
    return CheckedContinuation.resume(throwing:)();
  }

  v40 = v3;
  v23 = v43;
  v24 = v46;
  v25 = v48;
  outlined consume of PluginAttachmentLedgerTopic.State(v43, v44, v45, v46, v47, v48, v49);
  if (v25 != 0x8000000000000000 || v23 != 1 || v10 | v24 | v11)
  {
    goto LABEL_5;
  }

  refreshed = PluginAttachmentLedgerTopic._refreshUploadToken()();
  v27 = (*(*a1 + 368))(refreshed);
  if (!v27)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.attachmentLedgerTopic);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1AEB26000, v35, v36, "Failed to find task for uploadToken request right after refreshing", v37, 2u);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    v38 = swift_allocError();
    *v39 = 2;
    v43 = v38;
    return CheckedContinuation.resume(throwing:)();
  }

  v28 = v27;
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = v40;
  v31 = v42;
  (*(v40 + 16))(v5, v41, v42);
  v32 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v28;
  (*(v30 + 32))(&v33[v32], v5, v31);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken(), v33);
}

uint64_t PluginAttachmentLedgerTopic._refreshUploadToken()()
{
  AuthTokenRequest = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v2 = *(AuthTokenRequest - 8);
  v44 = AuthTokenRequest;
  v45 = v2;
  v3 = MEMORY[0x1EEE9AC00](AuthTokenRequest);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v40 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v41 = v5;
    UUID.init()();
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v42 = v7;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.attachmentLedgerTopic);
  v21 = *(v9 + 16);
  v22 = v43;
  v40 = v13;
  v21(v43, v13, v8);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v48[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v22;
    v30 = v29;
    v31 = *(v9 + 8);
    v31(v28, v8);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v48);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Received request to refresh upload token, tokenID: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v22, v8);
  }

  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);
  v33 = v42;
  v34 = v47;
  static Message.with(_:)();
  outlined init with copy of UserNotificationCenter(v34 + 168, v48);
  v35 = v41;
  outlined init with copy of Attachment.MMCSMetadata(v33, v41, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v36 = (*(v45 + 80) + 56) & ~*(v45 + 80);
  v37 = swift_allocObject();
  outlined init with take of ContiguousBytes(v48, v37 + 16);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v35, v37 + v36, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  v38 = v40;
  PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(v40, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken(), v37);

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v33, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  return (v31)(v38, v8);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v7 = type metadata accessor for UploadToken(0);
  v5[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[5] = v8;
  v9 = swift_task_alloc();
  v5[6] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v9 = v5;
  v9[1] = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  v11 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, a4, v7, v10, v11);
}

uint64_t closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[5];
  outlined init with copy of Attachment.MMCSMetadata(v1, v0[4], type metadata accessor for UploadToken);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for UploadToken);

  v2 = v0[1];

  return v2();
}

{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(type metadata accessor for AttachmentLedger_AttachmentAuthGetToken(0) - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.requestDownloadToken(for:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.requestDownloadToken(for:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = v0[9];
  v2 = v0[10];

  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v0[26] = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_GetAuthTokenRequest and conformance AttachmentLedger_GetAuthTokenRequest, type metadata accessor for AttachmentLedger_GetAuthTokenRequest, &protocol conformance descriptor for AttachmentLedger_GetAuthTokenRequest);
  static Message.with(_:)();

  static Date.now.getter();
  v6 = v2[24];
  v5 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v6);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  v8 = v0[25];
  v9 = v0[17];

  return AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v9, v8, v6, v5);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  }

  else
  {
    v2 = PluginAttachmentLedgerTopic.requestDownloadToken(for:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v1 = v0[28];
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v3 = v0[24];
  v2 = v0[25];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v2, v3, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315650;
    v11 = PluginAttachmentLedgerTopic.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = Message.debugDescription.getter();
    v16 = v15;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v26);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    v0[7] = v1;
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v26);

    *(v9 + 24) = v21;
    _os_log_impl(&dword_1AEB26000, v6, v7, "%s failed to get authToken for %s, reason: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {
    v22 = v0[24];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v22, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  }

  v23 = v0[25];
  swift_willThrow();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v23, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v24 = v0[1];

  return v24();
}

void *PluginAttachmentLedgerTopic.requestDownloadToken(for:)()
{
  v111 = v0;
  v110 = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + 136) + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_72:
    v2 = &type metadata singleton initialization cache for ActivitySessionManager;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_73;
  }

  v3 = 0;
  v97 = *(*(v0 + 136) + 16);
  v103 = *(v0 + 112);
  v105 = *(v0 + 128);
  v101 = v1 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v4 = *(v0 + 224);
  v98 = *(v1 + 16);
  while (v3 < *(v1 + 16))
  {
    v5 = *(v0 + 128);
    outlined init with copy of Attachment.MMCSMetadata(v101 + *(v103 + 72) * v3, v5, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
    v6 = *v5;
    v7 = *(v105 + 8);
    *(v0 + 232) = UUID.uuid.getter();
    *(v0 + 240) = v8;
    v9 = MEMORY[0x1E69E6290];
    *(v0 + 40) = MEMORY[0x1E69E6290];
    *(v0 + 48) = MEMORY[0x1E6969DF8];
    *(v0 + 16) = v0 + 232;
    *(v0 + 24) = v0 + 248;
    v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = *v10;
    if (*v10 && (v12 = v10[1], v13 = v12 - v11, v12 != v11))
    {
      if (v13 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v109 = v12 - v11;
        memcpy(__dst, v11, v12 - v11);
        v14 = *__dst;
        v15 = v99 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v109 << 16)) << 32);
        v99 = v15;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v25 = __DataStorage.init(bytes:length:)();
        v26 = v25;
        if (v13 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v14 = swift_allocObject();
          *(v14 + 16) = 0;
          *(v14 + 24) = v13;
          v15 = v26 | 0x8000000000000000;
        }

        else
        {
          v14 = v13 << 32;
          v15 = v25 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v16 = v7 >> 62;
    v17 = v15 >> 62;
    if (v7 >> 62 == 3)
    {
      if (v6)
      {
        v18 = 0;
      }

      else
      {
        v18 = v7 == 0xC000000000000000;
      }

      v19 = 0;
      v20 = v18 && v15 >> 62 == 3;
      if (v20 && !v14 && v15 == 0xC000000000000000)
      {
        goto LABEL_83;
      }

LABEL_33:
      if (v17 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v28 = *(v6 + 16);
        v27 = *(v6 + 24);
        v23 = __OFSUB__(v27, v28);
        v19 = v27 - v28;
        if (v23)
        {
          goto LABEL_91;
        }

        goto LABEL_33;
      }

      v19 = 0;
      if (v17 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v16)
    {
      LODWORD(v19) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_92;
      }

      v19 = v19;
      if (v17 <= 1)
      {
LABEL_34:
        if (v17)
        {
          if (__OFSUB__(HIDWORD(v14), v14))
          {
            goto LABEL_89;
          }

          if (v19 == HIDWORD(v14) - v14)
          {
LABEL_42:
            if (v19 < 1)
            {
LABEL_82:
              outlined consume of Data._Representation(v14, v15);
LABEL_83:
              v84 = *(v0 + 168);
              v83 = *(v0 + 176);
              v86 = *(v0 + 152);
              v85 = *(v0 + 160);
              v87 = *(v0 + 144);
              v102 = *(v0 + 200);
              v104 = *(v0 + 136);
              v88 = *(v0 + 120);
              v106 = *(v0 + 128);
              v95 = *(v0 + 64);
              outlined init with copy of Attachment.MMCSMetadata(v106, v88, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
              v89 = *(v86 + 16);
              v89(v84, v83, v87);
              v90 = v88[3];
              v100 = v88[2];
              v89(v85, v84, v87);
              v96 = type metadata accessor for DownloadToken(0);

              Date.init(timeInterval:since:)();
              v91 = *(v86 + 8);
              v91(v84, v87);
              v91(v83, v87);
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v102, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v104, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
              v92 = v88[4];
              v93 = v88[5];

              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v88, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
              *v95 = v100;
              v95[1] = v90;
              v94 = (v95 + *(v96 + 24));
              *v94 = v92;
              v94[1] = v93;
              outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v106, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);

              v82 = *(v0 + 8);
              goto LABEL_84;
            }

            if (v16 > 1)
            {
              if (v16 != 2)
              {
                v29 = v0 + 262;
                *(v0 + 268) = 0;
                *(v0 + 262) = 0;
                goto LABEL_68;
              }

              v30 = *(v6 + 16);
              v2 = *(v6 + 24);
              v31 = __DataStorage._bytes.getter();
              if (v31)
              {
                v32 = __DataStorage._offset.getter();
                if (__OFSUB__(v30, v32))
                {
                  __break(1u);
LABEL_97:
                  __break(1u);
                }

                v31 += v30 - v32;
              }

              if (__OFSUB__(v2, v30))
              {
                goto LABEL_94;
              }

              MEMORY[0x1B270E950]();
              result = closure #1 in static Data.== infix(_:_:)(v31, v14, v15, __dst);
              if (v4)
              {
                return result;
              }

              outlined consume of Data._Representation(v14, v15);
              v1 = v97;
              v2 = v98;
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            else if (v16)
            {
              v2 = v6;
              if (v6 >> 32 < v6)
              {
                goto LABEL_93;
              }

              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v2, v35))
                {
                  goto LABEL_97;
                }

                v34 += v2 - v35;
              }

              MEMORY[0x1B270E950]();
              result = closure #1 in static Data.== infix(_:_:)(v34, v14, v15, __dst);
              v2 = v98;
              if (v4)
              {
                return result;
              }

              outlined consume of Data._Representation(v14, v15);
              v1 = v97;
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            else
            {
              *(v0 + 248) = v6;
              *(v0 + 256) = v7;
              *(v0 + 258) = BYTE2(v7);
              *(v0 + 259) = BYTE3(v7);
              *(v0 + 260) = BYTE4(v7);
              *(v0 + 261) = BYTE5(v7);
              v29 = v0 + 248;
LABEL_68:
              result = closure #1 in static Data.== infix(_:_:)(v29, v14, v15, __dst);
              if (v4)
              {
                return result;
              }

              outlined consume of Data._Representation(v14, v15);
              if (__dst[0])
              {
                goto LABEL_83;
              }
            }

            v4 = 0;
            goto LABEL_4;
          }
        }

        else
        {
          v24 = BYTE6(v15);
LABEL_36:
          if (v19 == v24)
          {
            goto LABEL_42;
          }
        }

        outlined consume of Data._Representation(v14, v15);
        goto LABEL_4;
      }
    }

    else
    {
      v19 = BYTE6(v7);
      if (v17 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    if (v17 == 2)
    {
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      v23 = __OFSUB__(v21, v22);
      v24 = v21 - v22;
      if (v23)
      {
        goto LABEL_90;
      }

      goto LABEL_36;
    }

    if (!v19)
    {
      goto LABEL_82;
    }

LABEL_4:
    ++v3;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v0 + 128), type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
    if (v2 == v3)
    {
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_89:
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
  swift_once();
LABEL_73:
  v37 = *(v0 + 96);
  v36 = *(v0 + 104);
  v38 = *(v0 + 88);
  v39 = *(v0 + 72);
  v107 = type metadata accessor for Logger();
  __swift_project_value_buffer(v107, static Log.attachmentLedgerTopic);
  (*(v37 + 16))(v36, v39, v38);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 96);
  v44 = *(v0 + 104);
  v45 = *(v0 + 88);
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *__dst = v47;
    *v46 = 136315394;
    v48 = PluginAttachmentLedgerTopic.description.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, __dst);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    (*(v43 + 8))(v44, v45);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, __dst);
    v2 = &type metadata singleton initialization cache for ActivitySessionManager;

    *(v46 + 14) = v54;
    _os_log_impl(&dword_1AEB26000, v40, v41, "%s failed to get authToken, no token found for ID: %s in server response.", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v44, v45);
  }

  v55 = *(v0 + 176);
  v57 = *(v0 + 144);
  v56 = *(v0 + 152);
  v58 = *(v0 + 136);
  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
  v59 = swift_allocError();
  *v60 = 4;
  swift_willThrow();
  (*(v56 + 8))(v55, v57);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v58, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
  if (v2[255] != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 192);
  v61 = *(v0 + 200);
  __swift_project_value_buffer(v107, static Log.attachmentLedgerTopic);
  outlined init with copy of Attachment.MMCSMetadata(v61, v62, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v63 = v59;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 192);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *__dst = v68;
    *v67 = 136315650;
    v69 = PluginAttachmentLedgerTopic.description.getter();
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, __dst);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    v72 = Message.debugDescription.getter();
    v74 = v73;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v66, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, __dst);

    *(v67 + 14) = v75;
    *(v67 + 22) = 2080;
    *(v0 + 56) = v59;
    v76 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v77 = String.init<A>(reflecting:)();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, __dst);

    *(v67 + 24) = v79;
    _os_log_impl(&dword_1AEB26000, v64, v65, "%s failed to get authToken for %s, reason: %s", v67, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v68, -1, -1);
    MEMORY[0x1B27120C0](v67, -1, -1);
  }

  else
  {
    v80 = *(v0 + 192);

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v80, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);
  }

  v81 = *(v0 + 200);
  swift_willThrow();
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v81, type metadata accessor for AttachmentLedger_GetAuthTokenRequest);

  v82 = *(v0 + 8);
LABEL_84:

  return v82();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1)
{
  (*(*a1 + 288))(&v17);
  if ((v22 & 0x8000000000000000) == 0 || ((v1 = v19 | v18, v2 = v21 | v23, v22 == 0x8000000000000000) ? (v3 = (v19 | v18 | v17 | v20 | v21 | v23) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v4 = v17;
    v5 = v20;
    v6 = v22;
    result = outlined consume of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v21, v22, v23);
    if (v6 == 0x8000000000000000 && v4 == 1 && !(v1 | v5 | v2))
    {
      return result;
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.attachmentLedgerTopic);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = PluginAttachmentLedgerTopic.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1AEB26000, v9, v10, "Requested downloadToken without being subscribed on %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v16 = 3;
  return swift_willThrow();
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.requestDownloadToken(for:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = 1;
  *(a1 + 8) = 1;
  v4 = *(a2 + 112);
  v3 = *(a2 + 120);

  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AEE07B20;
  v9[0] = UUID.uuid.getter();
  v9[1] = v6;
  *(v5 + 32) = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v9, &v10);
  *(v5 + 40) = v7;

  *(a1 + 32) = v5;
  return result;
}

uint64_t AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:), 0, 0);
}

uint64_t AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)()
{
  v1 = v0[7];
  v2 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v8, v9, v4, v5, v6, v7);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AsyncSerialQueue.performAndWaitFor<A>(_:), 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken(), 0, 0);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  v5 = v0[7];
  v6 = v0[4];

  return AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v5, v6, v3, v2);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  }

  else
  {
    v2 = closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[5];
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0[7] + *(v0[6] + 32), v1, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v2 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
  if (v4 == 1)
  {
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v7[2] = 0;
    v7[3] = 0xE000000000000000;
    v7[4] = 0;
    v7[5] = 0xE000000000000000;
    v7[6] = 0;
    UnknownStorage.init()();
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
    if (v3(v6, 1, v2) != 1)
    {
      outlined destroy of NSObject?(v0[5], &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    }
  }

  else
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[7], type metadata accessor for AttachmentLedger_GetAuthTokenResponse);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, v7, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v20;
  v8[9] = v21;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for Date();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[13] = v10;
  v11 = *(v10 - 8);
  v8[14] = v11;
  v8[15] = *(v11 + 64);
  v8[16] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock.Instant();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v8[19] = *(v13 + 64);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[21] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v8[22] = v14;
  v15 = *(v14 - 8);
  v8[23] = v15;
  v8[24] = *(v15 + 64);
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v16 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v8[27] = v16;
  v17 = *(v16 - 8);
  v8[28] = v17;
  v8[29] = *(v17 + 64);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), 0, 0);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v5 = (v1[3] + *v1[3]);
  v2 = swift_task_alloc();
  v1[34] = v2;
  *v2 = v1;
  v2[1] = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  v3 = v1[33];

  return v5(v3);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  else
  {
    v2 = closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v69 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[5];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.attachmentLedgerTopic);
  v66 = *(v5 + 16);
  v66(v3, v6, v4);
  outlined init with copy of Attachment.MMCSMetadata(v2, v1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  v12 = v0[26];
  if (v10)
  {
    v14 = v0[22];
    v13 = v0[23];
    v15 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68[0] = v67;
    *v15 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v68);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AuthPutMaterials and conformance AttachmentLedger_AuthPutMaterials, type metadata accessor for AttachmentLedger_AuthPutMaterials, &protocol conformance descriptor for AttachmentLedger_AuthPutMaterials);
    v20 = Message.debugDescription.getter();
    v22 = v21;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v68);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v8, v9, "[%s] Received uploadToken, token: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v67, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  else
  {
    v24 = v0[22];
    v25 = v0[23];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v11, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v25 + 8))(v12, v24);
  }

  v26 = v0[35];
  static Task<>.checkCancellation()();
  if (v26)
  {
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[33], type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  else
  {
    v62 = v0[30];
    v63 = v0[31];
    v52 = v0[29];
    v50 = v0[28];
    v65 = v0[25];
    v53 = v0[23];
    v64 = v0[22];
    v28 = v0[20];
    v27 = v0[21];
    v29 = v0[18];
    v31 = v0[16];
    v30 = v0[17];
    v45 = v28;
    v47 = v31;
    v48 = v0[19];
    v32 = v0[14];
    v49 = v0[15];
    v33 = v0[13];
    v46 = v33;
    v56 = v27;
    v57 = v0[11];
    v60 = v0[12];
    v61 = v0[10];
    v54 = v0[33];
    v55 = v0[7];
    v43 = v0[8];
    v44 = v0[5];
    v58 = v0[2];
    v59 = v0[9];
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
    v51 = swift_allocObject();
    swift_weakInit();
    (*(v29 + 16))(v28, v55, v30);
    outlined init with copy of Attachment.MMCSMetadata(v54, v63, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v32 + 16))(v31, v43, v33);
    v66(v65, v44, v64);
    v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v36 = (v48 + *(v50 + 80) + v35) & ~*(v50 + 80);
    v37 = (v52 + *(v32 + 80) + v36) & ~*(v32 + 80);
    v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = (*(v53 + 80) + v38 + 8) & ~*(v53 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    (*(v29 + 32))(v40 + v35, v45, v30);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v63, v40 + v36, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v32 + 32))(v40 + v37, v47, v46);
    *(v40 + v38) = v51;
    (*(v53 + 32))(v40 + v39, v65, v64);
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v56, &async function pointer to partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), v40);

    outlined destroy of NSObject?(v56, &_sScPSgMd, &_sScPSgMR);
    outlined init with copy of Attachment.MMCSMetadata(v54, v62, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    (*(v57 + 16))(v60, v59, v61);
    UploadToken.init(from:requestTime:)(v62, v60, v58);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v54, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  v41 = v0[1];

  return v41();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[26] = v11;
  v8[27] = *(v11 - 8);
  v8[28] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock.Instant();
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:), 0, 0);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)()
{
  ContinuousClock.Instant.advanced(by:)();
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  v2 = type metadata accessor for ContinuousClock();
  v3 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  v4 = *(v0 + 248);
  v5 = *(v0 + 136);

  return MEMORY[0x1EEE6DA68](v4, v0 + 88, v5, v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[30] + 8))(v2[31], v2[29]);
  if (v0)
  {
    v3 = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  else
  {
    v3 = closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v33 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v2 = v0 + 2;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[26];
    v6 = v0[19];
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.attachmentLedgerTopic);
    (*(v3 + 16))(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[27];
    v12 = v0[28];
    v13 = v0[26];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v14 = 136315138;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v11 + 8))(v12, v13);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v32);
      v2 = v0 + 2;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1AEB26000, v8, v9, "[%s] Refresh timer finished, uploadToken expired", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }

    v28 = v0[24];
    v30 = v0[23];
    v26 = v0[25];
    v27 = v0[22];
    v19 = *(v31 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    v21 = v0[20];
    v20 = v0[21];
    v0[6] = partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:);
    v0[7] = v31;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_218;
    v22 = _Block_copy(v2);
    v23 = v19;

    static DispatchQoS.unspecified.getter();
    v0[14] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v26, v27, v22);
    _Block_release(v22);

    (*(v20 + 8))(v27, v21);
    (*(v28 + 8))(v26, v30);
  }

  v24 = v0[1];

  return v24();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PluginAttachmentLedgerTopic.waitForReadyState()()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGGMR);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.waitForReadyState(), 0, 0);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 72) = (*(**(v0 + 88) + 312))();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B270F520](v4, v5);

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = PluginAttachmentLedgerTopic.waitForReadyState();
  v8 = *(v0 + 120);

  return MEMORY[0x1EEE6D8C8](v0 + 16, v8, v6);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = PluginAttachmentLedgerTopic.waitForReadyState();
  }

  else
  {
    v2 = PluginAttachmentLedgerTopic.waitForReadyState();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.waitForReadyState(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[7];
  if (v2 >> 3 == 0xFFFFFFFF)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();

    v4 = v0[1];
LABEL_3:

    return v4();
  }

  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[8];
  if ((v2 & 0x8000000000000000) == 0 || ((v11 = v7 | v6, v12 = v9 | v10, v2 == 0x8000000000000000) ? (v13 = (v7 | v6 | v1 | v8 | v9 | v10) == 0) : (v13 = 0), v13))
  {
    outlined consume of PluginAttachmentLedgerTopic.State?(v1, v6, v7, v8, v9, v2, v10);
  }

  else
  {
    v14 = v0[2];
    v15 = v0[5];
    v16 = v0[7];
    outlined consume of PluginAttachmentLedgerTopic.State?(v1, v6, v7, v8, v9, v2, v10);
    if (v16 == 0x8000000000000000 && v14 == 1 && !(v11 | v15 | v12))
    {
      (*(v0[16] + 8))(v0[17], v0[15]);

      v4 = v0[1];
      goto LABEL_3;
    }
  }

  v17 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PluginAttachmentLedgerTopic.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = PluginAttachmentLedgerTopic.waitForReadyState();
  v19 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v19, v17);
}

{
  *(v0 + 80) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:);

  return PluginAttachmentLedgerTopic.waitForReadyState()();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:), 0, 0);
  }
}

{
  v1 = v0[15];
  v2 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v3 = v0[9];
  v4 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v9 = v0[10];
  v10 = v0[11];
  v0[6] = partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:);
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_278;
  v5 = _Block_copy(v0 + 2);
  v6 = v4;

  static DispatchQoS.unspecified.getter();
  v0[8] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v1, v2, v5);
  _Block_release(v5);

  (*(v10 + 8))(v2, v9);
  (*(v11 + 8))(v1, v12);

  v7 = v0[1];

  return v7();
}

unint64_t PluginAttachmentLedgerTopic.Participant.description.getter()
{
  _StringGuts.grow(_:)(19);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v0);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t PluginAttachmentLedgerTopic.State.description.getter()
{
  v1 = *v0;
  v2 = v0[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      return 0x6E776F6474756853;
    }

    else
    {
      v5 = v0[3];
      v6 = v0[4] | v0[6];
      v7 = v0[2] | v0[1];
      if (v2 != 0x8000000000000000 || v6 | v1 | v5 | v7)
      {
        v8 = v2 == 0x8000000000000000;
        v9 = v6 | v5 | v7;
        v11 = v1 == 1 && v9 == 0;
        if (v8 && v11)
        {
          return 0x7964616552;
        }

        else
        {
          return 0x676E697474756853;
        }
      }

      else
      {
        return 0x676E697472617453;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(21);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v4);

    return 0xD000000000000013;
  }
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors);
  }

  return result;
}

uint64_t outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in SymmetricKey.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = specialized Data.InlineData.init(_:)(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = specialized Data.LargeSlice.init(_:)(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = specialized Data.InlineSlice.init(_:)(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v10 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for AttachmentLedger_GetAuthTokenResponse(0);
  v11 = swift_task_alloc();
  v6[15] = v11;
  v12 = swift_task_alloc();
  v6[16] = v12;
  *v12 = v6;
  v12[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);

  return AttachmentLedgerServiceProvider.getAuthToken(input:)(v11, a2, a5, a6);
}

uint64_t attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v2 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v5 = *(v0[14] + 28);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(v4 + 48);
  LODWORD(v3) = v6(v2, 1, v3);
  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v3 == 1)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[15], v0[2], type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[12];
    v10 = v0[8];
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v5, v9, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
    v11 = v6(v9, 1, v10);
    v12 = v0[12];
    v13 = v0[10];
    if (v11 == 1)
    {
      v14 = v0[8];
      *v13 = 0;
      v13[1] = 0xE000000000000000;
      v13[2] = 0;
      v13[3] = 0;
      UnknownStorage.init()();
      if (v6(v12, 1, v14) != 1)
      {
        outlined destroy of NSObject?(v0[12], &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[12], v13, type metadata accessor for AttachmentLedger_ErrorResponse);
    }

    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
    v16 = v0[4];

    return AttachmentLedger_ErrorResponse.waitForRetryAvailability(previousAttempt:)(v16);
  }
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v2 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  outlined init with copy of Attachment.MMCSMetadata(v0[10], v1, type metadata accessor for AttachmentLedger_ErrorResponse);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:)(v9, v10, v5, v8, v6, v7);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 168) = v0;

  outlined destroy of NSObject?(v2, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  if (v0)
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  else
  {
    v3 = attemptAuthTokenRequest #1 <A>@Sendable (input:previousError:) in AttachmentLedgerServiceProvider.attemptAuthTokenRequest(input:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  v2 = v0[1];

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[15];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_ErrorResponse);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v1, type metadata accessor for AttachmentLedger_GetAuthTokenResponse);

  v2 = v0[1];

  return v2();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1B270E950]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1B270E950]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = specialized Collection.firstIndex(where:)(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B2710B10](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B2710B10](v2, v6);
    v15 = MEMORY[0x1B2710B10](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t outlined copy of PluginAttachmentLedgerTopic.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a6 >> 62 == 1)
  {
  }

  if (!(a6 >> 62))
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t outlined init with copy of Attachment.MMCSMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

NSObject *specialized Attachment.__allocating_init(attachment:dataCryptor:localEncryptionID:config:)(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t a1), uint64_t *a4)
{
  v47 = a2;
  v45 = a3;
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v21 = *a4;
  v22 = a4[1];
  v43 = a4[2];
  v44 = v21;
  v23 = a4[3];
  v24 = a4[4];
  v25 = *a1;
  v26 = a1[1];
  outlined copy of Data._Representation(*a1, v26);
  UUID.init(data:)(v25, v26, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v27 = v47;
    v28 = a1;
    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.attachmentLedgerTopic);
    v30 = a1;
    v31 = v46;
    outlined init with copy of Attachment.MMCSMetadata(v30, v46, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49[0] = v35;
      *v34 = 136315138;
      v36 = Data.description.getter();
      v38 = v37;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v49);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1AEB26000, v32, v33, "Invalid attachmentUUID received %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v28, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v18, v20, v14);
    outlined init with copy of Attachment.MMCSMetadata(a1, v9, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v40 = v47;
    outlined init with copy of UserNotificationCenter(v47, v49);
    v48[0] = v44;
    v48[1] = v22;
    v48[2] = v43;
    v48[3] = v23;
    v48[4] = v24;
    type metadata accessor for Attachment(0);
    swift_allocObject();
    v32 = Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(v18, v9, v49, v45, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    (*(v15 + 8))(v20, v14);
  }

  return v32;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.ServerError and conformance PluginAttachmentLedgerTopic.ServerError);
  }

  return result;
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v0 + v2, v3);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.updateLocalEncryption(for:encryptionSlot:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.uploadTokenRequest.getter(uint64_t a1)
{
  return partial apply for closure #1 in PluginAttachmentLedgerTopic.uploadTokenRequest.getter(a1);
}

{
  *a1 = 0;
  *(a1 + 8) = 1;
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);

  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t outlined consume of PluginAttachmentLedgerTopic.State?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a6 >> 3 != 0xFFFFFFFF)
  {
    return outlined consume of PluginAttachmentLedgerTopic.State(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason and conformance PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State()
{
  result = lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State;
  if (!lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginAttachmentLedgerTopic.State and conformance PluginAttachmentLedgerTopic.State);
  }

  return result;
}

uint64_t type metadata completion function for UploadToken(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for DownloadToken(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PluginAttachmentLedgerTopic(uint64_t a1)
{
  type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>, MEMORY[0x1E69E8698]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AsyncStream<(AttachmentLedger_UpdateAttachmentRequest, CheckedContinuation<AttachmentLedger_UpdateAttachmentResponse, Error>)>.Continuation(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t get_enum_tag_for_layout_string_14CopresenceCore27PluginAttachmentLedgerTopicC5StateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
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

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 8 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PluginAttachmentLedgerTopic.State(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 7 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = xmmword_1AEE0C1F0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.RetryInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for PluginAttachmentLedgerTopic.State.RetryInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata completion function for AttachmentLedgerTopicError(uint64_t a1)
{
  type metadata accessor for (reason: String?)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PluginRpcError(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (reason: String?)()
{
  if (!lazy cache variable for type metadata for (reason: String?))
  {
    type metadata accessor for String?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (reason: String?));
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(v2, v3);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore11UploadTokenVs5Error_pGMd, &_sScCy14CopresenceCore11UploadTokenVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.refreshUploadToken()(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedger_GetAuthTokenRequest(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic._refreshUploadToken()(a1, v1 + 16, v1 + v5);
}

uint64_t partial apply for closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v14 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  type metadata accessor for ContinuousClock();
  type metadata accessor for Date();
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + v4);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(a1, v7, v8, v9, v10, v1 + v14, v11, v1 + v6);
}

uint64_t partial apply for closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ContinuousClock() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(type metadata accessor for UUID() - 8);
  v15 = (v13 + *(v14 + 80) + 8) & ~*(v14 + 80);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + v13);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(a1, v16, v17, v1 + v6, v1 + v9, v1 + v12, v18, v1 + v15);
}

uint64_t outlined copy of Attachment.MMCSMetadata.UploadStatus(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15 && (a3 & 0xF000000000000000) != 0xB000000000000000)
  {
    return outlined copy of Data._Representation(a2, a3);
  }

  return result;
}

uint64_t outlined consume of Attachment.MMCSMetadata.UploadStatus(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15 && (a3 & 0xF000000000000000) != 0xB000000000000000)
  {
    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

void partial apply for closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v9, v10, v1 + v6, v11, v1 + v8);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedger_AuthPutMaterials(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(a1, v1 + v5);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(a1, v4, v5, (v1 + 4), (v1 + 9), v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(a1, v1 + 16, v4);
}

uint64_t partial apply for closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return closure #2 in PluginAttachmentLedgerTopic.addAttachment(_:_:locallyInitiated:)(a1, v4, v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #2 in closure #1 in Attachment.MMCSMetadata.metadata.getter(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  v6 = a1[1];
  v7 = a1[2];
  outlined copy of Data._Representation(v4, v5);
  result = outlined consume of Data._Representation(v6, v7);
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SKPresentDevice.context<A>(as:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-v11];
  v13 = [v5 presencePayloadDictionary];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  (*(a3 + 8))(v14, a2, a3);
  v19 = a2;
  v20 = a3;
  v21 = v5;
  v22 = a2;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in SKPresentDevice.context<A>(as:), v18, MEMORY[0x1E69E73E0], ExtendedExistentialTypeMetadata, v16, x8_0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t PresentDevice.withoutContext()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
  a3[3] = v7;
  a3[4] = lazy protocol witness table accessor for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6(a1, a2);
  v9 = (*(a2 + 24))(a1, a2);
  v11 = v10;
  v12 = (*(a2 + 32))(a1, a2);
  result = (*(a2 + 40))(a1, a2);
  v14 = (boxed_opaque_existential_1 + *(v7 + 28));
  *v14 = v9;
  v14[1] = v11;
  *(boxed_opaque_existential_1 + *(v7 + 32)) = v12 & 1;
  return result;
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AnyPresentDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyPresentDevice.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AnyPresentDevice.handleValue.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t AnyPresentDevice.handleValue.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AnyPresentDevice.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPresentDevice.timestamp.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t AnyPresentDevice.init(id:handleValue:isCurrentDevice:timestamp:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19 = type metadata accessor for AnyPresentDevice(0, a7, v17, v18);
  v20 = (a8 + v19[7]);
  *v20 = a2;
  v20[1] = a3;
  *(a8 + v19[8]) = a4;
  v21 = v19[9];
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 32))(a8 + v21, a5, v22);
  v23 = *(*(a7 - 8) + 32);
  v24 = a8 + v19[10];

  return v23(v24, a6, a7);
}

uint64_t protocol witness for PresentDevice.id.getter in conformance AnyPresentDevice<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for PresentDevice.timestamp.getter in conformance AnyPresentDevice<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyPresentDevice<A>.init(id:handleValue:isCurrentDevice:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
  v14 = (a6 + v13[7]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v13[8]) = a4;
  v15 = v13[9];
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 32);

  return v17(a6 + v15, a5, v16);
}

uint64_t SKPresentDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v36 - v4;
  v40 = type metadata accessor for Date();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = [v1 deviceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.host);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = a1;
    v22 = v21;
    v41 = v21;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2080;
    v23 = [v16 deviceIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Failed to create UUID from SKPresentDevice's deviceIdentifier %@ deviceIdentifier: %s.", v19, 0x16u);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  v28 = v38;
  Date.init()();
  v29 = type metadata accessor for TaskPriority();
  v30 = v39;
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v31 = v37;
  v32 = v40;
  (*(v5 + 16))(v37, v28, v40);
  v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  (*(v5 + 32))(v34 + v33, v31, v32);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in SKPresentDevice.id.getter, v34);

  outlined destroy of NSObject?(v30, &_sScPSgMd, &_sScPSgMR);
  UUID.init()();
  return (*(v5 + 8))(v28, v32);
}

uint64_t closure #1 in SKPresentDevice.id.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = type metadata accessor for Date();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresentDevice.id.getter, 0, 0);
}

uint64_t closure #1 in SKPresentDevice.id.getter()
{
  v49 = v0;
  type metadata accessor for ABCReporter();
  inited = swift_initStackObject();
  v0[16] = inited;
  inited[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  inited[3] = 0x636E795374736146;
  inited[4] = 0xE800000000000000;
  inited[5] = 0x694B737574617453;
  inited[6] = 0xE900000000000074;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = 0x5564696C61766E49;
    v8._object = 0xEB00000000444955;
    v9._countAndFlagsBits = 0xD000000000000019;
    v9._object = 0x80000001AEE32710;
    v10._countAndFlagsBits = v5;
    v10._object = v7;
    v11 = ABCReporter.signature(subType:context:process:)(v9, v8, v10);
    v0[17] = v11;

    if (v11)
    {
      if (one-time initialization token for abcReporter != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Log.abcReporter);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v48 = v16;
        *v15 = 136315138;
        v17 = Dictionary.description.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v48);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1AEB26000, v13, v14, "Reporting signature %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1B27120C0](v16, -1, -1);
        MEMORY[0x1B27120C0](v15, -1, -1);
      }

      v21 = v0[14];
      v20 = v0[15];
      v22 = v0[13];
      Date.init()();
      Date.timeIntervalSince(_:)();
      v24 = v23;
      (*(v21 + 8))(v20, v22);
      v25 = swift_task_alloc();
      v0[18] = v25;
      *(v25 + 16) = inited;
      *(v25 + 24) = v11;
      *(v25 + 32) = v24 + 300.0;
      v26 = swift_task_alloc();
      v0[19] = v26;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      *v26 = v0;
      v26[1] = closure #1 in SKPresentDevice.id.getter;

      return MEMORY[0x1EEE6DDE0](v0 + 11, 0, 0, 0xD000000000000016, 0x80000001AEE32730, partial apply for closure #1 in ABCReporter.report(with:duration:), v25, v27);
    }

    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.abcReporter);
    v29 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1AEB26000, v29, v42, "Failed to convert signature payload", v43, 2u);
      v44 = v43;
LABEL_22:
      MEMORY[0x1B27120C0](v44, -1, -1);

      goto LABEL_23;
    }
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.abcReporter);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315394;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(25705, 0xE200000000000000, &v48);
      *(v31 + 12) = 2080;
      v33 = [v2 mainBundle];
      v34 = [v33 bundleIdentifier];

      if (v34)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v0[9] = v35;
        v0[10] = v37;
        v38 = String.init<A>(reflecting:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE300000000000000;
        v38 = 7104878;
      }

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v48);

      *(v31 + 14) = v45;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Can't report failure on function %s because of missing processName %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v32, -1, -1);
      v44 = v31;
      goto LABEL_22;
    }
  }

LABEL_23:

  v46 = v0[1];

  return v46();
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in SKPresentDevice.id.getter, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SKPresentDevice.handleValue.getter()
{
  v1 = [v0 handle];
  v2 = [v1 handleString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

id SKPresentDevice.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  result = [v2 respondsToSelector_];
  if (result)
  {
    v9 = [v2 performSelector_];
    v10 = v2;
    result = v2;
    if (v9)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();
        (*(v5 + 8))(a1, v4);
        return (*(v5 + 32))(a1, v7, v4);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t SKPresentDevice.context.getter()
{
  v1 = [v0 presencePayloadDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for PresentDevice.handleValue.getter in conformance SKPresentDevice()
{
  v1 = [*v0 handle];
  v2 = [v1 handleString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void protocol witness for PresentDevice.context.getter in conformance SKPresentDevice(uint64_t *a1@<X8>)
{
  v3 = [*v1 presencePayloadDictionary];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
}

uint64_t closure #1 in SKPresentDevice.context<A>(as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SKPresentDevice.id.getter(v14);
  v15 = [a2 handle];
  v16 = [v15 handleString];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = [a2 isSelfDevice];
  SKPresentDevice.timestamp.getter(v11);
  (*(v6 + 16))(v8, v26, a3);
  v22 = type metadata accessor for AnyPresentDevice(0, a3, v20, v21);
  v23 = v27;
  v27[3] = v22;
  v23[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  return AnyPresentDevice.init(id:handleValue:isCurrentDevice:timestamp:context:)(v14, v17, v19, v16, v11, v8, a3, boxed_opaque_existential_1);
}

unint64_t lazy protocol witness table accessor for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>()
{
  result = lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>;
  if (!lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMd, &_s14CopresenceCore16AnyPresentDeviceVyAA20EmptyPresenceContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyPresentDevice<EmptyPresenceContext> and conformance AnyPresentDevice<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in SKPresentDevice.id.getter(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in SKPresentDevice.id.getter(a1, v6, v7, v1 + v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t type metadata completion function for AnyPresentDevice(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyPresentDevice(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v8;
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v7 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v20)
  {
    goto LABEL_34;
  }

  v21 = ((v17 + v18 + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v16)) & ~v18) + *(v14 + 64);
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_13;
  }

  v25 = ((a2 - v20 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v25))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v25 <= 0xFF)
    {
      if (v25 < 2)
      {
        goto LABEL_34;
      }

LABEL_13:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

LABEL_21:
      v26 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v26 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v27 = ((v17 + v18 + ((v16 + ((v15 + 7) & 0xFFFFFFF8) + 17) & ~v16)) & ~v18) + *(v14 + 64);
        }

        else
        {
          v27 = 4;
        }

        if (v27 > 2)
        {
          if (v27 == 3)
          {
            v28 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v28 = *a1;
          }
        }

        else if (v27 == 1)
        {
          v28 = *a1;
        }

        else
        {
          v28 = *a1;
        }
      }

      else
      {
        v28 = 0;
      }

      return v20 + (v28 | v26) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  if (v8 == v20)
  {
    v29 = *(v7 + 48);
    v30 = a1;
    v31 = v8;
    v13 = v6;
LABEL_36:

    return v29(v30, v31, v13);
  }

  v32 = (a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v19 & 0x80000000) != 0)
  {
    if (v11 != v20)
    {
      v29 = *(v14 + 48);
      v30 = ((((v32 + v16 + 17) & ~v16) + v17 + v18) & ~v18);
      v31 = *(v14 + 84);
      goto LABEL_36;
    }

    v34 = *(v10 + 48);

    return v34((v32 + v16 + 17) & ~v16);
  }

  else
  {
    v33 = *(v32 + 8);
    if (v33 >= 0xFFFFFFFF)
    {
      LODWORD(v33) = -1;
    }

    return (v33 + 1);
  }
}

void storeEnumTagSinglePayload for AnyPresentDevice(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  v22 = *(v16 + 64);
  if (v14 <= v17)
  {
    v23 = *(v16 + 84);
  }

  else
  {
    v23 = v14;
  }

  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v23;
  }

  v25 = ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22;
  if (a3 <= v24)
  {
    v26 = 0;
  }

  else if (v25 <= 3)
  {
    v29 = ((a3 - v24 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v29))
    {
      v26 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v24 < a2)
  {
    v27 = ~v24 + a2;
    if (v25 < 4)
    {
      v28 = (v27 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v27 & ~(-1 << (8 * v25));
        bzero(a1, ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&a1[v25] = v28;
              }

              else
              {
                *&a1[v25] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, ((v20 + v21 + ((v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v19)) & ~v21) + v22);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v25] = 0;
  }

  else if (v26)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v24)
  {
    v32 = *(v9 + 56);
    v33 = a1;
    v34 = a2;
    v35 = v10;
    v15 = v8;
LABEL_39:

    v32(v33, v34, v35, v15);
    return;
  }

  v36 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v23 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v36 = a2 & 0x7FFFFFFF;
      v36[1] = 0;
    }

    else
    {
      v36[1] = (a2 - 1);
    }

    return;
  }

  if (v13 != v24)
  {
    v32 = *(v16 + 56);
    v33 = ((((v36 + v19 + 17) & ~v19) + v20 + v21) & ~v21);
    v34 = a2;
    v35 = v17;
    goto LABEL_39;
  }

  v37 = *(v12 + 56);

  v37((v36 + v19 + 17) & ~v19, a2);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t specialized tryLog<A>(_:_:function:line:)@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
}

uint64_t specialized tryLog<A>(_:_:function:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = specialized tryLog<A>(_:_:function:line:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, implicit closure #1 in static CPApplicationController.lookupDefinedSystemActivityIdentifiers(for:));

  return v9;
}

uint64_t tryLog<A>(_:_:function:line:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  a1();
  v4 = *(*(a3 - 8) + 56);

  return v4(a2, 0, 1, a3);
}

unint64_t lazy protocol witness table accessor for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder()
{
  result = lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder;
  if (!lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticActivityLoader.StaticActivityPlaceholder and conformance StaticActivityLoader.StaticActivityPlaceholder);
  }

  return result;
}

id AuthorizationRequestOverrides.__allocating_init(promptCondition:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v8 = 0;
  v8[1] = 0;
  v3[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v4;
  v3[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

CopresenceCore::AuthorizationRequestOverrides::PromptCondition_optional __swiftcall AuthorizationRequestOverrides.PromptCondition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AuthorizationRequestOverrides.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_title);

  return v1;
}

uint64_t AuthorizationRequestOverrides.message.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_message);

  return v1;
}

uint64_t AuthorizationRequestOverrides.startForEveryone.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone);

  return v1;
}

uint64_t AuthorizationRequestOverrides.startForMe.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe);

  return v1;
}

uint64_t AuthorizationRequestOverrides.promptCondition.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AuthorizationRequestOverrides.promptCondition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AuthorizationRequestOverrides.confirmReplacement.getter()
{
  v1 = OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorizationRequestOverrides.confirmReplacement.setter(char a1)
{
  v3 = OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AuthorizationRequestOverrides.__allocating_init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = *a9;
  v20 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v18[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v23 = a7;
  v23[1] = a8;
  v18[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v19;
  v18[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = a10;
  v26.receiver = v18;
  v26.super_class = v10;
  return objc_msgSendSuper2(&v26, sel_init);
}

id AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char a10)
{
  v11 = *a9;
  v12 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v12 = a1;
  v12[1] = a2;
  v13 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v13 = a3;
  v13[1] = a4;
  v14 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v14 = a5;
  v14[1] = a6;
  v15 = &v10[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v15 = a7;
  v15[1] = a8;
  v10[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v11;
  v10[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = a10;
  v17.receiver = v10;
  v17.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v17, sel_init);
}

id AuthorizationRequestOverrides.init(promptCondition:)(char *a1)
{
  v2 = *a1;
  v3 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v2;
  v1[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t AuthorizationRequestOverrides.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v22);
  if (!v22[3])
  {
    outlined destroy of Any?(v22);
    goto LABEL_39;
  }

  type metadata accessor for AuthorizationRequestOverrides();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v19 = 0;
    return v19 & 1;
  }

  v2 = v21;
  v3 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  v4 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title) == *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_title) && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v4)
  {
    goto LABEL_38;
  }

  v6 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  v7 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_38;
    }

    v8 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message) == *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_message) && v6 == v7;
    if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v7)
  {
    goto LABEL_38;
  }

  v9 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
  v10 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8);
  if (v9)
  {
    if (!v10 || (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone) != *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v10)
  {
    goto LABEL_38;
  }

  v11 = *(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8);
  v12 = *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v12 || (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe) != *(v21 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v22);
  v15 = LOBYTE(v22[0]);
  v16 = (*((*v13 & *v21) + 0x80))(&v21, v14);
  if (v15 != v21)
  {
    goto LABEL_38;
  }

  v17 = (*((*v13 & *v1) + 0x98))(v16);
  v18 = (*((*v13 & *v2) + 0x98))();

  v19 = v17 ^ v18 ^ 1;
  return v19 & 1;
}

Swift::Int AuthorizationRequestOverrides.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  if (*(v2 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8))
  {
    Hasher._combine(_:)(1u);
    v3 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))(&v8, v3);
  v5 = MEMORY[0x1B27111E0](v8);
  v6 = (*((*v4 & *v2) + 0x98))(v5);
  Hasher._combine(_:)(v6 & 1);
  return Hasher.finalize()();
}

id AuthorizationRequestOverrides.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized AuthorizationRequestOverrides.init(coder:)(a1);

  return v4;
}

id AuthorizationRequestOverrides.init(coder:)(void *a1)
{
  v2 = specialized AuthorizationRequestOverrides.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall AuthorizationRequestOverrides.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title + 8))
  {
    v3 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_title));
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1B270FF70](0x656C746974, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message + 8))
  {
    v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_message));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](0x6567617373656DLL, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone + 8))
  {
    v7 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1B270FF70](0xD000000000000010, 0x80000001AEE327C0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe + 8))
  {
    v9 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe));
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1B270FF70](0x726F467472617473, 0xEA0000000000654DLL);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(&v16);
  v12 = v16;
  v13 = MEMORY[0x1B270FF70](0x6F4374706D6F7270, 0xEF6E6F697469646ELL);
  [(objc_class *)with.super.isa encodeInteger:v12 forKey:v13];

  v14 = (*((*v11 & *v1) + 0x98))();
  v15 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE327E0);
  [(objc_class *)with.super.isa encodeBool:v14 & 1 forKey:v15];
}

id AuthorizationRequestOverrides.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthorizationRequestOverrides.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized AuthorizationRequestOverrides.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSString();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
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

  v9 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_title];
  *v9 = v6;
  v9[1] = v8;
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_message];
  *v15 = v12;
  v15[1] = v14;
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
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

  v21 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_startForEveryone];
  *v21 = v18;
  v21[1] = v20;
  v22 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = &v2[OBJC_IVAR___CPAuthorizationRequestOverrides_startForMe];
  *v27 = v24;
  v27[1] = v26;
  v28 = MEMORY[0x1B270FF70](0x6F4374706D6F7270, 0xEF6E6F697469646ELL);
  v29 = [a1 decodeIntegerForKey_];

  v30 = v29 == 1;
  if (v29 == 2)
  {
    v30 = 2;
  }

  v2[OBJC_IVAR___CPAuthorizationRequestOverrides_promptCondition] = v30;
  v31 = MEMORY[0x1B270FF70](0xD000000000000012, 0x80000001AEE327E0);
  v32 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPAuthorizationRequestOverrides_confirmReplacement] = v32;
  v34.receiver = v2;
  v34.super_class = type metadata accessor for AuthorizationRequestOverrides();
  return objc_msgSendSuper2(&v34, sel_init);
}

unint64_t lazy protocol witness table accessor for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition()
{
  result = lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition;
  if (!lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationRequestOverrides.PromptCondition and conformance AuthorizationRequestOverrides.PromptCondition);
  }

  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

id CPAudioRoutePolicyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CPAudioRoutePolicyManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static CPAudioRoutePolicyManager.shared;

  return v1;
}

uint64_t CPAudioRoutePolicyManager.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPAudioRoutePolicyManager_observers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void (*CPAudioRoutePolicyManager.pickedRoute.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return CPAudioRoutePolicyManager.pickedRoute.modify;
}

void CPAudioRoutePolicyManager.pickedRoute.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CPAudioRoutePolicyManager.pickedRoute.setter(v2);
  }

  else
  {
    CPAudioRoutePolicyManager.pickedRoute.setter(*a1);
  }
}

char *CPAudioRoutePolicyManager.init()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = type metadata accessor for DispatchQoS();
  v5 = *(v26[0] - 8);
  MEMORY[0x1EEE9AC00](v26[0]);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___CPAudioRoutePolicyManager_observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore16DelegatesManagerCySo26CPAudioPolicyStateObserver_pGMd, &_s14CopresenceCore16DelegatesManagerCySo26CPAudioPolicyStateObserver_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Lock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  *(v9 + 24) = v10;
  *&v0[v8] = v9;
  v12 = OBJC_IVAR___CPAudioRoutePolicyManager__pickedRoute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo7TURouteCSgSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySo7TURouteCSgSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 routeController];

  *&v0[OBJC_IVAR___CPAudioRoutePolicyManager_routeController] = v16;
  v17 = type metadata accessor for CPAudioRoutePolicyManager();
  v28.receiver = v0;
  v28.super_class = v17;
  v18 = objc_msgSendSuper2(&v28, sel_init);
  v19 = [v14 sharedInstance];
  v20 = [v19 queue];

  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  aBlock[4] = partial apply for closure #1 in CPAudioRoutePolicyManager.init();
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  static DispatchQoS.unspecified.getter();
  v26[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v22);
  _Block_release(v22);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v26[0]);

  v24 = *&v23[OBJC_IVAR___CPAudioRoutePolicyManager_routeController];
  [v24 addDelegate_];

  return v23;
}

void closure #1 in CPAudioRoutePolicyManager.init()(void *a1)
{
  v2 = [*(a1 + OBJC_IVAR___CPAudioRoutePolicyManager_routeController) pickedRoute];
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x88);
    v4 = v2;
    v5 = v2;
    v3(v4);
  }
}

Swift::Void __swiftcall CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 queue];

  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v12, v5, v2, v16);
  _Block_release(v16);

  (*(v21 + 8))(v2, v0);
  (*(v19 + 8))(v5, v20);
  v17(v12, v18);
}

void closure #1 in CPAudioRoutePolicyManager.switchToSpeakerRouteIfNecessary()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x98))() & 1) == 0)
    {
      v3 = OBJC_IVAR___CPAudioRoutePolicyManager_routeController;
      v4 = [*&v2[OBJC_IVAR___CPAudioRoutePolicyManager_routeController] speakerRoute];
      if (v4)
      {
        v5 = v4;
        v6 = *&v2[v3];
        [v6 pickRoute_];
      }
    }
  }
}

uint64_t CPAudioRoutePolicyManager.addObserver(_:queue:)(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  (*(*v5 + 160))(a1, a2);
}

id CPAudioRoutePolicyManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPAudioRoutePolicyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CPAudioRoutePolicyManager.routesChanged(for:)(void *a1)
{
  v2 = [a1 pickedRoute];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);

  return v3(v2);
}

uint64_t static ActivitySessionInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ActivitySessionInterface.identity;
  return result;
}

uint64_t static ActivitySessionInterface.identity.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ActivitySessionInterface.identity = v1;
  return result;
}

id one-time initialization function for hostObjectInterface()
{
  result = closure #1 in variable initialization expression of static ActivitySessionInterface.hostObjectInterface();
  static ActivitySessionInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static ConversationManagerInterface.hostObjectInterface();
  static ConversationManagerInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static PresenceSessionInterface.hostObjectInterface();
  static PresenceSessionInterface.hostObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.hostObjectInterface();
  static BackgroundSessionManagerInterface.hostObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivitySessionInterface.hostObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  CPDataCryptorClass();
  *(inited + 32) = swift_getObjCClassMetadata();
  *(inited + 40) = type metadata accessor for SimulatedDataCryptor(0);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_joinWithAudioSessionID_completion_ argumentIndex:0 ofReply:1];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v6 + 32) = v44;
  v43 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *(v6 + 40) = v43;
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_requestEncryptionKeysFor_ argumentIndex:0 ofReply:0];

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AEE07B10;
  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  *(v11 + 32) = v12;
  *(v11 + 40) = type metadata accessor for ParticipantTranslationRequest();
  specialized _arrayForceCast<A, B>(_:)(v11);
  swift_setDeallocating();
  v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v16 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v16 forSelector:sel_requestParticipantTranslationsFor_completion_ argumentIndex:0 ofReply:0];

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AEE07B10;
  *(v17 + 32) = v12;
  *(v17 + 40) = type metadata accessor for ParticipantTranslationResponse();
  specialized _arrayForceCast<A, B>(_:)(v17);
  swift_setDeallocating();
  v18 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v21 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v21 forSelector:sel_requestParticipantTranslationsFor_completion_ argumentIndex:0 ofReply:1];

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AEE07B10;
  *(v22 + 32) = v44;
  *(v22 + 40) = type metadata accessor for GroupActivityAssociation();
  specialized _arrayForceCast<A, B>(_:)(v22);
  swift_setDeallocating();
  v23 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v26 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v26 forSelector:sel_setGroupActivityAssociations_ argumentIndex:0 ofReply:0];

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AEE07B10;
  *(v27 + 32) = v12;
  *(v27 + 40) = v43;
  specialized _arrayForceCast<A, B>(_:)(v27);
  swift_setDeallocating();
  v28 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  v30 = [v28 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v31 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v31 forSelector:sel_sendResourceAtURL_to_metadata_completion_ argumentIndex:1 ofReply:0];

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AEE07B10;
  *(v32 + 32) = v44;
  *(v32 + 40) = type metadata accessor for TUExternalParticipant();
  specialized _arrayForceCast<A, B>(_:)(v32);
  swift_setDeallocating();
  v33 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v33 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v36 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v36 forSelector:sel_updateParticipantsInfoFor_ argumentIndex:0 ofReply:0];

  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AEE07B30;
  *(v37 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v37 + 40) = v44;
  *(v37 + 48) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v37 + 56) = v43;
  specialized _arrayForceCast<A, B>(_:)(v37);
  swift_setDeallocating();
  v38 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = [v38 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v41 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v41 forSelector:sel_addAnalyticsReport_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static ActivitySessionInterface.hostObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

id one-time initialization function for clientObjectInterface()
{
  result = closure #1 in variable initialization expression of static ActivitySessionInterface.clientObjectInterface();
  static ActivitySessionInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static ConversationManagerInterface.clientObjectInterface();
  static ConversationManagerInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static PresenceSessionInterface.clientObjectInterface();
  static PresenceSessionInterface.clientObjectInterface = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static BackgroundSessionManagerInterface.clientObjectInterface();
  static BackgroundSessionManagerInterface.clientObjectInterface = result;
  return result;
}

id closure #1 in variable initialization expression of static ActivitySessionInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  CPDataCryptorClass();
  *(inited + 32) = swift_getObjCClassMetadata();
  *(inited + 40) = type metadata accessor for SimulatedDataCryptor(0);
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_setDataCryptor_ argumentIndex:0 ofReply:0];

  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AEE07B10;
  *(v6 + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v6 + 40) = type metadata accessor for TUExternalParticipant();
  specialized _arrayForceCast<A, B>(_:)(v6);
  swift_setDeallocating();
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v10 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v10 forSelector:sel_setExternalParticipants_ argumentIndex:0 ofReply:0];

  return v0;
}

id static ActivitySessionInterface.hostObjectInterface.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void static ActivitySessionInterface.hostObjectInterface.setter(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static ActivitySessionInterface.clientObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.terminatingHandle.modify;
}

id key path getter for static ActivitySessionInterface.hostObjectInterface : ActivitySessionInterface.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a2;
  *a4 = *a2;

  return v6;
}

void key path setter for static ActivitySessionInterface.hostObjectInterface : ActivitySessionInterface.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6, uint64_t a7)
{
  v8 = *a5;
  v9 = *a1;
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = *a6;
  *a6 = v9;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance ActivitySessionInterface@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ActivitySessionInterface.identity;
  return result;
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance ActivitySessionInterface(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a4;

  return v6;
}

uint64_t BackgroundSessionCreationRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BackgroundSessionCreationRequest.__allocating_init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  *&v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = a2;
  *&v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = a3;
  v17 = &v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v17 = a4;
  v17[1] = a5;
  v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = a6;
  v13[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = a7;
  v22.receiver = v13;
  v22.super_class = v7;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  (*(v16 + 8))(a1, v15);
  return v18;
}

id BackgroundSessionCreationRequest.init(id:activitySessionRequest:members:localMember:isCrossAccount:requiresParticipantHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v14 = OBJC_IVAR___CPBackgroundSessionCreationRequest_id;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a1, v15);
  *&v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest] = a2;
  *&v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_members] = a3;
  v17 = &v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_localMember];
  *v17 = a4;
  v17[1] = a5;
  v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount] = a6;
  v7[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles] = a7;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for BackgroundSessionCreationRequest(0);
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v16 + 8))(a1, v15);
  return v18;
}

uint64_t type metadata accessor for BackgroundSessionCreationRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for BackgroundSessionCreationRequest;
  if (!type metadata singleton initialization cache for BackgroundSessionCreationRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BackgroundSessionCreationRequest.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v12);
  if (v13)
  {
    type metadata accessor for BackgroundSessionCreationRequest(0);
    if (swift_dynamicCast())
    {
      if (static UUID.== infix(_:_:)())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        v2 = v1;
        v3 = *&v11[OBJC_IVAR___CPBackgroundSessionCreationRequest_activitySessionRequest];
        v4 = static NSObject.== infix(_:_:)();

        if (v4)
        {
          v5 = *(v1 + OBJC_IVAR___CPBackgroundSessionCreationRequest_members);
          v6 = *&v11[OBJC_IVAR___CPBackgroundSessionCreationRequest_members];

          LOBYTE(v5) = _sSh2eeoiySbShyxG_ABtFZSo8TUHandleC_Tt1g5(v5, v6);

          if ((v5 & 1) != 0 && (TUObjectsAreEqualOrNil() & 1) != 0 && *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount) == v11[OBJC_IVAR___CPBackgroundSessionCreationRequest_isCrossAccount])
          {
            v9 = *(v2 + OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles);
            v10 = v11[OBJC_IVAR___CPBackgroundSessionCreationRequest_requiresParticipantHandles];

            v7 = v9 ^ v10 ^ 1;
            return v7 & 1;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  v7 = 0;
  return v7 & 1;
}