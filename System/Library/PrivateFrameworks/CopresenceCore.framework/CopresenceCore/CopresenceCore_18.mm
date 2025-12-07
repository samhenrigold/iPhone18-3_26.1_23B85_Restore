void (*Attachment.encryptionSlots.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t key path getter for Attachment.$encryptionSlots : Attachment(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for Attachment.$encryptionSlots : Attachment(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Attachment.$encryptionSlots.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*Attachment.$encryptionSlots.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t key path getter for Attachment.status : Attachment()
{
  swift_beginAccess();

  CurrentValueSubject.value.getter();
}

uint64_t key path setter for Attachment.status : Attachment(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, &v10 - v7, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  swift_beginAccess();
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, type metadata accessor for Attachment.EncryptedAttachmentStatus);
}

uint64_t Attachment.status.setter(uint64_t a1)
{
  v2 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);
}

void (*Attachment.status.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(*(type metadata accessor for Attachment.EncryptedAttachmentStatus(0) - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v5[5] = *(v1 + v8);

  CurrentValueSubject.value.getter();
  return Attachment.status.modify;
}

void Attachment.status.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(*a1 + 32), v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v4, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v3, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  else
  {
    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v3, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  free(v3);
  free(v4);

  free(v2);
}

__n128 Attachment.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config;
  v3 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = *(v2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t Attachment.cryptorCancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t Attachment.localEncryptionUpdateTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t Attachment.__allocating_init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t a1), uint64_t *a5)
{
  v10 = swift_allocObject();
  Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t a1), uint64_t *a5)
{
  v6 = v5;
  v81 = a4;
  v83 = a3;
  v101 = a2;
  v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v99 = *(v9 - 8);
  v98 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v97 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = v69 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v69 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v91 = *(v92 - 8);
  v14 = MEMORY[0x1EEE9AC00](v92);
  v90 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = v69 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = v69 - v17;
  v78 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v80 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = v69 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v75 = v69 - v22;
  v89 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v72 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v71 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v70);
  v69[1] = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  v77 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v69 - v28;
  v74 = *a5;
  v30 = a5[1];
  v73 = a5[2];
  v31 = a5[3];
  v32 = a5[4];
  v33 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v34 = MEMORY[0x1E69E7CC0];
  aBlock = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMd, &_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMR);
  Published.init(initialValue:)();
  (*(v27 + 32))(v5 + v33, v29, v26);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask) = 0;
  v100 = type metadata accessor for OS_dispatch_queue();
  aBlock = _typeName(_:qualified:)();
  v103 = v35;
  MEMORY[0x1B2710020](45, 0xE100000000000000);
  v36 = type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v88 = a1;
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v37);

  static DispatchQoS.unspecified.getter();
  aBlock = v34;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v72 + 104))(v71, *MEMORY[0x1E69E8090], v89);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v87 = v36;
  v89 = *(v36 - 8);
  (*(v89 + 16))(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, a1, v36);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID) = v81;
  v38 = v83;
  outlined init with copy of UserNotificationCenter(v83, v5 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR) + 48);
  v81 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  v40 = v75;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v101, v75, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  *(v40 + v39) = 0;
  swift_storeEnumTagMultiPayload();
  v41 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v42 = v79;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v40, v79, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v42, v80, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
  swift_allocObject();
  v43 = CurrentValueSubject.init(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v42, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v40, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  *(v6 + v41) = v43;
  swift_endAccess();
  v44 = (v6 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config);
  *v44 = v74;
  v44[1] = v30;
  v44[2] = v73;
  v44[3] = v31;
  v44[4] = v32;
  aBlock = v43;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR, MEMORY[0x1E695BFB0]);

  v45 = v82;
  Publisher.compactMap<A>(_:)();

  swift_beginAccess();
  v46 = v84;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>, [UInt64 : AttachmentLedger_AttachmentEncryption]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR, MEMORY[0x1E695BC80]);
  v47 = v85;
  Publisher<>.assign(to:)();
  (*(v86 + 8))(v45, v47);
  v48 = v91;
  v49 = v92;
  (*(v91 + 16))(v90, v46, v92);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v48 + 8))(v46, v49);
  v50 = v38[3];
  v51 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v50);
  aBlock = (*(v51 + 16))(v50, v51);
  v52 = OBJC_IVAR____TtC14CopresenceCore10Attachment_queue;
  v53 = v38;
  *&v108 = *(v6 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  v54 = v108;
  v55 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v56 = v93;
  (*(*(v55 - 8) + 56))(v93, 1, 1, v55);
  v57 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR, MEMORY[0x1E695BED8]);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  v58 = v94;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v56, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v59 = v95;
  Publisher<>.sink(receiveValue:)();

  (*(v96 + 8))(v58, v59);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v60 = *(v6 + v52);
  v61 = v101;
  v62 = v97;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v101, v97, v81);
  outlined init with copy of UserNotificationCenter(v53, &v108);
  v63 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v64 = (v98 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v62, v65 + v63, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  *(v65 + v64) = v6;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v108, v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = swift_allocObject();
  *(v66 + 16) = partial apply for closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:);
  *(v66 + 24) = v65;
  v106 = thunk for @callee_guaranteed () -> ()partial apply;
  v107 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = thunk for @escaping @callee_guaranteed () -> ();
  v105 = &block_descriptor_26_0;
  v67 = _Block_copy(&aBlock);

  dispatch_sync(v60, v67);
  _Block_release(v67);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v61, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  (*(v89 + 8))(v88, v87);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if (v60)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v53);

    return v6;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Attachment.updateLocalEncryption()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (one-time initialization token for attachment == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.attachment);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Attempting to update local encryption for attachment %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v19 = OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask;
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20)
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v20, MEMORY[0x1E69E7CA8] + 8, v21, MEMORY[0x1E69E7288]);

    v20 = *(v1 + v19);
  }

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;
  v23[5] = v1;

  *(v1 + v19) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in Attachment.updateLocalEncryption(), v23);
}

void closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29[3] = v29 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSo17OS_dispatch_queueCGMR);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = v29 - v5;
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v34 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v29 - v9;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
    v17 = Message.debugDescription.getter();
    v29[2] = v12;
    v18 = a1;
    v20 = v19;
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, &v35);
    a1 = v18;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1AEB26000, v13, v14, "Attempting to unpack attachment %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  Attachment.unpack(attachment:)(a1);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136315138;
    v26 = Attachment.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1AEB26000, v22, v23, "Successfully unpacked attachment %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }
}

uint64_t Attachment.unpack(attachment:)(uint64_t a1)
{
  v2 = v1;
  v65 = a1;
  v55 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = type metadata accessor for UnencryptedAttachment(0);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v54 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v57 = *(v54 - 8);
  v15 = MEMORY[0x1EEE9AC00](v54);
  v58 = v16;
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v23)
  {
    if (one-time initialization token for attachment == -1)
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
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Log.attachment);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v65, v18, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v53 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = v14;
    v30 = v29;
    v51 = swift_slowAlloc();
    v63[0] = v51;
    *v30 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedger_AttachmentMetadata);
    v31 = Message.debugDescription.getter();
    v32 = v2;
    v33 = v7;
    v34 = v5;
    v36 = v35;
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v36, v63);
    v5 = v34;
    v7 = v33;
    v2 = v32;

    *(v30 + 4) = v37;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Attempting to unpack attachment %s", v30, 0xCu);
    v38 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B27120C0](v38, -1, -1);
    v39 = v30;
    v14 = v52;
    MEMORY[0x1B27120C0](v39, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  }

  v40 = *(v65 + 16);
  v41 = v59;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v65, v59, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v42 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v2;
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v41, v43 + v42, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  v64[0] = v40;
  v64[1] = partial apply for closure #1 in Attachment.unpack(attachment:);
  v64[2] = v43;
  v64[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v64[4] = 0;
  v64[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v64[6] = 0;

  specialized Sequence.first(where:)(v64, v14);

  v44 = v60;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v14, v60, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  if ((*(v61 + 48))(v44, 1, v62) == 1)
  {
    outlined destroy of NSObject?(v44, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1AEB26000, v45, v46, "Failed to decrypt attachment", v47, 2u);
      MEMORY[0x1B27120C0](v47, -1, -1);
    }

    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    return outlined destroy of NSObject?(v14, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  }

  else
  {
    v50 = v56;
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v44, v56, type metadata accessor for UnencryptedAttachment);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v50, v7, type metadata accessor for UnencryptedAttachment);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v5, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v50, type metadata accessor for UnencryptedAttachment);
    outlined destroy of NSObject?(v14, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  }
}

uint64_t closure #1 in closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
    *v11 = v13;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
    v14 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    result = (*(v9 + 8))(v11, v8);
    if (v13)
    {
      swift_beginAccess();

      CurrentValueSubject.value.getter();

      if (swift_getEnumCaseMultiPayload())
      {

        v15 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
        v16 = v7;
      }

      else
      {
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v4, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        Attachment.unpackAndRetry(attachment:)(v4);

        v15 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
        v16 = v4;
      }

      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, v15);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Attachment.unpackAndRetry(attachment:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchTime();
  v64 = *(v72 - 8);
  v7 = MEMORY[0x1EEE9AC00](v72);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v58 - v9;
  v10 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v63 = v21;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v22)
  {
    return Attachment.unpack(attachment:)(a1);
  }

  __break(1u);
  swift_once();
  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Log.attachment);

  v26 = v22;
  v60 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v59 = v4;
    v31 = v30;
    aBlock[0] = v30;
    *v29 = 136315394;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, aBlock);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    aBlock[6] = v22;
    v35 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, aBlock);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_1AEB26000, v27, v28, "Failed to unpack attachment %s, reason: %s", v29, 0x16u);
    swift_arrayDestroy();
    v39 = v31;
    v4 = v59;
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  swift_beginAccess();

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v73;
  if (EnumCaseMultiPayload)
  {

    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR);
    v43 = *&v16[*(v42 + 48)];
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    if (v43 >= *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_config + 16))
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1AEB26000, v53, v54, "Exceeded retry attempts.", v55, 2u);
        MEMORY[0x1B27120C0](v55, -1, -1);
      }

      v56 = v70;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v41, v70, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      swift_storeEnumTagMultiPayload();
      v57 = v69;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v56, v69, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();

      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v57, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v56, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    }

    else
    {
      v44 = *(v42 + 48);
      v45 = v70;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v41, v70, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      *(v45 + v44) = v43 + 1;
      swift_storeEnumTagMultiPayload();
      v46 = v69;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v45, v69, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v46, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v45, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      v47 = v62;
      static DispatchTime.now()();
      + infix(_:_:)();
      v73 = *(v64 + 8);
      v73(v47, v72);
      v48 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in Attachment.unpackAndRetry(attachment:);
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_37;
      v49 = _Block_copy(aBlock);

      v50 = v65;
      static DispatchQoS.unspecified.getter();
      v74 = MEMORY[0x1E69E7CC0];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      v51 = v67;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v71;
      MEMORY[0x1B2710670](v71, v50, v51, v49);
      _Block_release(v49);

      (*(v61 + 8))(v51, v4);
      (*(v66 + 8))(v50, v68);
      v73(v52, v72);
    }
  }
}

void *Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, uint64_t *a7)
{
  v8 = v7;
  v127 = a6;
  v142 = a5;
  v143 = a2;
  v138 = a3;
  v141 = a1;
  v11 = *v8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = &v103 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v103 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore017AttachmentLedger_G10EncryptionVG_GMR);
  v116 = *(v117 - 8);
  v15 = MEMORY[0x1EEE9AC00](v117);
  v114 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v103 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v103 - v18;
  v19 = type metadata accessor for Attachment.MMCSMetadata(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v132 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SymmetricKey();
  v139 = *(v21 - 8);
  v140 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v23 = MEMORY[0x1EEE9AC00](v107);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v110 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v108 = &v103 - v27;
  v28 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v135 = *(v28 - 8);
  v136 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v31 - 8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v103 - v34;
  v36 = a4[1];
  v128 = *a4;
  v129 = v36;
  v126 = *a7;
  v37 = a7[1];
  v125 = a7[2];
  v38 = a7[3];
  v39 = a7[4];
  v40 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v41 = MEMORY[0x1E69E7CC0];
  v145 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMd, &_sSDys6UInt64V14CopresenceCore017AttachmentLedger_D10EncryptionVGMR);
  Published.init(initialValue:)();
  v106 = v33;
  v42 = *(v33 + 32);
  v104 = v40;
  v134 = v32;
  v42(&v8[v40], v35, v32);
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_cryptorCancellables] = MEMORY[0x1E69E7CD0];
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_localEncryptionUpdateTask] = 0;
  v137 = type metadata accessor for OS_dispatch_queue();
  v118 = v11;
  v145 = _typeName(_:qualified:)();
  v146 = v43;
  MEMORY[0x1B2710020](45, 0xE100000000000000);
  v44 = type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v45);

  static DispatchQoS.unspecified.getter();
  v145 = v41;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v135 + 104))(v133, *MEMORY[0x1E69E8090], v136);
  v46 = v127;
  v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v124 = OBJC_IVAR____TtC14CopresenceCore10Attachment_queue;
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_queue] = v47;
  v133 = *(v44 - 8);
  v48 = *(v133 + 2);
  v103 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v135 = v44;
  v48(&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_id], v141, v44);
  *&v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID] = v46;
  v123 = OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor;
  v49 = v142;
  outlined init with copy of UserNotificationCenter(v142, &v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor]);
  v136 = v8;
  v50 = &v8[OBJC_IVAR____TtC14CopresenceCore10Attachment_config];
  v51 = v49;
  *v50 = v126;
  *(v50 + 1) = v37;
  *(v50 + 2) = v125;
  *(v50 + 3) = v38;
  *(v50 + 4) = v39;
  v52 = v49[3];
  v53 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v54 = v131;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v55 = v145;
  v56 = v146;
  v57 = (*(v53 + 56))(v145, v146, 0, v52, v53);
  v59 = v58;
  outlined consume of Data._Representation(v55, v56);
  v131 = v59;
  if (v59 >> 60 == 15)
  {
    v61 = v139;
    v60 = v140;
    v62 = v138;
    v63 = v143;
    outlined consume of Data?(v128, v129);
    if (one-time initialization token for attachment != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Log.attachment);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v136;
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1AEB26000, v65, v66, "Failed to encrypt the asset's key", v69, 2u);
      MEMORY[0x1B27120C0](v69, -1, -1);
    }

    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v70 = 2;
    swift_willThrow();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v62, type metadata accessor for Attachment.MMCSMetadata);
    (*(v61 + 8))(v63, v60);
    v71 = *(v133 + 1);
    v72 = v135;
    v71(v141, v135);
    v71(v68 + v103, v72);
    (*(v106 + 8))(v68 + v104, v134);

    __swift_destroy_boxed_opaque_existential_1Tm(&v123[v68]);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    return v68;
  }

  (*(v139 + 16))(v130, v143, v140);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v138, v132, type metadata accessor for Attachment.MMCSMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_14CopresenceCore017AttachmentLedger_G10EncryptionVtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_14CopresenceCore017AttachmentLedger_G10EncryptionVtGMR);
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMd, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMR) - 8);
  v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1AEE07B20;
  v76 = (v75 + v74);
  *v76 = v46;
  v77 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  MEMORY[0x1EEE9AC00](v77);
  *(&v103 - 4) = v142;
  *(&v103 - 3) = v57;
  v126 = v57;
  *(&v103 - 2) = v131;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  static Message.with(_:)();
  v127 = v54;
  if (!v54)
  {
    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_14CopresenceCore017AttachmentLedger_F10EncryptionVTt0g5Tf4g_n(v75);
    swift_setDeallocating();
    outlined destroy of NSObject?(v76, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMd, &_ss6UInt64V_14CopresenceCore017AttachmentLedger_D10EncryptionVtMR);
    swift_deallocClassInstance();
    v79 = v108;
    (*(v139 + 32))(v108, v130, v140);
    v80 = type metadata accessor for UnencryptedAttachment(0);
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v132, v79 + v80[6], type metadata accessor for Attachment.MMCSMetadata);
    v81 = (v79 + v80[5]);
    v82 = v129;
    *v81 = v128;
    v81[1] = v82;
    *(v79 + v80[7]) = v78;
    swift_storeEnumTagMultiPayload();
    v83 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    v68 = v136;
    swift_beginAccess();
    v84 = v110;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v79, v110, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v84, v109, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR);
    swift_allocObject();
    v85 = CurrentValueSubject.init(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v84, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v79, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    *(v68 + v83) = v85;
    swift_endAccess();
    v145 = v85;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedG6StatusOs5NeverOGMR, MEMORY[0x1E695BFB0]);

    v86 = v111;
    Publisher.compactMap<A>(_:)();

    swift_beginAccess();
    v87 = v115;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<Attachment.EncryptedAttachmentStatus, Never>, [UInt64 : AttachmentLedger_AttachmentEncryption]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCy14CopresenceCore10AttachmentC09EncryptedJ6StatusOs5NeverOGSDys6UInt64VAH0j7Ledger_J10EncryptionVGGMR, MEMORY[0x1E695BC80]);
    v88 = v113;
    Publisher<>.assign(to:)();
    (*(v112 + 8))(v86, v88);
    v89 = v116;
    v90 = v117;
    (*(v116 + 16))(v114, v87, v117);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    (*(v89 + 8))(v87, v90);
    v91 = v142;
    v92 = v142[3];
    v93 = v142[4];
    __swift_project_boxed_opaque_existential_1(v142, v92);
    v94 = (*(v93 + 16))(v92, v93);
    v144 = *(v68 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
    v95 = v144;
    v145 = v94;
    v96 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v97 = v119;
    (*(*(v96 - 8) + 56))(v119, 1, 1, v96);
    v98 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR, MEMORY[0x1E695BED8]);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    v99 = v120;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v97, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    v100 = v122;
    Publisher<>.sink(receiveValue:)();

    (*(v121 + 8))(v99, v100);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
    outlined consume of Data?(v126, v131);

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v138, type metadata accessor for Attachment.MMCSMetadata);
    (*(v139 + 8))(v143, v140);
    (*(v133 + 1))(v141, v135);
    __swift_destroy_boxed_opaque_existential_1Tm(v91);
    return v68;
  }

  v102 = v136;
  (*(v133 + 1))(v136 + v103, v135);
  (*(v106 + 8))(v102 + v104, v134);

  __swift_destroy_boxed_opaque_existential_1Tm(&v123[v102]);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t closure #1 in Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a2;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v12 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(&a1[v12], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v11, &a1[v12], type metadata accessor for AttachmentLedger_EncryptionID);
  (*(v9 + 56))(&a1[v12], 0, 1, v8);
  v13 = *a1;
  v14 = *(a1 + 1);
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v13, v14);
  *a1 = a3;
  *(a1 + 1) = a4;
  return result;
}

uint64_t closure #1 in closure #1 in Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
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

uint64_t closure #1 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(a1, v9, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v9, v6, type metadata accessor for UnencryptedAttachment);
    v13 = *&v6[*(v4 + 28)];

    v14 = type metadata accessor for UnencryptedAttachment;
    v15 = v6;
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v9, v12, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v13 = *(v12 + 2);

    v14 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v15 = v12;
  }

  result = outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, v14);
  *a2 = v13;
  return result;
}

void closure #2 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v46 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  if (one-time initialization token for attachment != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Log.attachment);
  v18 = *(v8 + 16);
  v18(v15, a1, v7);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v51 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v47 = v19;
    v48 = v17;
    v21 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55[0] = v46;
    *v21 = 136315394;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = v52;
      v18(v52, Strong + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v7);

      v24 = 0;
    }

    else
    {
      v24 = 1;
      v23 = v52;
    }

    (*(v8 + 56))(v23, v24, 1, v7);
    v25 = v50;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v23, v50, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v8 + 48))(v25, 1, v7) == 1)
    {
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      (*(v8 + 32))(v13, v25, v7);
      v18(v49, v13, v7);
      v27 = String.init<A>(reflecting:)();
      v26 = v28;
      (*(v8 + 8))(v13, v7);
    }

    outlined destroy of NSObject?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, v55);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v8 + 8))(v15, v7);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v55);

    *(v21 + 14) = v33;
    v34 = v47;
    _os_log_impl(&dword_1AEB26000, v47, v51, "%s observed local encryptionID updated to %s", v21, 0x16u);
    v35 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Attachment.updateLocalEncryption()();
    if (v36)
    {

      v37 = v36;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v53 = v36;
        v54 = v41;
        *v40 = 136315138;
        v42 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v43 = String.init<A>(reflecting:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v54);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_1AEB26000, v38, v39, "Failed to update localEncryption, error=%s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1B27120C0](v41, -1, -1);
        MEMORY[0x1B27120C0](v40, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in Attachment.unpackAndRetry(attachment:)(uint64_t a1)
{
  v1 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();

    CurrentValueSubject.value.getter();

    if (swift_getEnumCaseMultiPayload())
    {

      v9 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
      v10 = v6;
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, v3, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v11 = *(v8 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
      v12 = *(v8 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
      v13 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v11);
      v14 = *(*(v3 + 2) + 16);
      if (v14)
      {
        v17[1] = v13;
        v18 = v12;
        v19 = v11;
        v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v14, 0);
        v20 = specialized Sequence._copySequenceContents(initializing:)();
        v16 = v21;

        result = outlined consume of Set<String>.Iterator._Variant(v16);
        if (v20 != v14)
        {
          __break(1u);
          return result;
        }

        v12 = v18;
        v11 = v19;
      }

      else
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      (*(v12 + 72))(v15, v11, v12);

      v9 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
      v10 = v3;
    }

    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v10, v9);
  }

  return result;
}

uint64_t closure #1 in Attachment.unpack(attachment:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v320 = a3;
  v332 = a2;
  v340 = a1;
  v336 = a4;
  v4 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v333 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v328 = &v282 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v329 = &v282 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v330 = &v282 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v335 = &v282 - v11;
  v318 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v318);
  v301 = &v282 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v312 = (&v282 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v324 = &v282 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v331 = &v282 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v334 = &v282 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v286 = &v282 - v22;
  v23 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v292 = &v282 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v293);
  v295 = &v282 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Attachment.MMCSMetadata(0);
  MEMORY[0x1EEE9AC00](v291);
  v296 = &v282 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v303 = &v282 - v28;
  v308 = type metadata accessor for URL();
  v306 = *(v308 - 8);
  v29 = MEMORY[0x1EEE9AC00](v308);
  v299 = &v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v305 = &v282 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v314 = &v282 - v33;
  v319 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v323 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v315 = (&v282 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v298 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v297 = &v282 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v289 = &v282 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v288 = &v282 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v307 = &v282 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v322 = &v282 - v46;
  v326 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v325 = *(v326 - 8);
  v47 = MEMORY[0x1EEE9AC00](v326);
  v294 = (&v282 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = MEMORY[0x1EEE9AC00](v47);
  v290 = (&v282 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v300 = &v282 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v287 = (&v282 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v302 = (&v282 - v56);
  MEMORY[0x1EEE9AC00](v55);
  v313 = (&v282 - v57);
  v310 = type metadata accessor for AES.GCM.SealedBox();
  v311 = *(v310 - 8);
  v58 = MEMORY[0x1EEE9AC00](v310);
  v304 = &v282 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v309 = &v282 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v321 = &v282 - v62;
  v316 = type metadata accessor for SymmetricKey();
  v317 = *(v316 - 8);
  MEMORY[0x1EEE9AC00](v316);
  v327 = &v282 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v66 = &v282 - v65;
  v67 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v70 = (&v282 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v73 = &v282 - v72;
  v337 = type metadata accessor for UUID();
  v339 = *(v337 - 8);
  v74 = MEMORY[0x1EEE9AC00](v337);
  v76 = &v282 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v74);
  v79 = &v282 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v341 = &v282 - v80;
  v338 = v4;
  v81 = *(v4 + 28);
  v82 = v340;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v340 + v81, v66, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  v83 = *(v68 + 48);
  if (v83(v66, 1, v67) == 1)
  {
    *v70 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v83(v66, 1, v67) != 1)
    {
      outlined destroy of NSObject?(v66, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v66, v70, type metadata accessor for AttachmentLedger_EncryptionID);
  }

  v84 = *v70;
  v85 = v70[1];
  outlined copy of Data._Representation(*v70, v85);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v70, type metadata accessor for AttachmentLedger_EncryptionID);
  UUID.init(data:)(v84, v85, v73);
  v86 = v339;
  v87 = v337;
  v88 = &type metadata singleton initialization cache for ActivitySessionManager;
  if ((*(v339 + 48))(v73, 1, v337) == 1)
  {
    outlined destroy of NSObject?(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    v89 = swift_allocError();
    *v90 = 1;
    swift_willThrow();
    v91 = v338;
  }

  else
  {
    v92 = v341;
    (*(v86 + 32))(v341, v73, v87);
    v93 = *(v332 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
    v94 = *(v332 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
    v285 = (v332 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor);
    __swift_project_boxed_opaque_existential_1((v332 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v93);
    v95 = (*(v94 + 24))(v93, v94);
    LOBYTE(v93) = specialized Sequence<>.contains(_:)(v92, v95);

    if (v93)
    {
      if (one-time initialization token for attachment != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      v97 = __swift_project_value_buffer(v96, static Log.attachment);
      (*(v86 + 16))(v79, v341, v87);
      v284 = v97;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v342 = v101;
        *v100 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v86;
        v105 = v104;
        v283 = *(v103 + 8);
        v283(v79, v87);
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v105, &v342);

        *(v100 + 4) = v106;
        _os_log_impl(&dword_1AEB26000, v98, v99, "Attempting to decrypt attachment with SKI: %s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        MEMORY[0x1B27120C0](v101, -1, -1);
        MEMORY[0x1B27120C0](v100, -1, -1);
      }

      else
      {

        v283 = *(v86 + 8);
        v283(v79, v87);
      }

      v118 = v285[3];
      v119 = v285[4];
      __swift_project_boxed_opaque_existential_1(v285, v118);
      v121 = (*(v119 + 64))(*v82, v82[1], v341, 0, v118, v119);
      v123 = v122;
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_1AEB26000, v124, v125, "Attempting to create and unpack MMCSMetadata box", v127, 2u);
        MEMORY[0x1B27120C0](v127, -1, -1);
      }

      *&v342 = v121;
      *(&v342 + 1) = v123;
      v324 = v121;
      v328 = v123;
      outlined copy of Data._Representation(v121, v123);
      SymmetricKey.init<A>(data:)();
      v282 = *(v318 + 36);
      v128 = v322;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v320 + v282, v322, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v130 = v325 + 48;
      v129 = *(v325 + 48);
      v131 = v326;
      v132 = v129(v128, 1, v326);
      v325 = v130;
      v312 = v129;
      if (v132 == 1)
      {
        v133 = v313;
        *v313 = 0;
        v133[1] = 0xE000000000000000;
        v133[2] = 0;
        v133[3] = 0xE000000000000000;
        *(v133 + 2) = xmmword_1AEE0C200;
        *(v133 + 3) = xmmword_1AEE0C200;
        UnknownStorage.init()();
        v134 = *(v323 + 56);
        v135 = v319;
        v134(v133 + *(v131 + 36), 1, 1, v319);
        v134(v133 + *(v326 + 40), 1, 1, v135);
        v136 = v322;
        v131 = v326;
        v137 = v129(v322, 1, v326);
        v138 = v314;
        if (v137 != 1)
        {
          outlined destroy of NSObject?(v136, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        }
      }

      else
      {
        v133 = v313;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v128, v313, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v135 = v319;
        v138 = v314;
      }

      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v133 + *(v131 + 36), v138, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      v139 = *(v323 + 48);
      if (v139(v138, 1, v135) == 1)
      {
        v140 = v315;
        *v315 = 0;
        v140[1] = 0;
        v140[2] = 0xC000000000000000;
        UnknownStorage.init()();
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v133, type metadata accessor for AttachmentLedger_MMCSMetadata);
        if (v139(v138, 1, v135) != 1)
        {
          outlined destroy of NSObject?(v138, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
        }
      }

      else
      {
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v133, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v140 = v315;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v138, v315, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      }

      v141 = v140;
      v142 = v140[1];
      v143 = *(v141 + 16);
      outlined copy of Data._Representation(v142, v143);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v141, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v142, v143);
      v315 = static AES.GCM.open(_:using:)();
      v322 = v167;
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_1AEB26000, v168, v169, "Attempting to create and unpack Attachment box", v170, 2u);
        MEMORY[0x1B27120C0](v170, -1, -1);
      }

      v171 = v320;
      v172 = v320[5];
      v173 = v320[6];
      outlined copy of Data._Representation(v172, v173);
      v174 = v309;
      _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(v172, v173);
      v175 = v310;
      v176 = v312;
      v313 = static AES.GCM.open(_:using:)();
      v314 = v177;
      v178 = v307;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v171 + v282, v307, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
      v179 = v326;
      if (v176(v178, 1, v326) == 1)
      {
        v180 = v302;
        *v302 = 0;
        v180[1] = 0xE000000000000000;
        v180[2] = 0;
        v180[3] = 0xE000000000000000;
        *(v180 + 2) = xmmword_1AEE0C200;
        *(v180 + 3) = xmmword_1AEE0C200;
        UnknownStorage.init()();
        v181 = *(v323 + 56);
        v182 = v180 + *(v179 + 36);
        v183 = v319;
        v181(v182, 1, 1, v319);
        v184 = v183;
        v179 = v326;
        v181(v180 + *(v326 + 40), 1, 1, v184);
        v185 = v307;
        if (v176(v307, 1, v179) != 1)
        {
          outlined destroy of NSObject?(v185, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        }
      }

      else
      {
        v180 = v302;
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v178, v302, type metadata accessor for AttachmentLedger_MMCSMetadata);
      }

      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v180, type metadata accessor for AttachmentLedger_MMCSMetadata);
      v186 = v303;
      URL.init(string:)();

      v187 = v306;
      v188 = v308;
      if ((*(v306 + 48))(v186, 1, v308) == 1)
      {
        outlined destroy of NSObject?(v186, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v189 = v301;
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v171, v301, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = v179;
          v193 = swift_slowAlloc();
          v332 = swift_slowAlloc();
          *&v342 = v332;
          *v193 = 136315138;
          v194 = v298;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v189 + *(v318 + 36), v298, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          v195 = v312;
          if (v312(v194, 1, v179) == 1)
          {
            v196 = v294;
            *v294 = 0;
            v196[1] = 0xE000000000000000;
            v196[2] = 0;
            v196[3] = 0xE000000000000000;
            *(v196 + 2) = xmmword_1AEE0C200;
            *(v196 + 3) = xmmword_1AEE0C200;
            UnknownStorage.init()();
            outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v189, type metadata accessor for AttachmentLedger_AttachmentMetadata);
            v197 = *(v192 + 36);
            v326 = v193;
            v198 = *(v323 + 56);
            v199 = v319;
            v198(v196 + v197, 1, 1, v319);
            v200 = v199;
            v201 = v298;
            v198(v196 + *(v192 + 40), 1, 1, v200);
            v193 = v326;
            if (v195(v201, 1, v192) != 1)
            {
              outlined destroy of NSObject?(v201, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
            }
          }

          else
          {
            outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v189, type metadata accessor for AttachmentLedger_AttachmentMetadata);
            v196 = v294;
            outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v194, v294, type metadata accessor for AttachmentLedger_MMCSMetadata);
          }

          v215 = v196[2];
          v216 = v196[3];

          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v196, type metadata accessor for AttachmentLedger_MMCSMetadata);
          v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v215, v216, &v342);

          *(v193 + 4) = v217;
          _os_log_impl(&dword_1AEB26000, v190, v191, "Failed to convert %s to URL", v193, 0xCu);
          v218 = v332;
          __swift_destroy_boxed_opaque_existential_1Tm(v332);
          MEMORY[0x1B27120C0](v218, -1, -1);
          MEMORY[0x1B27120C0](v193, -1, -1);

          v174 = v309;
        }

        else
        {

          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v189, type metadata accessor for AttachmentLedger_AttachmentMetadata);
        }

        lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
        v89 = swift_allocError();
        *v219 = 1;
        swift_willThrow();
        outlined consume of Data._Representation(v315, v322);
        outlined consume of Data._Representation(v313, v314);
        outlined consume of Data._Representation(v324, v328);
        v220 = *(v311 + 8);
        v220(v174, v175);
        v221 = v321;
        v222 = v175;
      }

      else
      {
        v318 = *(v187 + 32);
        (v318)(v305, v186, v188);
        (*(v311 + 16))(v304, v321, v175);
        AttachmentLedger_AttachmentMetadata.uploadStatus.getter(&v342);
        v301 = v187 + 32;
        v303 = *(&v342 + 1);
        v307 = v342;
        v302 = v343;
        v202 = v288;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v171 + v282, v288, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        v203 = v326;
        v204 = v312;
        if (v312(v202, 1, v326) == 1)
        {
          v205 = v287;
          *v287 = 0;
          v205[1] = 0xE000000000000000;
          v205[2] = 0;
          v205[3] = 0xE000000000000000;
          *(v205 + 2) = xmmword_1AEE0C200;
          *(v205 + 3) = xmmword_1AEE0C200;
          UnknownStorage.init()();
          v206 = *(v203 + 36);
          v207 = *(v323 + 56);
          v208 = v319;
          v207(v205 + v206, 1, 1, v319);
          v207(v205 + *(v326 + 40), 1, 1, v208);
          v203 = v326;
          v209 = v204;
          v210 = v204(v202, 1, v326);
          v211 = v306;
          v212 = v299;
          v213 = v289;
          v214 = v300;
          if (v210 != 1)
          {
            outlined destroy of NSObject?(v202, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v209 = v204;
          v205 = v287;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v202, v287, type metadata accessor for AttachmentLedger_MMCSMetadata);
          v211 = v306;
          v212 = v299;
          v213 = v289;
          v214 = v300;
        }

        v223 = v205[1];
        v294 = *v205;
        v298 = v223;

        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v205, type metadata accessor for AttachmentLedger_MMCSMetadata);
        (*(v211 + 16))(v212, v305, v308);
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v320 + v282, v213, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        if (v209(v213, 1, v203) == 1)
        {
          *v214 = 0;
          *(v214 + 8) = 0xE000000000000000;
          *(v214 + 16) = 0;
          *(v214 + 24) = 0xE000000000000000;
          *(v214 + 32) = xmmword_1AEE0C200;
          *(v214 + 48) = xmmword_1AEE0C200;
          UnknownStorage.init()();
          v224 = *(v203 + 36);
          v225 = v203;
          v226 = *(v323 + 56);
          v227 = v319;
          v226(&v300[v224], 1, 1, v319);
          v226(&v300[*(v225 + 40)], 1, 1, v227);
          v228 = v225;
          v214 = v300;
          v229 = v209;
          if (v209(v213, 1, v228) != 1)
          {
            outlined destroy of NSObject?(v213, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v229 = v209;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v213, v214, type metadata accessor for AttachmentLedger_MMCSMetadata);
        }

        v230 = *(v214 + 32);
        v231 = *(v214 + 40);
        outlined copy of Data._Representation(v230, v231);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v214, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v232 = v297;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v320 + v282, v297, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
        v233 = v326;
        if (v229(v232, 1, v326) == 1)
        {
          v234 = v290;
          *v290 = 0;
          v234[1] = 0xE000000000000000;
          v234[2] = 0;
          v234[3] = 0xE000000000000000;
          *(v234 + 2) = xmmword_1AEE0C200;
          *(v234 + 3) = xmmword_1AEE0C200;
          UnknownStorage.init()();
          v235 = *(v323 + 56);
          v236 = v319;
          v235(v234 + *(v233 + 36), 1, 1, v319);
          v235(v234 + *(v233 + 40), 1, 1, v236);
          v237 = v297;
          if (v229(v297, 1, v233) != 1)
          {
            outlined destroy of NSObject?(v237, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
          }
        }

        else
        {
          v234 = v290;
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v232, v290, type metadata accessor for AttachmentLedger_MMCSMetadata);
        }

        v239 = v234[6];
        v238 = v234[7];
        outlined copy of Data._Representation(v239, v238);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v234, type metadata accessor for AttachmentLedger_MMCSMetadata);
        v240 = v296;
        (*(v311 + 32))(v296, v304, v310);
        v241 = v291;
        v242 = (v240 + *(v291 + 20));
        v243 = v322;
        *v242 = v315;
        v242[1] = v243;
        v244 = (v240 + v241[6]);
        v245 = v303;
        *v244 = v307;
        v244[1] = v245;
        v244[2] = v302;
        v246 = (v240 + v241[7]);
        v247 = v298;
        *v246 = v294;
        v246[1] = v247;
        (v318)(v240 + v241[8], v299, v308);
        v248 = (v240 + v241[9]);
        *v248 = v230;
        v248[1] = v231;
        v249 = (v240 + v241[10]);
        *v249 = v239;
        v249[1] = v238;
        v344 = 0;
        v342 = 0u;
        v343 = 0u;
        outlined copy of Data._Representation(v313, v314);
        BinaryDecodingOptions.init()();
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata, &protocol conformance descriptor for AttachmentLedgerMetadata_AttachmentMetadata);
        v250 = v295;
        v251 = v293;
        Message.init(serializedData:extensions:partial:options:)();
        v252 = (v250 + *(v251 + 20));
        v253 = *v252;
        v254 = v252[1];
        if (v254 >> 60 == 15)
        {
          v255 = 0;
        }

        else
        {
          v255 = *v252;
        }

        v256 = 0xC000000000000000;
        if (v254 >> 60 != 15)
        {
          v256 = v254;
        }

        v326 = v256;
        v257 = v285[3];
        v258 = v285[4];
        __swift_project_boxed_opaque_existential_1(v285, v257);
        v259 = *(v258 + 56);
        outlined copy of Data?(v253, v254);
        v260 = v259(v324, v328, 0, v257, v258);
        if (v261 >> 60 != 15)
        {
          *&v342 = v320[2];
          v267 = *(v332 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID);
          v268 = MEMORY[0x1EEE9AC00](v260);
          *(&v282 - 4) = v269;
          *(&v282 - 3) = v268;
          *(&v282 - 2) = v270;
          v271 = v268;
          v272 = v270;
          _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);

          v273 = v286;
          v274 = v338;
          static Message.with(_:)();
          (*(v333 + 56))(v273, 0, 1, v274);
          specialized Dictionary.subscript.setter(v273, v267);
          outlined consume of Data?(v271, v272);
          outlined consume of Data._Representation(v313, v314);
          outlined consume of Data._Representation(v324, v328);
          outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v295, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
          (*(v306 + 8))(v305, v308);
          v275 = *(v311 + 8);
          v276 = v310;
          v275(v309, v310);
          v275(v321, v276);
          v283(v341, v337);
          v277 = v336;
          (*(v317 + 32))(v336, v327, v316);
          v278 = type metadata accessor for UnencryptedAttachment(0);
          outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v296, v277 + v278[6], type metadata accessor for Attachment.MMCSMetadata);
          v279 = v342;
          v280 = (v277 + v278[5]);
          v281 = v326;
          *v280 = v255;
          v280[1] = v281;
          *(v277 + v278[7]) = v279;
          return (*(*(v278 - 1) + 56))(v277, 0, 1, v278);
        }

        v262 = Logger.logObject.getter();
        v263 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v262, v263))
        {
          v264 = swift_slowAlloc();
          *v264 = 0;
          _os_log_impl(&dword_1AEB26000, v262, v263, "Failed to encrypt the asset's key", v264, 2u);
          MEMORY[0x1B27120C0](v264, -1, -1);
        }

        lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
        v89 = swift_allocError();
        *v265 = 2;
        swift_willThrow();
        outlined consume of Data._Representation(v255, v326);
        outlined consume of Data._Representation(v313, v314);
        outlined consume of Data._Representation(v324, v328);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v295, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v296, type metadata accessor for Attachment.MMCSMetadata);
        (*(v306 + 8))(v305, v308);
        v220 = *(v311 + 8);
        v266 = v310;
        v220(v309, v310);
        v221 = v321;
        v222 = v266;
      }

      v220(v221, v222);
      (*(v317 + 8))(v327, v316);
      v283(v341, v337);
      v91 = v338;
    }

    else
    {
      if (one-time initialization token for attachment != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      __swift_project_value_buffer(v107, static Log.attachment);
      (*(v86 + 16))(v76, v341, v87);
      v108 = Logger.logObject.getter();
      v109 = v87;
      v110 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v108, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *&v342 = v112;
        *v111 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v114;
        v116 = *(v86 + 8);
        v116(v76, v109);
        v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v342);

        *(v111 + 4) = v117;
        _os_log_impl(&dword_1AEB26000, v108, v110, "remoteSKI %s is not known, skipping.", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
        MEMORY[0x1B27120C0](v112, -1, -1);
        MEMORY[0x1B27120C0](v111, -1, -1);
      }

      else
      {

        v116 = *(v86 + 8);
        v116(v76, v109);
      }

      v91 = v338;
      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      v89 = swift_allocError();
      *v120 = 0;
      swift_willThrow();
      v116(v341, v109);
    }

    v82 = v340;
    v88 = &type metadata singleton initialization cache for ActivitySessionManager;
  }

  if (v88[256] != -1)
  {
    swift_once();
  }

  v144 = type metadata accessor for Logger();
  __swift_project_value_buffer(v144, static Log.attachment);
  v145 = v335;
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v82, v335, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  v146 = v89;
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v342 = v150;
    *v149 = 136315394;
    v151 = v334;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v145, v334, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v152 = v333;
    (*(v333 + 56))(v151, 0, 1, v91);
    v153 = v151;
    v154 = v331;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v153, v331, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    if ((*(v152 + 48))(v154, 1, v91) == 1)
    {
      v155 = 7104878;
      v156 = 0xE300000000000000;
    }

    else
    {
      v157 = v154;
      v158 = v330;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v157, v330, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v158, v329, type metadata accessor for AttachmentLedger_AttachmentEncryption);
      v155 = String.init<A>(reflecting:)();
      v156 = v159;
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v158, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    }

    outlined destroy of NSObject?(v334, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v145, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, &v342);

    *(v149 + 4) = v160;
    *(v149 + 12) = 2080;
    v345 = v89;
    v161 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v162 = String.init<A>(reflecting:)();
    v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, &v342);

    *(v149 + 14) = v164;
    _os_log_impl(&dword_1AEB26000, v147, v148, "Failed to decrypt symmetricKey with: %s, reason: %s", v149, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v150, -1, -1);
    MEMORY[0x1B27120C0](v149, -1, -1);
  }

  else
  {

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v145, type metadata accessor for AttachmentLedger_AttachmentEncryption);
  }

  v165 = type metadata accessor for UnencryptedAttachment(0);
  return (*(*(v165 - 8) + 56))(v336, 1, 1, v165);
}

uint64_t _s9CryptoKit3AESO3GCMO9SealedBoxV8combinedAGx_tKc10Foundation12DataProtocolRzlufCAI0I0V_Tt1g5(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      outlined consume of Data._Representation(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type CryptoKitError and conformance CryptoKitError, MEMORY[0x1E6966370], MEMORY[0x1E6966378]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x1E6969080];
  v29[4] = MEMORY[0x1E6969078];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E6969080]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = MEMORY[0x1B270E950]();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  closure #1 in Data.init<A>(_:)(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t closure #1 in Attachment.updateLocalEncryption()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for UnencryptedAttachment(0);
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in Attachment.updateLocalEncryption(), 0, 0);
}

uint64_t closure #1 in Attachment.updateLocalEncryption()(uint64_t a1)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = swift_task_alloc();
    v1[5] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v3 = v1;
    v3[1] = closure #1 in Attachment.updateLocalEncryption();
    v5 = MEMORY[0x1E69E7288];
    v6 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v4, v2, v6, v4, v5);
  }

  else
  {
    static Task<>.checkCancellation()();
    v7 = swift_task_alloc();
    v1[7] = v7;
    *v7 = v1;
    v7[1] = closure #1 in Attachment.updateLocalEncryption();
    v8 = v1[4];

    return Attachment.waitForDecryption()(v8);
  }
}

{
  v2 = v1[6];
  static Task<>.checkCancellation()();
  if (v2)
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v1[7] = v5;
    *v5 = v1;
    v5[1] = closure #1 in Attachment.updateLocalEncryption();
    v6 = v1[4];

    return Attachment.waitForDecryption()(v6);
  }
}

{
  v2 = *(v1 + 64);
  static Task<>.checkCancellation()();
  if (!v2)
  {
    OS_dispatch_queue.sync<A>(execute:)();
  }

  v3 = *(v1 + 8);

  return v3();
}

{
  static Task<>.checkCancellation()();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = closure #1 in Attachment.updateLocalEncryption();
  v3 = *(v1 + 32);

  return Attachment.waitForDecryption()(v3);
}

uint64_t closure #1 in Attachment.updateLocalEncryption()()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = closure #1 in Attachment.updateLocalEncryption();
  }

  else
  {
    v2 = closure #1 in Attachment.updateLocalEncryption();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = closure #1 in Attachment.updateLocalEncryption();
  }

  else
  {
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(*(v2 + 32), type metadata accessor for UnencryptedAttachment);
    v3 = closure #1 in Attachment.updateLocalEncryption();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in Attachment.updateLocalEncryption()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  result = static Task<>.checkCancellation()();
  if (!v1)
  {
    v27 = 0;
    v19 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
    swift_beginAccess();
    v26 = v19;

    CurrentValueSubject.value.getter();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v17, v8, type metadata accessor for UnencryptedAttachment);
        v22 = *(a1 + OBJC_IVAR____TtC14CopresenceCore10Attachment_localParticipantID);
        v23 = v27;
        Attachment.localEncryptionSlot.getter(v5);
        v27 = v23;
        if (v23)
        {
          return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, type metadata accessor for UnencryptedAttachment);
        }

        v25 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
        (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
        specialized Dictionary.subscript.setter(v5, v22);
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, v15, type metadata accessor for UnencryptedAttachment);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, v12, type metadata accessor for Attachment.EncryptedAttachmentStatus);

        CurrentValueSubject.send(_:)();
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v12, type metadata accessor for Attachment.EncryptedAttachmentStatus);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v15, type metadata accessor for Attachment.EncryptedAttachmentStatus);
        outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, type metadata accessor for UnencryptedAttachment);
      }

      v21 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    }

    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v17, v21);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v24 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t Attachment.localEncryptionSlot.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (!EnumCaseMultiPayload)
  {
LABEL_10:
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, v16);
    lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
    swift_allocError();
    *v29 = 3;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload != 1)
  {
    v16 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    goto LABEL_10;
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v8, v5, type metadata accessor for UnencryptedAttachment);
  v17 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
  v18 = *(v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v17);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v20 = v33;
  v19 = v34;
  v21 = (*(v18 + 56))(v33, v34, 0, v17, v18);
  v23 = v22;
  outlined consume of Data._Representation(v20, v19);
  if (v23 >> 60 == 15)
  {
    if (one-time initialization token for attachment == -1)
    {
LABEL_6:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.attachment);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1AEB26000, v25, v26, "Failed to encrypt the asset's key", v27, 2u);
        MEMORY[0x1B27120C0](v27, -1, -1);
      }

      lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, type metadata accessor for UnencryptedAttachment);
    }

LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v31 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  MEMORY[0x1EEE9AC00](v31);
  *(&v32 - 4) = v2;
  *(&v32 - 3) = v21;
  *(&v32 - 2) = v23;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentEncryption and conformance AttachmentLedger_AttachmentEncryption, type metadata accessor for AttachmentLedger_AttachmentEncryption, &protocol conformance descriptor for AttachmentLedger_AttachmentEncryption);
  static Message.with(_:)();
  outlined consume of Data?(v21, v23);
  return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v5, type metadata accessor for UnencryptedAttachment);
}

uint64_t closure #1 in closure #1 in Attachment.unpack(attachment:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID, &protocol conformance descriptor for AttachmentLedger_EncryptionID);
  static Message.with(_:)();
  v12 = *(type metadata accessor for AttachmentLedger_AttachmentEncryption(0) + 28);
  outlined destroy of NSObject?(&a1[v12], &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v11, &a1[v12], type metadata accessor for AttachmentLedger_EncryptionID);
  (*(v9 + 56))(&a1[v12], 0, 1, v8);
  v13 = *a1;
  v14 = *(a1 + 1);
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v13, v14);
  *a1 = a3;
  *(a1 + 1) = a4;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Attachment.unpack(attachment:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 24);
  v9 = *(a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor), v8);
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

uint64_t closure #1 in Attachment.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v5 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  swift_beginAccess();

  CurrentValueSubject.value.getter();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v7;
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, v7, type metadata accessor for UnencryptedAttachment);
      v19 = *(v5 + 24);
      v20 = &v7[v19 + *(type metadata accessor for Attachment.MMCSMetadata(0) + 24)];
      v21 = v20[1];
      v30 = *v20;
      v22 = v20[2];
      v23 = v34;
      v32 = a1;
      v33 = v11;
      v24 = v35;
      v25 = v36;
      outlined copy of Attachment.MMCSMetadata.UploadStatus(v34, v35, v36);
      outlined consume of Attachment.MMCSMetadata.UploadStatus(v30, v21, v22);
      *v20 = v23;
      v20[1] = v24;
      v20[2] = v25;
      v26 = v31;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v31, v14, type metadata accessor for UnencryptedAttachment);
      swift_storeEnumTagMultiPayload();
      v27 = v33;
      outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v14, v33, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      CurrentValueSubject.send(_:)();
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v27, type metadata accessor for Attachment.EncryptedAttachmentStatus);
      outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v14, type metadata accessor for Attachment.EncryptedAttachmentStatus);

      return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v26, type metadata accessor for UnencryptedAttachment);
    }

    v18 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
  }

  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v16, v18);
  lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors();
  swift_allocError();
  *v29 = 3;
  return swift_willThrow();
}

uint64_t closure #1 in Attachment.update(_:)(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v57 = type metadata accessor for UnencryptedAttachment(0);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v56 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  v16 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v60 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v56 - v25;
  v27 = OBJC_IVAR____TtC14CopresenceCore10Attachment__status;
  swift_beginAccess();
  v61 = a1;
  v58 = v27;

  CurrentValueSubject.value.getter();

  v59 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataV_Si7attempttMR);
    v39 = *&v26[*(v38 + 48)];
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v26, v18, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    v40 = v62;
    v63 = *(v62 + 16);
    v41 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v40 + *(v41 + 28), v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    v42 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);
    if (v44(v13, 1, v42) == 1)
    {
      *v15 = xmmword_1AEE0C200;
      *(v15 + 2) = 0;
      UnknownStorage.init()();
      v62 = v38;
      v45 = v39;
      v46 = v18;
      v47 = *(v42 + 28);
      v48 = type metadata accessor for AttachmentLedger_EncryptionID(0);
      v49 = &v15[v47];
      v18 = v46;
      v39 = v45;
      v38 = v62;
      (*(*(v48 - 8) + 56))(v49, 1, 1, v48);
      if (v44(v13, 1, v42) != 1)
      {
        outlined destroy of NSObject?(v13, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
      }
    }

    else
    {
      outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v13, v15, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    }

    (*(v43 + 56))(v15, 0, 1, v42);
    specialized Dictionary.subscript.setter(v15, v63);
    v54 = *(v38 + 48);
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v18, v24, type metadata accessor for AttachmentLedger_AttachmentMetadata);
    *&v24[v54] = v39;
    swift_storeEnumTagMultiPayload();
    v55 = v60;
    outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v24, v60, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    CurrentValueSubject.send(_:)();
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v55, type metadata accessor for Attachment.EncryptedAttachmentStatus);
    outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v24, type metadata accessor for Attachment.EncryptedAttachmentStatus);

    Attachment.unpack(attachment:)(v18);
    v50 = type metadata accessor for AttachmentLedger_AttachmentMetadata;
    v51 = v18;
    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v51, v50);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v50 = type metadata accessor for Attachment.EncryptedAttachmentStatus;
    v51 = v26;
    return outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v51, v50);
  }

  outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v26, v63, type metadata accessor for UnencryptedAttachment);
  v29 = v62;
  v56 = *(v62 + 16);
  v30 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v29 + *(v30 + 28), v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
  v31 = type metadata accessor for AttachmentLedger_AttachmentEncryption(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v7, 1, v31) == 1)
  {
    *v10 = xmmword_1AEE0C200;
    *(v10 + 2) = 0;
    UnknownStorage.init()();
    v34 = *(v31 + 28);
    v35 = type metadata accessor for AttachmentLedger_EncryptionID(0);
    (*(*(v35 - 8) + 56))(&v10[v34], 1, 1, v35);
    v36 = v33(v7, 1, v31);
    v37 = v60;
    if (v36 != 1)
    {
      outlined destroy of NSObject?(v7, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMd, &_s14CopresenceCore017AttachmentLedger_C10EncryptionVSgMR);
    }
  }

  else
  {
    outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v7, v10, type metadata accessor for AttachmentLedger_AttachmentEncryption);
    v37 = v60;
  }

  (*(v32 + 56))(v10, 0, 1, v31);
  v52 = v63;
  specialized Dictionary.subscript.setter(v10, v56);
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v52, v24, type metadata accessor for UnencryptedAttachment);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v24, v37, type metadata accessor for Attachment.EncryptedAttachmentStatus);

  CurrentValueSubject.send(_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v37, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v24, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v52, type metadata accessor for UnencryptedAttachment);
}

uint64_t Attachment.description.getter()
{
  v1 = type metadata accessor for Attachment.EncryptedAttachmentStatus(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v9 = v7;
  v10 = v8;
  MEMORY[0x1B2710020](0xD000000000000011, 0x80000001AEE35FC0);
  v7 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v4);

  MEMORY[0x1B2710020](0x737574617473202CLL, 0xEA0000000000203ALL);
  swift_beginAccess();

  CurrentValueSubject.value.getter();

  _print_unlocked<A, B>(_:_:)();
  outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v3, type metadata accessor for Attachment.EncryptedAttachmentStatus);
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return v9;
}

uint64_t Attachment.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor));

  return v0;
}

uint64_t Attachment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment__encryptionSlots;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore017AttachmentLedger_F10EncryptionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore10Attachment_dataCryptor));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance Attachment@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t partial apply for closure #1 in Attachment.update(_:)()
{
  return closure #1 in Attachment.update(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

{
  v1 = *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in Attachment.update(_:)(v2, v3);
}

uint64_t outlined destroy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Attachment.MMCSMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Attachment.MMCSMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Attachment.Errors and conformance Attachment.Errors()
{
  result = lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors;
  if (!lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors;
  if (!lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Attachment.Errors and conformance Attachment.Errors);
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v9 - v5, &_s14CopresenceCore21UnencryptedAttachmentVSgMd, &_s14CopresenceCore21UnencryptedAttachmentVSgMR);
  v7 = type metadata accessor for UnencryptedAttachment(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result != 1)
  {
    return outlined init with take of AttachmentLedger_SubscribeResponse.AttachmentUpdate.EncryptionUpdated.Full(v6, a2, type metadata accessor for UnencryptedAttachment);
  }

  __break(1u);
  return result;
}

void partial apply for closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)()
{
  v1 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #3 in Attachment.init(id:attachment:dataCryptor:localParticipantID:config:)(v0 + v2, v3);
}

uint64_t partial apply for closure #1 in Attachment.updateLocalEncryption()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in Attachment.updateLocalEncryption()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in Attachment.unpack(attachment:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return closure #1 in Attachment.unpack(attachment:)(a1, v6, v7, a2);
}

void type metadata completion function for UnencryptedAttachment(uint64_t a1)
{
  type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Attachment.MMCSMetadata(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [UInt64 : AttachmentLedger_AttachmentEncryption](319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Attachment(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[UInt64 : AttachmentLedger_AttachmentEncryption]>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for Attachment.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.UpdatingBlob(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Attachment.UpdatingBlob(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for Attachment.MMCSMetadata(uint64_t a1)
{
  result = type metadata accessor for AES.GCM.SealedBox();
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

uint64_t get_enum_tag_for_layout_string_14CopresenceCore10AttachmentC12MMCSMetadataV12UploadStatusO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Attachment.MMCSMetadata.UploadStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 24))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Attachment.MMCSMetadata.UploadStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Attachment.MMCSMetadata.UploadStatus(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    result[1] = 0;
    result[2] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.Metadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.Metadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void type metadata completion function for Attachment.EncryptedAttachmentStatus(uint64_t a1)
{
  type metadata accessor for (AttachmentLedger_AttachmentMetadata, attempt: Int)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnencryptedAttachment(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttachmentLedger_AttachmentMetadata(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (AttachmentLedger_AttachmentMetadata, attempt: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AttachmentLedger_AttachmentMetadata, attempt: Int))
  {
    type metadata accessor for AttachmentLedger_AttachmentMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttachmentLedger_AttachmentMetadata, attempt: Int));
    }
  }
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in Attachment.mmcsMetadata.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMd, &_sScs12ContinuationVy14CopresenceCore10AttachmentC12MMCSMetadataVs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in Attachment.mmcsMetadata.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t PresenceSessionClientConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for PresenceSessionClientConnection.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for PresenceSessionClientConnection.handleServerDisconnectClosure : PresenceSessionClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for PresenceSessionClientConnection.handleServerDisconnectClosure : PresenceSessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

Swift::Void __swiftcall PresenceSessionClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v2, v3);
  }
}

uint64_t key path getter for PresenceSessionClientConnection.handleUpdatedPresentDevices : PresenceSessionClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TUExternalParticipant]) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v4, v5);
}

uint64_t key path setter for PresenceSessionClientConnection.handleUpdatedPresentDevices : PresenceSessionClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BMGroupActivitySessionEvent) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v3, v4);
  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v8, v9);
}

uint64_t PresenceSessionClientConnection.handleServerDisconnectClosure.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t PresenceSessionClientConnection.handleServerDisconnectClosure.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

Swift::Void __swiftcall PresenceSessionClientConnection.updatePresentDevices(devices:)(Swift::OpaquePointer devices)
{
  v3 = v1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(devices._rawValue);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);
  }
}

uint64_t @objc PresenceSessionClientConnection.updatePresentDevices(devices:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PresenceSessionParticipant();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = &a1[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
  }

  v7 = *(v5 + 1);
  v8 = a1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v6, v7);
  v6(v4);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v6, v7);
}

id PresenceSessionClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceSessionClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v2 = &v0[direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id @objc PresenceSessionClientConnection.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v3 = &a1[direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &a1[direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = a1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t PresenceSessionClientConnection.__ivar_destroyer()
{
  v1 = direct field offset for PresenceSessionClientConnection.id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure), *(v0 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure + 8));
  v3 = *(v0 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  v4 = *(v0 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v3, v4);
}

id PresenceSessionClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc PresenceSessionClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for PresenceSessionClientConnection.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure), *(a1 + direct field offset for PresenceSessionClientConnection.handleServerDisconnectClosure + 8));
  v4 = *(a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices);
  v5 = *(a1 + direct field offset for PresenceSessionClientConnection.handleUpdatedPresentDevices + 8);

  return _sxRi_zRi0_zlyytIseghHr_SgWOe(v4, v5);
}

uint64_t type metadata accessor for PresenceSessionClientConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for PresenceSessionClientConnection;
  if (!type metadata singleton initialization cache for PresenceSessionClientConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PresenceSessionClientConnection(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:), 0, 0);
}

uint64_t ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:);
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for ApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:) in conformance ForegroundApplicationLaunchBehavior(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t protocol witness for ApplicationLaunchBehavior.revokeBackgroundAuthorization(for:) in conformance ForegroundApplicationLaunchBehavior()
{
  (*(*v0 + 96))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t dispatch thunk of ForegroundApplicationLaunchBehavior.handleAppLaunch(for:options:launchProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v10(a1, a2, a3);
}

uint64_t CPManagedConfigurationObserver.allowed.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed;
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed);
  if (v2 == 2)
  {
    LOBYTE(v2) = [*(v0 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection) isGroupActivityAllowed];
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t (*CPManagedConfigurationObserver.allowed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = CPManagedConfigurationObserver.allowed.getter() & 1;
  return CPManagedConfigurationObserver.allowed.modify;
}

uint64_t CPManagedConfigurationObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPManagedConfigurationObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ActivitySession.sessionManager.modify;
}

id CPManagedConfigurationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CPManagedConfigurationObserver.init()()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver____lazy_storage___allowed] = 2;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    *&v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection] = result;
    *&v0[OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Initializing CPManagedConfigurationObserver", v6, 2u);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    v16.receiver = v1;
    v16.super_class = type metadata accessor for CPManagedConfigurationObserver();
    v7 = objc_msgSendSuper2(&v16, sel_init);
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 defaultCenter];
    v11 = *MEMORY[0x1E69ADD68];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15[4] = partial apply for closure #1 in CPManagedConfigurationObserver.init();
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v15[3] = &block_descriptor_25;
    v13 = _Block_copy(v15);

    v14 = [v10 addObserverForName:v11 object:0 queue:0 usingBlock:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in CPManagedConfigurationObserver.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AEB26000, v5, v6, "CPManagedConfigurationObserver got MCEffectiveSettingsChangedNotification notification", v7, 2u);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    v8 = [*(v3 + OBJC_IVAR____TtC14CopresenceCore30CPManagedConfigurationObserver_profileConnection) isGroupActivityAllowed];
    v9 = MEMORY[0x1E69E7D40];
    v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x70))(v8);
    if ((*((*v9 & *v3) + 0x80))(v10))
    {
      v12 = v11;
      ObjectType = swift_getObjectType();
      v14 = (*((*v9 & *v3) + 0x68))();
      (*(v12 + 8))(v14 & 1, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id CPManagedConfigurationObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPManagedConfigurationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CPManagedConfigurationObserverProtocol.delegate.modify in conformance CPManagedConfigurationObserver(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

void one-time initialization function for hostObjectInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

uint64_t DatagramEndpoint.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v0[4] & 1) == 0)
  {
    strcpy(v16, "Direct(");
    v16[1] = 0xE700000000000000;
    swift_getObjectType();
    v4 = dispatch thunk of NWGroupDescriptor.members.getter();
    v5 = type metadata accessor for NWEndpoint();
    v6 = MEMORY[0x1B2710180](v4, v5);
    v8 = v7;

    MEMORY[0x1B2710020](v6, v8);

    goto LABEL_5;
  }

  v3 = v0[3];
  if (v3 >> 60 == 15)
  {
    _StringGuts.grow(_:)(16);

    strcpy(v16, "RelaySession(");
    HIWORD(v16[1]) = -4864;
    MEMORY[0x1B2710020](v2, v1);
LABEL_5:
    MEMORY[0x1B2710020](41, 0xE100000000000000);
    return v16[0];
  }

  v9 = v0[2];
  outlined copy of Data._Representation(v9, v3);
  _StringGuts.grow(_:)(20);

  strcpy(v16, "RelaySession(");
  HIWORD(v16[1]) = -4864;
  MEMORY[0x1B2710020](v2, v1);
  MEMORY[0x1B2710020](8236, 0xE200000000000000);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = String.init<A>(reflecting:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1B2710020](v12, v14);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  outlined consume of Data?(v9, v3);
  return v16[0];
}

uint64_t getEnumTagSinglePayload for DatagramEndpoint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for DatagramEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int UnreliableMessengerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

uint64_t UnreliableMessenger.Message.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t UnreliableMessenger.Message.init(data:fromParticipantID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void __swiftcall UnreliableMessenger.Configuration.init(datagramPayloadMaxSizeBytes:outgoingQueueMaxSize:channelStreamMaxTries:channelStreamRetryInterval:seqNumBufferSize:)(CopresenceCore::UnreliableMessenger::Configuration *__return_ptr retstr, Swift::Int_optional datagramPayloadMaxSizeBytes, Swift::Int_optional outgoingQueueMaxSize, Swift::Int_optional channelStreamMaxTries, Swift::Double_optional channelStreamRetryInterval, Swift::Int_optional seqNumBufferSize)
{
  v6 = *&seqNumBufferSize.is_nil;
  value = 1180;
  if (!datagramPayloadMaxSizeBytes.is_nil)
  {
    value = datagramPayloadMaxSizeBytes.value;
  }

  v8 = 1000;
  if (!outgoingQueueMaxSize.is_nil)
  {
    v8 = outgoingQueueMaxSize.value;
  }

  v9 = 3;
  if (!channelStreamMaxTries.is_nil)
  {
    v9 = channelStreamMaxTries.value;
  }

  v10 = *&channelStreamRetryInterval.is_nil;
  if (seqNumBufferSize.value)
  {
    v10 = 1.0;
  }

  retstr->datagramPayloadMaxSizeBytes = value;
  retstr->outgoingQueueMaxSize = v8;
  retstr->channelStreamMaxTries = v9;
  if (v11)
  {
    v6 = 1024;
  }

  retstr->channelStreamRetryInterval = v10;
  retstr->seqNumBufferSize = v6;
}

uint64_t UnreliableMessenger.SendItem.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t UnreliableMessenger.SendItem.completion.getter()
{
  v1 = *(v0 + 40);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v1, *(v0 + 48));
  return v1;
}

uint64_t UnreliableMessenger.SendItem.sentAt.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t UnreliableMessenger.SendItem.sentAt.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return outlined consume of Data?(v5, v6);
}

double UnreliableMessenger.SendItem.__allocating_init(data:toParticipantIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  result = 0.0;
  *(v10 + 56) = xmmword_1AEE07B50;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  return result;
}

uint64_t UnreliableMessenger.SendItem.init(data:toParticipantIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = xmmword_1AEE07B50;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

void *UnreliableMessenger.SendItem.deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 40), *(v0 + 48));
  outlined consume of Data?(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t UnreliableMessenger.SendItem.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 40), *(v0 + 48));
  outlined consume of Data?(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t UnreliableMessenger.State.description.getter(unsigned __int8 a1)
{
  v1 = 0x6C616974696E49;
  v2 = 0x63656E6E6F636552;
  v3 = 0x676E697474756853;
  if (a1 != 4)
  {
    v3 = 0x6E776F6474756853;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x676E697472617453;
  if (a1 != 1)
  {
    v4 = 0x7964616552;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnreliableMessenger.State()
{
  v1 = *v0;
  v2 = 0x6C616974696E49;
  v3 = 0x63656E6E6F636552;
  v4 = 0x676E697474756853;
  if (v1 != 4)
  {
    v4 = 0x6E776F6474756853;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E697472617453;
  if (v1 != 1)
  {
    v5 = 0x7964616552;
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

Swift::Int UnreliableMessenger.BufferFull.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

uint64_t UnreliableMessenger.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double UnreliableMessenger.config.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

uint64_t UnreliableMessenger.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UnreliableMessenger.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnreliableMessenger.delegate.modify;
}

void UnreliableMessenger.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t UnreliableMessenger.serviceProvider.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t UnreliableMessenger.activeReliableSubscribers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for UnreliableMessenger.activeReliableSubscribers : UnreliableMessenger@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for UnreliableMessenger.activeReliableSubscribers : UnreliableMessenger(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t UnreliableMessenger.activeReliableSubscribers.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*UnreliableMessenger.activeReliableSubscribers.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ConversationManagerClient.activeSessionContainer.modify;
}

uint64_t UnreliableMessenger.$activeReliableSubscribers.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for UnreliableMessenger.$activeReliableSubscribers : UnreliableMessenger(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for UnreliableMessenger.$activeReliableSubscribers : UnreliableMessenger(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t UnreliableMessenger.$activeReliableSubscribers.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*UnreliableMessenger.$activeReliableSubscribers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivitySession.$state.modify;
}

uint64_t UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a8;
  v58 = a7;
  v48 = a6;
  v61 = a5;
  v47 = a4;
  v46 = a1;
  v59 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v41 - v15;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v45 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v44 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - v23;
  v43 = *a3;
  v42 = *(a3 + 2);
  v25 = *(a3 + 3);
  v41 = *(a3 + 4);
  v26 = swift_allocObject();
  *(v26 + 16) = a10;
  *(v26 + 24) = a11;
  v49 = a11;
  v27 = swift_allocObject();
  *(v27 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 152) = 0;
  *(v27 + 136) = 0u;
  *(v27 + 120) = 0u;
  *(v27 + 168) = 0u;
  *(v27 + 184) = 0u;
  v28 = MEMORY[0x1E69E7CC8];
  *(v27 + 200) = 0;
  *(v27 + 208) = v28;
  *(v27 + 216) = v28;
  *(v27 + 224) = v28;
  v29 = MEMORY[0x1E69E7CC0];
  *(v27 + 232) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  swift_allocObject();

  *(v27 + 240) = PassthroughSubject.init()();
  *(v27 + 248) = 0;
  *(v27 + 256) = v28;
  *(v27 + 264) = 0;
  v30 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v64 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v22 + 32))(v27 + v30, v24, v21);
  v31 = v46;
  *(v27 + 16) = v46;
  *(v27 + 24) = a2;
  *(v27 + 32) = v43;
  *(v27 + 48) = v42;
  *(v27 + 56) = v25;
  v32 = v47;
  *(v27 + 64) = v41;
  *(v27 + 72) = v32;
  swift_beginAccess();
  *(v27 + 88) = v48;
  swift_unknownObjectWeakAssign();
  v33 = *(v27 + 184);
  v34 = *(v27 + 192);
  v36 = v59;
  v35 = v60;
  *(v27 + 184) = v60;
  *(v27 + 192) = v36;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v35, v36);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v33, v34);
  *(v27 + 96) = partial apply for implicit closure #1 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:retainRefOnStart:serviceProvider:);
  *(v27 + 104) = v26;
  type metadata accessor for OS_dispatch_queue();
  v62 = 0xD000000000000014;
  v63 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v31, a2);

  static DispatchQoS.unspecified.getter();
  v62 = v29;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8090], v54);
  *(v27 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v27 + 160) = 0;
  swift_beginAccess();
  v37 = v55;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR, MEMORY[0x1E695C068]);
  v38 = v56;
  v39 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();

  _sxRi_zRi0_zlyytIseghHr_SgWOe(v60, v59);

  (*(v57 + 8))(v37, v38);
  *(v27 + 264) = v39;

  outlined destroy of NSObject?(v58, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  return v27;
}

uint64_t UnreliableMessenger.__allocating_init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a8;
  v63 = a7;
  v52 = a6;
  v67 = a5;
  v51 = a4;
  v50 = a1;
  v65 = a9;
  v66 = a10;
  v64 = a12;
  v53 = a11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v48 - v14;
  v58 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v49 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = swift_allocObject();
  v48 = *a3;
  v24 = *(a3 + 2);
  v25 = *(a3 + 3);
  v26 = *(a3 + 4);
  *(v23 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 152) = 0;
  *(v23 + 136) = 0u;
  *(v23 + 120) = 0u;
  *(v23 + 168) = 0u;
  *(v23 + 184) = 0u;
  v27 = MEMORY[0x1E69E7CC8];
  *(v23 + 200) = 0;
  *(v23 + 208) = v27;
  *(v23 + 216) = v27;
  *(v23 + 224) = v27;
  v28 = MEMORY[0x1E69E7CC0];
  *(v23 + 232) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  swift_allocObject();
  *(v23 + 240) = PassthroughSubject.init()();
  *(v23 + 248) = 0;
  *(v23 + 256) = v27;
  *(v23 + 264) = 0;
  v29 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  aBlock = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v20 + 32))(v23 + v29, v22, v19);
  v30 = v50;
  *(v23 + 16) = v50;
  *(v23 + 24) = a2;
  *(v23 + 32) = v48;
  *(v23 + 48) = v24;
  *(v23 + 56) = v25;
  v31 = v51;
  *(v23 + 64) = v26;
  *(v23 + 72) = v31;
  swift_beginAccess();
  *(v23 + 88) = v52;
  swift_unknownObjectWeakAssign();
  v32 = *(v23 + 184);
  v33 = *(v23 + 192);
  v35 = v65;
  v34 = v66;
  *(v23 + 184) = v65;
  *(v23 + 192) = v34;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v35, v34);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v32, v33);
  v36 = v64;
  *(v23 + 96) = v53;
  *(v23 + 104) = v36;
  type metadata accessor for OS_dispatch_queue();
  aBlock = 0xD000000000000014;
  v69 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v30, a2);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v57 + 104))(v56, *MEMORY[0x1E69E8090], v58);
  *(v23 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v23 + 160) = 0;
  swift_beginAccess();
  v37 = v59;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR, MEMORY[0x1E695C068]);
  v38 = v60;
  v39 = Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v37, v38);
  *(v23 + 264) = v39;

  if ((v62 & 1) == 0)
  {
    goto LABEL_4;
  }

  v40 = *(v23 + 112);
  v41 = v63;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v63, v74, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v42 = swift_allocObject();
  v43 = v74[1];
  *(v42 + 16) = v74[0];
  *(v42 + 32) = v43;
  *(v42 + 48) = v75;
  *(v42 + 56) = v23;
  v44 = swift_allocObject();
  *(v44 + 16) = partial apply for closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:);
  *(v44 + 24) = v42;
  v72 = _sIg_Ieg_TRTA_0;
  v73 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = thunk for @escaping @callee_guaranteed () -> ();
  v71 = &block_descriptor_26;
  v45 = _Block_copy(&aBlock);

  dispatch_sync(v40, v45);
  _Block_release(v45);

  swift_unknownObjectRelease();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v65, v66);
  outlined destroy of NSObject?(v41, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    outlined destroy of NSObject?(v63, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);

    _sxRi_zRi0_zlyytIseghHr_SgWOe(v65, v66);
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v63 = a8;
  v64 = a7;
  v53 = a6;
  v68 = a5;
  v52 = a4;
  v51 = a1;
  v66 = a9;
  v67 = a10;
  v65 = a12;
  v54 = a11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - v16;
  v59 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v49 = *a3;
  v25 = *(a3 + 2);
  v26 = *(a3 + 3);
  v27 = *(a3 + 4);
  *(v13 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 152) = 0;
  *(v13 + 136) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 184) = 0u;
  v28 = MEMORY[0x1E69E7CC8];
  *(v13 + 200) = 0;
  *(v13 + 208) = v28;
  *(v13 + 216) = v28;
  *(v13 + 224) = v28;
  v29 = MEMORY[0x1E69E7CC0];
  *(v13 + 232) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
  swift_allocObject();
  *(v13 + 240) = PassthroughSubject.init()();
  *(v13 + 248) = 0;
  *(v13 + 256) = v28;
  *(v13 + 264) = 0;
  v30 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  aBlock = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  Published.init(initialValue:)();
  (*(v22 + 32))(v13 + v30, v24, v21);
  v31 = v51;
  *(v13 + 16) = v51;
  *(v13 + 24) = a2;
  *(v13 + 32) = v49;
  *(v13 + 48) = v25;
  *(v13 + 56) = v26;
  v32 = v52;
  *(v13 + 64) = v27;
  *(v13 + 72) = v32;
  swift_beginAccess();
  *(v13 + 88) = v53;
  swift_unknownObjectWeakAssign();
  v33 = *(v13 + 184);
  v34 = *(v13 + 192);
  v36 = v66;
  v35 = v67;
  *(v13 + 184) = v66;
  *(v13 + 192) = v35;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v36, v35);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v33, v34);
  v37 = v65;
  *(v13 + 96) = v54;
  *(v13 + 104) = v37;
  type metadata accessor for OS_dispatch_queue();
  aBlock = 0xD000000000000014;
  v70 = 0x80000001AEE361E0;

  MEMORY[0x1B2710020](v31, a2);

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v58 + 104))(v57, *MEMORY[0x1E69E8090], v59);
  *(v13 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v13 + 160) = 0;
  swift_beginAccess();
  v38 = v60;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMd, &_s7Combine9PublishedV9PublisherVySays6UInt64VG_GMR, MEMORY[0x1E695C068]);
  v39 = v61;
  v40 = Publisher<>.sink(receiveValue:)();

  (*(v62 + 8))(v38, v39);
  *(v13 + 264) = v40;

  if ((v63 & 1) == 0)
  {
    goto LABEL_4;
  }

  v41 = *(v13 + 112);
  v42 = v64;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v64, v75, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v43 = swift_allocObject();
  v44 = v75[1];
  *(v43 + 16) = v75[0];
  *(v43 + 32) = v44;
  *(v43 + 48) = v76;
  *(v43 + 56) = v13;
  v45 = swift_allocObject();
  *(v45 + 16) = closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)partial apply;
  *(v45 + 24) = v43;
  v73 = thunk for @callee_guaranteed () -> ()partial apply;
  v74 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v70 = 1107296256;
  v71 = thunk for @escaping @callee_guaranteed () -> ();
  v72 = &block_descriptor_29_1;
  v46 = _Block_copy(&aBlock);

  dispatch_sync(v41, v46);
  _Block_release(v46);

  swift_unknownObjectRelease();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v66, v67);
  outlined destroy of NSObject?(v42, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    outlined destroy of NSObject?(v64, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);

    _sxRi_zRi0_zlyytIseghHr_SgWOe(v66, v67);
    swift_unknownObjectRelease();
  }

  return v13;
}

void closure #1 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVys6UInt64VGMd, &_ss20CollectionDifferenceVys6UInt64VGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v62 - v5;
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v64 = v7;
    v65 = v4;
    v72 = v7;
    swift_beginAccess();
    v10 = *(*(v9 + 256) + 16);
    v68 = v9;
    v66 = v6;
    if (!v10)
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_10;
    }

    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt64V_Tt1g5(v10, 0);
    v12 = specialized Sequence._copySequenceContents(initializing:)();
    v13 = v70[0];

    outlined consume of Set<String>.Iterator._Variant(v13);
    if (v12 == v10)
    {
      v9 = v68;
LABEL_10:
      v70[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [UInt64] and conformance [A], &_sSays6UInt64VGMd, &_sSays6UInt64VGMR, MEMORY[0x1E69E6310]);
      BidirectionalCollection<>.difference<A>(from:)();

      v63 = v3;
      v18 = CollectionDifference.removals.getter();
      v20 = *(v18 + 16);
      v62[1] = v18;
      if (v20)
      {
        v21 = (v18 + 57);
        v22 = MEMORY[0x1E69E7CC0];
        *&v19 = 136315138;
        v67 = v19;
        do
        {
          v23 = *(v21 - 17);
          if (*v21)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
            }

            v25 = *(v22 + 2);
            v24 = *(v22 + 3);
            if (v25 >= v24 >> 1)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
            }

            *(v22 + 2) = v25 + 1;
            *&v22[8 * v25 + 32] = v23;
          }

          else
          {
            v26 = *(v21 - 25);
            v27 = *(v21 - 9);
            v28 = *(v21 - 1);
            if (one-time initialization token for log != -1)
            {
              swift_once();
            }

            v29 = type metadata accessor for Logger();
            __swift_project_value_buffer(v29, log);
            v30 = Logger.logObject.getter();
            v31 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v69 = v22;
              v33 = v32;
              v34 = swift_slowAlloc();
              v72 = v34;
              *v33 = v67;
              v70[0] = v26;
              v70[1] = v23;
              v70[2] = v27;
              LOWORD(v71) = v28;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOys6UInt64V_GMd, &_ss20CollectionDifferenceV6ChangeOys6UInt64V_GMR);
              v35 = String.init<A>(reflecting:)();
              v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v72);

              *(v33 + 4) = v37;
              _os_log_impl(&dword_1AEB26000, v30, v31, "Learned about insertion when looking at removals: %s", v33, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v34);
              v38 = v34;
              v9 = v68;
              MEMORY[0x1B27120C0](v38, -1, -1);
              v39 = v33;
              v22 = v69;
              MEMORY[0x1B27120C0](v39, -1, -1);
            }
          }

          v21 += 32;
          --v20;
        }

        while (v20);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, log);
      v41 = v64;

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      v44 = v22;
      if (os_log_type_enabled(v42, v43))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v70[0] = v46;
        *v45 = 136315394;
        v47 = MEMORY[0x1E69E76D8];
        v48 = MEMORY[0x1B2710180](v41, MEMORY[0x1E69E76D8]);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v70);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = MEMORY[0x1B2710180](v44, v47);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v70);
        v22 = v44;

        *(v45 + 14) = v53;
        _os_log_impl(&dword_1AEB26000, v42, v43, "[UnreliableMessenger] Learned about new subscribers list: %s, removedParticipants: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v46, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }

      v54 = *(v22 + 2);
      if (v54)
      {
        v55 = (v44 + 32);
        do
        {
          v56 = *v55++;
          swift_beginAccess();
          v57 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
          if (v58)
          {
            v59 = v57;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = *(v9 + 256);
            v72 = v61;
            *(v9 + 256) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v61 = v72;
            }

            specialized _NativeDictionary._delete(at:)(v59, v61);
            *(v9 + 256) = v61;
          }

          swift_endAccess();
          --v54;
        }

        while (v54);
      }

      (*(v65 + 8))(v66, v63);
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (one-time initialization token for log != -1)
  {
LABEL_38:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, log);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEB26000, v15, v16, "[UnreliableMessenger] Can't clear seqNumBuffers since we lost refernce to self.", v17, 2u);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }
}

void closure #2 in UnreliableMessenger.init(name:config:localParticipantID:delegate:dataCryptorProvider:startImmediately:retainRefOnStart:serviceProvider:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v8, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v9)
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v8, v10);
    UnreliableMessenger._start(dataCryptorProvider:)(v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    outlined destroy of NSObject?(&v8, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, log);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), v10);
      _os_log_impl(&dword_1AEB26000, v4, v5, "dataCryptorProvider required for immediate start, topic=%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }
  }
}

uint64_t objectdestroy_12Tm_0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void UnreliableMessenger._start(dataCryptorProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 112);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (*(v2 + 160))
  {
    return;
  }

  outlined init with copy of UserNotificationCenter(a1, v20);
  swift_beginAccess();
  outlined assign with take of TopicCryptorProvider?(v20, v2 + 120);
  swift_endAccess();
  *(v2 + 160) = 1;
  v10 = *(v2 + 184);
  if (v10)
  {
    v11 = *(v2 + 192);

    v13 = v10(v12);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v10, v11);
    *(v2 + 200) = v13;
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, log);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), v20);
    _os_log_impl(&dword_1AEB26000, v15, v16, "Bootstrapping channel-stream=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  UnreliableMessenger.setupChannelStream()();
}

void UnreliableMessenger.setupChannelStream()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v80 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMR);
  v84 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v62 - v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMR);
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_14CopresenceCore19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_14CopresenceCore19UnreliableMessengerC10BufferFullOGMR);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = (&v62 - v8);
  v9 = type metadata accessor for Publishers.PrefetchStrategy();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMR);
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMd, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMR);
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMd, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMR);
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v19 = &v62 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMd, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMR);
  v71 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v62 - v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 112);
  *v24 = v25;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v79 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + 160) <= 3u)
  {
    LOBYTE(v86) = 1;

    PassthroughSubject.send(completion:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR);
    swift_allocObject();
    v26 = PassthroughSubject.init()();
    v64 = v4;
    v27 = v26;
    *(v1 + 240) = v26;

    v86 = v27;
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<EgressMessage<DG_Datagram>, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAD11DG_DatagramVGs5NeverOGMR, MEMORY[0x1E695BF88]);
    lazy protocol witness table accessor for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull();
    Publisher<>.setFailureType<A>(to:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull> and conformance Publishers.SetFailureType<A, B>, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMd, &_s7Combine10PublishersO14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAH11DG_DatagramVGs5NeverOGAH19UnreliableMessengerC10BufferFullOGMR, MEMORY[0x1E695BCF8]);
    v62 = v17;
    Publisher.map<A>(_:)();
    (*(v65 + 8))(v13, v11);
    v28 = v1;
    v30 = v75;
    v29 = v76;
    v31 = v72;
    (*(v75 + 104))(v72, *MEMORY[0x1E695BD28], v76);
    v32 = v68;
    *v68 = partial apply for closure #2 in UnreliableMessenger.setupChannelStream();
    v32[1] = v28;
    v63 = v28;
    v34 = v77;
    v33 = v78;
    (*(v77 + 104))(v32, *MEMORY[0x1E695BD48], v78);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMd, &_s7Combine10PublishersO3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAJ11DG_DatagramVGs5NeverOGAJ19UnreliableMessengerC10BufferFullOGAJ06AnyRawkN0_pGMR, MEMORY[0x1E695BD60]);

    v35 = v66;
    v36 = v62;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v31, v29);
    (*(v67 + 8))(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMd, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMd, &_s7Combine10PublishersO6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAL11DG_DatagramVGs5NeverOGAL19UnreliableMessengerC0C4FullOGAL06AnyRawlO0_pGGMR, MEMORY[0x1E695BDD8]);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Empty<AnyRawEgressDatagram, Never> and conformance Empty<A, B>, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMd, &_s7Combine5EmptyVy14CopresenceCore20AnyRawEgressDatagram_ps5NeverOGMR, MEMORY[0x1E695C018]);
    v37 = v69;
    v38 = v73;
    Publisher.catch<A>(_:)();
    (*(v70 + 8))(v19, v38);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Catch<Publishers.Buffer<Publishers.Map<Publishers.SetFailureType<PassthroughSubject<EgressMessage<DG_Datagram>, Never>, UnreliableMessenger.BufferFull>, AnyRawEgressDatagram>>, Empty<AnyRawEgressDatagram, Never>> and conformance Publishers.Catch<A, B>, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMd, &_s7Combine10PublishersO5CatchVy_AC6BufferVy_AC3MapVy_AC14SetFailureTypeVy_AA18PassthroughSubjectCy14CopresenceCore13EgressMessageVyAN11DG_DatagramVGs5NeverOGAN19UnreliableMessengerC0D4FullOGAN06AnyRawmP0_pGGAA5EmptyVyANA0__pAUGGMR, MEMORY[0x1E695BDA0]);
    v39 = v74;
    v40 = Publisher.eraseToAnyPublisher()();
    v41 = (*(v71 + 8))(v37, v39);
    v42 = v63;
    v86 = (*(v63 + 12))(v41);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v40;
    v78 = v40;

    v77 = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMR);
    v44 = MEMORY[0x1E695BED8];
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UnreliableMessengerServiceProvider, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34UnreliableMessengerServiceProvider_ps5NeverOGMR, MEMORY[0x1E695BED8]);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AnyRawIngressDatagram, DatagramChannelError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B18RawIngressDatagram_pAD0H12ChannelErrorOGMR, v44);
    v45 = v81;
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    v46 = v79;
    v86 = v79;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = v80;
    (*(*(v47 - 8) + 56))(v80, 1, 1, v47);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<AnyRawIngressDatagram, DatagramChannelError>, Publishers.SetFailureType<AnyPublisher<UnreliableMessengerServiceProvider, Never>, DatagramChannelError>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0E18RawIngressDatagram_pAH0K12ChannelErrorOGAC14SetFailureTypeVy_AGyAH34UnreliableMessengerServiceProvider_ps5NeverOGAKGGMR, MEMORY[0x1E695BE40]);
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
    v49 = v46;
    v50 = v82;
    v51 = v85;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v48, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.FlatMap<AnyPublisher<AnyRawIngressDatagram, DatagramChannelError>, Publishers.SetFailureType<AnyPublisher<UnreliableMessengerServiceProvider, Never>, DatagramChannelError>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC7FlatMapVy_AA12AnyPublisherVy14CopresenceCore0G18RawIngressDatagram_pAJ0M12ChannelErrorOGAC14SetFailureTypeVy_AIyAJ34UnreliableMessengerServiceProvider_ps5NeverOGAMGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
    swift_retain_n();
    v52 = v64;
    v53 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v84 + 8))(v50, v52);
    *(v42 + 31) = v53;

    *(v42 + 160) = 2;
    UnreliableMessenger.attemptFlushEgressQueue()();

    (*(v83 + 8))(v45, v51);
    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, log);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86 = v58;
    *v57 = 136315138;
    v59 = UnreliableMessenger.description.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v86);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_1AEB26000, v55, v56, "Skipping channel-stream setup, closing, %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1B27120C0](v58, -1, -1);
    MEMORY[0x1B27120C0](v57, -1, -1);
  }
}

uint64_t UnreliableMessenger.deinit()
{
  v1 = v0;
  if (*(v0 + 248))
  {

    AnyCancellable.cancel()();
  }

  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + 80);

  outlined destroy of NSObject?(v0 + 120, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(*(v0 + 184), *(v0 + 192));
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC14CopresenceCore19UnreliableMessenger__activeReliableSubscribers;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySays6UInt64VGGMd, &_s7Combine9PublishedVySays6UInt64VGGMR);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t UnreliableMessenger.__deallocating_deinit()
{
  UnreliableMessenger.deinit();

  return swift_deallocClassInstance();
}

unint64_t UnreliableMessenger.description.getter()
{
  MEMORY[0x1B2710020](0x3D666C6573, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](*(v0 + 16), *(v0 + 24));
  v1 = 0x7964616552;
  v2 = 0xEC000000676E6974;
  v3 = *(v0 + 160);
  v4 = 0x63656E6E6F636552;
  v5 = 0xEC0000006E776F44;
  v6 = 0x676E697474756853;
  if (v3 != 4)
  {
    v6 = 0x6E776F6474756853;
    v5 = 0xE800000000000000;
  }

  if (v3 != 3)
  {
    v4 = v6;
    v2 = v5;
  }

  v7 = 0xE800000000000000;
  if (v3 == 1)
  {
    v1 = 0x676E697472617453;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*(v0 + 160))
  {
    v8 = v7;
  }

  else
  {
    v1 = 0x6C616974696E49;
    v8 = 0xE700000000000000;
  }

  if (*(v0 + 160) <= 2u)
  {
    v9 = v1;
  }

  else
  {
    v9 = v4;
  }

  if (*(v0 + 160) <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  MEMORY[0x1B2710020](v9, v10);

  _StringGuts.grow(_:)(21);

  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v11);

  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v12);

  _StringGuts.grow(_:)(24);

  swift_beginAccess();

  v13 = Dictionary.description.getter();
  v15 = v14;

  MEMORY[0x1B2710020](v13, v15);

  _StringGuts.grow(_:)(35);

  swift_beginAccess();

  v16 = Dictionary.description.getter();
  v18 = v17;

  MEMORY[0x1B2710020](v16, v18);

  _StringGuts.grow(_:)(34);

  swift_beginAccess();

  v19 = Dictionary.description.getter();
  v21 = v20;

  MEMORY[0x1B2710020](v19, v21);

  _StringGuts.grow(_:)(31);

  swift_beginAccess();
  if (*(v0 + 232) >> 62)
  {
    __CocoaSet.count.getter();
  }

  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v22);

  _StringGuts.grow(_:)(26);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6369706F74, 0xE600000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6574617473, 0xE600000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE36200);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0x3D6D754E716573, 0xE700000000000000);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000016, 0x80000001AEE36220);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000021, 0x80000001AEE36240);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD000000000000020, 0x80000001AEE36270);

  MEMORY[0x1B2710020](32, 0xE100000000000000);
  MEMORY[0x1B2710020](0xD00000000000001DLL, 0x80000001AEE362A0);

  return 0;
}

void UnreliableMessenger.updateState(state:)(unsigned __int8 a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 112);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v2 = *(v3 + 160);
    *(v3 + 160) = a1;
    if (one-time initialization token for log == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, log);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    v16 = 0xE700000000000000;
    v17 = 0x63656E6E6F636552;
    *v14 = 136315650;
    v18 = 0xEC000000676E6974;
    v19 = 0x676E697474756853;
    v20 = 0xEC0000006E776F44;
    if (v2 != 4)
    {
      v19 = 0x6E776F6474756853;
      v20 = 0xE800000000000000;
    }

    if (v2 != 3)
    {
      v17 = v19;
      v18 = v20;
    }

    v21 = 0xE800000000000000;
    v22 = 0x676E697472617453;
    if (v2 != 1)
    {
      v22 = 0x7964616552;
      v21 = 0xE500000000000000;
    }

    if (v2)
    {
      v16 = v21;
    }

    else
    {
      v22 = 0x6C616974696E49;
    }

    if (v2 <= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = v17;
    }

    if (v2 <= 2)
    {
      v24 = v16;
    }

    else
    {
      v24 = v18;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v37);

    *(v14 + 4) = v25;
    v26 = 0xE700000000000000;
    v27 = 0x63656E6E6F636552;
    *(v14 + 12) = 2080;
    v28 = 0xEC000000676E6974;
    v29 = 0x676E697474756853;
    v30 = 0xEC0000006E776F44;
    if (a1 != 4)
    {
      v29 = 0x6E776F6474756853;
      v30 = 0xE800000000000000;
    }

    if (a1 != 3)
    {
      v27 = v29;
      v28 = v30;
    }

    v31 = 0xE800000000000000;
    v32 = 0x676E697472617453;
    if (a1 != 1)
    {
      v32 = 0x7964616552;
      v31 = 0xE500000000000000;
    }

    if (a1)
    {
      v26 = v31;
    }

    else
    {
      v32 = 0x6C616974696E49;
    }

    if (a1 <= 2u)
    {
      v33 = v32;
    }

    else
    {
      v33 = v27;
    }

    if (a1 <= 2u)
    {
      v34 = v26;
    }

    else
    {
      v34 = v28;
    }

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v37);

    *(v14 + 14) = v35;
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v37);
    _os_log_impl(&dword_1AEB26000, v12, v13, "Updated state old-state=%s new-state=%s topic=%s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }
}

uint64_t closure #1 in UnreliableMessenger.setupChannelStream()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  a2[4] = &protocol witness table for <> EgressMessage<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, boxed_opaque_existential_1, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
}

void closure #2 in UnreliableMessenger.setupChannelStream()()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, log);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = UnreliableMessenger.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, oslog, v1, "[Send] Unexpected intermediate buffer-filled %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1B27120C0](v3, -1, -1);
    MEMORY[0x1B27120C0](v2, -1, -1);
  }
}

uint64_t closure #3 in UnreliableMessenger.setupChannelStream()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEDB5DC8](1, v0, v1, v2);
}

uint64_t closure #4 in UnreliableMessenger.setupChannelStream()@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = a2[2];
  v13 = a2[3];
  v15 = a2[5];
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = (*(v12 + 16))(v14, v13, a3, v15, v10, v11, v12);
  result = outlined destroy of NSObject?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *a4 = v17;
  return result;
}

void UnreliableMessenger.handleChannelStreamClosed(completedWith:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchTime();
  v96 = *(v106 - 8);
  v6 = MEMORY[0x1EEE9AC00](v106);
  v94 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v104 = &v89 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v109 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v89 - v18;
  v20 = type metadata accessor for DatagramChannelError(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v111 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v107 = &v89 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v89 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v89 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v89 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v1 + 112);
  *v35 = v36;
  (*(v33 + 104))(v35, *MEMORY[0x1E69E8020], v32);
  v95 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v35, v32);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v19, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
  v37 = *(v21 + 48);
  if (v37(v19, 1, v20) == 1)
  {
    outlined destroy of NSObject?(v19, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore20DatagramChannelErrorOGMR);
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, log);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock = v42;
        *v41 = 136315138;
        v43 = UnreliableMessenger.description.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &aBlock);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1AEB26000, v39, v40, "Service closed ingress stream, %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1B27120C0](v42, -1, -1);
        MEMORY[0x1B27120C0](v41, -1, -1);
      }

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_4;
  }

  v46 = v112;
  outlined init with take of DG_SequenceNumber(v19, v112, type metadata accessor for DatagramChannelError);
  v47 = v1;
  if (*(v1 + 160) > 3u)
  {
    v59 = 0xD000000000000025;
    v60 = 0x80000001AEE36510;
    v61 = 2;
    goto LABEL_14;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v48, log);
  outlined init with copy of DG_SequenceNumber(v46, v30, type metadata accessor for DatagramChannelError);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v90 = v51;
    v91 = v50;
    v92 = v49;
    v52 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock = v89;
    *v52 = 134218242;
    *(v52 + 4) = v47[22];

    *(v52 + 12) = 2080;
    v53 = v110;
    outlined init with copy of DG_SequenceNumber(v30, v110, type metadata accessor for DatagramChannelError);
    (*(v21 + 56))(v53, 0, 1, v20);
    v54 = v53;
    v55 = v109;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v54, v109, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    v56 = v37(v55, 1, v20);
    v93 = v21;
    if (v56 == 1)
    {
      v57 = 7104878;
      v58 = 0xE300000000000000;
    }

    else
    {
      v63 = v108;
      outlined init with take of DG_SequenceNumber(v55, v108, type metadata accessor for DatagramChannelError);
      outlined init with copy of DG_SequenceNumber(v63, v107, type metadata accessor for DatagramChannelError);
      v64 = String.init<A>(reflecting:)();
      v58 = v65;
      v57 = v64;
      outlined destroy of DG_SequenceNumber(v63, type metadata accessor for DatagramChannelError);
    }

    outlined destroy of NSObject?(v110, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    outlined destroy of DG_SequenceNumber(v30, type metadata accessor for DatagramChannelError);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &aBlock);

    *(v52 + 14) = v66;
    v67 = v91;
    _os_log_impl(&dword_1AEB26000, v91, v90, "Channel stream attempt #%ld failed, error=%s", v52, 0x16u);
    v68 = v89;
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    MEMORY[0x1B27120C0](v68, -1, -1);
    MEMORY[0x1B27120C0](v52, -1, -1);

    v21 = v93;
  }

  else
  {

    outlined destroy of DG_SequenceNumber(v30, type metadata accessor for DatagramChannelError);
  }

  v69 = v111;
  outlined init with copy of DG_SequenceNumber(v46, v111, type metadata accessor for DatagramChannelError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_26;
    }

    v59 = 0xD000000000000017;
    v60 = 0x80000001AEE36560;
    v61 = 1;
LABEL_14:
    UnreliableMessenger._close(reason:description:)(v61, v59, v60);
    v62 = v46;
LABEL_30:
    outlined destroy of DG_SequenceNumber(v62, type metadata accessor for DatagramChannelError);
    return;
  }

  if (EnumCaseMultiPayload >= 2)
  {
LABEL_26:
    aBlock = 0;
    v115 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    aBlock = 0xD000000000000015;
    v115 = 0x80000001AEE36540;
    v83 = v104;
    outlined init with copy of DG_SequenceNumber(v46, v104, type metadata accessor for DatagramChannelError);
    (*(v21 + 56))(v83, 0, 1, v20);
    v84 = v103;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v83, v103, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    if (v37(v84, 1, v20) == 1)
    {
      v85 = 7104878;
      v86 = 0xE300000000000000;
    }

    else
    {
      v87 = v108;
      outlined init with take of DG_SequenceNumber(v84, v108, type metadata accessor for DatagramChannelError);
      outlined init with copy of DG_SequenceNumber(v87, v107, type metadata accessor for DatagramChannelError);
      v85 = String.init<A>(reflecting:)();
      v86 = v88;
      outlined destroy of DG_SequenceNumber(v87, type metadata accessor for DatagramChannelError);
    }

    outlined destroy of NSObject?(v83, &_s14CopresenceCore20DatagramChannelErrorOSgMd, &_s14CopresenceCore20DatagramChannelErrorOSgMR);
    MEMORY[0x1B2710020](v85, v86);

    UnreliableMessenger._close(reason:description:)(1u, aBlock, v115);

    v62 = v112;
    goto LABEL_30;
  }

  outlined destroy of DG_SequenceNumber(v69, type metadata accessor for DatagramChannelError);
  if (v47[22] >= v47[6])
  {
    v59 = 0xD00000000000001FLL;
    v60 = 0x80000001AEE36580;
    v61 = 0;
    goto LABEL_14;
  }

  v71 = v94;
  static DispatchTime.now()();
  v72 = v47[7];
  + infix(_:_:)();
  v73 = *(v96 + 8);
  v73(v71, v106);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134217984;
    *(v76 + 4) = v72;
    _os_log_impl(&dword_1AEB26000, v74, v75, "Will retry channel-stream in %f seconds", v76, 0xCu);
    MEMORY[0x1B27120C0](v76, -1, -1);
  }

  UnreliableMessenger.updateState(state:)(3u);
  v77 = swift_allocObject();
  swift_weakInit();
  v118 = partial apply for closure #1 in UnreliableMessenger.handleChannelStreamClosed(completedWith:);
  v119 = v77;
  aBlock = MEMORY[0x1E69E9820];
  v115 = 1107296256;
  v116 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v117 = &block_descriptor_94;
  v78 = _Block_copy(&aBlock);

  v79 = v97;
  static DispatchQoS.unspecified.getter();
  v113 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v80 = v99;
  v81 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v82 = v105;
  MEMORY[0x1B2710670](v105, v79, v80, v78);
  _Block_release(v78);
  (*(v101 + 8))(v80, v81);
  (*(v98 + 8))(v79, v100);
  v73(v82, v106);
  outlined destroy of DG_SequenceNumber(v112, type metadata accessor for DatagramChannelError);
}

void UnreliableMessenger.processIngressDatagram(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v148[-v5];
  v154 = type metadata accessor for UUID();
  v7 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v148[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v156 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v148[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v148[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v2[14];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_79:
    swift_once();
LABEL_4:
    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, log);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v6;
      _os_log_impl(&dword_1AEB26000, v24, v25, "[Receive] Datagram has the same participantID, dropping, seqNum=%llu", v26, 0xCu);
LABEL_39:
      MEMORY[0x1B27120C0](v26, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v153 = v6;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v6 = (*(v19 + 8))(v18, v19);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 16))(v20, v21);
  if (v22 == v2[9])
  {
    if (one-time initialization token for log == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_79;
  }

  v27 = v22;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, log);

  v151 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v152 = v27;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v27;
    v36 = v34;
    v163[0] = v34;
    *v33 = 134218498;
    *(v33 + 4) = v35;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v6;
    *(v33 + 22) = 2080;
    *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v163);
    _os_log_impl(&dword_1AEB26000, v30, v31, "[Receive] Datagram received fromParticipantID=%llu seqNum=%llu topic=%s", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1B27120C0](v36, -1, -1);
    MEMORY[0x1B27120C0](v33, -1, -1);
  }

  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v37, static Signposts.messenger);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 24))(v38, v39);
  v42 = v41;
  if (OSSignposter.isEnabled.getter())
  {
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v40, v42, v11);
  }

  else
  {
    OSSignpostID.init(_:)();
    outlined consume of Data._Representation(v40, v42);
  }

  outlined init with copy of UserNotificationCenter(a1, v163);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v43, v44);

  v45 = OSSignposter.logHandle.getter();
  v46 = static os_signpost_type_t.event.getter();

  v47 = OS_os_log.signpostsEnabled.getter();
  v155 = v6;
  if (v47)
  {
    v149 = v46;
    v150 = v7;
    v48 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v162[0] = v7;
    *v48 = 134218754;
    v50 = v164;
    v49 = v165;
    __swift_project_boxed_opaque_existential_1(v163, v164);
    v51 = (*(v49 + 24))(v50, v49);
    v53 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      v6 = v155;
      if (v53 != 2)
      {
        outlined consume of Data._Representation(v51, v52);
        v55 = 0;
        goto LABEL_27;
      }

      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      v51 = outlined consume of Data._Representation(v51, v52);
      v55 = v57 - v58;
      if (!__OFSUB__(v57, v58))
      {
        goto LABEL_27;
      }

      __break(1u);
    }

    else
    {
      v6 = v155;
      if (!v53)
      {
        v54 = BYTE6(v52);
        outlined consume of Data._Representation(v51, v52);
        v55 = v54;
LABEL_27:
        v56 = v152;
        *(v48 + 4) = v55;
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        *(v48 + 12) = 2080;
        *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v162);
        *(v48 + 22) = 2048;
        *(v48 + 24) = v56;
        *(v48 + 32) = 2048;
        *(v48 + 34) = v6;
        v61 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1AEB26000, v45, v149, v61, "transport-message-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v48, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1B27120C0](v7, -1, -1);
        MEMORY[0x1B27120C0](v48, -1, -1);

        (*(v156 + 1))(v11, v9);
        v7 = v150;
        goto LABEL_28;
      }
    }

    v56 = HIDWORD(v51);
    v59 = v51;
    v60 = outlined consume of Data._Representation(v51, v52);
    LODWORD(v55) = v56 - v59;
    if (__OFSUB__(v56, v59))
    {
      goto LABEL_82;
    }

    v55 = v55;
    goto LABEL_27;
  }

  (*(v156 + 1))(v11, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  v56 = v152;
LABEL_28:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = v2[26];
  v2[26] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, v56, isUniquelyReferenced_nonNull_native);
  v2[26] = v162[0];
  swift_endAccess();
  swift_beginAccess();
  v63 = v2[27];
  v9 = v157;
  if (*(v63 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v65 & 1) != 0))
  {
    v66 = *(*(v63 + 56) + 8 * v64);
  }

  else
  {
    v66 = 0;
  }

  v60 = swift_endAccess();
  v67 = __CFADD__(v66, 1);
  v48 = v66 + 1;
  if (v67)
  {
    __break(1u);
    __break(1u);
    do
    {
      __break(1u);
LABEL_82:
      __break(1u);
      v146 = v60;
      specialized _NativeDictionary.copy()();
      v60 = v146;
      v147 = v158;
      v2[28] = v158;
      if ((v48 & 1) == 0)
      {
        LOBYTE(v48) = v146;
        specialized _NativeDictionary._insert(at:key:value:)(v146, v56, 0, v147);
        v60 = v146;
      }

      v103 = v147[7];
      v104 = *(v103 + 8 * v60);
      v67 = __CFADD__(v104, 1);
      v105 = v104 + 1;
    }

    while (v67);
    *(v103 + 8 * v60) = v105;
    swift_endAccess();
    v163[0] = 0;
    v163[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v158 = 0x3D6D754E716573;
    v159 = 0xE700000000000000;
    v163[0] = v11;
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v106);

    MEMORY[0x1B2710020](0xD000000000000015, 0x80000001AEE364F0);
    v163[0] = v56;
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v107);

    MEMORY[0x1B2710020](0x3D746E756F6320, 0xE700000000000000);
    swift_beginAccess();
    v108 = v2[28];
    if (*(v108 + 16) && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v110 & 1) != 0))
    {
      v111 = *(*(v108 + 56) + 8 * v109);
    }

    else
    {
      v111 = 0;
    }

    swift_endAccess();
    v163[0] = v111;
    v112 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v112);

    MEMORY[0x1B2710020](34, 0xE100000000000000);
    v114 = v158;
    v113 = v159;
    v163[0] = a1;
    v115 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {

      v124 = a1;

      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = v7;
        v129 = swift_slowAlloc();
        v158 = v129;
        *v127 = 136315650;
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, &v158);

        *(v127 + 4) = v130;
        *(v127 + 12) = 2080;
        v161 = a1;
        v131 = a1;
        v132 = String.init<A>(reflecting:)();
        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v133, &v158);

        *(v127 + 14) = v134;
        *(v127 + 22) = 2080;
        *(v127 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v158);
        _os_log_impl(&dword_1AEB26000, v125, v126, "[Decrypt] Dropping datagram, %s unknown error=%s topic=%s", v127, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v129, -1, -1);
        MEMORY[0x1B27120C0](v127, -1, -1);

        (*(v128 + 8))(v157, v154);
        return;
      }

      goto LABEL_64;
    }

    v116 = v158;

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();

    v119 = os_log_type_enabled(v117, v118);
    if (v116)
    {
      if (v119)
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v158 = v121;
        *v120 = 136315394;
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, &v158);

        *(v120 + 4) = v122;
        *(v120 + 12) = 2080;
        *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v158);
        v123 = "[Decrypt] Dropping datagram, decryption failed, %s topic=%s";
LABEL_61:
        _os_log_impl(&dword_1AEB26000, v117, v118, v123, v120, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v121, -1, -1);
        MEMORY[0x1B27120C0](v120, -1, -1);

LABEL_64:
        (*(v7 + 8))(v9, v154);
        return;
      }
    }

    else if (v119)
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v158 = v121;
      *v120 = 136315394;
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v113, &v158);

      *(v120 + 4) = v135;
      *(v120 + 12) = 2080;
      *(v120 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], &v158);
      v123 = "[Decrypt] Dropping datagram, missing key, %s topic=%s";
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  swift_beginAccess();
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = v2[27];
  v2[27] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v56, v68);
  v2[27] = v162[0];
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?((v2 + 15), v163, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (!v164)
  {
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v69 = v165;
  __swift_project_boxed_opaque_existential_1(v163, v164);
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  v72 = (*(v71 + 32))(v70, v71);
  v74 = v73;
  v75 = (*(v69 + 40))();
  outlined consume of Data._Representation(v72, v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  v76 = v155;
  if ((v75 & 1) == 0)
  {
    goto LABEL_37;
  }

  v77 = a1[3];
  v78 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v77);
  v79 = v153;
  AnyRawIngressDatagram.decodedEncryptionID.getter(v77, v78, v153);
  v80 = v154;
  if ((*(v7 + 48))(v79, 1, v154) == 1)
  {
    outlined destroy of NSObject?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_37:

    v24 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v81))
    {
      v26 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v163[0] = v82;
      *v26 = 134218242;
      *(v26 + 4) = v76;
      *(v26 + 12) = 2080;
      *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v163);
      _os_log_impl(&dword_1AEB26000, v24, v81, "Datagram has invalid encryptionID, dropping, seqNum=%llu topic=%s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      goto LABEL_39;
    }

LABEL_40:

    return;
  }

  (*(v7 + 32))(v9, v79, v80);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?((v2 + 15), v163, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (!v164)
  {
    goto LABEL_87;
  }

  v83 = v165;
  __swift_project_boxed_opaque_existential_1(v163, v164);
  v84 = a1[3];
  v85 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v84);
  v86 = (*(v85 + 24))(v84, v85);
  v88 = v87;
  v89 = (*(v83 + 64))();
  v91 = v90;
  outlined consume of Data._Representation(v86, v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  v92 = v2[8];
  if (!v92)
  {
    v136 = 0;
    goto LABEL_71;
  }

  v93 = v7;
  swift_beginAccess();

  v94 = swift_isUniquelyReferenced_nonNull_native();
  v158 = v2[32];
  v95 = v158;
  v2[32] = 0x8000000000000000;
  v97 = specialized __RawDictionaryStorage.find<A>(_:)(v152);
  v98 = v95[2];
  v99 = (v96 & 1) == 0;
  v100 = v98 + v99;
  if (__OFADD__(v98, v99))
  {
    __break(1u);
LABEL_85:
    specialized _NativeDictionary.copy()();
    v95 = v158;
    goto LABEL_67;
  }

  LOBYTE(v86) = v96;
  if (v95[3] < v100)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v100, v94);
    v95 = v158;
    v101 = specialized __RawDictionaryStorage.find<A>(_:)(v152);
    if ((v86 & 1) == (v102 & 1))
    {
      v97 = v101;
      goto LABEL_67;
    }

LABEL_88:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  if ((v94 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_67:
  v7 = v93;
  v2[32] = v95;
  v137 = v155;
  if ((v86 & 1) == 0)
  {
    SeqNumReceivedBuffer.init(seqNumCapacity:)(v92, &v158);
    specialized _NativeDictionary._insert(at:key:value:)(v97, v152, v158, v159, v160, v95);
  }

  v138 = SeqNumReceivedBuffer.process(seqNum:)(v137);
  swift_endAccess();
  if (v138)
  {
    v92 = partial apply for implicit closure #14 in UnreliableMessenger.processIngressDatagram(_:);
    v136 = v2;
LABEL_71:
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v139 = v2[11];
      ObjectType = swift_getObjectType();
      v158 = v89;
      v159 = v91;
      v160 = v152;
      v155 = v136;
      v156 = v92;
      v141 = v9;
      v142 = *(v139 + 8);
      outlined copy of Data._Representation(v89, v91);
      v142(v2, &v158, ObjectType, v139);
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v89, v91);
      outlined consume of Data._Representation(v158, v159);
      (*(v7 + 8))(v141, v154);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v156, v155);
    }

    else
    {
      outlined consume of Data._Representation(v89, v91);
      (*(v7 + 8))(v9, v154);
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v92, v136);
    }

    return;
  }

  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 134218240;
    *(v145 + 4) = v152;
    *(v145 + 12) = 2048;
    *(v145 + 14) = v137;
    _os_log_impl(&dword_1AEB26000, v143, v144, "[Receive] Datagram received fromParticipantID=%llu seqNum=%llu is being dropped as it is a duplicate packet.", v145, 0x16u);
    MEMORY[0x1B27120C0](v145, -1, -1);

    outlined consume of Data._Representation(v89, v91);
  }

  else
  {
    outlined consume of Data._Representation(v89, v91);
  }

  (*(v7 + 8))(v9, v154);
}

void UnreliableMessenger.attemptFlushEgressQueue()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 112);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + 160) != 2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, log);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v30[0] = v25;
        *v24 = 136315138;
        v26 = UnreliableMessenger.description.getter();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v30);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1AEB26000, v22, v23, "[Flush] Ignored flushing intermediate-egress-queue %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1B27120C0](v25, -1, -1);
        MEMORY[0x1B27120C0](v24, -1, -1);
      }

      return;
    }

    swift_beginAccess();
    v8 = *(v1 + 232);
    if (!(v8 >> 62))
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

LABEL_5:
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, log);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v29 = v13;
        *v12 = 136315138;
        v14 = UnreliableMessenger.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v29);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1AEB26000, v10, v11, "[Flush] Flushing intermediate-egress-queue %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1B27120C0](v13, -1, -1);
        MEMORY[0x1B27120C0](v12, -1, -1);
      }

      v17 = *(v1 + 232);
      if (v17 >> 62)
      {
        v18 = __CocoaSet.count.getter();
        if (v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_11:
          if (v18 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v18; ++i)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1B2710B10](i, v17);
            }

            else
            {
              v20 = *(v17 + 8 * i + 32);
            }

            UnreliableMessenger._send(_:)(v20);
          }
        }
      }

      *(v1 + 232) = MEMORY[0x1E69E7CC0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }
}

void UnreliableMessenger._close(reason:description:)(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + 112);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_4;
  }

  if (*(v4 + 160) > 3u)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, log);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v41);
      *(v32 + 12) = 2080;
      *(v32 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), v41);
      _os_log_impl(&dword_1AEB26000, v30, v31, "[Close] Ignored, already shutting down, reason='%s' name=%s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v33, -1, -1);
      MEMORY[0x1B27120C0](v32, -1, -1);
    }

    return;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_29;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, log);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v41);
    *(v17 + 12) = 2080;
    v19 = UnreliableMessenger.description.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v41);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1AEB26000, v15, v16, "[Close] Shutting down, reason='%s' %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v18, -1, -1);
    MEMORY[0x1B27120C0](v17, -1, -1);
  }

  UnreliableMessenger.updateState(state:)(4u);
  swift_beginAccess();
  v22 = *(v4 + 232);
  if (v22 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (!v23)
    {
LABEL_23:
      *(v4 + 232) = MEMORY[0x1E69E7CC0];

      v40 = 1;

      PassthroughSubject.send(completion:)();

      if (*(v4 + 248))
      {

        AnyCancellable.cancel()();
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v4 + 88);
        ObjectType = swift_getObjectType();
        (*(v34 + 16))(v4, v39, ObjectType, v34);
        swift_unknownObjectRelease();
      }

      v36 = *(v4 + 184);
      v37 = *(v4 + 192);
      *(v4 + 184) = 0;
      *(v4 + 192) = 0;
      _sxRi_zRi0_zlyytIseghHr_SgWOe(v36, v37);
      *(v4 + 200) = 0;
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_23;
    }
  }

  if (v23 >= 1)
  {
    v38 = v4;

    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = *(MEMORY[0x1B2710B10](v24, v22) + 40);
        if (!v27)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = *(v22 + 8 * v24 + 32);

        v27 = *(v28 + 40);
        if (!v27)
        {
LABEL_16:

          goto LABEL_11;
        }
      }

      lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
      v25 = swift_allocError();
      *v26 = 3;
      v27();

LABEL_11:
      if (v23 == ++v24)
      {

        v4 = v38;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t closure #1 in UnreliableMessenger.handleChannelStreamClosed(completedWith:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 176);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(result + 176) = v4;
      UnreliableMessenger.setupChannelStream()();
    }
  }

  return result;
}

uint64_t UnreliableMessenger._send(_:)(void *a1)
{
  v55 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v50 - v2;
  v50 = type metadata accessor for DG_Datagram(0);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DG_SequenceNumber(0);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v50 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v1;
  v11 = *(v1 + 112);
  *v10 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v13 = (v8 + 104);
  v14 = *(v8 + 104);
  v14(v10, v12, v7);
  v15 = v11;
  v16 = _dispatchPreconditionTest(_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  *v10 = v15;
  v14(v10, v12, v7);
  v18 = _dispatchPreconditionTest(_:)();
  v17(v10, v7);
  if ((v18 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v58;
  v20 = *(v58 + 168);
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v58 + 168) = v22;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber, &protocol conformance descriptor for DG_SequenceNumber);
  v16 = v57;
  static Message.with(_:)();
  swift_beginAccess();
  result = outlined init with copy of ActivitySession.DomainAssertionWrapper?(v19 + 120, v59, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v24 = v60;
  if (v60)
  {
    v25 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v13 = v55;
    v26 = (*(v25 + 56))(v55[2], v55[3], *(v16 + 8), v24, v25);
    if (v27 >> 60 != 15)
    {
      v38 = v26;
      v39 = v27;
      v40 = __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x1EEE9AC00](v40);
      *(&v50 - 6) = v16;
      *(&v50 - 5) = v38;
      *(&v50 - 4) = v39;
      *(&v50 - 3) = v19;
      *(&v50 - 2) = v13;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram, &protocol conformance descriptor for DG_Datagram);
      v41 = v53;
      static Message.with(_:)();
      v42 = v54;
      outlined init with copy of DG_SequenceNumber(v41, v54, type metadata accessor for DG_Datagram);
      v43 = v13[5];
      v44 = v52;
      *(v42 + *(v52 + 36)) = v13[4];
      v45 = v13[6];
      v46 = (v42 + *(v44 + 40));
      *v46 = v43;
      v46[1] = v45;

      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v43, v45);

      PassthroughSubject.send(_:)();
      outlined consume of Data?(v38, v39);

      outlined destroy of NSObject?(v42, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
      outlined destroy of DG_SequenceNumber(v41, type metadata accessor for DG_Datagram);
      return outlined destroy of DG_SequenceNumber(v16, type metadata accessor for DG_SequenceNumber);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    if (one-time initialization token for log == -1)
    {
LABEL_7:
      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, log);
      v29 = v51;
      outlined init with copy of DG_SequenceNumber(v16, v51, type metadata accessor for DG_SequenceNumber);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v59[0] = v33;
        *v32 = 134218242;
        v34 = *(v29 + 8);
        outlined destroy of DG_SequenceNumber(v29, type metadata accessor for DG_SequenceNumber);
        *(v32 + 4) = v34;
        *(v32 + 12) = 2080;
        v35 = UnreliableMessenger.description.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v59);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_1AEB26000, v30, v31, "Unexpected encryption failure, dropping message seqNum=%llu %s", v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1B27120C0](v33, -1, -1);
        MEMORY[0x1B27120C0](v32, -1, -1);
      }

      else
      {
        outlined destroy of DG_SequenceNumber(v29, type metadata accessor for DG_SequenceNumber);
      }

      v47 = v13[5];
      if (v47)
      {
        lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
        v48 = swift_allocError();
        *v49 = 2;
        v47();
      }

      return outlined destroy of DG_SequenceNumber(v16, type metadata accessor for DG_SequenceNumber);
    }

LABEL_17:
    swift_once();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t AnyRawIngressDatagram.decodedEncryptionID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = (*(a2 + 32))(a1, a2);
  UUID.init(data:)(v9, v10, v8);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v13 = 1;
  }

  else
  {
    (*(v12 + 32))(a3, v8, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, v11);
}

void *closure #1 in UnreliableMessenger._send(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  v69 = a5;
  v65 = a6;
  v67 = a3;
  v68 = a4;
  v8 = type metadata accessor for OSSignpostID();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DG_EncryptionID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DG_SequenceNumber(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  v63 = a2;
  outlined init with copy of DG_SequenceNumber(a2, &v58 - v20, type metadata accessor for DG_SequenceNumber);
  v22 = type metadata accessor for DG_Datagram(0);
  v23 = *(v22 + 28);
  outlined destroy of NSObject?(a1 + v23, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  outlined init with take of DG_SequenceNumber(v21, a1 + v23, type metadata accessor for DG_SequenceNumber);
  (*(v17 + 56))(a1 + v23, 0, 1, v16);
  v24 = *a1;
  v25 = a1[1];
  v27 = v67;
  v26 = v68;
  outlined copy of Data._Representation(v67, v68);
  v28 = v25;
  v29 = v69;
  outlined consume of Data._Representation(v24, v28);
  *a1 = v27;
  a1[1] = v26;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID, &protocol conformance descriptor for DG_EncryptionID);
  v30 = v70;
  static Message.with(_:)();
  v31 = *(v22 + 32);
  outlined destroy of NSObject?(a1 + v31, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  outlined init with take of DG_SequenceNumber(v15, a1 + v31, type metadata accessor for DG_EncryptionID);
  (*(v13 + 56))(a1 + v31, 0, 1, v12);
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v32, static Signposts.messenger);
  if ((OSSignposter.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = v58;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v35 = v34;
  result = (*(v59 + 8))(v33, v60);
  v37 = v35 * 1000.0;
  if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v37 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v37 >= 1.84467441e19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  a1[2] = v37;
LABEL_8:
  v38 = v65;
  v39 = *(v65 + 16);
  v40 = *(v65 + 24);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(v39, v40);
    v41 = v66;
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v39, v40, v66);
  }

  else
  {
    v41 = v66;
    OSSignpostID.init(_:)();
  }

  lazy protocol witness table accessor for type Int and conformance Int();

  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v42, v43);
  v44 = v64;
  outlined init with copy of DG_SequenceNumber(v63, v64, type metadata accessor for DG_SequenceNumber);

  v45 = OSSignposter.logHandle.getter();
  v46 = static os_signpost_type_t.event.getter();

  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    outlined destroy of DG_SequenceNumber(v44, type metadata accessor for DG_SequenceNumber);

    return (*(v61 + 8))(v41, v62);
  }

  v70 = v30;
  v47 = swift_slowAlloc();
  result = swift_slowAlloc();
  v48 = result;
  v71 = result;
  *v47 = 134218754;
  v49 = *(v38 + 16);
  v50 = *(v38 + 24);
  v51 = v50 >> 62;
  if ((v50 >> 62) > 1)
  {
    if (v51 != 2)
    {
      v49 = 0;
      goto LABEL_23;
    }

    v54 = v49 + 16;
    v52 = *(v49 + 16);
    v53 = *(v54 + 8);
    v55 = __OFSUB__(v53, v52);
    v49 = v53 - v52;
    if (!v55)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v51)
  {
    v49 = BYTE6(v50);
LABEL_23:
    *(v47 + 4) = v49;
    *(v47 + 12) = 2080;
    *(v47 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29[2], v29[3], &v71);
    *(v47 + 22) = 2048;
    *(v47 + 24) = v29[9];

    *(v47 + 32) = 2048;
    v56 = *(v44 + 8);
    outlined destroy of DG_SequenceNumber(v44, type metadata accessor for DG_SequenceNumber);
    *(v47 + 34) = v56;
    v57 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v45, v46, v57, "transport-message-sent", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v47, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1B27120C0](v48, -1, -1);
    MEMORY[0x1B27120C0](v47, -1, -1);

    return (*(v61 + 8))(v41, v62);
  }

  v55 = __OFSUB__(HIDWORD(v49), v49);
  LODWORD(v49) = HIDWORD(v49) - v49;
  if (!v55)
  {
    v49 = v49;
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in UnreliableMessenger._send(_:)(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = a2[18];
  if (!v8)
  {
    __break(1u);
  }

  v9 = a2[19];
  v10 = __swift_project_boxed_opaque_existential_1(a2 + 15, a2[18]);
  v11 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  (*(v9 + 8))(v8, v9);
  (*(v11 + 8))(v13, v8);
  v20[0] = UUID.uuid.getter();
  v20[1] = v14;
  v15 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v20, v21);
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v15;
  *(a1 + 8) = v17;
  return result;
}

uint64_t DG_EncryptionID.toUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v7 = *v1;
  v6 = v1[1];
  outlined copy of Data._Representation(v7, v6);
  UUID.init(data:)(v7, v6, v5);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a1, v5, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a1, v10, 1, v8);
}

Swift::Void __swiftcall UnreliableMessenger.onEncryptionIDsRefreshed()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 112);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }
}

uint64_t UnreliableMessenger.onLocalEncryptionIDRotated(encryptionID:)()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 112);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnreliableMessenger.start(dataCryptorProvider:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 112);
  outlined init with copy of UserNotificationCenter(a1, v17);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v17, v10 + 24);
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.start(dataCryptorProvider:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t UnreliableMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v22 = *(v15 - 8);
  v23 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v6 + 112);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a3;
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.send(_:to:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v19 = _Block_copy(aBlock);
  outlined copy of Data._Representation(a1, a2);

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4, a5);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v24 + 8))(v14, v12);
  (*(v22 + 8))(v17, v23);
}

void closure #1 in UnreliableMessenger.send(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v13 = v13;
  }

LABEL_11:
  if (v13 >= *(a3 + 32))
  {
    if (!a4)
    {
      return;
    }

    lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
    v20 = swift_allocError();
    v21 = 1;
  }

  else
  {
    v17 = *(a3 + 160);
    if (v17 <= 3)
    {
      v6 = a2;
      v7 = a1;
      type metadata accessor for UnreliableMessenger.SendItem();
      v18 = swift_allocObject();
      *(v18 + 56) = xmmword_1AEE07B50;
      *(v18 + 16) = v7;
      *(v18 + 24) = v6;
      *(v18 + 32) = a6;
      *(v18 + 40) = a4;
      *(v18 + 48) = a5;
      if (v17 == 2)
      {
        outlined copy of Data._Representation(v7, v6);

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4, a5);
        UnreliableMessenger._send(_:)(v18);

        return;
      }

      swift_beginAccess();
      v22 = *(a3 + 232);
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v23 + 1;
        if (!__OFADD__(v23, 1))
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

LABEL_39:
      v36 = __CocoaSet.count.getter();
      v24 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
LABEL_26:
        if (*(a3 + 40) < v24)
        {
          if (a4)
          {
            lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
            v25 = swift_allocError();
            *v26 = 0;
            outlined copy of Data._Representation(v7, v6);

            outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4, a5);
            a4(v25);

            return;
          }

          outlined copy of Data._Representation(v7, v6);

          goto LABEL_36;
        }

        swift_beginAccess();
        outlined copy of Data._Representation(v7, v6);

        outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(a4, a5);

        MEMORY[0x1B2710150](v27);
        if (*((*(a3 + 232) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a3 + 232) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_30:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, log);

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v37[0] = v32;
            *v31 = 136315138;
            v33 = UnreliableMessenger.description.getter();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v37);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_1AEB26000, v29, v30, "[Send] Queueing message, %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
            MEMORY[0x1B27120C0](v32, -1, -1);
            MEMORY[0x1B27120C0](v31, -1, -1);
          }

LABEL_36:

          return;
        }

LABEL_42:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_30;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (!a4)
    {
      return;
    }

    lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError();
    v20 = swift_allocError();
    v21 = 3;
  }

  *v19 = v21;
  (a4)();
}

uint64_t UnreliableMessenger.refreshDataCryptorProvider(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + 120, aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v11 = v24;
  result = outlined destroy of NSObject?(aBlock, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  if (v11)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v20 = v5;
    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), aBlock);
      _os_log_impl(&dword_1AEB26000, v14, v15, "Refreshing data-cryptor-provider topic=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    outlined init with copy of Any(a1, v27);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    outlined init with take of Any(v27, (v18 + 24));
    v25 = partial apply for closure #1 in UnreliableMessenger.refreshDataCryptorProvider(with:);
    v26 = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v24 = &block_descriptor_47;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x1E69E7CC0];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v10, v7, v19);
    _Block_release(v19);
    (*(v20 + 8))(v7, v4);
    (*(v8 + 8))(v10, v21);
  }

  return result;
}

uint64_t closure #1 in UnreliableMessenger.refreshDataCryptorProvider(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + 120, v7, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 48))(a2, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_31Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

Swift::Void __swiftcall UnreliableMessenger.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 112);
  aBlock[4] = partial apply for closure #1 in UnreliableMessenger.close();
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11 = MEMORY[0x1E69E7CC0];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

unint64_t lazy protocol witness table accessor for type UnreliableMessengerError and conformance UnreliableMessengerError()
{
  result = lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError;
  if (!lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError;
  if (!lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessengerError and conformance UnreliableMessengerError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.ClosedReason and conformance UnreliableMessenger.ClosedReason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.State and conformance UnreliableMessenger.State()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.State and conformance UnreliableMessenger.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull()
{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull;
  if (!lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnreliableMessenger.BufferFull and conformance UnreliableMessenger.BufferFull);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnreliableMessenger.Message(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnreliableMessenger.Message(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata accessor for UnreliableMessenger(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnreliableMessenger;
  if (!type metadata singleton initialization cache for UnreliableMessenger)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for UnreliableMessenger(uint64_t a1)
{
  type metadata accessor for Published<[UInt64]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[UInt64]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[UInt64]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[UInt64]>);
    }
  }
}

void *partial apply for closure #1 in UnreliableMessenger.nextSeqNum()(void *result)
{
  result[1] = *(v1 + 168);
  *result = *(v1 + 72);
  return result;
}

uint64_t outlined assign with take of TopicCryptorProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of DG_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DG_SequenceNumber(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of DG_SequenceNumber(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySessionContainer and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    Set.Iterator.init(_cocoa:)();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_19;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
        swift_dynamicCast();
        v18 = v21[0];
        v16 = v9;
        v17 = v10;
        if (!v21[0])
        {
          goto LABEL_20;
        }
      }

      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v20);
    }

    else
    {
LABEL_20:
      v6 = v20;
LABEL_19:
      outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v6);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    v7 = (a4 + 32);
    while (1)
    {
      v8 = *v7++;
      v9 = v8;
      a2(&v10, &v9, a3);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t ConversationManagerHost.connections.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPConversationManagerHost_connections;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *ConversationManagerHost.__allocating_init(dataSource:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, [objc_allocWithZone(CPFeatureFlags) init], objc_allocWithZone(v1));
  swift_deallocPartialClassInstance();
  return v4;
}

char *ConversationManagerHost.init(dataSource:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, [objc_allocWithZone(CPFeatureFlags) init], objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v3;
}

char *ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized ConversationManagerHost.__allocating_init(dataSource:featureFlags:)(a1, a2, v2);
}

char *ConversationManagerHost.init(dataSource:featureFlags:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized ConversationManagerHost.init(dataSource:featureFlags:)(a1, a2, v2);
}

id ConversationManagerHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR___CPConversationManagerHost_listener] invalidate];
  [*&v0[OBJC_IVAR___CPConversationManagerHost_listenerDeprecated] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ConversationManagerHost.updateClientShouldConnectNotification()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = *(v1 + OBJC_IVAR___CPConversationManagerHost_dataSource);
    if ([v9 hasActiveActivitySessionContainer])
    {
      v10 = [objc_msgSend(v9 sharePlaySystemStateObserver)];
      swift_unknownObjectRelease();
      v11 = OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification;
      v12 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification);
      if (v10)
      {

        v13 = DarwinNotification.state.getter();

        if (v13 != 1)
        {
          v14 = *(v1 + v11);
          swift_beginAccess();
          notify_set_state(*(v14 + 32), 1uLL);
          v15 = String.utf8CString.getter();

          notify_post((v15 + 32));
        }
      }

      else
      {
        swift_beginAccess();
        notify_set_state(*(v12 + 32), 0);
      }

      v18 = OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification;

      v19 = DarwinNotification.state.getter();

      if (v19 != 1)
      {
        v20 = *(v1 + v18);
        swift_beginAccess();
        notify_set_state(*(v20 + 32), 1uLL);
        v21 = String.utf8CString.getter();

        notify_post((v21 + 32));
      }
    }

    else
    {
      v16 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectNotification);
      swift_beginAccess();
      notify_set_state(*(v16 + 32), 0);
      v17 = *(v1 + OBJC_IVAR___CPConversationManagerHost_clientShouldConnectIfCanBypassSharePlayRestrictionNotification);
      swift_beginAccess();
      return notify_set_state(*(v17 + 32), 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationManagerHost.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v8)
  {
    return outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(&v7, a1);
  }

  outlined destroy of NSObject?(&v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v5, v6, a1);

  outlined init with copy of UserNotificationCenter(a1, &v7);
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for ConversationManagerHost.protectedStorage : ConversationManagerHost(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v7);
  v3 = *a2;
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(v7, v6);
  v4 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t ConversationManagerHost.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v4);
  v2 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ProtectedStorage?(v4, v1 + v2);
  return swift_endAccess();
}

void (*ConversationManagerHost.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  *a1 = v3;
  v3[13] = v1;
  ConversationManagerHost.protectedStorage.getter(v3);
  return ConversationManagerHost.protectedStorage.modify;
}

void ConversationManagerHost.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v4);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(*a1, (v2 + 5));
    v5 = OBJC_IVAR___CPConversationManagerHost____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ProtectedStorage?((v2 + 5), v3 + v5);
    swift_endAccess();
  }

  free(v2);
}

id ConversationManagerHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
  v7 = *(v1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
  result = swift_beginAccess();
  if (!*(*(v1 + v9) + 16))
  {
    return result;
  }

  v15[0] = a1;
  v15[1] = specialized implicit closure #2 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:);
  v15[2] = 0;
  v15[3] = specialized implicit closure #3 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:);
  v15[4] = 0;

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_s15LazyMapSequenceVys07FlattenF0VyAHyShySo38TUConversationActivitySessionContainerCGShySo0hiJ0CGGGAFGTt0g5(v15);
  swift_beginAccess();

  v12 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + v9), v11);

  v13 = *(*(v1 + v9) + 16);
  if (v13 < v12)
  {
LABEL_7:
    __break(1u);
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v12, v13, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  swift_endAccess();
}

void specialized implicit closure #2 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void specialized implicit closure #3 in ConversationManagerHost.cleanUpPendingEndpointRequests(for:)(id *a1)
{
  v1 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void closure #2 in ConversationManagerHost.fetchEndpoint(for:activitySessionUUID:activity:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for ConversationManagerHost.EndpointRequest(0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a5;
    v21 = a1;
    v22 = MEMORY[0x1B270FF70](a2, a3);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
    aBlock[3] = &block_descriptor_31_0;
    v24 = _Block_copy(aBlock);

    [v21 requestEndpointWith:v22 activitySessionUUID:isa activity:v20 completion:v24];
    _Block_release(v24);
  }

  else
  {
    v51 = v19;
    v52 = a4;
    v56 = v17;
    v57 = a3;
    v53 = a6;
    v54 = a5;
    v55 = a8;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.host);
    v26 = v57;

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = a2;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v57, aBlock);
      _os_log_impl(&dword_1AEB26000, v27, v28, "No connection is providing endpoint with identifier=%s, caching endpoint request.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1B27120C0](v30, -1, -1);
      v32 = v29;
      v26 = v57;
      MEMORY[0x1B27120C0](v32, -1, -1);

      v33 = v52;
    }

    else
    {

      v33 = v52;
      v31 = a2;
    }

    v34 = a7;
    v35 = v16[5];
    v36 = type metadata accessor for UUID();
    v37 = v51;
    (*(*(v36 - 8) + 16))(v51 + v35, v33, v36);
    *v37 = v31;
    v37[1] = v26;
    v38 = v53;
    v39 = v54;
    *(v37 + v16[6]) = v54;
    v40 = (v37 + v16[7]);
    *v40 = v38;
    v40[1] = v34;
    v41 = OBJC_IVAR___CPConversationManagerHost_pendingEndpointRequests;
    v42 = v55;
    swift_beginAccess();
    v43 = *(v42 + v41);

    v44 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v41) = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
      *(v42 + v41) = v43;
    }

    v47 = v43[2];
    v46 = v43[3];
    v48 = v56;
    if (v47 >= v46 >> 1)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v43);
      v48 = v56;
      v43 = v49;
    }

    v43[2] = v47 + 1;
    outlined init with take of ConversationManagerHost.EndpointRequest(v37, v43 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47);
    *(v42 + v41) = v43;
    swift_endAccess();
  }
}

uint64_t CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v70 = type metadata accessor for UUID();
  v9 = *(v70 - 8);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetSgMR);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  v73 = a4;
  v74 = v4;
  v19 = v18;
  v75 = a2;
  v76 = a3;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC8], partial apply for closure #1 in CPConversationManagerDataSource.filteredActivitySessionContainers(from:connection:protectedStorage:), v72, a1);
  v68 = v20;
  v21 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1A0);
  v58[0] = a2;
  result = v21();
  v23 = 0;
  v25 = result + 64;
  v24 = *(result + 64);
  v62 = result;
  v26 = 1 << *(result + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v24;
  v29 = (v26 + 63) >> 6;
  v58[1] = v9 + 16;
  v69 = (v9 + 32);
  v66 = v9;
  v67 = (v9 + 8);
  v61 = v12;
  v59 = v19;
  v65 = v17;
  v64 = result + 64;
  v63 = v29;
  while (v28)
  {
    v33 = v23;
LABEL_17:
    v36 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v37 = v36 | (v33 << 6);
    v38 = v62;
    v39 = v66;
    (*(v66 + 16))(v60, *(v62 + 48) + *(v66 + 72) * v37, v70);
    v40 = *(v38 + 56);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
    v42 = *(v41 + 48);
    v43 = *(v39 + 32);
    v71 = *(v40 + 16 * v37);
    v19 = v59;
    v43();
    *(v19 + v42) = v71;
    (*(*(v41 - 8) + 56))(v19, 0, 1, v41);
    v44 = v71;
    v45 = *(&v71 + 1);
    v12 = v61;
    v17 = v65;
LABEL_18:
    outlined init with take of (key: UUID, value: ConversationManagerHostConnection.ConversationContainerWrapper)?(v19, v17);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
    if ((*(*(v46 - 8) + 48))(v17, 1, v46) == 1)
    {

      return v68;
    }

    v47 = &v17[*(v46 + 48)];
    v48 = *v47;

    (*v69)(v12, v17, v70);
    if (!*(v68 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v12), (v49 & 1) == 0))
    {
      v50 = (*((*MEMORY[0x1E69E7D40] & *v58[0]) + 0x1B0))(v78);
      v52 = v51;
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v54)
      {
        v55 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = *v52;
        *v52 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
        }

        v30 = v77;
        (*(v66 + 8))(*(v77 + 48) + *(v66 + 72) * v55, v70);
        v31 = *(v30 + 56) + 16 * v55;
        v32 = *v31;

        specialized _NativeDictionary._delete(at:)(v55, v30);
        *v52 = v30;

        v17 = v65;
      }

      v50(v78, 0);
    }

    result = (*v67)(v12, v70);
    v25 = v64;
    v29 = v63;
  }

  if (v29 <= v23 + 1)
  {
    v34 = v23 + 1;
  }

  else
  {
    v34 = v29;
  }

  v35 = v34 - 1;
  while (1)
  {
    v33 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v33 >= v29)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMd, &_s10Foundation4UUIDV3key_14CopresenceCore33ConversationManagerHostConnectionC0F16ContainerWrapperV5valuetMR);
      (*(*(v57 - 8) + 56))(v19, 1, 1, v57);
      v28 = 0;
      v23 = v35;
      goto LABEL_18;
    }

    v28 = *(v25 + 8 * v33);
    ++v23;
    if (v28)
    {
      v23 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ConversationManagerHost.conversationManager(_:sharePlayAllowedChanged:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = [objc_msgSend(*(a1 + OBJC_IVAR___CPConversationManagerHost_dataSource) sharePlaySystemStateObserver)];
    swift_unknownObjectRelease();
    return v9 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:advertiseGroupActivityWithUUID:completion:)(void *a1, void (*a2)(void *))
{
  if (a1)
  {
    v4 = a1;
    a2(a1);
  }

  return (a2)(0);
}

void ConversationManagerHost.conversationManagerHostConnection(_:addRemoteMembers:toConversationWithUUID:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (one-time initialization token for host == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = v6;
  (*(v7 + 16))(v9, v45, v6);
  v18 = a1;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v23;
    v44 = swift_slowAlloc();
    v46 = v44;
    *v22 = 138412802;
    *(v22 + 4) = v18;
    *v23 = v18;
    *(v22 + 12) = 2080;
    v42 = v19;
    v41 = v20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
    v24 = v18;
    v25 = Set.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v46);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = v40;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v7 + 8))(v28, v17);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v46);

    *(v22 + 24) = v32;
    v33 = v42;
    _os_log_impl(&dword_1AEB26000, v42, v41, "conversationManagerHostConnection: %@ addRemoteMembers: %s conversationUUID: %s", v22, 0x20u);
    v34 = v43;
    outlined destroy of NSObject?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v34, -1, -1);
    v35 = v44;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v35, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v36 = *(v4 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember, 0x1E69D8B80);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v38 = UUID._bridgeToObjectiveC()().super.isa;
  [v36 addRemoteMembers:isa toConversationWithUUID:v38];
}

void ConversationManagerHost.conversationManagerHostConnection(_:prepareForActivationWithOverrides:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (one-time initialization token for host == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1AEB26000, v18, v19, "conversationManagerHostConnection: %@ prepareForActivation", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v23 = *(v5 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v24 = MEMORY[0x1B270FF70](*&v17[direct field offset for XPCHostConnection.bundleIdentifier], *&v17[direct field offset for XPCHostConnection.bundleIdentifier + 8]);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_27;
  v25 = _Block_copy(aBlock);

  [v23 requestActivityAuthorizationForApplicationWithBundleIdentifier:v24 overrides:a2 completionHandler:v25];
  _Block_release(v25);
}

void ConversationManagerHost.conversationManagerHostConnection(_:setActivityAuthorization:forBundleIdentifier:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (one-time initialization token for host == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = a1;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v20 = 138412802;
    *(v20 + 4) = v17;
    *v21 = v17;
    *(v20 + 12) = 1024;
    *(v20 + 14) = a2 & 1;
    *(v20 + 18) = 2080;
    v23 = v17;
    *(v20 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v27);
    _os_log_impl(&dword_1AEB26000, v18, v19, "conversationManagerHostConnection: %@ setActivityAuthorization: %{BOOL}d forBundleIdentifier: %s", v20, 0x1Cu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1B27120C0](v22, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v24 = *(v5 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  v25 = MEMORY[0x1B270FF70](a3, a4);
  [v24 setActivityAuthorization:a2 & 1 forBundleID:v25];
}

void ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:)(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v87 = a4;
  v88 = a5;
  v89 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = v5;
  v16 = *&v5[OBJC_IVAR___CPConversationManagerHost_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (one-time initialization token for host == -1)
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
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Log.host);
  (*(v9 + 16))(v11, v89, v8);
  v20 = a1;
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v83 = v22;
    v25 = v24;
    v26 = swift_slowAlloc();
    v85 = v19;
    v27 = v26;
    v84 = swift_slowAlloc();
    *&aBlock = v84;
    *v25 = 138412802;
    *(v25 + 4) = v20;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v21;
    *v27 = v20;
    v27[1] = v21;
    *(v25 + 22) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = v20;
    v29 = v21;
    v30 = v28;
    v31 = v21;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v9 + 8))(v11, v8);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &aBlock);
    v21 = v29;
    v20 = v28;

    *(v25 + 24) = v35;
    v36 = v83;
    _os_log_impl(&dword_1AEB26000, v83, v23, "conversationManagerHostConnection: %@ create session with request: %@ conversationUUID: %s", v25, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v27, -1, -1);
    v37 = v84;
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v38 = *&v20[direct field offset for XPCHostConnection.definedSystemActivityIdentifiers];
  v39 = [v21 activityIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *&aBlock = v40;
  *(&aBlock + 1) = v42;
  MEMORY[0x1EEE9AC00](v43);
  *(&v82 - 2) = &aBlock;
  v44 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v82 - 4), v38);

  v45 = [v21 staticIdentifier];
  if (v45 && (v45, (v44 & 1) == 0))
  {
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1AEB26000, v62, v63, "conversationManagerHostConnection: Unable to create static session for non-system activity", v64, 2u);
      MEMORY[0x1B27120C0](v64, -1, -1);
    }

    v87(0);
  }

  else
  {
    v47 = *&v20[direct field offset for XPCHostConnection.bundleIdentifier];
    v46 = *&v20[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v48 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
    v49 = MEMORY[0x1B270FF70](v47, v46);
    v50 = [v48 initWithCreationRequest:v21 bundleIdentifier:v49 systemActivity:v44 & 1];

    if (_TUIsInternalInstall())
    {
      v51 = objc_opt_self();
      v52 = [v51 standardUserDefaults];
      v53 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE36600);
      v54 = [v52 objectForKey_];

      if (v54)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined destroy of NSObject?(&aBlock, &_sypSgMd, &_sypSgMR);
        v55 = [v51 standardUserDefaults];
        v56 = MEMORY[0x1B270FF70](0xD000000000000018, 0x80000001AEE36600);
        v57 = [v55 BOOLForKey_];

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 67109120;
          *(v60 + 4) = v57;
          MEMORY[0x1B27120C0](v60, -1, -1);
        }

        v61 = [v50 metadata];
        [v61 setSupportsContinuationOnTV_];
      }

      else
      {
        aBlock = 0u;
        v91 = 0u;
        outlined destroy of NSObject?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }

    v65 = v21;
    v66 = v86;
    v67 = v50;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412802;
      *(v70 + 4) = v66;
      *(v70 + 12) = 2112;
      *(v70 + 14) = v67;
      *v71 = v66;
      v71[1] = v67;
      *(v70 + 22) = 2112;
      *(v70 + 24) = v65;
      v71[2] = v65;
      v72 = v65;
      v73 = v66;
      v74 = v67;
      _os_log_impl(&dword_1AEB26000, v68, v69, "ConversationManagerHost %@ created activity %@ for request %@", v70, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v71, -1, -1);
      MEMORY[0x1B27120C0](v70, -1, -1);
    }

    v75 = *&v66[OBJC_IVAR___CPConversationManagerHost_dataSource];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v77 = swift_allocObject();
    v78 = v87;
    v79 = v88;
    v77[2] = v67;
    v77[3] = v78;
    v77[4] = v79;
    v92 = partial apply for closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:);
    v93 = v77;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v91 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed IMUserNotification?) -> ();
    *(&v91 + 1) = &block_descriptor_3;
    v80 = _Block_copy(&aBlock);
    v81 = v67;

    [v75 createActivitySession:v81 onConversationWithUUID:isa withCompletion:v80];
    _Block_release(v80);
  }
}

void closure #1 in ConversationManagerHost.conversationManagerHostConnection(_:createActivitySession:onConversationWithUUID:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  if (a1)
  {
    v62 = v9;
    v21 = a3;
    v65 = a4;
    v22 = a1;
    v64 = [v22 state];
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.host);
    v24 = v22;
    v25 = a2;
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v63 = v26;
    if (v29)
    {
      v59 = v28;
      v60 = v27;
      v61 = v21;
      v30 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v30 = 136315650;
      v31 = [v26 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v62;
      (*(v62 + 56))(v20, 0, 1, v8);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v20, v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v32 + 48))(v18, 1, v8) == 1)
      {
        v33 = 0xE300000000000000;
        v34 = 7104878;
      }

      else
      {
        (*(v32 + 32))(v14, v18, v8);
        (*(v32 + 16))(v12, v14, v8);
        v34 = String.init<A>(reflecting:)();
        v33 = v46;
        (*(v32 + 8))(v14, v8);
      }

      v45 = v64;
      v47 = v64 < 2;
      outlined destroy of NSObject?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v67);

      *(v30 + 4) = v48;
      *(v30 + 12) = 2080;
      LOBYTE(v66) = v47;
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v67);

      *(v30 + 14) = v51;
      *(v30 + 22) = 2080;
      v66 = v25;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v52 = v25;
      v53 = String.init<A>(reflecting:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v67);

      *(v30 + 24) = v55;
      v56 = v60;
      _os_log_impl(&dword_1AEB26000, v60, v59, "Did activate session %s with result %s for activity %s", v30, 0x20u);
      v57 = v58;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v57, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);

      v21 = v61;
    }

    else
    {

      v45 = v64;
    }

    v21(v45 < 2);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.host);
    v36 = a2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66 = v36;
      v67 = v40;
      *v39 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v41 = v36;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v67);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1AEB26000, v37, v38, "Did not create session for activity %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1B27120C0](v40, -1, -1);
      MEMORY[0x1B27120C0](v39, -1, -1);
    }

    a3(0);
  }
}

void ConversationManagerHost.conversationManagerHostConnection(_:setDownlinkMuted:forRemoteParticipantsInConversationWithUUID:)(void *a1, int a2, uint64_t a3)
{
  LODWORD(v5) = a2;
  v36 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v3;
  v14 = *(v3 + OBJC_IVAR___CPConversationManagerHost_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (one-time initialization token for host == -1)
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
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.host);
  v17 = *(v7 + 16);
  v34 = a3;
  v17(v9, a3, v6);
  v18 = v36;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    LODWORD(v36) = v5;
    v5 = v21;
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v5 = 138412802;
    *(v5 + 4) = v18;
    *v22 = v18;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v36 & 1;
    *(v5 + 18) = 2080;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = v18;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v7 + 8))(v9, v6);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

    *(v5 + 20) = v27;
    _os_log_impl(&dword_1AEB26000, v19, v20, "conversationManagerHostConnection: %@ muted: %{BOOL}d conversationUUID: %s", v5, 0x1Cu);
    outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v22, -1, -1);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v28, -1, -1);
    v29 = v5;
    LOBYTE(v5) = v36;
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v30 = *(v35 + OBJC_IVAR___CPConversationManagerHost_dataSource);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v30 setDownlinkMuted:v5 & 1 forRemoteParticipantsOnConversationWithUUID:isa];
}