void closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(*a1 + 288);
  swift_beginAccess();
  v9 = *(a1 + v8);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a5;
  v15 = type metadata accessor for Participant(0);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a1;
  v18 = objc_allocWithZone(MEMORY[0x1E69D8CB8]);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20 withExtensionType:0];

  if (a3)
  {
    v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_s6UInt64Vs5NeverOTg504_s15d111Activities0A7SessionC12sendResource5atURL2to8metadata10completiony10Foundation0G0V_AA12ParticipantsOAI4DataVys5c52_pSgctFyyXEfU_y14CopresenceCore08ActivityC7XPCHost_py4U_s6g5VAA11F7VXEfU0_Tf1cn_n(a3);
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(v23);

    v24.super.isa = Set._bridgeToObjectiveC()().super.isa;

    v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v58 = a7;
    v59 = a8;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v57 = &block_descriptor_436;
    v26 = _Block_copy(&aBlock);

    [v60 sendResourceAtURL:v22 to:v24.super.isa metadata:v25.super.isa completion:v26];
LABEL_20:

    _Block_release(v26);
  }

  else
  {
    v47 = a7;
    v48 = a6;
    v49 = v22;
    v50 = a8;
    v27 = a4;
    v28 = GroupSession.activeParticipants.getter();
    v29 = v28;
    v30 = v28 + 56;
    v31 = 1 << *(v28 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v28 + 56);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    v36 = v52;
    while (v33)
    {
LABEL_11:
      v38 = v36;
      outlined init with copy of Participant(*(v29 + 48) + *(v36 + 72) * (__clz(__rbit64(v33)) | (v35 << 6)), v17, type metadata accessor for Participant);
      closure #1 in closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(v17, v27, &aBlock);
      if (v8)
      {
        goto LABEL_22;
      }

      v33 &= v33 - 1;
      outlined destroy of Participant(v17, type metadata accessor for Participant);
      v36 = v38;
      if ((v55 & 1) == 0)
      {
        v52 = aBlock;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
        }

        v40 = *(v51 + 2);
        v39 = *(v51 + 3);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v45 = *(v51 + 2);
          v46 = v40 + 1;
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v51, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
          v40 = v45;
          v41 = v46;
          v36 = v38;
          v51 = v43;
        }

        else
        {
          v36 = v38;
        }

        v42 = v51;
        *(v51 + 2) = v41;
        *&v42[8 * v40 + 32] = v52;
      }
    }

    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v34)
      {

        _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(v51);

        v24.super.isa = Set._bridgeToObjectiveC()().super.isa;

        v25.super.isa = Data._bridgeToObjectiveC()().super.isa;
        v58 = v47;
        v59 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v55 = 1107296256;
        v56 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
        v57 = &block_descriptor_439;
        v26 = _Block_copy(&aBlock);

        v22 = v49;
        [v60 sendResourceAtURL:v49 to:v24.super.isa metadata:v25.super.isa completion:v26];
        goto LABEL_20;
      }

      v33 = *(v30 + 8 * v37);
      ++v35;
      if (v33)
      {
        v35 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:

    outlined destroy of Participant(v17, type metadata accessor for Participant);

    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Participant(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(v7 + 32));
  outlined init with copy of Participant(*(a2 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v9, type metadata accessor for Participant);
  v11 = *&v9[*(v7 + 32)];
  result = outlined destroy of Participant(v9, type metadata accessor for Participant);
  if (v10 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  *a3 = v13;
  *(a3 + 8) = v10 == v11;
  return result;
}

uint64_t closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  default argument 1 of GroupSession.sendResource(atURL:to:metadata:completion:)(&v18);
  v17 = v18;
  GroupSession.sendResource(atURL:to:metadata:completion:)(a3, &v17, a4, v16, partial apply for closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:), v13);
}

uint64_t closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

Swift::Void __swiftcall GroupSession.logAttachmentSessionReport()()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + direct field offset for GroupSession.linkManager)) + 0x130))();

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v2 = AttachmentDataReport.init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v2, 0xD000000000000023, 0x80000001AF01A6B0);
}

void specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*a1 + 288);
  swift_beginAccess();
  v7 = *(a1 + v6);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:)(void **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    _os_log_impl(&dword_1AEE80000, v9, v10, "GroupSession: Logging attachment event: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v13 = MEMORY[0x1B2714130](a2, a3);
  [v7 logAttachmentEventWithReport:a4 reportEvent:v13];
}

uint64_t specialized GroupSession.cleanUpPlaybackSyncer()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + *(*v0 + 296));
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for specialized closure #1 in GroupSession.cleanUpPlaybackSyncer();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_504;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

Swift::Void __swiftcall GroupSession.cleanUpPlaybackSyncer()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + v1[37]);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v1[10];
  v9[3] = v1[11];
  v9[4] = v8;
  aBlock[4] = partial apply for closure #1 in GroupSession.cleanUpPlaybackSyncer();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_218;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v7, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v2);
  (*(v5 + 8))(v7, v12);
}

void closure #1 in GroupSession.invalidateIfWaiting()()
{
  GroupSession.internalState.getter();
  v0 = v6;
  v4 = 0;
  v5 = v6;
  v1 = static GroupSession.State.== infix(_:_:)(&v5, &v4);
  outlined consume of GroupSession<A>.State<A>(v0);
  if (v1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v2 = swift_allocError();
    *v3 = 9;
    GroupSession.invalidate(reason:)(v2);
  }
}

uint64_t GroupSession.registerPlaybackSyncerLink(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;

  specialized GroupSession.playbackSyncerLink.setter(v18);
  v40 = a1;

  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v19 = v35;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v20 = *(*v2 + 312);
  swift_beginAccess();
  *(v2 + v20) = v19;

  GroupSession.$activeParticipants.getter();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v37 = *(v4 + 80);
  v22[2] = v37;
  v36 = *(v4 + 88);
  v22[3] = v36;
  v22[4] = v21;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR, MEMORY[0x1E695C068]);
  Publisher<>.sink(receiveValue:)();

  (*(v15 + 8))(v17, v14);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v23 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v44 = *(v2 + *(*v2 + 296));
  v24 = v44;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v26 = v24;
  v27 = v41;
  v28 = v38;
  Publisher.subscribe<A>(on:options:)();
  outlined destroy of NSObject?(v7, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v39 + 8))(v11, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v31 = v36;
  v30[2] = v37;
  v30[3] = v31;
  v30[4] = v29;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.SubscribeOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.SubscribeOn<A, B>, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO11SubscribeOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BCB8]);
  v32 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v27, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return (*(*v40 + 400))(v33);
}

uint64_t closure #1 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant(0);
  v47 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.playback);
      swift_retain_n();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49[0] = v48;
        *v14 = 136315394;
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
        v15 = Set.description.getter();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v49);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        GroupSession.activeParticipants.getter();

        v18 = Set.description.getter();
        v20 = v19;

        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v49);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Active participants changed to latest participants:%s from previous participants:%s", v14, 0x16u);
        v22 = v48;
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v22, -1, -1);
        MEMORY[0x1B2715BA0](v14, -1, -1);
      }

      else
      {
      }

      v23 = v46;
      v48 = v10;
      v50 = GroupSession.activeParticipants.getter();
      specialized Set._subtract<A>(_:)(v8);
      v24 = 0;
      v8 = v50;
      v26 = v50 + 56;
      v25 = *(v50 + 56);
      v27 = 1 << *(v50 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & v25;
      v30 = direct field offset for GroupSession.playbackSyncerLink;
      v31 = (v27 + 63) >> 6;
      v45 = direct field offset for GroupSession.playbackSyncerLink;
      if ((v28 & v25) != 0)
      {
        while (2)
        {
          v10 = v24;
LABEL_16:
          v32 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          outlined init with copy of Participant(*(v8 + 48) + *(v47 + 72) * (v32 | (v10 << 6)), v7, type metadata accessor for Participant);
          outlined init with take of Participant(v7, v23, type metadata accessor for Participant);
          v33 = v48;
          swift_beginAccess();
          v34 = *(v33 + v30);
          if (v34)
          {
            swift_endAccess();
            v35 = *(*v34 + 248);

            v37 = v35(v36);
            v39 = v38;

            if (v37)
            {
              v40 = v8;
              v41 = v7;
              v42 = v46;
              v37(v46);
              v43 = v37;
              v23 = v42;
              v7 = v41;
              v8 = v40;
              v30 = v45;
              outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v43, v39);
            }

            else
            {
              v23 = v46;
            }

            outlined destroy of Participant(v23, type metadata accessor for Participant);
            v24 = v10;
            if (v29)
            {
              continue;
            }
          }

          else
          {
            outlined destroy of Participant(v23, type metadata accessor for Participant);
            swift_endAccess();
            v24 = v10;
            if (v29)
            {
              continue;
            }
          }

          break;
        }
      }

      while (1)
      {
        v10 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v10 >= v31)
        {
        }

        v29 = *(v26 + 8 * v10);
        ++v24;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in GroupSession.registerPlaybackSyncerLink(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GroupSessionEvent(0);
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for Notification();
  v71 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = Notification.userInfo.getter();
  if (!v21)
  {
  }

  v68 = v13;
  v22 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v21);

  if (!v22)
  {
  }

  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(), (v24 & 1) == 0) || (outlined init with copy of Any(*(v22 + 56) + 32 * v23, v73), type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand(0), (swift_dynamicCast() & 1) == 0))
  {
  }

  v67 = v72;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.playback);
  v63 = *(v71 + 16);
  v64 = v71 + 16;
  v63(v19, a1, v14);
  v65 = v26;
  v27 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v61))
  {
    v62 = v27;
    v28 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v73[0] = v59;
    v60 = v28;
    *v28 = 136315138;
    v29 = Notification.userInfo.getter();
    if (v29)
    {
      v72 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      v58 = String.init<A>(reflecting:)();
      v31 = v30;
    }

    else
    {
      v58 = 7104878;
      v31 = 0xE300000000000000;
    }

    v66 = *(v71 + 8);
    v66(v19, v14);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v31, v73);

    v33 = v60;
    *(v60 + 1) = v32;
    _os_log_impl(&dword_1AEE80000, v62, v61, "Received event, notification: %s", v33, 0xCu);
    v34 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x1B2715BA0](v34, -1, -1);
    MEMORY[0x1B2715BA0](v33, -1, -1);
  }

  else
  {

    v66 = *(v71 + 8);
    v66(v19, v14);
  }

  v35 = v70;
  if (*(v22 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(), (v37 & 1) != 0))
  {
    outlined init with copy of Any(*(v22 + 56) + 32 * v36, v73);
    v38 = type metadata accessor for UUID();
    v39 = v68;
    v40 = swift_dynamicCast();
    v41 = *(*(v38 - 8) + 56);
    v42 = v38;
    v35 = v70;
    v41(v39, v40 ^ 1u, 1, v42);
  }

  else
  {
    v43 = type metadata accessor for UUID();
    (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
  }

  if (*(v22 + 16) && (v44 = specialized __RawDictionaryStorage.find<A>(_:)(), (v45 & 1) != 0))
  {
    outlined init with copy of Any(*(v22 + 56) + 32 * v44, v73);

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v46 = v72;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {

    v46 = 0;
  }

  GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:)(v68, v67, v46, v35);
  outlined init with copy of URL?(v35, v9, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  if ((*(v69 + 6))(v9, 1, v3) == 1)
  {
    v69 = v46;
    outlined destroy of NSObject?(v9, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
    v63(v17, a1, v14);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73[0] = v50;
      *v49 = 136315138;
      v51 = Notification.userInfo.getter();
      if (v51)
      {
        v72 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
      }

      else
      {
        v52 = 7104878;
        v54 = 0xE300000000000000;
      }

      v66(v17, v14);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v73);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_1AEE80000, v47, v48, "Could not create playback event %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1B2715BA0](v50, -1, -1);
      MEMORY[0x1B2715BA0](v49, -1, -1);
    }

    else
    {

      v66(v17, v14);
    }

    v55 = v70;
  }

  else
  {
    outlined init with take of Participant(v9, v5, type metadata accessor for GroupSessionEvent);
    GroupSession.showNotice(_:)(v5);

    outlined destroy of Participant(v5, type metadata accessor for GroupSessionEvent);
    v55 = v35;
  }

  outlined destroy of NSObject?(v55, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  return outlined destroy of NSObject?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo55AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyaypGMd, &_ss18_DictionaryStorageCySo55AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKeyaypGMR);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v31);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    outlined init with copy of AnyHashable(v28, v25);
    type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    outlined init with copy of Any(v29 + 8, &v26[8]);
    outlined destroy of NSObject?(v28, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    outlined init with take of Any(&v26[8], v23);
    v13 = v12;
    outlined init with take of Any(v23, v27);
    outlined init with take of Any(v27, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = outlined init with take of Any(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  outlined destroy of NSObject?(v28, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

  return 0;
}

uint64_t GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v80 = a2;
  v81 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v78 = v72 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v72 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v75 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v76 = v72 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v79 = v72 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v72 - v24;
  v26 = type metadata accessor for Participant(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v72 - v31;
  outlined init with copy of URL?(a1, v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v33 = *(v17 + 48);
  if (v33(v15, 1, v16) == 1)
  {
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of Participant(*(v84 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v32, type metadata accessor for Participant);
    goto LABEL_10;
  }

  v72[2] = v17 + 48;
  v73 = v33;
  v74 = v32;
  v72[0] = *(v17 + 32);
  v72[1] = v17 + 32;
  (v72[0])(v25, v15, v16);
  v34 = GroupSession.activeParticipants.getter();
  MEMORY[0x1EEE9AC00](v34);
  v72[-2] = v25;
  v35 = v83;
  specialized Sequence.first(where:)(partial apply for closure #1 in GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:), v34, v83);

  if ((*(v27 + 48))(v35, 1, v26) != 1)
  {
    v32 = v74;
    outlined init with take of Participant(v83, v74, type metadata accessor for Participant);
    (*(v17 + 8))(v25, v16);
LABEL_10:
    outlined init with copy of Participant(v32, v30, type metadata accessor for Participant);
    v54 = v81;
    v55 = v81;
    v56 = v80;
    v57 = v82;
    GroupSessionEvent.init(originator:avCommand:rate:)(v30, v56, v54, v82);
    v58 = type metadata accessor for GroupSessionEvent(0);
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      outlined destroy of NSObject?(v57, &_s15GroupActivities0A12SessionEventVSgMd, &_s15GroupActivities0A12SessionEventVSgMR);
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.playback);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1AEE80000, v61, v62, "AVCF event: Failed to create GroupSession Event from playback notification", v63, 2u);
        MEMORY[0x1B2715BA0](v63, -1, -1);
      }

      outlined destroy of Participant(v32, type metadata accessor for Participant);
      return (*(v59 + 56))(v85, 1, 1, v58);
    }

    else
    {
      outlined destroy of Participant(v32, type metadata accessor for Participant);
      v65 = v57;
      v66 = v85;
      outlined init with take of Participant(v65, v85, type metadata accessor for GroupSessionEvent);
      return (*(v59 + 56))(v66, 0, 1, v58);
    }
  }

  v82 = v25;
  v84 = v16;
  outlined destroy of NSObject?(v83, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.playback);
  v37 = *(v17 + 16);
  v38 = v79;
  v39 = v82;
  v40 = v84;
  v37(v79, v82, v84);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v73;
  if (v43)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v38;
    v48 = v46;
    v86 = v46;
    *v45 = 136315138;
    v49 = v78;
    v37(v78, v47, v40);
    (*(v17 + 56))(v49, 0, 1, v40);
    v50 = v49;
    v51 = v77;
    outlined init with copy of URL?(v50, v77, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v44(v51, 1, v40) == 1)
    {
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    else
    {
      v68 = v76;
      (v72[0])(v76, v51, v40);
      v37(v75, v68, v40);
      v53 = String.init<A>(reflecting:)();
      v52 = v69;
      (*(v17 + 8))(v68, v40);
    }

    outlined destroy of NSObject?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v67 = *(v17 + 8);
    v67(v79, v40);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, &v86);

    *(v45 + 4) = v70;
    v40 = v84;
    _os_log_impl(&dword_1AEE80000, v41, v42, "createPlaybackNoticeEvent: Can't find participant: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B2715BA0](v48, -1, -1);
    MEMORY[0x1B2715BA0](v45, -1, -1);

    v39 = v82;
  }

  else
  {

    v67 = *(v17 + 8);
    v67(v38, v40);
  }

  v71 = type metadata accessor for GroupSessionEvent(0);
  (*(*(v71 - 8) + 56))(v85, 1, 1, v71);
  return (v67)(v39, v40);
}

void closure #1 in variable initialization expression of GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.playback);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Error sending %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 208);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ()), v5);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path getter for GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 224))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed UUID) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 232);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, *(v0 + 40));
  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.receivedMessageHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
}

uint64_t key path getter for GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 248))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler : <A><A1>GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 256);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, *(v0 + 56));
  return v1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.participantLeftHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.connected.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t GroupSession.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t (*GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.groupSession;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.groupSession.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t (*GroupSession.GroupSessionPlaybackSyncerLink.messenger.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.messenger;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return GroupSession.GroupSessionPlaybackSyncerLink.messenger.modify;
}

void GroupSession.GroupSessionPlaybackSyncerLink.groupSession.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.__allocating_init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(a1, a2, a3);
  return v6;
}

void *GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = *v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = closure #1 in variable initialization expression of GroupSession.GroupSessionPlaybackSyncerLink.onSendMessageCompletion;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v4[7] = 0;
  swift_weakInit();
  swift_weakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.cancellables) = v14;
  swift_beginAccess();
  swift_weakAssign();
  v15 = *(v8 + 16);
  v15(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.sessionUUID, &a1[direct field offset for GroupSession.id], v7);
  outlined init with copy of Participant(*&a1[direct field offset for GroupSession.linkManager] + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v13, type metadata accessor for Participant);
  v15(v10, v13, v7);
  outlined destroy of Participant(v13, type metadata accessor for Participant);
  (*(v8 + 32))(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.localUUID, v10, v7);
  swift_beginAccess();
  swift_weakAssign();
  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) = v35;
  *(v4 + 64) = 0;
  v16 = *a1;
  v17 = *(*a1 + 264);
  if ((a1[v17] & 1) != 0 || a1[*(v16 + 272)] == 1)
  {
    v18 = *(v16 + 280);
    swift_beginAccess();
    v19 = a1[v18] ^ 1;
  }

  else
  {
    v19 = 1;
  }

  v37[0] = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  swift_allocObject();

  *(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup) = CurrentValueSubject.init(_:)();
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.playback);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109888;
    swift_beginAccess();

    CurrentValueSubject.value.getter();

    *(v23 + 4) = v37[0];

    v24 = a1[v17];
    *(v23 + 8) = 1024;
    *(v23 + 10) = v24;
    *(v23 + 14) = 1024;
    v25 = *a1;
    *(v23 + 16) = a1[*(*a1 + 272)];
    *(v23 + 20) = 1024;
    v26 = *(v25 + 280);
    swift_beginAccess();
    *(v23 + 22) = a1[v26];

    _os_log_impl(&dword_1AEE80000, v21, v22, "ShouldRequestCatchup:%{BOOL}d isLocallyInitiated:%{BOOL}d isLightweightPrimaryInitiated:%{BOOL}d isFirstJoin:%{BOOL}d", v23, 0x1Au);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {
  }

  if (swift_weakLoadStrong())
  {
    v27 = GroupSession.catchupNeededPublisher.getter();

    *v37 = v27;
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = *(v6 + 80);
    *(v29 + 24) = *(v6 + 88);
    *(v29 + 40) = *(v6 + 104);
    *(v29 + 48) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Participant, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities11ParticipantVs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  if (swift_weakLoadStrong())
  {
    _s15GroupActivities0A16SessionMessengerC7receiveyAC13MessageStreamVy_xGxmSeRzSERzlFAA14PlaybackSyncerC0F0V_Tt0g5(v37);

    v36 = *v37;
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = *(v6 + 80);
    *(v31 + 24) = *(v6 + 88);
    *(v31 + 40) = *(v6 + 104);
    *(v31 + 48) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:);
    *(v32 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type GroupSessionMessenger.MessageStream<PlaybackSyncer.Message> and conformance GroupSessionMessenger.MessageStream<A>, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMd, &_s15GroupActivities0A16SessionMessengerC13MessageStreamVy_AA14PlaybackSyncerC0E0VGMR, &protocol conformance descriptor for GroupSessionMessenger.MessageStream<A>);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return v4;
}

uint64_t closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(*result + 272))())
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.playback);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1AEE80000, v5, v6, "Processing catchup needed signal", v7, 2u);
        MEMORY[0x1B2715BA0](v7, -1, -1);
      }

      (*(*v3 + 344))();
      CurrentValueSubject.send(_:)();
    }

    else
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.playback);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1AEE80000, v9, v10, "Ignoring catchup needed signal since not connected to PlaybackSyncer yet", v11, 2u);
        MEMORY[0x1B2715BA0](v11, -1, -1);
      }
    }
  }

  return result;
}

void _s15GroupActivities0A16SessionMessengerC7receiveyAC13MessageStreamVy_xGxmSeRzSERzlFAA14PlaybackSyncerC0F0V_Tt0g5(void *a1@<X8>)
{
  v16 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMR);
  v2 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = &v14 - v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMR);
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - v6;
  v17 = _s15GroupActivities0A16SessionMessengerC18MessageStreamStoreO07messageF033_7F6FED5A36F2E7FBC6D91B446E55DE7FLL3for0H4Type7Combine12AnyPublisherVyAC0E7WrapperAGLLV_AC0E7ContextVAA15SendReliabilityOts5NeverOGAA0v9TransportC0_p_xmtSeRzSERzlFZAA14PlaybackSyncerC0E0V_Tt0t1g5(*(v1 + 16), *(v1 + 24));
  v8 = *(v1 + 40);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for specialized closure #1 in GroupSessionMessenger.receive<A>(_:);
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities0D16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AF0H7ContextVAD15SendReliabilityOts5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.compactMap<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (PlaybackSyncer.Message, GroupSessionMessenger.MessageContext)> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMd, &_s7Combine10PublishersO10CompactMapVy_AA12AnyPublisherVy15GroupActivities0G16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AJ0K7ContextVAH15SendReliabilityOts5NeverOGAH14PlaybackSyncerC0K0V_AOtGMR, MEMORY[0x1E695BC80]);
  v11 = v14;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v2 + 8))(v4, v11);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.CompactMap<AnyPublisher<(GroupSessionMessenger.MessageWrapper, GroupSessionMessenger.MessageContext, SendReliability), Never>, (PlaybackSyncer.Message, GroupSessionMessenger.MessageContext)>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC10CompactMapVy_AA12AnyPublisherVy15GroupActivities0I16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AL0M7ContextVAJ15SendReliabilityOts5NeverOGAJ14PlaybackSyncerC0M0V_AQtGGMR, MEMORY[0x1E695BCC0]);
  v12 = v15;
  v13 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v12);
  _s15GroupActivities0A16SessionMessengerC13MessageStreamV06outputF0AEy_xG7Combine12AnyPublisherVyx_AC0E7ContextVts5NeverOG_tcfCAA14PlaybackSyncerC0E0V_Tt1g5(v13, v16);
}

uint64_t closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.init(groupSession:messenger:playbackSyncer:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = (*(*result + 224))();
    v10 = v9;

    if (v8)
    {
      v11[0] = v4;
      v12 = v5;
      v13 = v6;
      v8(v11, a2);
      return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v10);
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.GroupSessionPlaybackSyncerLink.connect()()
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 88);
  v69 = *(v3 + 104);
  type metadata accessor for GroupSession.State(255, v4, v69, v0);
  v5 = type metadata accessor for Published.Publisher();
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v53 - v6;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Publishers.Drop();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - v12;
  v72 = type metadata accessor for UUID();
  v14 = *(v72 - 8);
  v15 = MEMORY[0x1EEE9AC00](v72);
  v64 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v53 - v17;
  v18 = type metadata accessor for Participant(0);
  v71 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v3;
  v22 = (*(v3 + 296))(v19);
  if (v22)
  {
    v62 = v14;
    v65 = v5;
    v23 = v22;
    GroupSession.state.getter();
    v24 = v74;
    v75 = 1;
    v76 = v74;
    v25 = static GroupSession.State.== infix(_:_:)(&v76, &v75);
    outlined consume of GroupSession<A>.State<A>(v24);
    if (v25)
    {
      v70 = v23;
      v57 = v10;
      if (one-time initialization token for playback != -1)
      {
LABEL_24:
        swift_once();
      }

      v58 = v8;
      v59 = v7;
      v60 = v4;
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.playback);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v62;
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1AEE80000, v27, v28, "GroupSession was already joined so calling didJoinHandler", v31, 2u);
        MEMORY[0x1B2715BA0](v31, -1, -1);
      }

      v32 = GroupSession.activeParticipants.getter();
      v33 = v32;
      v34 = v32 + 56;
      v35 = 1 << *(v32 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v4 = v36 & *(v32 + 56);
      v7 = (v35 + 63) >> 6;
      v8 = v30 + 48;
      v56 = (v30 + 32);

      v37 = 0;
      v61 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v38 = v37;
        if (!v4)
        {
          break;
        }

LABEL_13:
        outlined init with copy of Participant(*(v33 + 48) + *(v71 + 72) * (__clz(__rbit64(v4)) | (v37 << 6)), v21, type metadata accessor for Participant);
        closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(v21, v70, v13);
        v4 &= v4 - 1;
        outlined destroy of Participant(v21, type metadata accessor for Participant);
        if ((*v8)(v13, 1, v72) == 1)
        {
          outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          v55 = *v56;
          v55(v63, v13, v72);
          v55(v64, v63, v72);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
          }

          v40 = *(v61 + 2);
          v39 = *(v61 + 3);
          v41 = v40 + 1;
          if (v40 >= v39 >> 1)
          {
            v54 = v40 + 1;
            v53 = v40;
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v61, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
            v41 = v54;
            v40 = v53;
            v61 = v44;
          }

          v43 = v61;
          v42 = v62;
          *(v61 + 2) = v41;
          v55(&v43[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40], v64, v72);
        }
      }

      while (1)
      {
        v37 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
          goto LABEL_24;
        }

        if (v37 >= v7)
        {
          break;
        }

        v4 = *(v34 + 8 * v37);
        ++v38;
        if (v4)
        {
          goto LABEL_13;
        }
      }

      v45 = *(v2 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);
      v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v61);

      (*(*v45 + 480))(v2, &protocol witness table for GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>, v46);

      (*(*v2 + 280))(1);
      v7 = v59;
      v4 = v60;
      v8 = v58;
      v10 = v57;
    }

    v47 = v67;
    GroupSession.$state.getter();
    v48 = v65;
    Publisher.dropFirst(_:)();
    (*(v68 + 8))(v47, v48);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v51 = v73;
    v50[2] = *(v73 + 80);
    v50[3] = v4;
    v52 = v69;
    v50[4] = *(v51 + 96);
    v50[5] = v52;
    v50[6] = v49;
    swift_getWitnessTable();
    Publisher<>.sink(receiveValue:)();

    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }
}

uint64_t closure #2 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v50 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  v51 = type metadata accessor for UUID();
  v9 = *(v51 - 8);
  v10 = MEMORY[0x1EEE9AC00](v51);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for Participant(0);
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v52 = (*(*result + 296))();
    if (v52)
    {
      v53 = 1;
      v54 = v18;
      if (static GroupSession.State.== infix(_:_:)(&v54, &v53))
      {
        v45 = v12;
        if (one-time initialization token for playback != -1)
        {
LABEL_26:
          swift_once();
        }

        v44 = v14;
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.playback);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1AEE80000, v22, v23, "GroupSession joined so connecting link to PlaybackSyncer", v24, 2u);
          MEMORY[0x1B2715BA0](v24, -1, -1);
        }

        v25 = GroupSession.activeParticipants.getter();
        v26 = v25;
        v27 = v25 + 56;
        v28 = 1 << *(v25 + 32);
        v29 = -1;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        v14 = v29 & *(v25 + 56);
        v30 = (v28 + 63) >> 6;
        v31 = (v9 + 48);
        v43 = v9;
        v46 = (v9 + 32);

        v9 = 0;
        v47 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v32 = v9;
          if (!v14)
          {
            break;
          }

LABEL_14:
          outlined init with copy of Participant(*(v26 + 48) + *(v48 + 72) * (__clz(__rbit64(v14)) | (v9 << 6)), v17, type metadata accessor for Participant);
          closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()(v17, v52, v8);
          v14 &= v14 - 1;
          outlined destroy of Participant(v17, type metadata accessor for Participant);
          if ((*v31)(v8, 1, v51) == 1)
          {
            outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v42 = *v46;
            v42(v44, v8, v51);
            v42(v45, v44, v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
            }

            v34 = v47[2];
            v33 = v47[3];
            v35 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v40 = v47[2];
              v41 = v34 + 1;
              v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v47, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
              v34 = v40;
              v35 = v41;
              v47 = v37;
            }

            v36 = v47;
            v47[2] = v35;
            v42(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v34, v45, v51);
          }
        }

        while (1)
        {
          v9 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
            goto LABEL_26;
          }

          if (v9 >= v30)
          {
            break;
          }

          v14 = *(v27 + 8 * v9);
          ++v32;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        v38 = *(v20 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);

        v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v47);

        (*(*v38 + 480))(v20, &protocol witness table for GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>, v39);

        (*(*v20 + 280))(1);
      }
    }
  }

  return result;
}

uint64_t closure #1 in GroupSession.GroupSessionPlaybackSyncerLink.connect()@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Participant(*(a2 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v12, type metadata accessor for Participant);
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  outlined destroy of Participant(v12, type metadata accessor for Participant);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v13(a3, a1, v6);
    v14 = 0;
  }

  return (*(v7 + 56))(a3, v14, 1, v6);
}

uint64_t GroupSession.GroupSessionPlaybackSyncerLink.sendMessage(_:to:)(unsigned __int8 *a1, uint64_t a2)
{
  v62 = type metadata accessor for UUID();
  v64 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v52 - v8;
  v9 = type metadata accessor for Participant(0);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v15 = *(a1 + 1);
  v14 = *(a1 + 2);
  if (a2)
  {
    v56 = v14;
    v16 = *(a2 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v53 = v15;
      v54 = v13;
      v55 = v2;
      v65 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v65;
      v18 = *(v64 + 16);
      v19 = (a2 + ((*(v64 + 80) + 32) & ~*(v64 + 80)));
      v58 = *(v64 + 72);
      v59 = v18;
      v64 += 16;
      v57 = (v64 - 8);
      v20 = v62;
      do
      {
        v21 = v63;
        v22 = v59;
        v59(v63, v19, v20);
        v22(v7, v21, v20);
        v22(v12, v7, v20);
        UUID.uuid.getter();
        v24 = v23;
        UUID.uuid.getter();
        v26 = (v25 >> 40) & 0xFF00 | v24;
        UUID.uuid.getter();
        v28 = (v27 >> 24) & 0xFF0000;
        UUID.uuid.getter();
        v30 = v26 | v28 | (v29 >> 8) & 0xFF000000;
        UUID.uuid.getter();
        v32 = v30 & 0xFFFFFF00FFFFFFFFLL | (v31 << 32);
        UUID.uuid.getter();
        v34 = v32 & 0xFFFF00FFFFFFFFFFLL | (v33 << 40);
        UUID.uuid.getter();
        v36 = v34 & 0xFF00FFFFFFFFFFFFLL | (v35 << 48);
        UUID.uuid.getter();
        v38 = v36 | (v37 << 56);
        v39 = *v57;
        (*v57)(v7, v20);
        v39(v21, v20);
        v40 = v61;
        *&v12[v61[6]] = v38;
        v41 = &v12[v40[5]];
        *v41 = 0;
        *(v41 + 1) = 0xE000000000000000;
        v42 = &v12[v40[7]];
        *v42 = 0;
        *(v42 + 1) = 0;
        v12[v40[8]] = 0;
        v12[v40[9]] = 0;
        v65 = v17;
        v44 = *(v17 + 16);
        v43 = *(v17 + 24);
        if (v44 >= v43 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
          v17 = v65;
        }

        *(v17 + 16) = v44 + 1;
        v10 = outlined init with take of Participant(v12, v17 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v44, type metadata accessor for Participant);
        v19 += v58;
        --v16;
      }

      while (v16);
      v2 = v55;
      LOBYTE(v13) = v54;
      v15 = v53;
    }

    if ((*(*v2 + 320))(v10))
    {
      v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities11ParticipantV_SayAFGTt0g5Tf4g_n(v17);

      v47 = (*(*v2 + 200))(v46);
      specialized GroupSessionMessenger.send<A>(_:to:completion:)(v13, v15, v56, v45, v47, v48);
    }

    else
    {
    }
  }

  else
  {
    result = (*(*v2 + 320))(v10);
    if (result)
    {
      v50 = (*(*v2 + 200))();
      specialized GroupSessionMessenger.send<A>(_:to:completion:)(v13, v15, v14, 0, v50, v51);
    }
  }

  return result;
}

uint64_t specialized GroupSessionMessenger.send<A>(_:to:completion:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v44 = &type metadata for PlaybackSyncer.Message;
  v45 = lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message();
  v46 = lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message();
  v41[0] = a1;
  v42 = a2;
  v43 = a3;
  v47 = 1;
  outlined copy of Data._Representation(a2, a3);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);
  outlined copy of Data._Representation(a2, a3);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = a6;
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = v19;
    outlined consume of Data._Representation(a2, a3);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v38 = a4;

    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v39);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Sending message: %s to: %s", v16, 0x16u);
    swift_arrayDestroy();
    v25 = v17;
    a6 = v36;
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  else
  {

    outlined consume of Data._Representation(a2, a3);
  }

  v26 = swift_conformsToProtocol2();
  if (v26)
  {
    v26 = (*(v26 + 8))(&type metadata for PlaybackSyncer.Message, v26);
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v29 = 0x80000001AF01AC20;
    v27 = 0xD000000000000026;
  }

  v30 = *(v7 + 40);
  MEMORY[0x1EEE9AC00](v26);
  tryLog<A>(_:_:function:line:)();
  v31 = v40;
  if (v40 >> 60 == 15)
  {
  }

  else
  {
    v32 = v39;
    v33 = *(v7 + 24);
    v39 = a4;
    ObjectType = swift_getObjectType();
    LOBYTE(v38) = v30;
    (*(v33 + 16))(v32, v31, &v39, v27, v29, &v38, a5, a6, ObjectType, v33);

    outlined consume of Data?(v32, v31);
  }

  return outlined destroy of GroupSessionMessenger.MessageWrapper(v41);
}

uint64_t *GroupSession.GroupSessionPlaybackSyncerLink.deinit()
{

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[4], v0[5]);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[6], v0[7]);
  v1 = direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.sessionUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.localUUID, v2);
  swift_weakDestroy();
  swift_weakDestroy();

  return v0;
}

uint64_t GroupSession.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 240))();
  return protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>;
}

uint64_t (*protocol witness for PlaybackSyncerLink.participantLeftHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(uint64_t *a1))()
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
  *(v3 + 32) = (*(*v1 + 264))();
  return protocol witness for PlaybackSyncerLink.participantLeftHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>;
}

void protocol witness for PlaybackSyncerLink.receivedMessageHandler.modify in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for PlaybackSyncerLink.localUUID.getter in conformance GroupSession<A>.GroupSessionPlaybackSyncerLink<A1>@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t specialized closure #1 in GroupSession.cleanUpPlaybackSyncer()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = direct field offset for GroupSession.playbackSyncerLink;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(**(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512);

      v5(v6);

      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.playback);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1AEE80000, v8, v9, "Cleaned up playback syncer", v10, 2u);
        MEMORY[0x1B2715BA0](v10, -1, -1);
      }
    }

    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v11 = v14;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    v12 = *(*v2 + 312);
    swift_beginAccess();
    *(v2 + v12) = v11;

    v13 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    *(v2 + v13) = 0;

    specialized GroupSession.playbackSyncerLink.setter(0);
  }

  return result;
}

uint64_t closure #1 in GroupSession.cleanUpPlaybackSyncer()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = direct field offset for GroupSession.playbackSyncerLink;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v5 = *(**(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512);

      v5(v6);

      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.playback);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1AEE80000, v8, v9, "Cleaned up playback syncer", v10, 2u);
        MEMORY[0x1B2715BA0](v10, -1, -1);
      }
    }

    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v11 = v14;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CD0];
    }

    v12 = *(*v2 + 312);
    swift_beginAccess();
    *(v2 + v12) = v11;

    v13 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    *(v2 + v13) = 0;

    specialized GroupSession.playbackSyncerLink.setter(0);
  }

  return result;
}

uint64_t specialized GroupSession.description.getter()
{
  _StringGuts.grow(_:)(120);
  MEMORY[0x1B27141F0](0x73655370756F7247, 0xED00003C6E6F6973);
  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01AD20);
  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
  _print_unlocked<A, B>(_:_:)();
  outlined consume of GroupSession<A>.State<A>(v0);
  MEMORY[0x1B27141F0](0xD000000000000014, 0x80000001AF01A6E0);
  if (*(v0 + *(*v0 + 264)))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + *(*v0 + 264)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v2, v3);

  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01A700);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01A720);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v5);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t GroupSession.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(120);
  MEMORY[0x1B27141F0](0x73655370756F7247, 0xED00003C6E6F6973);
  v2 = *(v1 + 80);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  GroupSession.state.getter();
  type metadata accessor for GroupSession.State(0, v2, *(v1 + 88), v5);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  outlined consume of GroupSession<A>.State<A>(v0);
  MEMORY[0x1B27141F0](0xD000000000000014, 0x80000001AF01A6E0);
  if (*(v0 + *(*v0 + 264)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(*v0 + 264)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v6, v7);

  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01A700);
  GroupSession.activeParticipants.getter();

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v8);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01A720);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v9);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall GroupSession.invalidateConnection()()
{
  v1 = *(*v0 + 288);
  swift_beginAccess();
  v2 = *(v0 + v1);
  dispatch thunk of XPCClient.destroyConnection()();
}

uint64_t GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v27 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315394;
    LOBYTE(v30) = a1 & 1;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, aBlock);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v30 = v4;
    v17 = >> prefix<A>(_:)(&v30, v8);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v10, v11, "GroupSession got shouldDismissPlayback allowingCancellation:%s. Will end %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  GroupSession.state.getter();
  v20 = aBlock[0];
  v29 = 1;
  v30 = aBlock[0];
  v21 = static GroupSession.State.== infix(_:_:)(&v30, &v29);
  outlined consume of GroupSession<A>.State<A>(v20);
  if (v21)
  {
    v22 = *(v4 + *(*v4 + 296));
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v27 & 1;
    *(v23 + 32) = a2;
    *(v23 + 40) = a3;
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
    *(v24 + 24) = v23;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_253;
    a2 = _Block_copy(aBlock);

    dispatch_sync(v22, a2);
    _Block_release(a2);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return (a2)(0);
}

uint64_t closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 288);
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = XPCClient.queue.getter();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
  *(v12 + 24) = v11;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_418;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);

  _Block_release(v13);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + 288);
  swift_beginAccess();
  v8 = *(a1 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = v8;

  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:);
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v10[3] = &block_descriptor_427;
  v9 = _Block_copy(v10);

  [v7 presentSessionDismissalAlertWithAllowingCancellation:a2 & 1 completion:v9];
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v5, v6, "GroupSession got result of dismissal alert %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  return a2(a1 & 1);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t GroupSession.Timestamps.globalCreation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSession.Timestamps.localCreation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GroupSession.Timestamps.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Date.init()();
  v7 = type metadata accessor for GroupSession.Timestamps(0, a1, a2, v6);
  Date.init()();
  v8 = *(v7 + 40);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t InternalParticipant.isTranslated.setter(char a1)
{
  result = type metadata accessor for InternalParticipant(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

int *InternalParticipant.init(_:isTranslated:isSaltVerified:isLocalParticipant:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with take of Participant(a1, a5, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void InternalParticipant.hash(into:)(uint64_t a1)
{
  Participant.hash(into:)(a1);
  v2 = type metadata accessor for InternalParticipant(0);
  Hasher._combine(_:)(*(v1 + v2[5]));
  Hasher._combine(_:)(*(v1 + v2[6]));
  Hasher._combine(_:)(*(v1 + v2[7]));
}

Swift::Int InternalParticipant.hashValue.getter()
{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v3);
  v1 = type metadata accessor for InternalParticipant(0);
  Hasher._combine(_:)(*(v0 + v1[5]));
  Hasher._combine(_:)(*(v0 + v1[6]));
  Hasher._combine(_:)(*(v0 + v1[7]));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance InternalParticipant(uint64_t a1, int *a2)
{
  Participant.hash(into:)(a1);
  Hasher._combine(_:)(*(v2 + a2[5]));
  Hasher._combine(_:)(*(v2 + a2[6]));
  Hasher._combine(_:)(*(v2 + a2[7]));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InternalParticipant(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v5);
  Hasher._combine(_:)(*(v2 + a2[5]));
  Hasher._combine(_:)(*(v2 + a2[6]));
  Hasher._combine(_:)(*(v2 + a2[7]));
  return Hasher._finalize()();
}

uint64_t specialized closure #1 in GroupSessionMessenger.receive<A>(_:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
      v6 = *(*(v5 - 8) + 56);

      return v6(a4, 1, 1, v5);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  outlined init with copy of GroupSessionMessenger.MessageType(a1, v13);
  if (v14)
  {
    v15[0] = v13[0];
    v15[1] = v13[1];
    v15[2] = v13[2];
    outlined init with copy of Decodable & Encodable(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
    v8 = swift_dynamicCast();
    if ((v8 & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
      v10 = 4;
    }

    MEMORY[0x1EEE9AC00](v8);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF15GroupActivities14PlaybackSyncerC7MessageV_s5NeverOAH_AD0C16SessionMessengerC0G7ContextVtTB5(partial apply for specialized closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:), v10, v11, v12, a4);
    outlined destroy of TypedPayloadBox(v15);
    return outlined consume of PlaybackSyncer.Message?(v10, v11, v12);
  }

  else
  {
    outlined destroy of GroupSessionMessenger.MessageType(v13);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    return (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void specialized closure #2 in GroupSessionMessenger.receive<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  outlined init with copy of URL?(a1, v4, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = v11;
    outlined destroy of NSObject?(v4, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Receiving message: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v4, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities19InternalParticipantVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalParticipant(0);
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = a2;
  v62 = (&v58 - v16);
  v17 = 0;
  v18 = *(a1 + 64);
  v59 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v60 = v22;
  while (v21)
  {
    v63 = (v21 - 1) & v21;
    v23 = __clz(__rbit64(v21)) | (v17 << 6);
    v24 = v65;
LABEL_16:
    v30 = *(*(a1 + 48) + 8 * v23);
    v31 = v64;
    outlined init with copy of Participant(*(a1 + 56) + *(v66 + 72) * v23, v64, type metadata accessor for InternalParticipant);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    v33 = *(v32 + 48);
    *v24 = v30;
    outlined init with take of Participant(v31, v24 + v33, type metadata accessor for InternalParticipant);
    (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
    v27 = v62;
LABEL_17:
    outlined init with take of Date?(v24, v27, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    v35 = (*(*(v34 - 8) + 48))(v27, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v38 = *v27;
    outlined init with take of Participant(v27 + v37, v10, type metadata accessor for InternalParticipant);
    v39 = v61;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
    if ((v41 & 1) == 0)
    {
      goto LABEL_40;
    }

    outlined init with copy of Participant(*(v39 + 56) + *(v66 + 72) * v40, v7, type metadata accessor for InternalParticipant);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v42 = type metadata accessor for Participant(0), v43 = v42[5], v44 = *&v7[v43], v45 = *&v7[v43 + 8], v46 = &v10[v43], v44 != *v46) || v45 != *(v46 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v7[v42[6]] != *&v10[v42[6]])
    {
LABEL_39:
      outlined destroy of Participant(v7, type metadata accessor for InternalParticipant);
LABEL_40:
      outlined destroy of Participant(v10, type metadata accessor for InternalParticipant);
      return 0;
    }

    v47 = v42[7];
    v48 = &v7[v47];
    v49 = *&v7[v47 + 8];
    v50 = &v10[v47];
    v51 = *(v50 + 1);
    if (v49)
    {
      if (!v51 || (*v48 != *v50 || v49 != v51) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (v51)
    {
      goto LABEL_39;
    }

    if (v7[v42[8]] != v10[v42[8]] || v7[v42[9]] != v10[v42[9]] || v7[v67[5]] != v10[v67[5]] || v7[v67[6]] != v10[v67[6]])
    {
      goto LABEL_39;
    }

    v52 = v67[7];
    v53 = a1;
    v54 = v7[v52];
    v55 = v10[v52];
    outlined destroy of Participant(v7, type metadata accessor for InternalParticipant);
    result = outlined destroy of Participant(v10, type metadata accessor for InternalParticipant);
    v56 = v54 == v55;
    a1 = v53;
    v22 = v60;
    v21 = v63;
    if (!v56)
    {
      return v36;
    }
  }

  if (v22 <= v17 + 1)
  {
    v25 = v17 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  v24 = v65;
  v27 = v62;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      (*(*(v57 - 8) + 56))(v24, 1, 1, v57);
      v63 = 0;
      v17 = v26;
      goto LABEL_17;
    }

    v29 = *(v59 + 8 * v28);
    ++v17;
    if (v29)
    {
      v63 = (v29 - 1) & v29;
      v23 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantG0CTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 56) + 8 * v12);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(*(a1 + 48) + 8 * v12));
      if (v15)
      {
        v16 = v14;
        type metadata accessor for SystemCoordinatorState.ParticipantState();
        v17 = *(*(a2 + 56) + 8 * v16);
        v18 = v13;
        v19 = v17;
        LOBYTE(v17) = static NSObject.== infix(_:_:)();

        if (v17)
        {
          continue;
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15GroupActivities11ParticipantV_AC17SystemCoordinatorC0D5StateVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v60 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v60 = v11;
  v61 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v62 = a2;
  v63 = v14;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v24 = v23 | (v15 << 6);
LABEL_15:
      v29 = v61;
      v30 = v64;
      outlined init with copy of Participant(*(v61 + 48) + *(v65 + 72) * v24, v64, type metadata accessor for Participant);
      outlined init with copy of SystemCoordinator.ParticipantState(*(v29 + 56) + 240 * v24, &v69);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      v32 = &v60[*(v31 + 48)];
      v33 = v30;
      v11 = v60;
      outlined init with take of Participant(v33, v60, type metadata accessor for Participant);
      v34 = v82;
      *(v32 + 12) = v81;
      *(v32 + 13) = v34;
      *(v32 + 14) = v83;
      v35 = v78;
      *(v32 + 8) = v77;
      *(v32 + 9) = v35;
      v36 = v80;
      *(v32 + 10) = v79;
      *(v32 + 11) = v36;
      v37 = v74;
      *(v32 + 4) = v73;
      *(v32 + 5) = v37;
      v38 = v76;
      *(v32 + 6) = v75;
      *(v32 + 7) = v38;
      v39 = v70;
      *v32 = v69;
      *(v32 + 1) = v39;
      v40 = v72;
      *(v32 + 2) = v71;
      *(v32 + 3) = v40;
      (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
      v67 = v15;
LABEL_16:
      v41 = v63;
      outlined init with take of Date?(v11, v63, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetSgMR);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      v43 = 1;
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
      {
        return v43;
      }

      v44 = (v41 + *(v42 + 48));
      v45 = v41;
      v46 = v66;
      outlined init with take of Participant(v45, v66, type metadata accessor for Participant);
      v47 = v44[13];
      v81 = v44[12];
      v82 = v47;
      v83 = v44[14];
      v48 = v44[9];
      v77 = v44[8];
      v78 = v48;
      v49 = v44[11];
      v79 = v44[10];
      v80 = v49;
      v50 = v44[5];
      v73 = v44[4];
      v74 = v50;
      v51 = v44[7];
      v75 = v44[6];
      v76 = v51;
      v52 = v44[1];
      v69 = *v44;
      v70 = v52;
      v53 = v44[3];
      v71 = v44[2];
      v72 = v53;
      v54 = v62;
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      v57 = v56;
      outlined destroy of Participant(v46, type metadata accessor for Participant);
      if ((v57 & 1) == 0)
      {
        outlined destroy of SystemCoordinator.ParticipantState(&v69);
        return 0;
      }

      outlined init with copy of SystemCoordinator.ParticipantState(*(v54 + 56) + 240 * v55, v68);
      v58 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(v68, &v69);
      outlined destroy of SystemCoordinator.ParticipantState(v68);
      result = outlined destroy of SystemCoordinator.ParticipantState(&v69);
      if ((v58 & 1) == 0)
      {
        return 0;
      }

      v15 = v67;
    }

    while (v21);
  }

  if (v22 <= v15 + 1)
  {
    v25 = v15 + 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v27 >= v22)
    {
      v67 = v26;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMd, &_s15GroupActivities11ParticipantV3key_AA17SystemCoordinatorC0C5StateV5valuetMR);
      (*(*(v59 - 8) + 56))(v11, 1, 1, v59);
      v21 = 0;
      goto LABEL_16;
    }

    v28 = *(v17 + 8 * v27);
    ++v15;
    if (v28)
    {
      v21 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v15 = v27;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11LinkManagerC10AttachmentVGMR, type metadata accessor for LinkManager.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR, MEMORY[0x1E69E8450]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities0D14SessionJournalC10AttachmentVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities0D14SessionJournalC10AttachmentVGMR, type metadata accessor for GroupSessionJournal.Attachment);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15GroupActivities0D24SessionAttachmentManagerC0G0VGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities0D24SessionAttachmentManagerC0G0VGMR, type metadata accessor for GroupSessionAttachmentManager.Attachment);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D14SessionJournalC10AttachmentVGSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D14SessionJournalC10AttachmentVGSgs5NeverOGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D24SessionAttachmentManagerC0G0VGSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccySay15GroupActivities0D24SessionAttachmentManagerC0G0VGSgs5NeverOGGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScs12ContinuationVySo7CKShareCs5Error_p_GGMd, &_ss23_ContiguousArrayStorageCyScs12ContinuationVySo7CKShareCs5Error_p_GGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR, type metadata accessor for PresenceSessionInfo.Participant);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMd, &_ss23_ContiguousArrayStorageCy16CoreTransferable30ResolvedTransferRepresentationVGMR, MEMORY[0x1E6965C30]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities27ActivityExternalParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities27ActivityExternalParticipantVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities5TopicC14PendingMessage33_FCF72D66A10B9B1DA93469C1BA0E40A1LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine4JustVy15GroupActivities0F7SessionCyAF03AnyF8ActivityVGGGMd, &_ss23_ContiguousArrayStorageCy7Combine4JustVy15GroupActivities0F7SessionCyAF03AnyF8ActivityVGGGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities18DownloadAttachment_pGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities18DownloadAttachment_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18DownloadAttachment_pMd, &_s15GroupActivities18DownloadAttachment_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
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

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v4 = type metadata accessor for InternalParticipant(0);
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PubSubTopic.Participant();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = 0;
  v38 = a3;
  v39 = result;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v35 = v7;
  v33 = v7 + 16;
  v34 = (v7 + 8);
  v31 = result + 64;
  v18 = v40;
  v19 = v41;
  if (v16)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v42 = (v16 - 1) & v16;
LABEL_10:
      v23 = v20 | (v10 << 6);
      v24 = *(*(v38 + 48) + 8 * v23);
      (*(v35 + 16))(v18, *(v38 + 56) + *(v35 + 72) * v23, v19);
      v25 = v43;
      v36(v18);
      if (v25)
      {
        break;
      }

      v43 = 0;
      (*v34)(v18, v19);
      *(v31 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v26 = v39;
      *(*(v39 + 48) + 8 * v23) = v24;
      result = outlined init with take of Participant(v6, *(v26 + 56) + *(v32 + 72) * v23, type metadata accessor for InternalParticipant);
      v27 = *(v26 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_17;
      }

      *(v26 + 16) = v29;
      v16 = v42;
      v18 = v40;
      v19 = v41;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    (*v34)(v18, v19);
    v30 = v39;

    return v30;
  }

  else
  {
LABEL_5:
    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v39;
      }

      v22 = *(v12 + 8 * v10);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v42 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
  v6 = *a1;
  result = outlined init with copy of Participant(a1 + v4, a2 + *(v5 + 48), type metadata accessor for InternalParticipant);
  *a2 = v6;
  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[12] = specialized _NativeDictionary.subscript.modify(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v3;
  v11 = type metadata accessor for InternalParticipant(0);
  v10[2] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v10[3] = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    v10[4] = swift_coroFrameAlloc();
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v12 + 64));
    v10[5] = malloc(v14);
    v15 = malloc(v14);
  }

  v10[6] = v15;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR) - 8) + 64);
  if (v8)
  {
    v10[7] = swift_coroFrameAlloc();
    v10[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[7] = malloc(v16);
    v10[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v10[9] = v17;
  v19 = *v4;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      specialized _NativeDictionary.copy()();
      v20 = v28;
      goto LABEL_17;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a3 & 1);
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  v10[10] = v20;
  if (v26)
  {
    outlined init with take of Participant(*(*v4 + 56) + *(v13 + 72) * v20, v18, type metadata accessor for InternalParticipant);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v13 + 56))(v18, v30, 1, v11);
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    outlined init with copy of URL?(v5, v6, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      outlined init with take of Participant(v9, *(v2 + 5), type metadata accessor for InternalParticipant);
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        outlined init with take of Participant(v13, v14, type metadata accessor for InternalParticipant);
        specialized _NativeDictionary._insert(at:key:value:)(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    outlined init with copy of URL?(v5, v16, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v19 = *(v2 + 1);
      outlined init with take of Participant(v9, *(v2 + 6), type metadata accessor for InternalParticipant);
      v11 = *v19;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      outlined init with take of Participant(v13, v11[7] + *(*(v2 + 3) + 72) * v12, type metadata accessor for InternalParticipant);
      goto LABEL_10;
    }
  }

  outlined destroy of NSObject?(v9, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
  if (v8)
  {
    specialized _NativeDictionary._delete(at:)(*(v2 + 10), **(v2 + 1), v18);
  }

LABEL_10:
  v20 = *(v2 + 8);
  v21 = *(v2 + 9);
  v23 = *(v2 + 6);
  v22 = *(v2 + 7);
  v25 = *(v2 + 4);
  v24 = *(v2 + 5);
  outlined destroy of NSObject?(v21, &_s15GroupActivities19InternalParticipantVSgMd, &_s15GroupActivities19InternalParticipantVSgMR);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 16) = a2;
  *(v9 + 24) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 32) = v11;
  v12 = *(v11 - 8);
  *(v10 + 40) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 48) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 64) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 56) = v15;
  if (v21)
  {
    v25 = (*(*v4 + 56) + 16 * v15);
    v26 = *v25;
    v27 = v25[1];
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  *v10 = v26;
  *(v10 + 8) = v27;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  if (v3)
  {
    v4 = *v1[3];
    v5 = v1[7];
    if ((*a1)[8])
    {
      v6 = (v4[7] + 16 * v5);
      *v6 = v2;
      v6[1] = v3;
    }

    else
    {
      v9 = v1[6];
      (*(v1[5] + 16))(v9, v1[2], v1[4]);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v9, v2, v3, v4);
    }
  }

  else if ((*a1)[8])
  {
    v7 = v1[7];
    v8 = *v1[3];
    (*(v1[5] + 8))(*(v8 + 48) + *(v1[5] + 72) * v7, v1[4]);
    specialized _NativeDictionary._delete(at:)(v7, v8);
  }

  v10 = v1[6];
  v11 = *v1;
  v12 = v1[1];
  outlined copy of SystemCoordinatorTable.Storage?(v2, v3);
  outlined consume of SystemCoordinatorTable.Storage?(v11, v12);
  free(v10);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, __n128 a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 48) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 40) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 24 * v11;
    v22 = *v21;
    v23 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
    v23 = 0uLL;
  }

  *v9 = v22;
  *(v9 + 8) = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, __n128 a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = *(*a1 + 48);
  if (v4)
  {
    v7 = v2[5];
    v8 = *v2[4];
    if (v6)
    {
      v9 = (v8[7] + 24 * v7);
      *v9 = v3;
      v9[1] = v4;
      v9[2] = v5;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v7, v2[3], v3, v4, v5, v8);
    }
  }

  else if ((*a1)[6])
  {
    specialized _NativeDictionary._delete(at:)(v2[5], *v2[4], a2);
  }

  v10 = *v2;
  v11 = v2[1];
  outlined copy of GroupSessionMessenger.MessageStreamStore.Storage?(v3, v4);
  outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(v10, v11);

  free(v2);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64V15GroupActivities19InternalParticipantVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6i4V_15j12Activities19lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiLIsgnndzo_Tf1nc_n04_ss6i3V15jvlm16VSbIgynd_AbESbs5X13_pIegnndzo_TRAiLSbIgynd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = outlined destroy of NSObject?(v5, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      outlined init with copy of Participant(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for Participant);
      specialized Set._Variant.remove(_:)(v10, v5);
      outlined destroy of Participant(v10, type metadata accessor for Participant);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v4;
  v5 = type metadata accessor for InternalParticipant(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v38 - v13);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  v43 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    outlined init with copy of Participant(*(v16 + 56) + *(v40 + 72) * v25, v7, type metadata accessor for InternalParticipant);
    v27 = v41;
    v28 = *(v41 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    outlined init with take of Participant(v29, v14 + v28, type metadata accessor for InternalParticipant);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    outlined init with take of Date?(v14, v11, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetSgMR);
    v32 = 1;
    v33 = (*(v3 + 48))(v11, 1, v30);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v11;
      v36 = v39;
      outlined init with take of Date?(v35, v39, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      v31(v36);
      outlined destroy of NSObject?(v36, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v41;
        (*(v3 + 56))(&v38 - v13, 1, 1, v41);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

double specialized closure #1 in closure #1 in GroupSessionMessenger.receive<A>(_:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR) + 48);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  outlined init with copy of Participant(a2, a3 + v8, type metadata accessor for GroupSessionMessenger.MessageContext);
  return outlined copy of Data._Representation(v6, v7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized static InternalParticipant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for Participant(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_21;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v14)
  {
    goto LABEL_21;
  }

  if (*(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v16 = type metadata accessor for InternalParticipant(0);
    if (*(a1 + v16[5]) == *(a2 + v16[5]) && *(a1 + v16[6]) == *(a2 + v16[6]))
    {
      v17 = *(a1 + v16[7]) ^ *(a2 + v16[7]) ^ 1;
      return v17 & 1;
    }
  }

LABEL_21:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized GroupSession.$receivedDataPublisher.getter()
{
  v1 = direct field offset for GroupSession._receivedDataPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$receivedAttachmentPublisher.getter()
{
  v1 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$catchupNeededPublisher.getter()
{
  v1 = direct field offset for GroupSession._catchupNeededPublisher;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t specialized GroupSession.$state.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GroupSession.State(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v10 - v7, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t GroupSession.invalidateIfWaiting()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + *(*v2 + 296));
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v8, v12);
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

void specialized GroupSession.activity.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v10 - v5;
  v10[2] = v3;
  v11 = *(v7 + 88);
  v8 = v11;
  swift_getKeyPath();
  v10[0] = v3;
  v10[1] = v8;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);

  v9 = static Published.subscript.setter();
  GroupSession.activity.didset(v9);
}

id outlined copy of GroupSession<A>.State<A>(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void outlined consume of GroupSession<A>.State<A>(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t specialized GroupSession.$activity.setter(uint64_t a1)
{
  v2 = type metadata accessor for Published.Publisher();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t partial apply for closure #1 in GroupSession.setInternalActiveParticipants(to:)(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t lazy protocol witness table accessor for type Participant and conformance Participant(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for InternalParticipant(uint64_t a1)
{
  result = type metadata singleton initialization cache for InternalParticipant;
  if (!type metadata singleton initialization cache for InternalParticipant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized GroupSession.messageQueue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for GroupSession.MessageQueue(0, v6, v7, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  v13[2] = v6;
  v13[3] = v7;
  swift_getKeyPath();
  v13[0] = v6;
  v13[1] = v7;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);

  return static Published.subscript.setter();
}

uint64_t specialized GroupSession.$messageQueue.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GroupSession.MessageQueue(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v10 - v7, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t specialized GroupSession.$internalState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GroupSession.State(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v10 - v7, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

void *partial apply for closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, a4, v4 + v10, v11);
}

void partial apply for closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Participant(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, v9, v2 + v6, v10, a2);
}

uint64_t partial apply for closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, v4, v5, v6);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x1B2714B30](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      do
      {
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t partial apply for closure #1 in GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)(uint64_t a1)
{
  if (*(*(v1 + 16) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for InternalParticipant(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    v18 = *(*(a3 + 48) + 8 * v17);
    outlined init with copy of Participant(*(a3 + 56) + *(v24 + 72) * v17, v8, type metadata accessor for InternalParticipant);
    LOBYTE(v18) = v25(v18, v8);
    result = outlined destroy of Participant(v8, type metadata accessor for InternalParticipant);
    if (v18)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVys6UInt64V15GroupActivities19InternalParticipantVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_s6i4V_15j12Activities19lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiLIsgnndzo_Tf1nc_n04_ss6i3V15jvlm16VSbIgynd_AbESbs5X13_pIegnndzo_TRAiLSbIgynd_Tf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x1B2715BA0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v47 = type metadata accessor for InternalParticipant(0);
  v55 = *(v47 - 8);
  v10 = MEMORY[0x1EEE9AC00](v47);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v46 = v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtSgMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v45 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v48 = a1;
  v49 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v50 = v21;
  v51 = 0;
  v52 = v24 & v22;
  v53 = a2;
  v54 = a3;

  v45[1] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v19);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
    {
      outlined consume of [UUID : Conversation].Iterator._Variant(v48);
    }

    v28 = *v19;
    outlined init with take of Participant(v19 + *(v27 + 48), v16, type metadata accessor for InternalParticipant);
    v29 = *a5;
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v38 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      v39 = *(v55 + 72) * v31;
      outlined init with copy of Participant(v38[7] + v39, v12, type metadata accessor for InternalParticipant);
      v40 = *(v47 + 24);
      if (v12[v40] != 1 || (v25 = v16, v16[v40] == 1))
      {
        v25 = v12;
      }

      v26 = v46;
      outlined init with copy of Participant(v25, v46, type metadata accessor for InternalParticipant);
      outlined destroy of Participant(v12, type metadata accessor for InternalParticipant);
      outlined destroy of Participant(v16, type metadata accessor for InternalParticipant);
      outlined assign with take of Participant(v26, v38[7] + v39, type metadata accessor for InternalParticipant);
      a4 = 1;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, a4 & 1);
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_24;
      }

      v31 = v36;
      v38 = *a5;
      if (v35)
      {
        goto LABEL_15;
      }

LABEL_19:
      v38[(v31 >> 6) + 8] |= 1 << v31;
      *(v38[6] + 8 * v31) = v28;
      outlined init with take of Participant(v16, v38[7] + *(v55 + 72) * v31, type metadata accessor for InternalParticipant);
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_23;
      }

      v38[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14CopresenceCore30ParticipantTranslationResponseCGMd, &_ss11_SetStorageCy14CopresenceCore30ParticipantTranslationResponseCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B2714B30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for ParticipantTranslationResponse();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for ParticipantTranslationResponse();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t partial apply for closure #1 in GroupSession.join()()
{
  v1 = *(type metadata accessor for SharePlayLatencyLogger.Interval() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return closure #1 in GroupSession.join()(v2, v3);
}

double outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

double outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors()
{
  result = lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionErrors and conformance GroupSessionErrors);
  }

  return result;
}

uint64_t specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t a1), uint64_t (*a8)(uint64_t a1), uint64_t a9, void *a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v350 = a8;
  v352 = a7;
  v333 = a6;
  v332 = a5;
  v349 = a4;
  v306 = a3;
  v355 = a2;
  v353 = a10;
  v356 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities03AnyD8ActivityV_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities03AnyD8ActivityV_GMR);
  v330 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v328 = &v271 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v329 = &v271 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v324 = &v271 - v18;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMd, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMR);
  v323 = *(v325 - 8);
  MEMORY[0x1EEE9AC00](v325);
  v322 = &v271 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMR);
  v327 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v326 = &v271 - v21;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
  v318 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v317 = &v271 - v22;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v316 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v315 = &v271 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v271 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v312 = &v271 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v286 = &v271 - v28;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v290 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v287 = &v271 - v29;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v307 = &v271 - v30;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v304 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v303 = &v271 - v31;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities0C7SessionC12MessageQueueVyAD03AnyC8ActivityV_GGMd, &_s7Combine9PublishedVy15GroupActivities0C7SessionC12MessageQueueVyAD03AnyC8ActivityV_GGMR);
  v298 = *(v299 - 1);
  MEMORY[0x1EEE9AC00](v299);
  v33 = &v271 - v32;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
  v34 = MEMORY[0x1EEE9AC00](v297);
  v296 = &v271 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v295 = &v271 - v36;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v293 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v292 = &v271 - v37;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities0C7SessionC5StateOyAD03AnyC8ActivityV_GGMd, &_s7Combine9PublishedVy15GroupActivities0C7SessionC5StateOyAD03AnyC8ActivityV_GGMR);
  v302 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v334 = &v271 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v345 = &v271 - v40;
  v341 = type metadata accessor for Participant(0);
  v310 = *(v341 - 8);
  v41 = MEMORY[0x1EEE9AC00](v341);
  v337 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v339 = &v271 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v336 = &v271 - v46;
  v311 = v47;
  MEMORY[0x1EEE9AC00](v45);
  v342 = &v271 - v48;
  v338 = type metadata accessor for AnyGroupActivity(0);
  v49 = MEMORY[0x1EEE9AC00](v338);
  v300 = &v271 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v301 = &v271 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v351 = &v271 - v53;
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v321 = &v271 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v348 = &v271 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v347 = &v271 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v357 = &v271 - v63;
  v320 = v64;
  MEMORY[0x1EEE9AC00](v62);
  v363 = &v271 - v65;
  v343 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v66 = MEMORY[0x1EEE9AC00](v343);
  v68 = &v271 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v271 - v69;
  v71 = [a1 endpoint];
  if (v71)
  {
    v282 = v33;
    v72 = v355;
    v331 = v71;
    v346 = v55;
    v285 = v13;
    v354 = v54;
    v340 = a1;
    v73 = [a1 activity];
    v74 = [v73 metadata];

    v284 = v20;
    v283 = v23;
    if (v74)
    {
      GroupActivityMetadata.init(_:)(v74, v70);
      v75 = v70;
      v76 = v357;
      v77 = v346;
      v78 = v72;
    }

    else
    {
      if (one-time initialization token for generic != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
      v81 = __swift_project_value_buffer(v80, static GroupActivityMetadata.ActivityType.generic);
      outlined init with copy of Participant(v81, v70, type metadata accessor for GroupActivityMetadata.ActivityType);
      v82 = type metadata accessor for GroupActivityMetadata(0);
      v83 = &v70[v82[5]];
      *v83 = 0;
      *(v83 + 1) = 0;
      v84 = &v70[v82[6]];
      *v84 = 0;
      *(v84 + 1) = 0;
      *&v70[v82[7]] = 0;
      v85 = v82[8];
      v86 = type metadata accessor for URL();
      v87 = *(*(v86 - 8) + 56);
      v87(&v70[v85], 1, 1, v86);
      *&v70[v82[9]] = 0;
      v70[v82[10]] = dyld_program_sdk_at_least() ^ 1;
      v87(&v70[v82[11]], 1, 1, v86);
      v88 = &v70[v82[12]];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v89 = qword_1EDADC9F0;
      v90 = qword_1EDADCA08;
      *v88 = static SceneAssociationBehavior.default;
      *(v88 + 1) = v89;
      *(v88 + 1) = xmmword_1EDADC9F8;
      *(v88 + 4) = v90;
      v70[v82[13]] = 0;
      *&v70[v82[14]] = 2;

      v78 = v355;
      v75 = v70;
      v76 = v357;
      v77 = v346;
    }

    swift_storeEnumTagMultiPayload();
    v91 = v340;
    v92 = [v340 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = *(v77 + 16);
    v94 = v76;
    v95 = v354;
    v93(v94, v78, v354);
    v96 = [v91 activity];
    outlined init with copy of Participant(v75, v68, type metadata accessor for AnyGroupActivity.MetadataProvider);
    v97 = v344;
    AnyGroupActivity.init(tuConversationActivity:metadataProvider:)(v96, v68, v351);
    if (v97)
    {

      __swift_destroy_boxed_opaque_existential_0(v353);
      a1 = *(v77 + 8);
      (a1)(v78, v95);
      (a1)(v357, v95);
      (a1)(v363, v95);
      outlined destroy of Participant(v75, type metadata accessor for AnyGroupActivity.MetadataProvider);
    }

    else
    {
      v343 = v93;
      v344 = v77 + 16;
      v280 = 0;
      v281 = v75;
      v279 = [v91 isLocallyInitiated];
      v278 = [v91 isLightweightPrimaryInitiated];
      v98 = v342;
      v99 = v332;
      UUID.init(_:)(v332);
      v100 = v341;
      *(v98 + *(v341 + 24)) = v99;
      v101 = (v98 + v100[5]);
      v102 = v352;
      *v101 = v333;
      v101[1] = v102;
      *(v98 + v100[8]) = 0;
      v103 = (v98 + v100[7]);
      *v103 = 0;
      v103[1] = 0;
      *(v98 + v100[9]) = 0;
      v277 = [v91 isFirstJoin];
      v276 = [v91 distributionCount];
      v104 = [v91 persistentSceneIdentifier];
      if (v104)
      {
        v105 = v104;
        v275 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v274 = v106;
      }

      else
      {
        v275 = 0;
        v274 = 0;
      }

      v107 = v335;
      v108 = v302;
      v109 = v334;
      outlined init with copy of Transferable(v353, &v362);
      v340 = v340;
      _s15GroupActivities0A7SessionC10TimestampsV08activityC0AEyx_GSo022TUConversationActivityC0C_tcfCAA03AnyaG0V_Tt1g5(v340, v345);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
      a1 = swift_allocObject();
      *(a1 + direct field offset for GroupSession.playbackSyncerLink) = 0;
      *(a1 + direct field offset for GroupSession.playbackSyncMessenger) = 0;
      *(a1 + direct field offset for GroupSession.attachmentDownloadBytes) = 0;
      *(a1 + direct field offset for GroupSession.attachmentUploadBytes) = 0;
      *(a1 + direct field offset for GroupSession.attachmentDownloadTime) = 0;
      *(a1 + direct field offset for GroupSession.attachmentUploadTime) = 0;
      v110 = (a1 + direct field offset for GroupSession.receivedDataHandler);
      *v110 = 0;
      v110[1] = 0;
      v111 = (a1 + direct field offset for GroupSession._receivedDataPublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
      swift_allocObject();
      *v111 = PassthroughSubject.init()();
      v111[1] = 0;
      v112 = (a1 + direct field offset for GroupSession._receivedAttachmentPublisher);
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
      swift_allocObject();
      *v112 = PassthroughSubject.init()();
      v112[1] = 0;
      v113 = (a1 + direct field offset for GroupSession._catchupNeededPublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR);
      swift_allocObject();
      *v113 = PassthroughSubject.init()();
      v113[1] = 0;
      v114 = *(*a1 + 208);
      v358 = 0;
      v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
      Published.init(initialValue:)();
      v272 = *(v108 + 32);
      v272(a1 + v114, v109, v107);
      v115 = *(*a1 + 224);
      v116 = MEMORY[0x1E69E7CD0];
      v358 = MEMORY[0x1E69E7CD0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      v117 = v292;
      Published.init(initialValue:)();
      (*(v293 + 32))(a1 + v115, v117, v294);
      v118 = (a1 + *(*a1 + 232));
      *v118 = 0;
      v118[1] = 0;
      v294 = v118;
      v119 = *(*a1 + 248);
      v120 = v295;
      PubSubTopic.QueueState.init()();
      outlined init with copy of URL?(v120, v296, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
      v121 = v282;
      Published.init(initialValue:)();
      outlined destroy of NSObject?(v120, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC12MessageQueueVyAA03AnyA8ActivityV_GMR);
      (*(v298 + 32))(a1 + v119, v121, v299);
      v299 = (a1 + *(*a1 + 304));
      *v299 = 0;
      v122 = v351;
      v123 = v356;
      v124 = v343;
      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v116 = v270;
      }

      *(a1 + *(*a1 + 312)) = v116;
      *(a1 + *(*a1 + 328)) = 0;
      v125 = *(*a1 + 336);
      v126 = type metadata accessor for SharePlayLatencyLogger.Interval();
      (*(*(v126 - 8) + 56))(a1 + v125, 1, 1, v126);
      *(a1 + *(*a1 + 344)) = 0;
      *(a1 + *(*a1 + 368)) = 0;
      *(a1 + *(*a1 + 376)) = 0;
      v127 = (a1 + *(*a1 + 384));
      v128 = MEMORY[0x1E69E7CC0];
      v129 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *v127 = 0;
      *(v127 + 1) = v129;
      v130 = *(*a1 + 392);
      v358 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
      swift_allocObject();
      *(a1 + v130) = CurrentValueSubject.init(_:)();
      v131 = *(*a1 + 400);
      v358 = 0;
      v132 = v334;
      Published.init(initialValue:)();
      v272(a1 + v131, v132, v335);
      v133 = (a1 + *(*a1 + 416));
      *v133 = 0;
      v133[1] = 0;
      *(a1 + *(*a1 + 424)) = 0;
      v134 = v363;
      v124(a1 + direct field offset for GroupSession.id, v363, v354);
      v135 = v336;
      UUID.init()();
      v136 = v341;
      v137 = (v135 + *(v341 + 20));
      v138 = v349;
      *v137 = v306;
      v137[1] = v138;
      *(v135 + v136[6]) = 0;
      *(v135 + v136[8]) = 0;
      v139 = (v135 + v136[7]);
      *v139 = 0;
      v139[1] = 0;
      *(v135 + v136[9]) = 0;
      outlined init with take of Participant(v135, a1 + direct field offset for GroupSession.initiator, type metadata accessor for Participant);
      v140 = v122;
      v141 = v301;
      outlined init with copy of Participant(v140, v301, type metadata accessor for AnyGroupActivity);
      swift_beginAccess();
      outlined init with copy of Participant(v141, v300, type metadata accessor for AnyGroupActivity);
      Published.init(initialValue:)();
      outlined destroy of Participant(v141, type metadata accessor for AnyGroupActivity);
      swift_endAccess();
      *(a1 + direct field offset for GroupSession.topicManager) = v123;

      v142 = UUID.uuidString.getter();
      v144 = (*(*v123 + 248))(v357, v142, v143);

      if ([*(v123 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) nearbyFaceTimeEnabled])
      {
        v145 = v339;
        v146 = v332;
        *(v339 + v136[6]) = v332;
        v147 = v352;

        UUID.init(_:)(v146);
        v148 = (v145 + v136[5]);
        *v148 = v333;
        v148[1] = v147;
        v149 = (v145 + v136[7]);
        *v149 = 0;
        v149[1] = 0;
        *(v145 + v136[8]) = 1;
        *(v145 + v136[9]) = 0;
      }

      else
      {
        v145 = v339;
        outlined init with copy of Participant(v342, v339, type metadata accessor for Participant);
      }

      v150 = v337;
      v151 = v354;
      v124(v347, v134, v354);
      v124(v348, v357, v151);
      outlined init with copy of Participant(v145, v150, type metadata accessor for Participant);
      v152 = objc_allocWithZone(MEMORY[0x1E6997708]);

      v352 = v350;
      v153 = [v152 init];
      v154 = type metadata accessor for LinkManager(0);
      v155 = objc_allocWithZone(v154);
      v156 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
      *&v155[v156] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
      v157 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
      v358 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
      v158 = v303;
      CurrentSubject.init(wrappedValue:)();
      (*(v304 + 32))(&v155[v157], v158, v305);
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
      v159 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
      v160 = MEMORY[0x1E69E7CC0];
      v358 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
      v161 = v307;
      CurrentSubject.init(wrappedValue:)();
      (*(v308 + 32))(&v155[v159], v161, v309);
      if (v160 >> 62 && __CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v162 = MEMORY[0x1E69E7CD0];
      }

      v163 = v343;
      v164 = v348;
      v165 = v354;
      LODWORD(v334) = a12;
      LODWORD(v333) = a11;
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v162;
      v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
      v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
      v166 = &v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
      *v166 = 0;
      v166[1] = 0;
      v167 = &v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
      *v167 = 0;
      v167[1] = 0;
      v168 = &v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
      *v168 = 0;
      v168[1] = 0;
      v169 = &v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
      *v169 = 0;
      v169[1] = 0;
      v163(&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v347, v165);
      v163(&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v164, v165);
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = v144;
      v170 = v144;
      v171 = v337;
      outlined init with copy of Participant(v337, &v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
      v172 = v352;
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v352;
      *&v155[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v153;
      v361.receiver = v155;
      v361.super_class = v154;

      v352 = v172;
      v350 = v153;
      v173 = objc_msgSendSuper2(&v361, sel_init);
      v174 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v175 = v336;
      outlined init with copy of Participant(v171, v336, type metadata accessor for Participant);
      v176 = (*(v310 + 80) + 24) & ~*(v310 + 80);
      v177 = swift_allocObject();
      *(v177 + 16) = v174;
      outlined init with take of Participant(v175, v177 + v176, type metadata accessor for Participant);
      v178 = *(*v170 + 336);
      v179 = v173;

      v178(closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v177);

      if ([v350 unreliableMessengerEnabled])
      {
        v180 = UUID.uuidString.getter();
        v182 = v181;
        v183 = *(v171 + *(v341 + 24));
        v184 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager, &protocol conformance descriptor for LinkManager);
        v185 = (*(*v356 + 256))(v348, v180, v182, v183, v352, v179, v184);

        v187 = v286;
        (*(*v170 + 448))(v186);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
        v188 = v287;
        v189 = v289;
        Publisher.map<A>(_:)();
        (*(v288 + 8))(v187, v189);
        v190 = UnreliableMessenger.$activeReliableSubscribers.modify();
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR, MEMORY[0x1E695BD60]);
        v191 = v291;
        Publisher<>.assign(to:)();
        (*(v290 + 8))(v188, v191);
        v190(&v358, 0);
        *&v179[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v185;
      }

      v192 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v193 = *v170;
      v335 = v170;
      v194 = *(v193 + 360);

      v194(closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v192);

      v350 = type metadata accessor for Participant;
      outlined destroy of Participant(v171, type metadata accessor for Participant);
      v195 = *(v346 + 8);
      v341 = v195;
      v349 = v346 + 8;
      v196 = v354;
      v195(v348, v354);
      v195(v347, v196);

      *(a1 + direct field offset for GroupSession.linkManager) = v179;
      v347 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      static DispatchQoS.unspecified.getter();
      v358 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v316 + 104))(v315, *MEMORY[0x1E69E8090], v283);
      *(a1 + *(*a1 + 296)) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v197 = v299;
      swift_beginAccess();
      v198 = *v197;
      *v197 = 0;

      v199 = v331;
      *(a1 + *(*a1 + 256)) = v331;
      outlined init with copy of URL?(v345, a1 + *(*a1 + 240), &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
      *(a1 + *(*a1 + 264)) = v279;
      *(a1 + *(*a1 + 272)) = v278;
      *(a1 + *(*a1 + 280)) = v277;
      *(a1 + *(*a1 + 408)) = v276;
      v200 = v294;
      swift_beginAccess();
      v201 = v274;
      *v200 = v275;
      v200[1] = v201;
      v202 = v199;

      outlined init with copy of Transferable(&v362, a1 + *(*a1 + 320));
      *(a1 + *(*a1 + 352)) = v333 & 1;
      *(a1 + *(*a1 + 360)) = v334 & 1;
      type metadata accessor for ActivitySessionClientConnection();
      v348 = v202;
      v203 = XPCClient.__allocating_init(listenerEndpoint:)();
      v204 = *(*a1 + 288);
      *(a1 + v204) = v203;
      v205 = (a1 + direct field offset for GroupSession._receivedAttachmentPublisher);
      swift_beginAccess();
      v360 = *v205;
      swift_allocObject();
      swift_weakInit();
      v206 = MEMORY[0x1E695BF88];
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, MEMORY[0x1E695BF88]);

      v207 = v317;
      Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<PassthroughSubject<(UUID, URL, Participant), Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR, MEMORY[0x1E695BCC0]);
      v208 = v319;
      v209 = Publisher.eraseToAnyPublisher()();
      (*(v318 + 8))(v207, v208);
      v205[1] = v209;

      swift_beginAccess();
      v210 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v211 = v210;

      ActivitySessionClientConnection.serverDisconnectedCallback.setter();

      v212 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v213 = v212;

      ActivitySessionClientConnection.setAssociatedSceneCallback.setter();

      v214 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v215 = v214;

      ActivitySessionClientConnection.setExternalParticipantsCallback.setter();

      v216 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v217 = v216;

      ActivitySessionClientConnection.setStateCallback.setter();

      v218 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v219 = v218;

      ActivitySessionClientConnection.setDataCryptorCallback.setter();

      v220 = *(a1 + v204);
      swift_allocObject();
      swift_weakInit();
      v221 = v220;

      ActivitySessionClientConnection.receivedResourceCallback.setter();

      v222 = *(a1 + v204);
      v223 = ActivitySessionClientConnection.setActivityPublisher.getter();

      v359 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<TUConversationActivity, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR, v206);
      v224 = v322;
      Publisher.compactMap<A>(_:)();

      v359 = *(a1 + *(*a1 + 296));
      v225 = v359;
      v226 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v227 = v324;
      (*(*(v226 - 8) + 56))(v324, 1, 1, v226);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<PassthroughSubject<TUConversationActivity, Never>, AnyGroupActivity> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMd, &_s7Combine10PublishersO10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnyjH0VGMR, MEMORY[0x1E695BC80]);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      v228 = v225;
      v229 = v326;
      v230 = v325;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v227, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      (*(v323 + 8))(v224, v230);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities03AnyC8ActivityVGMd, &_s7Combine9PublishedVy15GroupActivities03AnyC8ActivityVGMR);
      v231 = v329;
      Published.projectedValue.getter();
      swift_endAccess();
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CompactMap<PassthroughSubject<TUConversationActivity, Never>, AnyGroupActivity>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC10CompactMapVy_AA18PassthroughSubjectCySo22TUConversationActivityCs5NeverOG15GroupActivities03AnylJ0VGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
      v232 = v284;
      Publisher<>.assign(to:)();
      (*(v327 + 8))(v229, v232);
      v233 = v330;
      v234 = v285;
      (*(v330 + 16))(v328, v231, v285);
      swift_beginAccess();
      Published.projectedValue.setter();
      swift_endAccess();
      (*(v233 + 8))(v231, v234);
      v347 = direct field offset for GroupSession.linkManager;
      v235 = *(a1 + direct field offset for GroupSession.linkManager);
      v236 = swift_allocObject();
      swift_weakInit();
      v237 = v321;
      v238 = v354;
      v343(v321, v363, v354);
      v239 = v346;
      v240 = (*(v346 + 80) + 16) & ~*(v346 + 80);
      v241 = (v320 + v240 + 7) & 0xFFFFFFFFFFFFFFF8;
      v242 = swift_allocObject();
      (*(v239 + 32))(v242 + v240, v237, v238);
      *(v242 + v241) = v236;
      v243 = MEMORY[0x1E69E7D40];
      v244 = *((*MEMORY[0x1E69E7D40] & *v235) + 0x1B8);

      v244(partial apply for specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v242);

      v245 = v347;
      v246 = *&v347[a1];
      v247 = swift_allocObject();
      swift_weakInit();
      v248 = *((*v243 & *v246) + 0x1D0);
      v249 = v246;

      v248(partial apply for specialized closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v247);

      v250 = *&v245[a1];
      v251 = swift_allocObject();
      swift_weakInit();
      v252 = *((*v243 & *v250) + 0x200);
      v253 = v250;

      v252(partial apply for specialized closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v251);

      v254 = *&v245[a1];
      v255 = swift_allocObject();
      swift_weakInit();
      v256 = *((*v243 & *v254) + 0x1E8);
      v257 = v254;

      v256(partial apply for specialized closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v255);

      v258 = *&v245[a1];
      v259 = swift_allocObject();
      swift_weakInit();
      v260 = *((*v243 & *v258) + 0x218);
      v261 = v258;

      v260(partial apply for specialized closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v259);

      v262 = swift_allocObject();
      swift_weakInit();
      v263 = v335;
      v264 = *(*v335 + 528);

      v264(partial apply for specialized closure #14 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v262);

      v265 = swift_allocObject();
      swift_weakInit();

      v266 = *(*v263 + 552);

      v266(partial apply for specialized closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v265);

      __swift_destroy_boxed_opaque_existential_0(v353);
      v267 = v341;
      (v341)(v355, v238);
      v268 = v350;
      outlined destroy of Participant(v339, v350);
      outlined destroy of NSObject?(v345, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
      __swift_destroy_boxed_opaque_existential_0(&v362);
      outlined destroy of Participant(v342, v268);
      outlined destroy of Participant(v351, type metadata accessor for AnyGroupActivity);
      v267(v357, v238);
      v267(v363, v238);
      outlined destroy of Participant(v281, type metadata accessor for AnyGroupActivity.MetadataProvider);
    }
  }

  else
  {

    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v79 = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v353);
    (*(v55 + 8))(v355, v54);
  }

  return a1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t specialized GroupSession.__allocating_init(activitySession:publishQueue:)(uint64_t *a1, void *a2)
{
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v63 - v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v75 = v2;
  v89 = v7;
  v83 = v6;
  v9 = type metadata accessor for GroupSession.Timestamps(0, v6, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v63 - v10;
  v11 = type metadata accessor for Participant(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AnyGroupActivity(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = v21;
  v25 = v21[2];
  v79 = &v63 - v26;
  v25();
  v70 = *(a1 + direct field offset for GroupSession.linkManager);
  v80 = v24;
  (v25)(v24, v70 + OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID, v20);
  v27 = a1 + direct field offset for GroupSession.initiator;
  v28 = (a1 + direct field offset for GroupSession.initiator + *(v12 + 28));
  v29 = *v28;
  v30 = v28[1];
  v31 = objc_allocWithZone(MEMORY[0x1E6997710]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = MEMORY[0x1B2714130](v29, v30);
  v34 = [v31 initWithUUID:isa accountIdentifier:v33];

  [v34 _setParticipantIdentifier_];
  v35 = [v34 accountIdentifier];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v86 = v14;
  v39 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  v87 = v39;
  swift_getKeyPath();
  v40 = v14;
  v84 = v14;
  v85 = v39;
  swift_getKeyPath();
  v41 = v77;
  static Published.subscript.getter();

  v42 = v78;
  GroupActivity.init(activity:)(v41, v83, v89, v82);
  if (v42)
  {

    v43 = v76[1];
    v43(v80, v20);
    v43(v79, v20);
  }

  else
  {
    v44 = *(*a1 + 256);
    v45 = swift_beginAccess();
    v46 = *(a1 + v44);
    MEMORY[0x1EEE9AC00](v45);
    KeyPath = swift_getKeyPath();
    v78 = v38;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    v77 = v46;
    v48 = v71;
    static Published.subscript.getter();

    v49 = *(v48 + 8);
    v76 = *v48;
    v69 = v49;

    outlined destroy of Participant(v48, type metadata accessor for AnyGroupActivity);
    v50 = *a1;
    LODWORD(v71) = *(a1 + *(*a1 + 264));
    v68 = *(a1 + *(v50 + 272));
    v51 = v70;
    v52 = v73;
    outlined init with copy of Participant(v70 + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v73, type metadata accessor for Participant);
    v53 = *(*a1 + 280);
    swift_beginAccess();
    v67 = *(a1 + v53);
    v54 = *a1;
    v66 = *(a1 + *(*a1 + 408));
    v64 = *(v51 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig);
    v55 = (a1 + *(v54 + 232));
    swift_beginAccess();
    v65 = *v55;
    v70 = v36;
    v56 = v55[1];
    v57 = *(a1 + direct field offset for GroupSession.topicManager);
    outlined init with copy of Transferable(a1 + *(*a1 + 320), v88);
    v58 = v72;
    outlined init with copy of URL?(a1 + *(*a1 + 240), v72, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
    v59 = v74;
    GroupSession.Timestamps.init<A>(_:)(v58, v83, v40, v89, v39, v74);
    LOBYTE(v58) = *(a1 + *(*a1 + 352));
    v60 = *(a1 + *(*a1 + 360));
    v39 = swift_allocObject();
    v61 = v64;

    GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(v79, v80, v70, v78, v82, v77, v76, v69, v71, v68, v52, v67, v81, v66, v61, v65, v56, v57, v88, v59, v58, v60);
  }

  return v39;
}

void partial apply for closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:)(v5, v0 + v2, v6, v7, v8, v10, v11);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed PlaybackSyncer.Message, @in_guaranteed GroupSessionMessenger.MessageContext) -> ()(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMd, &_s15GroupActivities14PlaybackSyncerC7MessageV_AA0A16SessionMessengerC0E7ContextVtMR);
  return v3(a1, a1 + *(v4 + 48));
}

unint64_t lazy protocol witness table accessor for type Capabilities and conformance Capabilities()
{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Capabilities and conformance Capabilities;
  if (!lazy protocol witness table cache variable for type Capabilities and conformance Capabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capabilities and conformance Capabilities);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityExternalParticipant and conformance ActivityExternalParticipant()
{
  result = lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant;
  if (!lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityExternalParticipant and conformance ActivityExternalParticipant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus()
{
  result = lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus;
  if (!lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityExternalParticipantStatus and conformance ActivityExternalParticipantStatus);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityExternalParticipant(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityExternalParticipant(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityExternalParticipantStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityExternalParticipantStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities0A7SessionC5StateOyx_G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for GroupSession.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata completion function for GroupSession.GroupSessionPlaybackSyncerLink(uint64_t a1)
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

uint64_t type metadata completion function for InternalParticipant(uint64_t a1)
{
  result = type metadata accessor for Participant(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC15GroupActivities11ParticipantV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v37 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v38 = v9;
    v12 = *(v3 + 72);
    v36 = v10 + 56;
    while (1)
    {
      v40 = v11;
      outlined init with copy of Participant(v37 + v12 * v11, v8, type metadata accessor for Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      v13 = &v8[v2[5]];
      v14 = *v13;
      v15 = *(v13 + 1);
      String.hash(into:)();
      v44 = *&v8[v2[6]];
      MEMORY[0x1B2715070]();
      v16 = &v8[v2[7]];
      v17 = *(v16 + 1);
      v42 = *v16;
      v43 = v17;
      if (v17)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v41 = v8[v2[8]];
      Hasher._combine(_:)(v41);
      v39 = v8[v2[9]];
      Hasher._combine(_:)(v39);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v10 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = v36;
      v23 = *(v36 + 8 * (v20 >> 6));
      v24 = 1 << v20;
      if (((1 << v20) & v23) != 0)
      {
        break;
      }

LABEL_27:
      *(v22 + 8 * v21) = v23 | v24;
      result = outlined init with take of Participant(v8, *(v10 + 48) + v20 * v12, type metadata accessor for Participant);
      v33 = *(v10 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      v31 = v38;
      if (v34)
      {
        __break(1u);
        return result;
      }

      *(v10 + 16) = v35;
LABEL_29:
      v11 = v40 + 1;
      if (v40 + 1 == v31)
      {
        return v10;
      }
    }

    v25 = ~v19;
    while (1)
    {
      outlined init with copy of Participant(*(v10 + 48) + v20 * v12, v6, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_9;
      }

      v26 = &v6[v2[5]];
      v27 = *v26 == v14 && *(v26 + 1) == v15;
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v6[v2[6]] != v44)
      {
        goto LABEL_9;
      }

      v28 = &v6[v2[7]];
      v29 = *(v28 + 1);
      if (v29)
      {
        if (!v43)
        {
          goto LABEL_9;
        }

        v30 = *v28 == v42 && v29 == v43;
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v43)
      {
        goto LABEL_9;
      }

      if (v41 == v6[v2[8]] && v39 == v6[v2[9]])
      {
        outlined destroy of Participant(v6, type metadata accessor for Participant);
        outlined destroy of Participant(v8, type metadata accessor for Participant);
        v31 = v38;
        goto LABEL_29;
      }

LABEL_9:
      outlined destroy of Participant(v6, type metadata accessor for Participant);
      v20 = (v20 + 1) & v25;
      v21 = v20 >> 6;
      v23 = *(v22 + 8 * (v20 >> 6));
      v24 = 1 << v20;
      if ((v23 & (1 << v20)) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

double outlined copy of GroupSessionMessenger.MessageStreamStore.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of GroupSessionMessenger.MessageStreamStore.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double outlined copy of SystemCoordinatorTable.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of SystemCoordinatorTable.Storage?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5TA_406(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR15GroupActivities17SystemCoordinatorCSg_TG5(a1, v4);
}

uint64_t objectdestroy_245Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message()
{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message;
  if (!lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaybackSyncer.Message and conformance PlaybackSyncer.Message);
  }

  return result;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@in_guaranteed GroupSessionMessenger.MessageWrapper, @in_guaranteed GroupSessionMessenger.MessageContext, @in_guaranteed SendReliability) -> (@out (A, GroupSessionMessenger.MessageContext)?)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMd, &_s15GroupActivities0A16SessionMessengerC14MessageWrapper33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLV_AC0E7ContextVAA15SendReliabilityOtMR);
  return v3(a1, a1 + *(v4 + 48), a1 + *(v4 + 64));
}

uint64_t outlined init with copy of Decodable & Encodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of PlaybackSyncer.Message?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 4)
  {
    return outlined consume of Data._Representation(a2, a3);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Participant(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(a1, a2, a3, a4, v10, v11);
}

void *partial apply for specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *a4;

  return specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, v12, v4 + v10, v11);
}

uint64_t objectdestroy_162Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t outlined assign with take of SharePlayLatencyLogger.Interval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_121Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

id partial apply for specialized closure #1 in closure #1 in GroupSession.capabilities.didset(void **a1)
{
  v2 = *a1;
  v3 = *(*v1 + 368);
  swift_beginAccess();
  return [v2 updateCapabilitiesWithCapabilities_];
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);

  return closure #1 in closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroy_80Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(a1, v1 + v6, v7, v3, v4);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t objectdestroy_523Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_143Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

void outlined consume of GroupSession<A>.State?<A>(id a1)
{
  if (a1 != 2)
  {
    outlined consume of GroupSession<A>.State<A>(a1);
  }
}

uint64_t partial apply for closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in AnyGroupActivity.tuConversationActivity.getter(a1, a2, v6);
}

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Participant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746E65746E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE400000000000000;
      v4 = 1684632949;
    }

    else
    {
      v4 = 0xD000000000000010;
      v5 = 0x80000001AF01A310;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001AF01A2F0;
    }
  }

  v6 = 1684632949;
  v7 = 0x80000001AF01A310;
  if (a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x80000001AF01A2F0;
  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

void AnyGroupActivity.init(tuConversationActivity:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 metadata];
  if (v15)
  {
    v39 = v6;
    v40 = v5;
    v41 = v2;
    v16 = v15;
    GroupActivityMetadata.init(_:)(v16, v14);
    v17 = [a1 activityIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v19;
    v38 = v18;

    outlined init with copy of GroupActivityMetadata(v14, v11, type metadata accessor for GroupActivityMetadata);
    swift_storeEnumTagMultiPayload();
    v20 = [a1 applicationContext];
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v22;
    v36 = v21;

    v23 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = [a1 staticIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      outlined destroy of GroupActivityMetadata(v14, type metadata accessor for GroupActivityMetadata);
    }

    else
    {
      outlined destroy of GroupActivityMetadata(v14, type metadata accessor for GroupActivityMetadata);

      v26 = 0;
      v28 = 0;
    }

    v30 = v37;
    *a2 = v38;
    *(a2 + 1) = v30;
    v31 = type metadata accessor for AnyGroupActivity(0);
    outlined init with take of AnyGroupActivity.MetadataProvider(v11, &a2[v31[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
    v32 = &a2[v31[6]];
    v33 = v35;
    *v32 = v36;
    *(v32 + 1) = v33;
    (*(v39 + 32))(&a2[v31[7]], v8, v40);
    v34 = &a2[v31[8]];
    *v34 = v26;
    *(v34 + 1) = v28;
  }

  else
  {
    lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
  }
}

uint64_t AnyGroupActivity.tuConversationActivity.getter()
{
  v1 = type metadata accessor for AnyGroupActivity(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  outlined init with copy of GroupActivityMetadata(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for AnyGroupActivity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t AnyGroupActivity.init(tuConversationActivity:metadataProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = type metadata accessor for UUID();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 activityIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v14;
  v34 = v13;

  outlined init with copy of GroupActivityMetadata(a2, v11, type metadata accessor for AnyGroupActivity.MetadataProvider);
  v15 = [a1 applicationContext];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v17;
  v32 = v16;

  v18 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [a1 staticIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    outlined destroy of GroupActivityMetadata(a2, type metadata accessor for AnyGroupActivity.MetadataProvider);
  }

  else
  {
    outlined destroy of GroupActivityMetadata(a2, type metadata accessor for AnyGroupActivity.MetadataProvider);

    v21 = 0;
    v23 = 0;
  }

  v24 = v33;
  *a3 = v34;
  *(a3 + 1) = v24;
  v25 = type metadata accessor for AnyGroupActivity(0);
  outlined init with take of AnyGroupActivity.MetadataProvider(v11, &a3[v25[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
  v26 = &a3[v25[6]];
  v27 = v31;
  *v26 = v32;
  *(v26 + 1) = v27;
  result = (*(v6 + 32))(&a3[v25[7]], v8, v35);
  v29 = &a3[v25[8]];
  *v29 = v21;
  *(v29 + 1) = v23;
  return result;
}

uint64_t AnyGroupActivity.activityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyGroupActivity.activityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyGroupActivity.metadataProvider.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AnyGroupActivity(0) + 20);

  return outlined assign with take of AnyGroupActivity.MetadataProvider(a1, v3);
}

uint64_t AnyGroupActivity.content.getter()
{
  v1 = v0 + *(type metadata accessor for AnyGroupActivity(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AnyGroupActivity.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AnyGroupActivity(0) + 24);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AnyGroupActivity.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnyGroupActivity.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnyGroupActivity.staticIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnyGroupActivity(0) + 32));

  return v1;
}

uint64_t AnyGroupActivity.staticIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AnyGroupActivity(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t default argument 1 of AnyGroupActivity.init(activityIdentifier:metadataProvider:content:uuid:staticIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata(v3, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
  v4 = type metadata accessor for GroupActivityMetadata(0);
  v5 = (a1 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v4[7]) = 0;
  v7 = v4[8];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(a1 + v7, 1, 1, v8);
  *(a1 + v4[9]) = 0;
  *(a1 + v4[10]) = dyld_program_sdk_at_least() ^ 1;
  v9(a1 + v4[11], 1, 1, v8);
  v10 = v4[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = a1 + v10;
  v12 = qword_1EDADC9F0;
  v13 = qword_1EDADCA08;
  *v11 = static SceneAssociationBehavior.default;
  *(v11 + 8) = v12;
  *(v11 + 16) = xmmword_1EDADC9F8;
  *(v11 + 32) = v13;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 2;
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t AnyGroupActivity.init(activityIdentifier:metadataProvider:content:uuid:staticIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for AnyGroupActivity(0);
  outlined init with take of AnyGroupActivity.MetadataProvider(a3, &a9[v16[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
  v17 = &a9[v16[6]];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = v16[7];
  v19 = type metadata accessor for UUID();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a6, v19);
  v21 = &a9[v16[8]];
  *v21 = a7;
  *(v21 + 1) = a8;
  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError()
{
  result = lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError;
  if (!lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError;
  if (!lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyGroupActivity.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnyGroupActivity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AnyGroupActivity.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AnyGroupActivity.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E65746E6F63;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001AF01A310;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001AF01A2F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AnyGroupActivity.CodingKeys()
{
  v1 = 0x746E65746E6F63;
  v2 = 1684632949;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyGroupActivity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AnyGroupActivity.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyGroupActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for AnyGroupActivity(0) + 24));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    outlined copy of Data._Representation(v13, v10);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v13, v14);
    LOBYTE(v13) = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AnyGroupActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for UUID();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMR);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for AnyGroupActivity(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v9;
  v12 = v11 + *(v9 + 20);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v14 = __swift_project_value_buffer(v13, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata(v14, v12, type metadata accessor for GroupActivityMetadata.ActivityType);
  v15 = type metadata accessor for GroupActivityMetadata(0);
  v16 = (v12 + v15[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v12 + v15[6]);
  *v17 = 0;
  v17[1] = 0;
  *(v12 + v15[7]) = 0;
  v18 = v15[8];
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 56);
  v20(v12 + v18, 1, 1, v19);
  *(v12 + v15[9]) = 0;
  *(v12 + v15[10]) = dyld_program_sdk_at_least() ^ 1;
  v20(v12 + v15[11], 1, 1, v19);
  v21 = v12 + v15[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = qword_1EDADC9F0;
  v23 = qword_1EDADCA08;
  *v21 = static SceneAssociationBehavior.default;
  *(v21 + 8) = v22;
  v48 = xmmword_1EDADC9F8;
  *(v21 + 16) = xmmword_1EDADC9F8;
  *(v21 + 32) = v23;
  *(v12 + v15[13]) = 0;
  *(v12 + v15[14]) = 2;
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  v24 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = type metadata accessor for AnyGroupActivity.MetadataProvider;
    v39 = v12;
  }

  else
  {
    LOBYTE(v50) = 0;
    v25 = v47;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = v28;
    *v11 = v26;
    v11[1] = v28;
    v51 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v29;
    *(v11 + v45[6]) = v50;
    LOBYTE(v50) = 2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v30 = v42;
    v31 = v44;
    *&v48 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v43 + 32))(v11 + v45[7], v30, v31);
    LOBYTE(v50) = 3;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v25;
    v34 = v32;
    v36 = v35;
    v37 = (v11 + v45[8]);
    (*(v46 + 8))(v7, v33);
    *v37 = v34;
    v37[1] = v36;
    outlined init with copy of GroupActivityMetadata(v11, v41, type metadata accessor for AnyGroupActivity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = type metadata accessor for AnyGroupActivity;
    v39 = v11;
  }

  return outlined destroy of GroupActivityMetadata(v39, v38);
}

uint64_t AnyGroupActivity.metadata.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for AnyGroupActivity(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.metadata.getter, 0, 0);
}

uint64_t AnyGroupActivity.metadata.getter()
{
  v30 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  outlined init with copy of GroupActivityMetadata(v2, v1, type metadata accessor for AnyGroupActivity);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    outlined init with copy of GroupActivityMetadata(v7, v10, type metadata accessor for AnyGroupActivity);
    (*(v9 + 56))(v10, 0, 1, v8);
    outlined init with copy of AnyGroupActivity?(v10, v11);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[10];
      v17 = v0[11];
      outlined init with take of AnyGroupActivity.MetadataProvider(v0[6], v17, type metadata accessor for AnyGroupActivity);
      outlined init with copy of GroupActivityMetadata(v17, v16, type metadata accessor for AnyGroupActivity);
      v15 = String.init<A>(reflecting:)();
      v14 = v18;
      outlined destroy of GroupActivityMetadata(v17, type metadata accessor for AnyGroupActivity);
    }

    v19 = v0[12];
    outlined destroy of NSObject?(v0[7], &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    outlined destroy of GroupActivityMetadata(v19, type metadata accessor for AnyGroupActivity);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v29);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Requesting metadata from GroupActivity %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    outlined destroy of GroupActivityMetadata(v7, type metadata accessor for AnyGroupActivity);
  }

  outlined init with copy of GroupActivityMetadata(v0[3] + *(v0[8] + 20), v0[5], type metadata accessor for AnyGroupActivity.MetadataProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    v23 = *v22;
    v0[13] = *v22;
    v24 = swift_task_alloc();
    v0[14] = v24;
    v25 = type metadata accessor for GroupActivityMetadata(0);
    *v24 = v0;
    v24[1] = AnyGroupActivity.metadata.getter;
    v26 = v0[2];

    return MEMORY[0x1EEE6DDE0](v26, 0, 0, 0x617461646174656DLL, 0xE800000000000000, partial apply for closure #1 in AnyGroupActivity.metadata.getter, v23, v25);
  }

  else
  {
    outlined init with take of AnyGroupActivity.MetadataProvider(v22, v0[2], type metadata accessor for GroupActivityMetadata);

    v27 = v0[1];

    return v27();
  }
}

{

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.metadata.getter, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v13[1] = a2;
  (*(v6 + 16))(v13 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  v11 = lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<GroupActivityMetadata, Never> and conformance Future<A, B>, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  MEMORY[0x1B2713D50](partial apply for closure #1 in closure #1 in AnyGroupActivity.metadata.getter, v10, v4, v11);
}

uint64_t closure #1 in closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of GroupActivityMetadata(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivityMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance AnyGroupActivity(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return AnyGroupActivity.metadata.getter(a1);
}

uint64_t closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v6 = type metadata accessor for AnyGroupActivity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v21 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v19 = type metadata accessor for AnyGroupActivity;
  outlined init with copy of GroupActivityMetadata(a3, v9, type metadata accessor for AnyGroupActivity);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(v9, v12 + v11, type metadata accessor for AnyGroupActivity);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  swift_allocObject();

  v22 = Future.init(_:)();
  outlined init with copy of GroupActivityMetadata(v20, v9, v19);
  v14 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(v9, v14 + v11, type metadata accessor for AnyGroupActivity);
  v15 = (v14 + ((v11 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v21;
  *v15 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ();
  v15[1] = v16;
  v17 = lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<GroupActivityMetadata, Never> and conformance Future<A, B>, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  MEMORY[0x1B2713D50](partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter, v14, v13, v17);
}

uint64_t outlined init with copy of GroupActivityMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GroupActivityMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t *a2, void (*a3)(id, void))
{
  v5 = GroupActivityMetadata.tuMetadata.getter();
  type metadata accessor for AnyGroupActivity(0);
  v6 = *a2;
  v7 = a2[1];
  v8 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = UUID._bridgeToObjectiveC()().super.isa;
  v11 = MEMORY[0x1B2714130](v6, v7);
  v12 = [v8 initWithMetadata:v5 applicationContext:isa uuid:v10 activityIdentifier:v11];

  v13 = v12;
  a3(v12, 0);
}

uint64_t AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter()
{
  *(v1 + 16) = v0;
  type metadata accessor for GroupActivityMetadata(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter, 0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Creating sessionCreationRequest with AnyGroupActivity", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter;
  v6 = *(v0 + 24);

  return AnyGroupActivity.metadata.getter(v6);
}

{

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter, 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v3 = GroupActivityMetadata.tuMetadata.getter();
  outlined destroy of GroupActivityMetadata(v1, type metadata accessor for GroupActivityMetadata);
  v4 = type metadata accessor for AnyGroupActivity(0);
  v5 = *v2;
  v6 = v2[1];
  v7 = (v2 + *(v4 + 32));
  v8 = *v7;
  v9 = v7[1];
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = MEMORY[0x1B2714130](v5, v6);
  v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (v9)
  {
    v13 = MEMORY[0x1B2714130](v8, v9);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69D8B38]) initWithMetadata:v3 applicationContext:v10.super.isa activityIdentifier:v11 uuid:v12.super.isa staticIdentifier:v13];

  v15 = v0[1];

  return v15(v14);
}

uint64_t AnyGroupActivity.tuConversationActivity<A>(as:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivity<A>(as:), 0, 0);
}

uint64_t AnyGroupActivity.tuConversationActivity<A>(as:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = AnyGroupActivity.tuConversationActivity<A>(as:);
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001AF01B030, partial apply for closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:), v2, v4);
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  else
  {

    v2 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for AnyGroupActivity(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  outlined init with copy of GroupActivityMetadata(a2, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AnyGroupActivity);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  swift_allocObject();
  v25 = Future.init(_:)();
  v29 = v25;
  v23 = *(v7 + 16);
  v23(v9, a1, v6);
  v15 = *(v7 + 80);
  v16 = swift_allocObject();
  v18 = v27;
  v17 = v28;
  *(v16 + 16) = v27;
  *(v16 + 24) = v17;
  v19 = *(v7 + 32);
  v19(v16 + ((v15 + 32) & ~v15), v9, v6);
  v23(v9, v24, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v19(v20 + ((v15 + 24) & ~v15), v9, v6);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  Publisher.sinkOnce(_:onError:)();
}

uint64_t closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for TUConversationActivity();
  v5 = v4;
  result = swift_dynamicCast();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

uint64_t specialized closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyGroupActivity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of GroupActivityMetadata(a3, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  outlined init with take of AnyGroupActivity.MetadataProvider(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AnyGroupActivity);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), v14);
}

uint64_t specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);
  v6 = swift_task_alloc();
  v5[5] = v6;
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue();

  return AnyGroupActivity.metadata.getter(v6);
}

uint64_t specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()()
{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[2];
  swift_storeEnumTagMultiPayload();
  v2(v1);
  outlined destroy of NSObject?(v1, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);

  v3 = v0[1];

  return v3();
}

unint64_t lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of AnyGroupActivity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AnyGroupActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyGroupActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized AnyGroupActivity.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnyGroupActivity.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;

  v7 = v0 + v4 + v2[5];
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v18 = v5;
    v19 = v0;
    v8 = type metadata accessor for GroupActivityDescription();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = type metadata accessor for GroupActivityMetadata(0);

    v10 = v9[8];
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }

    v14 = v9[11];
    if (!v13(v7 + v14, 1, v11))
    {
      (*(v12 + 8))(v7 + v14, v11);
    }

    v4 = (v3 + 16) & ~v3;
    v1 = v19;
    v5 = v18;
  }

  outlined consume of Data._Representation(*(v6 + v2[6]), *(v6 + v2[6] + 8));
  v15 = v2[7];
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}