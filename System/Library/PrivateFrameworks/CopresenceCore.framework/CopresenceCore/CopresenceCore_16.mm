void CP_SubscribeResponse.initializeAck.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.record.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v5, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_Record);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_1AEE0C200;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v9 = type metadata accessor for CP_Record(0);
  UnknownStorage.init()();
  v10 = *(v9 + 36);
  v11 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = *(v9 + 40);
  v13 = type metadata accessor for CP_EncryptionID(0);
  return (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
}

uint64_t key path setter for CP_SubscribeResponse.record : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_Record);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_Record);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_SubscribeResponse.record.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_Record);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_SubscribeResponse.record.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for CP_Record(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = xmmword_1AEE0C200;
    *(v13 + 32) = MEMORY[0x1E69E7CC0];
    *(v13 + 40) = 0;
    UnknownStorage.init()();
    v16 = *(v10 + 36);
    v17 = type metadata accessor for CP_SequenceNumber(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 40);
    v19 = type metadata accessor for CP_EncryptionID(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return CP_SubscribeResponse.record.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_Record);
  return CP_SubscribeResponse.record.modify;
}

void CP_SubscribeResponse.record.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_Record);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_Record);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.topicUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v9 - v5, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for CP_SubscribeResponse.topicUpdate : CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  v7 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_SubscribeResponse.topicUpdate.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  v3 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_SubscribeResponse.TopicUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  return UnknownStorage.init()();
}

void (*CP_SubscribeResponse.topicUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for CP_SubscribeResponse.TopicUpdate(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1, v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v12 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    UnknownStorage.init()();
    return CP_SubscribeResponse.topicUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v8, v11, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  return CP_SubscribeResponse.topicUpdate.modify;
}

void CP_SubscribeResponse.topicUpdate.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.otherSubscriberParticipantIds.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.metadata.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.topicCatchupSummary.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 44), v5, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v5, a1, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v9;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.topicCatchupSummary : CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 44), v6, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v10;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.topicCatchupSummary : CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v8 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2 + v8, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.topicCatchupSummary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t CP_TopicSubscribers.init()@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a3 = a1;
  a3[1] = v4;
  a2(0);
  return UnknownStorage.init()();
}

void (*CP_SubscribeResponse.InitializeAck.topicCatchupSummary.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = 0;
    v14[1] = v17;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  }

  return CP_SubscribeResponse.InitializeAck.topicCatchupSummary.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.hasTopicCatchupSummary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v4 + 44), v3, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  return v6;
}

Swift::Void __swiftcall CP_SubscribeResponse.InitializeAck.clearTopicCatchupSummary()()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 44);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v2 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.missingEncryptionIds.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.subscriberSeqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 48), v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v7 = type metadata accessor for CP_SequenceNumber(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v5, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.subscriberSeqNum : CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 48), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.subscriberSeqNum : CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SequenceNumber);
  v8 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2 + v8, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.subscriberSeqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CP_SubscribeResponse.InitializeAck.subscriberSeqNum.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_Record.seqNum.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.hasSubscriberSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v4 + 48), v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v5 = type metadata accessor for CP_SequenceNumber(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of NSObject?(v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  return v6;
}

Swift::Void __swiftcall CP_SubscribeResponse.InitializeAck.clearSubscriberSeqNum()()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 48);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v2 = type metadata accessor for CP_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.otherSaltVerifiedSubscriberParticipantIds.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_SubscribeResponse.InitializeAck.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CP_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_Record.encryptionID.modify;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t CP_Record.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CP_Record.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent(uint64_t a1, uint64_t a2)
{
  updated = lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();

  return MEMORY[0x1EEE15710](a1, a2, updated);
}

uint64_t CP_PublishRequest.record.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v14 - v5, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = xmmword_1AEE0C200;
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    *(a1 + 40) = 0;
    v8 = type metadata accessor for CP_Record(0);
    UnknownStorage.init()();
    v9 = *(v8 + 36);
    v10 = type metadata accessor for CP_SequenceNumber(0);
    (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
    v11 = *(v8 + 40);
    v12 = type metadata accessor for CP_EncryptionID(0);
    return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    goto LABEL_5;
  }

  return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_Record);
}

uint64_t key path setter for CP_PublishRequest.record : CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_Record);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_Record);
  v7 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_PublishRequest.record.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_Record);
  v3 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*CP_PublishRequest.record.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for CP_Record(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_Record);
      return CP_PublishRequest.record.modify;
    }

    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  }

  *v13 = 0;
  *(v13 + 8) = 0xE000000000000000;
  *(v13 + 16) = xmmword_1AEE0C200;
  *(v13 + 32) = MEMORY[0x1E69E7CC0];
  *(v13 + 40) = 0;
  UnknownStorage.init()();
  v16 = *(v10 + 36);
  v17 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  v18 = *(v10 + 40);
  v19 = type metadata accessor for CP_EncryptionID(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  return CP_PublishRequest.record.modify;
}

void CP_PublishRequest.record.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_Record);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_Record);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_PublishRequest.updatedEncryptionID.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, &v12 - v5, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v7 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of CP_SequenceNumber(v6, a1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    }

    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v9 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  UnknownStorage.init()();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for CP_EncryptionID(0);
  return (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
}

uint64_t key path setter for CP_PublishRequest.updatedEncryptionID : CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v6, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  outlined destroy of NSObject?(a2, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v7 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t CP_PublishRequest.updatedEncryptionID.setter(uint64_t a1)
{
  outlined destroy of NSObject?(v1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  v3 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*CP_PublishRequest.updatedEncryptionID.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2, v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v14 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    UnknownStorage.init()();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for CP_EncryptionID(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return CP_PublishRequest.updatedEncryptionID.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    goto LABEL_15;
  }

  outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  return CP_PublishRequest.updatedEncryptionID.modify;
}

void CP_PublishRequest.updatedEncryptionID.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber((*a1)[3], v5, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v5, v8, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  }

  else
  {
    outlined destroy of NSObject?(**a1, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v6, v8, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.getter@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + *(v8 + 24), v7, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v9 = type metadata accessor for CP_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v7, a2, type metadata accessor for CP_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : CP_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = a2(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v9 + 24), v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v10 = type metadata accessor for CP_EncryptionID(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v8, a3, type metadata accessor for CP_EncryptionID);
  }

  *a3 = xmmword_1AEE0C200;
  UnknownStorage.init()();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID : CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for CP_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v11, type metadata accessor for CP_EncryptionID);
  v12 = *(a5(0) + 24);
  outlined destroy of NSObject?(a2 + v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(v11, a2 + v12, type metadata accessor for CP_EncryptionID);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.encryptionID.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of NSObject?(v2 + v4, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v2 + v4, type metadata accessor for CP_EncryptionID);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

void (*CP_PublishRequest.UpdatedEncryptionID.encryptionID.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CP_EncryptionID(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_EncryptionID);
  }

  return CP_PublishRequest.UpdatedEncryptionID.encryptionID.modify;
}

BOOL CP_SubscribeResponse.InitializeAck.MissingEncryptionID.hasEncryptionID.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = a1(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 24), v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  outlined destroy of NSObject?(v5, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  return v8;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.clearEncryptionID()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of NSObject?(v1 + v2, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v3 = type metadata accessor for CP_EncryptionID(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t CP_PublishResponse.status.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CP_PublishResponse.error.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CP_PublishResponse.error.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CP_PublishResponse.seqNumAck.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v6 + 28), v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v7 = type metadata accessor for CP_SequenceNumber(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v5, a1, type metadata accessor for CP_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path getter for CP_PublishResponse.seqNumAck : CP_PublishResponse@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v7 + 28), v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v6, a2, type metadata accessor for CP_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_PublishResponse.seqNumAck : CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_SequenceNumber);
  v8 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2 + v8, type metadata accessor for CP_SequenceNumber);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t CP_PublishResponse.seqNumAck.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_SequenceNumber);
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CP_PublishResponse.seqNumAck.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CP_SequenceNumber(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_PublishResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_SequenceNumber);
  }

  return CP_PublishResponse.seqNumAck.modify;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a1(0);
  return UnknownStorage.init()();
}

uint64_t CP_UpsertTopicMetadataResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for CP_UpsertTopicMetadataResponse(0);
  return UnknownStorage.init()();
}

uint64_t CP_CreateTopicRequest.participantIdsalt.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CP_CreateTopicRequest.participantIdsalt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CP_CreateTopicRequest.topicCategory.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CP_ResponseStatus@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CP_ResponseStatus@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicRequest.TopicCategory(uint64_t a1, uint64_t a2)
{
  Topic = lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory();

  return MEMORY[0x1EEE15710](a1, a2, Topic);
}

uint64_t CP_CreateTopicRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  type metadata accessor for CP_CreateTopicRequest(0);
  return UnknownStorage.init()();
}

uint64_t CP_CreateTopicResponse.topicConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(TopicResponse + 28), v5, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v8 = *(*(Topic - 8) + 48);
  if (v8(v5, 1, Topic) != 1)
  {
    return outlined init with take of CP_SequenceNumber(v5, a1, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  }

  *(a1 + 28) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  UnknownStorage.init()();
  result = (v8)(v5, 1, Topic);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v5, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  }

  return result;
}

uint64_t key path setter for CP_CreateTopicResponse.topicConfig : CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  MEMORY[0x1EEE9AC00](Topic);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CP_SequenceNumber(a1, v7, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  v8 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(a2 + v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with take of CP_SequenceNumber(v7, a2 + v8, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  return (*(v5 + 56))(a2 + v8, 0, 1, Topic);
}

uint64_t CP_CreateTopicResponse.topicConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with take of CP_SequenceNumber(a1, v1 + v3, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(*(Topic - 8) + 56);

  return v5(v1 + v3, 0, 1, Topic);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.init()@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 28) = 0u;
  return UnknownStorage.init()();
}

void (*CP_CreateTopicResponse.topicConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5[2] = Topic;
  v10 = *(Topic - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CP_CreateTopicResponse(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Topic) == 1)
  {
    *(v14 + 28) = 0u;
    *v14 = 0u;
    v14[1] = 0u;
    UnknownStorage.init()();
    if (v16(v8, 1, Topic) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v8, v14, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  }

  return CP_CreateTopicResponse.topicConfig.modify;
}

void CP_Record.seqNum.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CP_SequenceNumber(v12, v11, a5);
    outlined destroy of NSObject?(v15 + v10, a3, a4);
    outlined init with take of CP_SequenceNumber(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CP_SequenceNumber(v12, a6);
  }

  else
  {
    outlined destroy of NSObject?(v15 + v10, a3, a4);
    outlined init with take of CP_SequenceNumber(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL CP_PublishResponse.hasSeqNumAck.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of NSObject?(v11, a1, a2);
  return v14;
}

uint64_t CP_PublishResponse.clearSeqNumAck()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of NSObject?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_PublishResponse.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  v5 = a1(0);
  UnknownStorage.init()();
  v6 = *(v5 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t CP_FetchTopicsRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CP_FetchTopicsRequest.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CP_FetchTopicsResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CP_FetchTopicsResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CP_FetchTopicsResponse(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CP_FetchTopicsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CP_FetchTopicsResponse(0);
  return UnknownStorage.init()();
}

uint64_t CP_Record.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
          break;
        case 5:
          closure #5 in CP_Record.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_Record);
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          break;
        case 3:
          closure #3 in CP_Record.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t closure #3 in CP_Record.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CP_Record(0);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v11 = v3[2];
    v12 = v3[3];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = closure #1 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (!v4)
          {
            if (*(v3[4] + 16))
            {
              dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
            }

            closure #2 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_Record, 5);
            if (v3[5])
            {
              dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
            }

            type metadata accessor for CP_Record(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }

          return result;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t closure #1 in CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CP_Record(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 36), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v7, v11, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.init() in conformance CP_Record@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_1AEE0C200;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 40) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for CP_SequenceNumber(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for CP_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_Record(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_Record(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_KeyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t CP_KeyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_14;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_13;
    }

LABEL_14:
    type metadata accessor for CP_KeyValue(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_KeyValue(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_KeyValue(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_KeyValue(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_SequenceNumber.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t CP_SequenceNumber.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_SequenceNumber(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_SequenceNumber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for CP_SequenceNumber(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_SequenceNumber@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SequenceNumber(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SequenceNumber(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_EncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for CP_EncryptionID(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static CP_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for CP_EncryptionID(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_EncryptionID(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0D13TerminatedAckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV0d11TerminationF0VSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for CP_TopicSubscribersRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_TopicSubscribersRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest and conformance CP_TopicSubscribersRequest, type metadata accessor for CP_TopicSubscribersRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribersRequest.TopicTerminatedAck.protoMessageName;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminatedAck and conformance CP_TopicSubscribersRequest.TopicTerminatedAck, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminatedAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribersRequest.TopicTerminationRequest.protoMessageName;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminationRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribersRequest.TopicTerminationRequest@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribersRequest.TopicTerminationRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribersRequest.TopicTerminationRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest and conformance CP_TopicSubscribersRequest.TopicTerminationRequest, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest, &protocol conformance descriptor for CP_TopicSubscribersRequest.TopicTerminationRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_TopicSubscribers.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CP_TopicSubscribers.TerminateTopic(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic, &protocol conformance descriptor for CP_TopicSubscribers.TerminateTopic);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, &protocol conformance descriptor for CP_TopicSubscribers.TopicSubscribersInfo);
LABEL_5:
    v3 = v6;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t CP_TopicSubscribers.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, &protocol conformance descriptor for CP_TopicSubscribers.TopicSubscribersInfo), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for CP_TopicSubscribers.TerminateTopic(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic, &protocol conformance descriptor for CP_TopicSubscribers.TerminateTopic), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_TopicSubscribers(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_TopicSubscribers.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV0eF4InfoV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV09TerminateE0V_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CP_TopicSubscribers(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribers@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers, &protocol conformance descriptor for CP_TopicSubscribers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers, &protocol conformance descriptor for CP_TopicSubscribers);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers and conformance CP_TopicSubscribers, type metadata accessor for CP_TopicSubscribers, &protocol conformance descriptor for CP_TopicSubscribers);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_TopicSubscribers(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV0eF4InfoV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore19CP_TopicSubscribersV09TerminateE0V_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribers.TopicSubscribersInfo.protoMessageName;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
    }
  }

  return result;
}

uint64_t CP_TopicSubscribers.TopicSubscribersInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (result = dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, &protocol conformance descriptor for CP_TopicSubscribers.TopicSubscribersInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, &protocol conformance descriptor for CP_TopicSubscribers.TopicSubscribersInfo);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TopicSubscribersInfo and conformance CP_TopicSubscribers.TopicSubscribersInfo, type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, &protocol conformance descriptor for CP_TopicSubscribers.TopicSubscribersInfo);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_TopicSubscribers.TerminateTopic.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_TopicSubscribers.TerminateTopic.protoMessageName;
}

uint64_t CP_EncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t CP_TopicSubscribersRequest.TopicTerminatedAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static CP_TopicSubscribersRequest.TopicTerminatedAck.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_TopicSubscribers.TerminateTopic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic, &protocol conformance descriptor for CP_TopicSubscribers.TerminateTopic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_TopicSubscribers.TerminateTopic(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic, &protocol conformance descriptor for CP_TopicSubscribers.TerminateTopic);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_TopicSubscribers.TerminateTopic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_TopicSubscribers.TerminateTopic and conformance CP_TopicSubscribers.TerminateTopic, type metadata accessor for CP_TopicSubscribers.TerminateTopic, &protocol conformance descriptor for CP_TopicSubscribers.TerminateTopic);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_TopicSubscribersRequest.TopicTerminatedAck(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SystemEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t closure #1 in CP_SystemEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = dispatch thunk of Decoder.decodeSingularStringField(value:)();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = a2[1];
    *a2 = 0;
    a2[1] = v12;
    *(a2 + 16) = a5;
    return outlined consume of CP_SystemEvent.OneOf_Event?(v10, v11, v9);
  }

  return result;
}

uint64_t CP_SystemEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    result = closure #2 in CP_SystemEvent.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = closure #1 in CP_SystemEvent.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_4:
    type metadata accessor for CP_SystemEvent(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SystemEvent.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in CP_SystemEvent.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SystemEvent@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SystemEvent(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent, &protocol conformance descriptor for CP_SystemEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SystemEvent(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent, &protocol conformance descriptor for CP_SystemEvent);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SystemEvent(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SystemEvent and conformance CP_SystemEvent, type metadata accessor for CP_SystemEvent, &protocol conformance descriptor for CP_SystemEvent);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #1 in CP_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_SubscribeRequest.Initialize);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_SubscribeRequest.Initialize);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV10InitializeVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_SubscribeRequest.Initialize);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in CP_SubscribeRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_SubscribeRequest.RecordAck);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_SubscribeRequest.RecordAck);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_SubscribeRequest.RecordAck);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMd, &_s14CopresenceCore19CP_SubscribeRequestV9RecordAckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_SubscribeRequest.RecordAck);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_SubscribeRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for CP_SubscribeRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_SubscribeRequest.Initialize);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.Initialize);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_SubscribeRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_SubscribeRequest.RecordAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.RecordAck);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribersRequest@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeRequest.Initialize.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeRequest.Initialize.protoMessageName;
}

uint64_t CP_SubscribeRequest.Initialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = v4;
          type metadata accessor for CP_EncryptionID(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
LABEL_18:
          v4 = v11;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 2:
            v11 = v4;
            type metadata accessor for CP_SequenceNumber(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
            goto LABEL_18;
          case 3:
            closure #5 in CP_Record.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_SubscribeRequest.Initialize);
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in CP_Record.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CP_EncryptionID(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_SubscribeRequest.Initialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      result = closure #2 in CP_Record.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_SubscribeRequest.Initialize, 3);
      if (!v4)
      {
        if (*(v3[3] + 16))
        {
          type metadata accessor for CP_EncryptionID(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
          dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        }

        if (v3[4])
        {
          dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
        }

        if (v3[5])
        {
          dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
        }

        type metadata accessor for CP_SubscribeRequest.Initialize(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #2 in CP_Record.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v17[2] = a6;
  v17[3] = a3;
  v17[5] = a4;
  v17[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for CP_EncryptionID(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v15 + 40), v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of NSObject?(v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v10, v14, type metadata accessor for CP_EncryptionID);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeRequest.Initialize@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = v4;
  *(a2 + 3) = v4;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for CP_EncryptionID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest.Initialize(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest.Initialize(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeRequest.RecordAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeRequest.RecordAck.protoMessageName;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AEE07B20;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t CP_SubscribeRequest.RecordAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CP_SequenceNumber(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_SubscribeRequest.RecordAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for CP_SubscribeRequest.RecordAck(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeRequest.RecordAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeRequest.RecordAck(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeRequest.RecordAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SubscribeRequest.RecordAck(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
      v31 = v39;
      outlined init with take of CP_SequenceNumber(v17, v39, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
  }

  else
  {
    v35 = v40;
    outlined init with take of CP_SequenceNumber(v32, v40, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_Record(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_Record);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_Record);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_Record);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #3 in CP_SubscribeResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV11TopicUpdateVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v14 - v9, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in CP_SubscribeResponse.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for CP_SubscribeResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_Record);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_Record);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #3 in CP_SubscribeResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse, &protocol conformance descriptor for CP_SubscribeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse, &protocol conformance descriptor for CP_SubscribeResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse and conformance CP_SubscribeResponse, type metadata accessor for CP_SubscribeResponse, &protocol conformance descriptor for CP_SubscribeResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_SubscribeResponse.InitializeAck.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result != 7)
          {
            if (result != 8)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }

          closure #7 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }

        else
        {
          if (result != 5)
          {
            v11 = v4;
            type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
LABEL_17:
            v4 = v11;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_5;
          }

          closure #5 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            v11 = v4;
            type metadata accessor for CP_KeyValue(0);
            _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
            goto LABEL_17;
          }

LABEL_22:
          dispatch thunk of Decoder.decodeRepeatedFixed64Field(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #7 in CP_SubscribeResponse.InitializeAck.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v9 = v3[3];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[4] + 16) || (result = dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3[5] + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
        {
          result = closure #1 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
          if (!v4)
          {
            if (*(v3[6] + 16))
            {
              type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
              _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
              dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            }

            closure #2 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(v3, a1, a2, a3);
            if (*(v3[7] + 16))
            {
              dispatch thunk of Visitor.visitPackedFixed64Field(value:fieldNumber:)();
            }

            type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 44), v7, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v7, v11, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
}

uint64_t closure #2 in CP_SubscribeResponse.InitializeAck.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 48), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v7, v11, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v4;
  *(a2 + 40) = v4;
  *(a2 + 48) = v4;
  *(a2 + 56) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 44);
  v6 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = *(a1 + 48);
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_SubscribeResponse.InitializeAck@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CP_SequenceNumber(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for CP_SequenceNumber(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static CP_SubscribeResponse.InitializeAck.TopicCatchupSummary.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary@<X0>(void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v2;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.TopicCatchupSummary and conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t *CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.protoMessageName;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }
  }

  return result;
}

uint64_t CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    if (!v4)
    {
      type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck.MissingEncryptionID and conformance CP_SubscribeResponse.InitializeAck.MissingEncryptionID, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

void *CP_SubscribeResponse.TopicUpdate.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_SubscribeResponse.TopicUpdate.protoMessageName;
}

uint64_t CP_SubscribeResponse.TopicUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CP_KeyValue(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_SubscribeResponse.TopicUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 16) + 16))
  {
    type metadata accessor for CP_KeyValue(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
    v7 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    if (!*(v3 + 24))
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = v5;
  if (*(v3 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(v3 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
  {
    type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_SubscribeResponse.TopicUpdate@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_SubscribeResponse.TopicUpdate(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_TopicSubscribersRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in CP_PublishRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_Record(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      v29 = v44;
    }

    else
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_Record);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_Record);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_Record);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore9CP_RecordVSgMd, &_s14CopresenceCore9CP_RecordVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_Record);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t closure #2 in CP_PublishRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v12, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of NSObject?(v12, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    outlined init with take of CP_SequenceNumber(v12, v19, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    outlined init with take of CP_SequenceNumber(v19, v17, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of NSObject?(v24, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
      v31 = v40;
      outlined init with take of CP_SequenceNumber(v17, v40, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      outlined init with take of CP_SequenceNumber(v31, v24, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      v29 = v44;
    }
  }

  v32 = v42;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);
  v33 = v43;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, v32, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of NSObject?(v24, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
    return outlined destroy of NSObject?(v32, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
  }

  else
  {
    v35 = v39;
    outlined init with take of CP_SequenceNumber(v32, v39, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of NSObject?(v24, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMd, &_s14CopresenceCore17CP_PublishRequestV19UpdatedEncryptionIDVSgMR);
    v36 = v38;
    outlined destroy of NSObject?(v38, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    outlined init with take of CP_SequenceNumber(v35, v36, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v3, &v13 - v9, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in CP_PublishRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in CP_PublishRequest.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for CP_PublishRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_Record);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_Record and conformance CP_Record, type metadata accessor for CP_Record, &protocol conformance descriptor for CP_Record);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_Record);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t closure #2 in CP_PublishRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v11 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of CP_SequenceNumber(v7, v10, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
  }

  result = outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest and conformance CP_PublishRequest, type metadata accessor for CP_PublishRequest, &protocol conformance descriptor for CP_PublishRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_PublishRequest.UpdatedEncryptionID.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_PublishRequest.UpdatedEncryptionID.protoMessageName;
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    }
  }

  return result;
}

uint64_t closure #2 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CP_EncryptionID(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_PublishRequest.UpdatedEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
    if (!v4)
    {
      type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.InitializeAck.MissingEncryptionID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[3] = a4;
  v16[0] = a2;
  v16[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = type metadata accessor for CP_EncryptionID(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a5(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 24), v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return outlined destroy of NSObject?(v9, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v9, v13, type metadata accessor for CP_EncryptionID);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v13, type metadata accessor for CP_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance CP_PublishRequest.UpdatedEncryptionID@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CP_EncryptionID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishRequest.UpdatedEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishRequest.UpdatedEncryptionID(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishRequest.UpdatedEncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishRequest.UpdatedEncryptionID and conformance CP_PublishRequest.UpdatedEncryptionID, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID, &protocol conformance descriptor for CP_PublishRequest.UpdatedEncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t closure #3 in CP_PublishResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CP_PublishResponse(0);
  type metadata accessor for CP_SequenceNumber(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in CP_PublishResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CP_SequenceNumber(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CP_PublishResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v12 + 28), v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v7, v11, type metadata accessor for CP_SequenceNumber);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_SequenceNumber);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse, &protocol conformance descriptor for CP_PublishResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_PublishResponse(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse, &protocol conformance descriptor for CP_PublishResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_PublishResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_PublishResponse and conformance CP_PublishResponse, type metadata accessor for CP_PublishResponse, &protocol conformance descriptor for CP_PublishResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_UpsertTopicMetadataRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CP_KeyValue(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_UpsertTopicMetadataRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_UpsertTopicMetadataRequest(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_TopicSubscribers.TopicSubscribersInfo@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_UpsertTopicMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest, &protocol conformance descriptor for CP_UpsertTopicMetadataRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_UpsertTopicMetadataRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest, &protocol conformance descriptor for CP_UpsertTopicMetadataRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_UpsertTopicMetadataRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest, &protocol conformance descriptor for CP_UpsertTopicMetadataRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_UpsertTopicMetadataResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_UpsertTopicMetadataResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CP_UpsertTopicMetadataResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_UpsertTopicMetadataResponse@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_UpsertTopicMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse, &protocol conformance descriptor for CP_UpsertTopicMetadataResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_UpsertTopicMetadataResponse(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse, &protocol conformance descriptor for CP_UpsertTopicMetadataResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_UpsertTopicMetadataResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataResponse and conformance CP_UpsertTopicMetadataResponse, type metadata accessor for CP_UpsertTopicMetadataResponse, &protocol conformance descriptor for CP_UpsertTopicMetadataResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_CreateTopicRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          type metadata accessor for CP_KeyValue(0);
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_CreateTopicRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for CP_KeyValue(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue, &protocol conformance descriptor for CP_KeyValue), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      v8 = v3[4];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!v3[5] || (lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for CP_CreateTopicRequest(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_CreateTopicRequest@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest, &protocol conformance descriptor for CP_CreateTopicRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest, &protocol conformance descriptor for CP_CreateTopicRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicRequest and conformance CP_CreateTopicRequest, type metadata accessor for CP_CreateTopicRequest, &protocol conformance descriptor for CP_CreateTopicRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_PublishResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a4(a1, v7, a2, a3);
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in CP_CreateTopicResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CP_CreateTopicResponse(0);
  type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t CP_PublishResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  if (!*v5 || (lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v6))
  {
    v13 = v5[3];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v5[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v6))
    {
      result = a4(v5, a1, a2, a3);
      if (!v6)
      {
        a5(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in CP_CreateTopicResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v9 = *(Topic - 8);
  MEMORY[0x1EEE9AC00](Topic);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(TopicResponse + 28), v7, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if ((*(v9 + 48))(v7, 1, Topic) == 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  }

  outlined init with take of CP_SequenceNumber(v7, v11, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CP_SequenceNumber(v11, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
}

uint64_t protocol witness for Message.init() in conformance CP_PublishResponse@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse, &protocol conformance descriptor for CP_CreateTopicResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicResponse(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse, &protocol conformance descriptor for CP_CreateTopicResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse and conformance CP_CreateTopicResponse, type metadata accessor for CP_CreateTopicResponse, &protocol conformance descriptor for CP_CreateTopicResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t *CP_CreateTopicResponse.ClientTopicConfig.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CP_CreateTopicResponse.ClientTopicConfig.protoMessageName;
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result < 8 || result == 8)
      {
        goto LABEL_2;
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_16;
      }

LABEL_2:
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 1 || result == 2)
    {
LABEL_16:
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }
}

uint64_t CP_CreateTopicResponse.ClientTopicConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3 + 24) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 28) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
          {
            if (!*(v3 + 32) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
            {
              if (!*(v3 + 36) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
              {
                if (!*(v3 + 40) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
                {
                  type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
                  return UnknownStorage.traverse<A>(visitor:)();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CP_CreateTopicResponse.ClientTopicConfig@<X0>(_OWORD *a2@<X8>)
{
  *(a2 + 28) = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_CreateTopicResponse.ClientTopicConfig@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_CreateTopicResponse.ClientTopicConfig and conformance CP_CreateTopicResponse.ClientTopicConfig, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig, &protocol conformance descriptor for CP_CreateTopicResponse.ClientTopicConfig);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t CP_FetchTopicsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t static CP_FetchTopicsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance CP_FetchTopicsRequest@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance CP_FetchTopicsRequest(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_FetchTopicsRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest, &protocol conformance descriptor for CP_FetchTopicsRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_FetchTopicsRequest(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest, &protocol conformance descriptor for CP_FetchTopicsRequest);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_FetchTopicsRequest(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsRequest and conformance CP_FetchTopicsRequest, type metadata accessor for CP_FetchTopicsRequest, &protocol conformance descriptor for CP_FetchTopicsRequest);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CP_FetchTopicsRequest(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t CP_FetchTopicsResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CP_FetchTopicsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[4] + 16) || (result = dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for CP_FetchTopicsResponse(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

Swift::Int CP_Record.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance CP_FetchTopicsResponse@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CP_FetchTopicsResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse, &protocol conformance descriptor for CP_FetchTopicsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CP_FetchTopicsResponse(uint64_t a1)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse, &protocol conformance descriptor for CP_FetchTopicsResponse);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CP_FetchTopicsResponse(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CP_FetchTopicsResponse and conformance CP_FetchTopicsResponse, type metadata accessor for CP_FetchTopicsResponse, &protocol conformance descriptor for CP_FetchTopicsResponse);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t specialized static CP_SystemEvent.OneOf_Event.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t specialized static CP_UpsertTopicMetadataResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1AEE179E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 3)
    {
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          if (v2 != 3)
          {
            return 0;
          }
        }

        else if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v3)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 <= 5)
    {
      if (v3 == 4)
      {
        if (v2 != 5)
        {
          return 0;
        }
      }

      else if (v2 != 6)
      {
        return 0;
      }
    }

    else if (v3 == 6)
    {
      if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 7)
    {
      if (v2 != 8)
      {
        return 0;
      }
    }

    else if (v2 != 1000)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for CP_UpsertTopicMetadataResponse(0);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CP_UpsertTopicMetadataRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CP_UpsertTopicMetadataRequest(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_TopicSubscribersRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for CP_TopicSubscribersRequest(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v14[v15], v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  v18 = specialized static CP_TopicSubscribersRequest.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CP_TopicSubscribersRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck(0);
  MEMORY[0x1EEE9AC00](v32);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v31 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v31 - v16, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v17[v18], type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of CP_SequenceNumber(v17, v11, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of CP_SequenceNumber(&v17[v18], v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v19 = *v11 == *v5 && *(v11 + 1) == *(v5 + 1);
      if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }

      v20 = *(v11 + 2);
      v21 = *(v5 + 2);
      if (v11[24])
      {
        v20 = v20 != 0;
      }

      if (v5[24] == 1)
      {
        if (v21)
        {
          if (v20 != 1)
          {
            goto LABEL_33;
          }
        }

        else if (v20)
        {
          goto LABEL_33;
        }
      }

      else if (v20 != v21)
      {
        goto LABEL_33;
      }

      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        outlined destroy of CP_SequenceNumber(v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
        v27 = v11;
        v26 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
        goto LABEL_32;
      }

LABEL_33:
      outlined destroy of CP_SequenceNumber(v5, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest);
      v29 = v11;
      v28 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
      goto LABEL_34;
    }

    v22 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest;
    v23 = v11;
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v17, v13, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v17[v18], v7, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      v24 = *v13 == *v7 && v13[1] == v7[1];
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
        if (v25)
        {
          v26 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
          v27 = v13;
LABEL_32:
          outlined destroy of CP_SequenceNumber(v27, v26);
          outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
          return 1;
        }
      }

      else
      {
        outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck);
      }

      v28 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
      v29 = v13;
LABEL_34:
      outlined destroy of CP_SequenceNumber(v29, v28);
      outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_TopicSubscribersRequest.OneOf_Operation);
      return 0;
    }

    v22 = type metadata accessor for CP_TopicSubscribersRequest.TopicTerminatedAck;
    v23 = v13;
  }

  outlined destroy of CP_SequenceNumber(v23, v22);
  outlined destroy of NSObject?(v17, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore26CP_TopicSubscribersRequestV15OneOf_OperationO_AEtMR);
  return 0;
}

uint64_t specialized static CP_TopicSubscribersRequest.TopicTerminationRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v5 = v5 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  type metadata accessor for CP_TopicSubscribersRequest.TopicTerminationRequest(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_FetchTopicsResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (*(a1 + 8) == 1)
  {
    v4 = qword_1AEE179E0[v4];
  }

  v5 = *a2;
  if (*(a2 + 8))
  {
    if (v5 <= 3)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (v4 != 3)
          {
            return 0;
          }
        }

        else if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v5)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 <= 5)
    {
      if (v5 == 4)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 6)
    {
      if (v4 != 7)
      {
        return 0;
      }
    }

    else if (v5 == 7)
    {
      if (v4 != 8)
      {
        return 0;
      }
    }

    else if (v4 != 1000)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[4], *(a2 + 32)))
  {
    type metadata accessor for CP_FetchTopicsResponse(0);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CP_CreateTopicResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  Topic = type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  v5 = *(Topic - 8);
  MEMORY[0x1EEE9AC00](Topic);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *a1;
  if (*(a1 + 8) == 1)
  {
    v14 = qword_1AEE179E0[v14];
  }

  v15 = *a2;
  if (*(a2 + 8))
  {
    if (v15 <= 3)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v14 != 3)
          {
            goto LABEL_24;
          }
        }

        else if (v14 != 4)
        {
          goto LABEL_24;
        }
      }

      else if (v15)
      {
        if (v14 != 1)
        {
          goto LABEL_24;
        }
      }

      else if (v14)
      {
        goto LABEL_24;
      }
    }

    else if (v15 <= 5)
    {
      if (v15 == 4)
      {
        if (v14 != 5)
        {
          goto LABEL_24;
        }
      }

      else if (v14 != 6)
      {
        goto LABEL_24;
      }
    }

    else if (v15 == 6)
    {
      if (v14 != 7)
      {
        goto LABEL_24;
      }
    }

    else if (v15 == 7)
    {
      if (v14 != 8)
      {
        goto LABEL_24;
      }
    }

    else if (v14 != 1000)
    {
      goto LABEL_24;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_24;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = v7;
  TopicResponse = type metadata accessor for CP_CreateTopicResponse(0);
  v16 = *(TopicResponse + 28);
  v17 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v16, v13, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v16, &v13[v17], &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Topic) == 1)
  {
    if (v18(&v13[v17], 1, Topic) == 1)
    {
      outlined destroy of NSObject?(v13, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
LABEL_33:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_23;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v18(&v13[v17], 1, Topic) == 1)
  {
    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
LABEL_23:
    outlined destroy of NSObject?(v13, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSg_AFtMR);
    goto LABEL_24;
  }

  v21 = v23;
  outlined init with take of CP_SequenceNumber(&v13[v17], v23, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  v22 = specialized static CP_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(v10, v21);
  outlined destroy of CP_SequenceNumber(v21, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig);
  outlined destroy of NSObject?(v13, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMd, &_s14CopresenceCore22CP_CreateTopicResponseV06ClientE6ConfigVSgMR);
  if (v22)
  {
    goto LABEL_33;
  }

LABEL_24:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static CP_CreateTopicResponse.ClientTopicConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for CP_CreateTopicResponse.ClientTopicConfig(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_CreateTopicRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_19:
      type metadata accessor for CP_CreateTopicRequest(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!v6)
    {
      goto LABEL_19;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static CP_SubscribeResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for CP_SubscribeResponse(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v14[v15], v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  v18 = specialized static CP_SubscribeResponse.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CP_SubscribeResponse.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v33 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v33 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v33 - v22, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(v34, &v23[v24], type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of CP_SequenceNumber(v23, v17, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined init with take of CP_SequenceNumber(&v23[v24], v7, type metadata accessor for CP_Record);
        v26 = specialized static CP_Record.== infix(_:_:)(v17, v7);
        v27 = type metadata accessor for CP_Record;
        outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_Record);
        v28 = v17;
LABEL_13:
        outlined destroy of CP_SequenceNumber(v28, v27);
        outlined destroy of CP_SequenceNumber(v23, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
        return v26 & 1;
      }

      v29 = type metadata accessor for CP_Record;
      v30 = v17;
    }

    else
    {
      outlined init with copy of CP_SequenceNumber(v23, v14, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        outlined init with take of CP_SequenceNumber(&v23[v24], v33, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
        v26 = specialized static CP_SubscribeResponse.TopicUpdate.== infix(_:_:)(v14, v31);
        v27 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
        outlined destroy of CP_SequenceNumber(v31, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
        v28 = v14;
        goto LABEL_13;
      }

      v29 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
      v30 = v14;
    }
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v23, v19, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of CP_SequenceNumber(&v23[v24], v10, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v26 = specialized static CP_SubscribeResponse.InitializeAck.== infix(_:_:)(v19, v10);
      v27 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    v30 = v19;
  }

  outlined destroy of CP_SequenceNumber(v30, v29);
  outlined destroy of NSObject?(v23, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationO_AEtMR);
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static CP_SubscribeResponse.InitializeAck.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = (&v46 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = *a1;
  if (*(a1 + 8) == 1)
  {
    v21 = qword_1AEE179E0[v21];
  }

  v22 = *a2;
  if (*(a2 + 8))
  {
    if (v22 <= 3)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v21 != 3)
          {
            goto LABEL_54;
          }
        }

        else if (v21 != 4)
        {
          goto LABEL_54;
        }
      }

      else if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_54;
        }
      }

      else if (v21)
      {
        goto LABEL_54;
      }
    }

    else if (v22 <= 5)
    {
      if (v22 == 4)
      {
        if (v21 != 5)
        {
          goto LABEL_54;
        }
      }

      else if (v21 != 6)
      {
        goto LABEL_54;
      }
    }

    else if (v22 == 6)
    {
      if (v21 != 7)
      {
        goto LABEL_54;
      }
    }

    else if (v22 == 7)
    {
      if (v21 != 8)
      {
        goto LABEL_54;
      }
    }

    else if (v21 != 1000)
    {
      goto LABEL_54;
    }
  }

  else if (v21 != v22)
  {
LABEL_54:
    v35 = 0;
    return v35 & 1;
  }

  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[4], *(a2 + 32)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[5], *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v47 = v10;
  v46 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v23 = *(v46 + 44);
  v24 = *(v18 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v23, v20, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v25 = a2 + v23;
  v26 = v24;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v25, &v20[v24], &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v26], 1, v11) == 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
      goto LABEL_19;
    }

    goto LABEL_46;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v17, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if (v27(&v20[v26], 1, v11) == 1)
  {
    outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
LABEL_46:
    v36 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMd;
    v37 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSg_AHtMR;
LABEL_52:
    v39 = v20;
LABEL_53:
    outlined destroy of NSObject?(v39, v36, v37);
    goto LABEL_54;
  }

  outlined init with take of CP_SequenceNumber(&v20[v26], v14, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  if (*v17 != *v14 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(v17[1], v14[1]) & 1) == 0)
  {
    outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    v36 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd;
    v37 = &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR;
    goto LABEL_52;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  outlined destroy of NSObject?(v20, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_19:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19MissingEncryptionIDV_Tt1g5(a1[6], *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v28 = v47;
  v29 = *(v46 + 48);
  v30 = *(v8 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v29, v47, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v31 = a2 + v29;
  v32 = v28;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v31, v28 + v30, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v33 = v51;
  v34 = *(v50 + 48);
  if (v34(v28, 1, v51) == 1)
  {
    if (v34(v28 + v30, 1, v33) == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

  v41 = v28;
  v42 = v49;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v41, v49, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v34(v32 + v30, 1, v33) == 1)
  {
    outlined destroy of CP_SequenceNumber(v42, type metadata accessor for CP_SequenceNumber);
LABEL_58:
    v36 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v37 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
    v39 = v32;
    goto LABEL_53;
  }

  v43 = v32 + v30;
  v44 = v48;
  outlined init with take of CP_SequenceNumber(v43, v48, type metadata accessor for CP_SequenceNumber);
  if (*v42 != *v44 || v42[1] != v44[1])
  {
    outlined destroy of CP_SequenceNumber(v44, type metadata accessor for CP_SequenceNumber);
    goto LABEL_64;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v44, type metadata accessor for CP_SequenceNumber);
  if ((v45 & 1) == 0)
  {
LABEL_64:
    outlined destroy of CP_SequenceNumber(v42, type metadata accessor for CP_SequenceNumber);
    v36 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
    v37 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
    v39 = v32;
    goto LABEL_53;
  }

  outlined destroy of CP_SequenceNumber(v42, type metadata accessor for CP_SequenceNumber);
LABEL_22:
  outlined destroy of NSObject?(v32, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[7], *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_54;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v35 & 1;
}

uint64_t specialized static CP_SubscribeResponse.InitializeAck.MissingEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v23 + v14, &v13[v15], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      outlined init with take of CP_SequenceNumber(&v13[v15], v7, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
      v18 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v19 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_9:
      outlined destroy of NSObject?(v13, v18, v19);
      goto LABEL_10;
    }

    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
LABEL_8:
    v18 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v19 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_5:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static CP_SubscribeResponse.TopicUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_11:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore11CP_KeyValueV_Tt1g5(a1[2], a2[2]) & 1) == 0 || a1[3] != a2[3] || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CP_TopicSubscribers.TopicSubscribersInfo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  if (result != *a2 || a1[1] != a2[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  v8 = *(v6 + 16);
  if (v8 != *(v7 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = v6 == v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_15:
    type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo(0);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  else
  {
    v10 = (v6 + 32);
    v11 = (v7 + 32);
    while (v8)
    {
      if (*v10 != *v11)
      {
        return 0;
      }

      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static CP_SubscribeRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for CP_SubscribeRequest(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v14[v15], v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  v18 = specialized static CP_SubscribeRequest.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CP_SubscribeRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  MEMORY[0x1EEE9AC00](v25);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v24 - v17, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v18[v19], type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of CP_SequenceNumber(v18, v14, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v18[v19], v8, type metadata accessor for CP_SubscribeRequest.Initialize);
      v20 = specialized static CP_SubscribeRequest.Initialize.== infix(_:_:)(v14, v8);
      outlined destroy of CP_SequenceNumber(v8, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_SubscribeRequest.Initialize);
      outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
      return v20 & 1;
    }

    v21 = type metadata accessor for CP_SubscribeRequest.Initialize;
    v22 = v14;
    goto LABEL_9;
  }

  outlined init with copy of CP_SequenceNumber(v18, v12, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for CP_SubscribeRequest.RecordAck;
    v22 = v12;
LABEL_9:
    outlined destroy of CP_SequenceNumber(v22, v21);
    outlined destroy of NSObject?(v18, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationO_AEtMR);
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  outlined init with take of CP_SequenceNumber(&v18[v19], v5, type metadata accessor for CP_SubscribeRequest.RecordAck);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(*v12, *v5) & 1) == 0 || (type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of CP_SequenceNumber(v5, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.RecordAck);
    outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
    goto LABEL_12;
  }

  outlined destroy of CP_SequenceNumber(v5, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of CP_SequenceNumber(v12, type metadata accessor for CP_SubscribeRequest.RecordAck);
  outlined destroy of CP_SequenceNumber(v18, type metadata accessor for CP_SubscribeRequest.OneOf_Operation);
  v20 = 1;
  return v20 & 1;
}

uint64_t specialized static CP_SubscribeRequest.Initialize.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore17CP_SequenceNumberV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v7;
  v24 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  v14 = *(v24 + 40);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v25;
      outlined init with take of CP_SequenceNumber(v21, v25, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v10, *(v10 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v23)
        {
          goto LABEL_7;
        }

LABEL_15:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
      v18 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v19 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_14:
      outlined destroy of NSObject?(v13, v18, v19);
      goto LABEL_15;
    }

    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
LABEL_13:
    v18 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v19 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_7:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14CopresenceCore15CP_EncryptionIDV_Tt1g5(a1[3], a2[3]) & 1) == 0 || a1[4] != a2[4] || a1[5] != a2[5])
  {
    goto LABEL_15;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static CP_PublishResponse.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v26 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *a1;
  if (*(a1 + 8) == 1)
  {
    v14 = qword_1AEE179E0[v14];
  }

  v15 = *a2;
  if (!*(a2 + 8))
  {
    if (v14 == v15)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

  if (v15 <= 3)
  {
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        if (v14 != 3)
        {
          goto LABEL_37;
        }
      }

      else if (v14 != 4)
      {
        goto LABEL_37;
      }

      goto LABEL_11;
    }

    if (v15)
    {
      if (v14 != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_11;
    }

    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_37:
    v19 = 0;
    return v19 & 1;
  }

  if (v15 <= 5)
  {
    if (v15 == 4)
    {
      if (v14 != 5)
      {
        goto LABEL_37;
      }
    }

    else if (v14 != 6)
    {
      goto LABEL_37;
    }
  }

  else if (v15 == 6)
  {
    if (v14 != 7)
    {
      goto LABEL_37;
    }
  }

  else if (v15 == 7)
  {
    if (v14 != 8)
    {
      goto LABEL_37;
    }
  }

  else if (v14 != 1000)
  {
    goto LABEL_37;
  }

LABEL_11:
  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v26 = v7;
  v27 = type metadata accessor for CP_PublishResponse(0);
  v16 = *(v27 + 28);
  v17 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v16, v13, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v16, &v13[v17], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v22 = &v13[v17];
      v23 = v26;
      outlined init with take of CP_SequenceNumber(v22, v26, type metadata accessor for CP_SequenceNumber);
      if (*v10 == *v23 && v10[1] == v23[1])
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v23, type metadata accessor for CP_SequenceNumber);
        if (v24)
        {
          outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SequenceNumber);
          goto LABEL_16;
        }
      }

      else
      {
        outlined destroy of CP_SequenceNumber(v23, type metadata accessor for CP_SequenceNumber);
      }

      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SequenceNumber);
      v20 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
      v21 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
      goto LABEL_36;
    }

    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_SequenceNumber);
LABEL_23:
    v20 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v21 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
LABEL_36:
    outlined destroy of NSObject?(v13, v20, v21);
    goto LABEL_37;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_23;
  }

LABEL_16:
  outlined destroy of NSObject?(v13, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static CP_PublishRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v20 - v13, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, &v14[v15], &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
LABEL_9:
      type metadata accessor for CP_PublishRequest(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v10, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_PublishRequest.OneOf_Operation);
LABEL_6:
    outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of CP_SequenceNumber(&v14[v15], v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  v18 = specialized static CP_PublishRequest.OneOf_Operation.== infix(_:_:)(v10, v7);
  outlined destroy of CP_SequenceNumber(v7, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined destroy of NSObject?(v14, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CP_PublishRequest.UpdatedEncryptionID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v7;
  v25 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v14, v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2 + v14, &v13[v15], &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v13, v10, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v24;
      outlined init with take of CP_SequenceNumber(v21, v24, type metadata accessor for CP_EncryptionID);
      if (specialized static Data.== infix(_:_:)(*v10, *(v10 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_EncryptionID);
        outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
        outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
        if (v23)
        {
          goto LABEL_6;
        }

LABEL_11:
        v17 = 0;
        return v17 & 1;
      }

      outlined destroy of CP_SequenceNumber(v22, type metadata accessor for CP_EncryptionID);
      outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
      v18 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
      v19 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
LABEL_10:
      outlined destroy of NSObject?(v13, v18, v19);
      goto LABEL_11;
    }

    outlined destroy of CP_SequenceNumber(v10, type metadata accessor for CP_EncryptionID);
LABEL_9:
    v18 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v19 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of NSObject?(v13, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
LABEL_6:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t specialized static CP_Record.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for CP_EncryptionID(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v44 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v44 - v9;
  v11 = type metadata accessor for CP_SequenceNumber(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v44 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]))
  {
    goto LABEL_23;
  }

  v44 = v6;
  v46 = v10;
  v21 = type metadata accessor for CP_Record(0);
  v51 = a2;
  v45 = v21;
  v22 = *(v21 + 36);
  v23 = *(v18 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v22, v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v24 = v51 + v22;
  v25 = v51;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v24, &v20[v23], &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v23], 1, v11) == 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v17, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if (v26(&v20[v23], 1, v11) == 1)
  {
    outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SequenceNumber);
LABEL_15:
    v35 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMd;
    v36 = &_s14CopresenceCore17CP_SequenceNumberVSg_ADtMR;
LABEL_21:
    v38 = v20;
LABEL_22:
    outlined destroy of NSObject?(v38, v35, v36);
    goto LABEL_23;
  }

  outlined init with take of CP_SequenceNumber(&v20[v23], v14, type metadata accessor for CP_SequenceNumber);
  if (*v17 != *v14 || v17[1] != v14[1])
  {
    outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_SequenceNumber);
    outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SequenceNumber);
    v35 = &_s14CopresenceCore17CP_SequenceNumberVSgMd;
    v36 = &_s14CopresenceCore17CP_SequenceNumberVSgMR;
    goto LABEL_21;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v25 = v51;
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v14, type metadata accessor for CP_SequenceNumber);
  outlined destroy of CP_SequenceNumber(v17, type metadata accessor for CP_SequenceNumber);
  outlined destroy of NSObject?(v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_7:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[4], v25[4]) & 1) == 0)
  {
LABEL_23:
    v34 = 0;
    return v34 & 1;
  }

  v27 = v46;
  v28 = *(v45 + 40);
  v29 = *(v48 + 48);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v28, v46, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v30 = v51 + v28;
  v31 = v51;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v30, v27 + v29, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v32 = v50;
  v33 = *(v49 + 48);
  if (v33(v27, 1, v50) == 1)
  {
    if (v33(v27 + v29, 1, v32) == 1)
    {
      outlined destroy of NSObject?(v27, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  v40 = v47;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v27, v47, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if (v33(v27 + v29, 1, v32) == 1)
  {
    outlined destroy of CP_SequenceNumber(v40, type metadata accessor for CP_EncryptionID);
LABEL_27:
    v35 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMd;
    v36 = &_s14CopresenceCore15CP_EncryptionIDVSg_ADtMR;
    v38 = v27;
    goto LABEL_22;
  }

  v41 = v27 + v29;
  v42 = v44;
  outlined init with take of CP_SequenceNumber(v41, v44, type metadata accessor for CP_EncryptionID);
  if (!specialized static Data.== infix(_:_:)(*v40, *(v40 + 8), *v42, *(v42 + 8)))
  {
    outlined destroy of CP_SequenceNumber(v42, type metadata accessor for CP_EncryptionID);
    outlined destroy of CP_SequenceNumber(v40, type metadata accessor for CP_EncryptionID);
    v35 = &_s14CopresenceCore15CP_EncryptionIDVSgMd;
    v36 = &_s14CopresenceCore15CP_EncryptionIDVSgMR;
    v38 = v27;
    goto LABEL_22;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = v51;
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CP_SequenceNumber(v42, type metadata accessor for CP_EncryptionID);
  outlined destroy of CP_SequenceNumber(v40, type metadata accessor for CP_EncryptionID);
  outlined destroy of NSObject?(v27, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  if ((v43 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (a1[5] != v31[5])
  {
    goto LABEL_23;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v34 & 1;
}

uint64_t specialized static CP_PublishRequest.OneOf_Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CP_PublishRequest.OneOf_Operation(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  outlined init with copy of CP_SequenceNumber(a1, &v27 - v18, type metadata accessor for CP_PublishRequest.OneOf_Operation);
  outlined init with copy of CP_SequenceNumber(a2, &v19[v20], type metadata accessor for CP_PublishRequest.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of CP_SequenceNumber(v19, v13, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of CP_SequenceNumber(&v19[v20], v6, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v21 = specialized static CP_PublishRequest.UpdatedEncryptionID.== infix(_:_:)(v13, v6);
      outlined destroy of CP_SequenceNumber(v6, type metadata accessor for CP_PublishRequest.UpdatedEncryptionID);
      v22 = v13;
      v23 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID;
LABEL_9:
      outlined destroy of CP_SequenceNumber(v22, v23);
      outlined destroy of CP_SequenceNumber(v19, type metadata accessor for CP_PublishRequest.OneOf_Operation);
      return v21 & 1;
    }

    v24 = type metadata accessor for CP_PublishRequest.UpdatedEncryptionID;
    v25 = v13;
  }

  else
  {
    outlined init with copy of CP_SequenceNumber(v19, v15, type metadata accessor for CP_PublishRequest.OneOf_Operation);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of CP_SequenceNumber(&v19[v20], v9, type metadata accessor for CP_Record);
      v21 = specialized static CP_Record.== infix(_:_:)(v15, v9);
      outlined destroy of CP_SequenceNumber(v9, type metadata accessor for CP_Record);
      v22 = v15;
      v23 = type metadata accessor for CP_Record;
      goto LABEL_9;
    }

    v24 = type metadata accessor for CP_Record;
    v25 = v15;
  }

  outlined destroy of CP_SequenceNumber(v25, v24);
  outlined destroy of NSObject?(v19, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMd, &_s14CopresenceCore17CP_PublishRequestV15OneOf_OperationO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static CP_SystemEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3 == 255)
  {
    if (v4 == 255)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 255)
  {
    v5 = *a1;
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if ((v4 & 1) == 0)
    {
LABEL_9:
      if ((v5 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      type metadata accessor for CP_SystemEvent(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t specialized static CP_KeyValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !specialized static Data.== infix(_:_:)(a1[2], a1[3], a2[2], a2[3]))
  {
    return 0;
  }

  type metadata accessor for CP_KeyValue(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized CP_ResponseStatus.init(rawValue:)(uint64_t result)
{
  if (result > 5)
  {
    if (result > 7)
    {
      if (result == 8)
      {
        return 7;
      }

      else if (result == 1000)
      {
        return 8;
      }
    }

    else if (result == 6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  else if (result > 3)
  {
    if (result == 4)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else if (result == 3)
  {
    return 2;
  }

  return result;
}

uint64_t outlined init with take of CP_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CP_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_SequenceNumber(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of CP_SystemEvent.OneOf_Event?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of CP_SystemEvent.OneOf_Event(result, a2);
  }

  return result;
}

uint64_t outlined consume of CP_SystemEvent.OneOf_Event?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of CP_SystemEvent.OneOf_Event(result, a2);
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason()
{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason;
  if (!lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_TopicSubscribersRequest.TopicTerminationRequest.Reason and conformance CP_TopicSubscribersRequest.TopicTerminationRequest.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_ResponseStatus and conformance CP_ResponseStatus()
{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus;
  if (!lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_ResponseStatus and conformance CP_ResponseStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent()
{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent;
  if (!lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate.UpdateEvent and conformance CP_SubscribeResponse.TopicUpdate.UpdateEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory()
{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory;
  if (!lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CP_CreateTopicRequest.TopicCategory and conformance CP_CreateTopicRequest.TopicCategory);
  }

  return result;
}

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);

  result = outlined consume of CP_SystemEvent.OneOf_Event?(v9, v10, v11);
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = a5;
  return result;
}

void type metadata completion function for CP_Record(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SequenceNumber?, type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for CP_SequenceNumber?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for CP_TopicSubscribers(uint64_t a1)
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_TopicSubscribers.TopicSubscribersInfo], type metadata accessor for CP_TopicSubscribers.TopicSubscribersInfo, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_TopicSubscribers.TerminateTopic], type metadata accessor for CP_TopicSubscribers.TerminateTopic, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for CP_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CP_SystemEvent.OneOf_Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CP_SystemEvent.OneOf_Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t type metadata completion function for CP_TopicSubscribersRequest.OneOf_Operation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CP_SubscribeRequest.Initialize(uint64_t a1)
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SequenceNumber], type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_EncryptionID], type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for CP_SubscribeResponse.OneOf_Operation(uint64_t a1)
{
  result = type metadata accessor for CP_SubscribeResponse.InitializeAck(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CP_Record(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CP_SubscribeResponse.TopicUpdate(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for CP_SubscribeResponse.InitializeAck(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_KeyValue], type metadata accessor for CP_KeyValue, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SubscribeResponse.InitializeAck.MissingEncryptionID], type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary?, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_SequenceNumber?, type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(uint64_t a1)
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_SequenceNumber], type metadata accessor for CP_SequenceNumber, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CP_SystemEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnknownStorage();
  if (v4 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for CP_EncryptionID?, type metadata accessor for CP_EncryptionID, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CP_TopicSubscribers.TopicSubscribersInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CP_SubscribeResponse.TopicUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CP_SequenceNumber?(319, &lazy cache variable for type metadata for [CP_KeyValue], type metadata accessor for CP_KeyValue, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_295Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 24);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_296Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for CP_PublishResponse(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for CP_SequenceNumber?(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for CP_FetchTopicsRequest(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for CP_FetchTopicsResponse(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt64](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t Publisher.waitUntilAvailable<A, B>(for:valueTimeout:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v44 = a8;
  v45 = a7;
  v35[1] = a4;
  v40 = a2;
  v41 = a3;
  v43 = a9;
  v42 = a12;
  v16 = *(a6 - 8);
  v37 = a1;
  v38 = v16;
  v39 = a11;
  v36 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = v35 - v22;
  v24 = *(a5 - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v13;
  v33 = v32;
  (*(v30 + 16))(v29, v31);
  (*(v24 + 16))(v27, v37, a5);
  (*(v20 + 16))(v23, v40, AssociatedTypeWitness);
  (*(v38 + 16))(v18, v41, a6);
  return Publishers.WaitUntilAvailable.init(_:_:_:_:)(v29, v27, v23, v18, v33, a5, a6, v45, v43, v44, v36, v39, v42);
}

uint64_t Publishers.WaitUntilAvailable.init(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v25[0] = a5;
  v25[1] = a6;
  v25[2] = a7;
  v25[3] = a8;
  v25[4] = a10;
  v25[5] = a11;
  v25[6] = a12;
  v25[7] = a13;
  v19 = type metadata accessor for Publishers.WaitUntilAvailable(0, v25);
  (*(*(a6 - 8) + 32))(a9 + v19[21], a2, a6);
  v20 = v19[23];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v20, a3, AssociatedTypeWitness);
  return (*(*(a7 - 8) + 32))(a9 + v19[22], a4, a7);
}

uint64_t Publishers.WaitUntilAvailable.valueTimeout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t Publishers.WaitUntilAvailable.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = *(a2 + 32);
  v31 = *(v5 - 8);
  v32 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 56);
  swift_getAssociatedTypeWitness();
  v26 = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v25 - v11;
  v12 = *(a2 + 24);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[0] = v17;
  v35[1] = v12;
  v35[2] = v5;
  v36 = *(a2 + 40);
  v37 = v8;
  v38 = *(a2 + 64);
  type metadata accessor for Publishers.WaitUntilAvailable.Inner(0, v35);
  v21 = v29;
  (*(v18 + 16))(v20, v29, v17);
  (*(v13 + 16))(v16, v21 + *(a2 + 84), v12);
  v22 = v27;
  (*(v9 + 16))(v27, v21 + *(a2 + 92), AssociatedTypeWitness);
  v23 = v30;
  (*(v31 + 16))(v30, v21 + *(a2 + 88), v26);
  swift_allocObject();
  v35[0] = Publishers.WaitUntilAvailable.Inner.init(upstream:available:valueTimeout:scheduler:)(v20, v16, v22, v23);
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
}

uint64_t type metadata completion function for Publishers.WaitUntilAvailable(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Publishers.WaitUntilAvailable(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v33 = a3[2];
  v36 = *(v33 - 8);
  v3 = *(v36 + 84);
  v31 = a3[3];
  v4 = *(v31 - 8);
  v34 = v3;
  v32 = *(v4 + 84);
  if (v32 > v3)
  {
    v3 = *(v4 + 84);
  }

  v5 = a3[4];
  v6 = *(v5 - 8);
  v30 = *(v6 + 84);
  if (v30 <= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v8 + 80);
  if (*(v8 + 84) <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v36 + 64) + v9;
  v16 = a1;
  if (a2 > v14)
  {
    v17 = ((v12 + v13 + ((v10 + v11 + (v15 & ~v9)) & ~v11)) & ~v13) + *(v8 + 64);
    v18 = 8 * v17;
    if (v17 <= 3)
    {
      v20 = ((a2 - v14 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v20))
      {
        v19 = *(a1 + v17);
        if (!v19)
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v20 > 0xFF)
      {
        v19 = *(a1 + v17);
        if (!*(a1 + v17))
        {
          goto LABEL_32;
        }

        goto LABEL_19;
      }

      if (v20 < 2)
      {
LABEL_32:
        if (v14)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }

    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_32;
    }

LABEL_19:
    v21 = (v19 - 1) << v18;
    if (v17 > 3)
    {
      v21 = 0;
    }

    if (v17)
    {
      if (v17 <= 3)
      {
        v22 = v17;
      }

      else
      {
        v22 = 4;
      }

      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v23 = *a1;
        }
      }

      else if (v22 == 1)
      {
        v23 = *a1;
      }

      else
      {
        v23 = *a1;
      }
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v21) + 1;
  }

LABEL_33:
  if (v34 == v14)
  {
    v24 = v33;
    v25 = *(v36 + 48);
    v26 = v34;

    return v25(v16, v26, v24);
  }

  v16 = ((a1 + v15) & ~v9);
  if (v32 == v14)
  {
    v25 = *(v4 + 48);
    v26 = v32;
    v24 = v31;

    return v25(v16, v26, v24);
  }

  v16 = ((v16 + v10 + v11) & ~v11);
  if (v30 == v14)
  {
    v25 = *(v6 + 48);
    v26 = v30;
    v24 = v5;

    return v25(v16, v26, v24);
  }

  v28 = *(v8 + 48);
  v29 = (v16 + v12 + v13) & ~v13;

  return v28(v29);
}

void storeEnumTagSinglePayload for Publishers.WaitUntilAvailable(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v34 = v4;
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v36 = v6;
  v35 = v5;
  v33 = *(v6 + 84);
  if (v33 > v5)
  {
    v5 = *(v6 + 84);
  }

  v37 = *(a4[4] - 8);
  v32 = *(v37 + 84);
  if (v32 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v37 + 84);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v4 + 64);
  if (*(v8 + 84) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v6 + 80);
  v13 = v10 + v12;
  v14 = *(v6 + 64);
  v15 = *(v37 + 80);
  v16 = (v14 + v15 + ((v10 + v12) & ~v12)) & ~v15;
  v17 = *(v37 + 64);
  v18 = *(v8 + 80);
  v19 = ((v17 + v18 + v16) & ~v18) + *(v8 + 64);
  if (a3 <= v11)
  {
    v22 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    if (v19 <= 3)
    {
      v25 = ((a3 - v11 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v11 < v21)
  {
    v23 = ~v11 + v21;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(v20, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v20 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *&v20[v19] = v24;
              }

              else
              {
                *&v20[v19] = v24;
              }

              return;
            }
          }

          else
          {
            *v20 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *v20 = v27;
        v20[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(v20, v19);
      *v20 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      v20[v19] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v20[v19] = 0;
      if (!v21)
      {
        return;
      }

      goto LABEL_36;
    }

    *&v20[v19] = 0;
  }

  else if (v22)
  {
    v20[v19] = 0;
    if (!v21)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v21)
  {
    return;
  }

LABEL_36:
  if (v35 == v11)
  {
    v28 = *(v34 + 56);
    v29 = v20;
    goto LABEL_40;
  }

  v29 = (&v20[v13] & ~v12);
  if (v33 == v11)
  {
    v28 = *(v36 + 56);
LABEL_40:

LABEL_42:
    v28(v29);
    return;
  }

  v29 = (&v29[v14 + v15] & ~v15);
  if (v32 == v11)
  {
    v28 = *(v37 + 56);

    goto LABEL_42;
  }

  v30 = *(v9 + 56);
  v31 = &v29[v17 + v18] & ~v18;

  v30(v31);
}

uint64_t type metadata completion function for Publishers.WaitUntilAvailable.Inner(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        result = swift_getAssociatedTypeWitness();
        if (v5 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          result = type metadata accessor for Optional();
          if (v6 <= 0x3F)
          {
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t *Publishers.WaitUntilAvailable.Inner.init(upstream:available:valueTimeout:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v7 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  *(v4 + v6) = Dictionary.init()();
  v8 = *(*v4 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
  *(v4 + v8) = Dictionary.init()();
  v9 = *(*v4 + 192);
  v10 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v9, 1, 1, AssociatedTypeWitness);
  v12 = *(*v4 + 200);
  type metadata accessor for Lock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *(v4 + v12) = v13;
  (*(*(v7 - 8) + 32))(v4 + *(*v4 + 144), a1, v7);
  (*(*(v10 - 8) + 32))(v4 + *(*v4 + 152), a2, v10);
  v15 = *(*v4 + 168);
  v16 = *(v5 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  (*(*(v17 - 8) + 32))(v4 + v15, a3, v17);
  (*(*(v16 - 8) + 32))(v4 + *(*v4 + 160), a4, v16);
  return v4;
}

uint64_t Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v91 = a2;
  v87 = a1;
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 104);
  v7 = type metadata accessor for Publishers.Filter();
  v89 = v5;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getWitnessTable();
  v77 = v8;
  v86 = type metadata accessor for Publishers.Sequence();
  v90 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v102 = v86;
  v103 = AssociatedTypeWitness;
  v104 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v75 = AssociatedConformanceWitness;
  type metadata accessor for Publishers.SetFailureType();
  v10 = v4[11];
  v61 = v4;
  v74 = v4[14];
  v11 = v10;
  v12 = type metadata accessor for Publishers.SetFailureType();
  v76 = swift_getWitnessTable();
  v13 = v12;
  v63 = v12;
  v14 = type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v70 = v14;
  v15 = type metadata accessor for Publishers.FlatMap();
  v83 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v102 = v7;
  v103 = v15;
  v16 = v7;
  v68 = v7;
  v73 = v15;
  v104 = v83;
  AssociatedConformanceWitness = v82;
  v81 = type metadata accessor for Publishers.Merge();
  v84 = *(v81 - 8);
  v17 = MEMORY[0x1EEE9AC00](v81);
  v78 = &v60 - v18;
  v64 = *(v13 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  v72 = *(v14 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v88 = &v60 - v23;
  v71 = *(v15 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v69 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v65 = &v60 - v27;
  v67 = *(v16 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v66 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v62 = &v60 - v30;
  v31 = swift_allocObject();
  v32 = v91;
  v33 = v80;
  v31[2] = v91;
  v31[3] = v33;
  v31[4] = v3;

  v34 = v89;
  Publisher.filter(_:)();

  v60 = v11;
  v35 = v74;
  Publisher<>.setFailureType<A>(to:)();
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = v33;
  v37 = v33;
  v36[4] = v3;

  v38 = v63;
  Publisher.map<A>(_:)();

  (*(v64 + 8))(v21, v38);
  v92 = v34;
  v93 = v11;
  v40 = v90;
  v41 = v91;
  v94 = v61[12];
  v39 = v94;
  v95 = v91;
  v96 = v90;
  v97 = v35;
  v98 = v61[15];
  v42 = v98;
  v99 = v37;
  v43 = v37;
  v100 = v61[16];
  v44 = v100;
  v101 = v61[17];
  v45 = v101;
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  v48 = v60;
  v47[2] = v89;
  v47[3] = v48;
  v47[4] = v39;
  v47[5] = v41;
  v47[6] = v40;
  v47[7] = v35;
  v47[8] = v42;
  v47[9] = v43;
  v47[10] = v44;
  v47[11] = v45;
  v47[12] = KeyPath;
  static Subscribers.Demand.unlimited.getter();
  v49 = v65;
  v50 = v70;
  v51 = v88;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v72 + 8))(v51, v50);
  v52 = v67;
  v53 = v62;
  v54 = v68;
  (*(v67 + 16))(v66, v62, v68);
  v55 = v71;
  v56 = v73;
  (*(v71 + 16))(v69, v49, v73);
  v57 = v78;
  Publishers.Merge.init(_:_:)();
  v58 = v81;
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  (*(v84 + 8))(v57, v58);
  (*(v55 + 8))(v49, v56);
  return (*(v52 + 8))(v53, v54);
}

unint64_t closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v94 = a3;
  v98 = a1;
  v85 = *a2;
  v5 = v85;
  v6 = v85[10];
  v93 = v85[13];
  v104 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v88 = v78 - v8;
  v9 = v85[12];
  v103 = v85[15];
  v92 = v9;
  v87 = swift_getAssociatedTypeWitness();
  v102 = *(v87 - 8);
  v10 = MEMORY[0x1EEE9AC00](v87);
  v82 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v101 = v78 - v12;
  v13 = v5[11];
  v91 = v5[14];
  v90 = v13;
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v78 - v15;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v78 - v18;
  v20 = v5[16];
  v21 = swift_getAssociatedTypeWitness();
  v96 = *(v21 - 8);
  v97 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v81 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v99 = v78 - v25;
  v80 = v26;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v78 - v27;
  os_unfair_lock_lock(*(*(a2 + v5[25]) + 16));
  v29 = AssociatedTypeWitness;
  v30 = AssociatedTypeWitness;
  v31 = AssociatedConformanceWitness;
  (*(v20 + 24))(v30, v20);
  v32 = *(*a2 + 192);
  swift_beginAccess();
  (*(v17 + 16))(v19, a2 + v32, v16);
  v33 = (*(v31 + 48))(v19, 1, v14);
  v86 = v29;
  v89 = v20;
  if (v33)
  {
    (*(v17 + 8))(v19, v16);
    v34 = v97;
  }

  else
  {
    v35 = v79;
    (*(v31 + 16))(v79, v19, v14);
    (*(v17 + 8))(v19, v16);
    v34 = v97;
    swift_getAssociatedConformanceWitness();
    v36 = Sequence<>.contains(_:)();
    (*(v31 + 8))(v35, v14);
    if (v36)
    {
      (*(v96 + 8))(v28, v34);
      os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));
      return 1;
    }
  }

  AssociatedConformanceWitness = *(*a2 + 160);
  v38 = v82;
  v39 = v92;
  dispatch thunk of Scheduler.now.getter();
  v79 = *(*a2 + 168);
  v40 = v39;
  v41 = v87;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Strideable.advanced(by:)();
  v42 = *(v102 + 8);
  v102 += 8;
  v82 = v42;
  (v42)(v38, v41);
  v43 = v96;
  v44 = v96 + 16;
  v45 = *(v96 + 16);
  v100 = v28;
  v45(v99, v28, v34);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = v81;
  v78[1] = v44;
  v78[0] = v45;
  v45(v81, v28, v34);
  v48 = (*(v43 + 80) + 104) & ~*(v43 + 80);
  v49 = swift_allocObject();
  v50 = v103;
  v51 = v90;
  *(v49 + 2) = v104;
  *(v49 + 3) = v51;
  v52 = v94;
  *(v49 + 4) = v40;
  *(v49 + 5) = v52;
  v53 = v91;
  *(v49 + 6) = v93;
  *(v49 + 7) = v53;
  v54 = v95;
  *(v49 + 8) = v50;
  *(v49 + 9) = v54;
  v55 = v89;
  *(v49 + 10) = v89;
  v85 = v85[17];
  *(v49 + 11) = v85;
  *(v49 + 12) = v46;
  (*(v43 + 32))(&v49[v48], v47, v34);

  v56 = v50;
  Scheduler.schedule(after:interval:_:)();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine11Cancellable_pMd, &_s7Combine11Cancellable_pMR);
  v57 = v86;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v58 = swift_allocObject();
  v59 = v90;
  v58[2] = v104;
  v58[3] = v59;
  v58[4] = v40;
  v60 = v94;
  v61 = v93;
  v58[5] = v94;
  v58[6] = v61;
  v62 = v91;
  v58[7] = v91;
  v58[8] = v56;
  v63 = v95;
  v58[9] = v95;
  v58[10] = v55;
  v64 = v85;
  v58[11] = v85;
  (*(v83 + 16))(v88, v98, v57);
  v65 = *(*a2 + 176);
  swift_beginAccess();
  v66 = swift_allocObject();
  v66[2] = v104;
  v66[3] = v59;
  v66[4] = v92;
  v66[5] = v60;
  v67 = AssociatedConformanceWitness;
  v66[6] = v61;
  v66[7] = v62;
  v68 = v97;
  v66[8] = v103;
  v66[9] = v63;
  v66[10] = v89;
  v66[11] = v64;
  v66[12] = partial apply for implicit closure #1 in closure #1 in Publishers.WaitUntilAvailable.Inner.receive<A>(subscriber:);
  v66[13] = v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a2 + v65);
  v70 = v105;
  *(a2 + v65) = 0x8000000000000000;
  result = __RawDictionaryStorage.find<A>(_:)(v100, v68, v67);
  v104 = result;
  v72 = *(v70 + 16);
  v73 = (v71 & 1) == 0;
  v74 = v72 + v73;
  if (__OFADD__(v72, v73))
  {
    __break(1u);
    return result;
  }

  v75 = v71;
  v103 = type metadata accessor for Array();
  type metadata accessor for _NativeDictionary();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74))
  {
    goto LABEL_9;
  }

  v76 = v68;
  v104 = __RawDictionaryStorage.find<A>(_:)(v100, v68, v67);
  if ((v75 & 1) != (v77 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_9:
    v76 = v68;
  }

  *(a2 + v65) = v105;
  if ((v75 & 1) == 0)
  {
    v105 = (v66[12])();
    (v78[0])(v99, v100, v76);
    _NativeDictionary._insert(at:key:value:)();
  }

  Array.append(_:)();
  swift_endAccess();
  (v82)(v101, v87);
  (*(v96 + 8))(v100, v76);
  os_unfair_lock_unlock(*(*(a2 + *(*a2 + 200)) + 16));

  return 0;
}