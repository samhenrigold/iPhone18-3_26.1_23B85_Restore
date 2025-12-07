void closure #2 in Topic.unsubscribe()()
{
  PubSubTopic.reporterTag.getter();
  v0 = dispatch thunk of PubSubTopicReporter.emitAndRemoveReport(forTag:)();

  if ((v0 & 1) == 0)
  {
    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.topic);

    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      v5 = PubSubTopic.reporterTag.getter();
      v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_1AEE80000, oslog, v2, "Could not find or remove the report with tag=%s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x1B2715BA0](v4, -1, -1);
      MEMORY[0x1B2715BA0](v3, -1, -1);
    }

    else
    {
    }
  }
}

void Topic.sendData(_:to:messageTypeIdentifier:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v38 = a3;
  v39 = a5;
  v37 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v35 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v7 + 320);
  if ((v17)(v14) == 1)
  {
    v18 = (*(*v7 + 224))();
    if (v18)
    {
      v19 = v18;
      v34 = PubSubTopic.queue.getter();
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v33[1] = v20;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      v22 = v37;
      *(v21 + 48) = v38;
      *(v21 + 56) = v22;
      v37 = v13;
      *(v21 + 64) = v39;
      *(v21 + 72) = 0;
      *(v21 + 80) = 1;
      v23 = v41;
      *(v21 + 88) = v40;
      *(v21 + 96) = v23;
      aBlock[4] = partial apply for closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:);
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_32;
      v40 = _Block_copy(aBlock);

      outlined copy of Data._Representation(a1, a2);

      static DispatchQoS.unspecified.getter();
      v42 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type Topic and conformance Topic(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v40;
      v25 = v34;
      MEMORY[0x1B27147B0](0, v16, v12, v40);
      _Block_release(v24);

      (*(v36 + 8))(v12, v10);
      (*(v35 + 8))(v16, v37);
    }
  }

  else
  {
    v26 = v17();
    if (v26)
    {
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v27 = swift_allocError();
      *v28 = 0;
      v40();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v26);
      v33[-8] = v7;
      v33[-7] = a1;
      v30 = v37;
      v29 = v38;
      v33[-6] = a2;
      v33[-5] = v29;
      v32 = v39;
      v31 = v40;
      v33[-4] = v30;
      v33[-3] = v32;
      v33[-2] = v31;
      v33[-1] = v41;

      Lock.withLock<A>(_:)();
    }
  }
}

uint64_t closure #1 in Topic.sendData(_:to:messageTypeIdentifier:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v15 = *(a1 + v14);

  v23 = a8;

  outlined copy of Data._Representation(a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *(a1 + v14) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[72 * v18];
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  *(v19 + 6) = a4;
  *(v19 + 7) = a5;
  *(v19 + 8) = a6;
  *(v19 + 9) = 0;
  v19[80] = 1;
  *(v19 + 21) = *&v24[3];
  *(v19 + 81) = *v24;
  *(v19 + 11) = a7;
  *(v19 + 12) = v23;
  *(a1 + v14) = v15;
  return swift_endAccess();
}

uint64_t closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(void), uint64_t a11)
{
  v12[1] = a11;
  if (PubSubTopic.isAvailableUnsafe.getter())
  {
    result = PubSubTopic.publish(message:to:messageTypeIdentifier:previousSeqNumUnacked:)();
    if (a10)
    {
      return a10(0);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12[0] = v12;
      MEMORY[0x1EEE9AC00](result);

      Lock.withLock<A>(_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Topic._sendData(_:to:messageTypeIdentifier:previousSeqNumUnacked:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v15 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  v16 = *(a1 + v15);

  outlined copy of Data._Representation(a2, a3);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a9, a10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *(a1 + v15) = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[72 * v19];
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  *(v20 + 6) = a4;
  *(v20 + 7) = a5;
  *(v20 + 8) = a6;
  *(v20 + 9) = a7;
  v20[80] = a8 & 1;
  *(v20 + 21) = *&v25[3];
  *(v20 + 81) = *v25;
  *(v20 + 11) = a9;
  *(v20 + 12) = a10;
  *(a1 + v15) = v16;
  return swift_endAccess();
}

char *Topic.deinit()
{

  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 7));

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[12], v0[13]);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[14], v0[15]);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[16], v0[17]);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler), *(v0 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler + 8));
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler), *(v0 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler + 8));

  return v0;
}

uint64_t Topic.__deallocating_deinit()
{
  Topic.deinit();

  return swift_deallocClassInstance();
}

uint64_t Topic.onRecordReceive(topic:)()
{
  while (1)
  {
    PubSubTopic.retrieveNextMessage()();
    if (!v13)
    {
      break;
    }

    v1 = outlined init with take of Transferable(&v12, v14);
    v2 = (*(*v0 + 328))(v1);
    if (v2)
    {
      v4 = v2;
      v5 = v3;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = dispatch thunk of PubSubTopicRecord.data.getter();
      v8 = v7;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = dispatch thunk of PubSubTopicRecord.publisherID.getter();
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 = dispatch thunk of PubSubTopicRecord.toParticipantIDs.getter();
      v4(v6, v8, v9, v10);
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v4, v5);

      outlined consume of Data._Representation(v6, v8);
    }

    __swift_project_boxed_opaque_existential_1(v14, v15);
    dispatch thunk of PubSubTopicRecord.acknowledge()();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  return outlined destroy of NSObject?(&v12, &_s14CopresenceCore17PubSubTopicRecord_pSgMd, &_s14CopresenceCore17PubSubTopicRecord_pSgMR);
}

uint64_t closure #1 in Topic.topicClosed(topic:reason:unackedMessages:)(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for PubSubTopic.Message();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v29[0] = a2;
    v29[1] = v2;
    v40[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v40[0];
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v31 = *(v10 + 56);
    v32 = v11;
    v30 = (v10 - 8);
    v33 = v10;
    do
    {
      v13 = v34;
      v32(v7, v12, v34);
      v14 = PubSubTopic.Message.data.getter();
      v38 = v15;
      v39 = v14;
      v37 = PubSubTopic.Message.participants.getter();
      v16 = PubSubTopic.Message.typeIdentifier.getter();
      v35 = v17;
      v36 = v16;
      v18 = PubSubTopic.Message.seqNum.getter();
      v20 = v19;
      (*v30)(v7, v13);
      v40[0] = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v9 = v40[0];
      }

      v41 = v20 & 1;
      *(v9 + 16) = v22 + 1;
      v23 = v9 + 72 * v22;
      v24 = v38;
      *(v23 + 32) = v39;
      *(v23 + 40) = v24;
      v25 = v36;
      *(v23 + 48) = v37;
      *(v23 + 56) = v25;
      *(v23 + 64) = v35;
      *(v23 + 72) = v18;
      *(v23 + 80) = v41;
      LODWORD(v25) = v42;
      *(v23 + 84) = *(&v42 + 3);
      *(v23 + 81) = v25;
      *(v23 + 88) = 0;
      *(v23 + 96) = 0;
      v12 += v31;
      --v8;
    }

    while (v8);
    a2 = v29[0];
  }

  v42 = v9;
  v26 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v27);
  *(a2 + v26) = v42;
}

void (*Topic.onStateUpdated(topic:oldState:newState:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  result = (*(*v3 + 352))(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    result(a2, a3);

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v9);
  }

  return result;
}

void (*protocol witness for PubSubTopicDelegate.onStateUpdated(topic:oldState:newState:) in conformance Topic(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  result = (*(*v3 + 352))(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    result(a2, a3);

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v9);
  }

  return result;
}

uint64_t specialized Topic.init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a4;
  v47 = a5;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - v10;
  v11 = type metadata accessor for PubSubTopic.QueueState();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v31 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v31 - v16;
  *(a6 + 16) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  *(a6 + 40) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AF013F80;
  LOBYTE(v48) = 3;
  v49 = 0;
  lazy protocol witness table accessor for type Topic.State and conformance Topic.State();
  lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 0;
  v49 = 258;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 0;
  v49 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 0;
  v49 = 769;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 1;
  v49 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 1;
  v49 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 2;
  v49 = 770;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v48) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities5TopicC0C0OAF5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLOGMR);
  swift_allocObject();
  *(a6 + 48) = StateMachine.init(initialState:transitions:)();
  *(a6 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 72) = 0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0;
  v18 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v48 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v19 = v32;
  Published.init(initialValue:)();
  (*(v33 + 32))(a6 + v18, v19, v34);
  v20 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v21 = v35;
  PubSubTopic.QueueState.init()();
  v22 = v37;
  v23 = v38;
  (*(v37 + 16))(v36, v21, v38);
  v24 = v39;
  Published.init(initialValue:)();
  (*(v22 + 8))(v21, v23);
  (*(v40 + 32))(a6 + v20, v24, v41);
  v25 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler);
  *v25 = 0;
  v25[1] = 0;
  v26 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler);
  *v26 = 0;
  v26[1] = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark) = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages) = MEMORY[0x1E69E7CC0];
  v27 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock;
  type metadata accessor for Lock();
  swift_allocObject();
  *(a6 + v27) = Lock.init()();
  v28 = v43;
  *(a6 + 80) = v42;
  *(a6 + 88) = v28;
  *(a6 + 64) = v45;
  swift_unknownObjectWeakAssign();
  v29 = v47;
  *(a6 + 24) = v46;
  *(a6 + 32) = v29;
  return a6;
}

uint64_t specialized Topic.__allocating_init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for Topic(0);
  v15 = swift_allocObject();

  return specialized Topic.init(name:delegate:pubSubTopicGenerator:)(a1, a2, a3, a4, a5, v15, a7, a8);
}

uint64_t type metadata accessor for Topic(uint64_t a1)
{
  result = type metadata singleton initialization cache for Topic;
  if (!type metadata singleton initialization cache for Topic)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors()
{
  result = lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors;
  if (!lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors;
  if (!lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Errors and conformance Topic.Errors);
  }

  return result;
}

uint64_t specialized Topic.topicClosed(topic:reason:unackedMessages:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (!a2)
  {
    v13 = one-time initialization token for topic;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.topic);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
    v12 = "[Topic Closed] Disconnected, topic=%s";
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    v6 = one-time initialization token for topic;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.topic);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v63[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
    v12 = "[Topic Closed] Server bouncing, topic=%s";
LABEL_11:
    _os_log_impl(&dword_1AEE80000, v8, v9, v12, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
LABEL_12:

    LOBYTE(v63[0]) = 3;
    dispatch thunk of StateMachine.execute(_:)();
    (*(*v4 + 576))(a1);
    swift_beginAccess();
    v4[2] = 0;

    MEMORY[0x1EEE9AC00](v15);

    Lock.withLock<A>(_:)();

    return (*(*v4 + 648))(v16);
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.topic);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v63[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
        _os_log_impl(&dword_1AEE80000, v42, v43, "[Topic Closed] Message rejected, topic=%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1B2715BA0](v45, -1, -1);
        MEMORY[0x1B2715BA0](v44, -1, -1);
      }

      LOBYTE(v63[0]) = 3;
      v46 = dispatch thunk of StateMachine.execute(_:)();
      v47 = (*(*v4 + 520))(v46);
      if (!v47)
      {
        goto LABEL_54;
      }

      v28 = v47;
      v29 = v48;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v31 = swift_allocError();
      *v49 = 3;
      goto LABEL_48;
    }

    if (a1 != 4)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, static Log.topic);

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63[0] = v62;
        *v61 = 136315138;
        *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
        _os_log_impl(&dword_1AEE80000, v59, v60, "[Topic Closed] Successfully unsubscribed, topic=%s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x1B2715BA0](v62, -1, -1);
        MEMORY[0x1B2715BA0](v61, -1, -1);
      }

      LOBYTE(v63[0]) = 2;
      dispatch thunk of StateMachine.execute(_:)();
      goto LABEL_54;
    }

    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.topic);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
      v23 = "[Topic Closed] Decryption queue size exceeded, topic=%s";
      goto LABEL_26;
    }
  }

  else
  {
    if (!a1)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Log.topic);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v63[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
        _os_log_impl(&dword_1AEE80000, v34, v35, "[Topic Closed] Became unavailable topic=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1B2715BA0](v37, -1, -1);
        MEMORY[0x1B2715BA0](v36, -1, -1);
      }

      LOBYTE(v63[0]) = 3;
      v38 = dispatch thunk of StateMachine.execute(_:)();
      v39 = (*(*v4 + 520))(v38);
      if (!v39)
      {
        goto LABEL_54;
      }

      v28 = v39;
      v29 = v40;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v31 = swift_allocError();
      v32 = 1;
      goto LABEL_47;
    }

    if (a1 != 1)
    {
      if (one-time initialization token for topic != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Log.topic);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v63[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
        _os_log_impl(&dword_1AEE80000, v51, v52, "[Topic Closed] Unknown topic, topic=%s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x1B2715BA0](v54, -1, -1);
        MEMORY[0x1B2715BA0](v53, -1, -1);
      }

      LOBYTE(v63[0]) = 3;
      v55 = dispatch thunk of StateMachine.execute(_:)();
      v56 = (*(*v4 + 520))(v55);
      if (!v56)
      {
        goto LABEL_54;
      }

      v28 = v56;
      v29 = v57;
      lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
      v31 = swift_allocError();
      v32 = 2;
      goto LABEL_47;
    }

    if (one-time initialization token for topic != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.topic);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4[10], v4[11], v63);
      v23 = "[Topic Closed] Cryptor failure, topic=%s";
LABEL_26:
      _os_log_impl(&dword_1AEE80000, v19, v20, v23, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }
  }

  LOBYTE(v63[0]) = 3;
  v25 = dispatch thunk of StateMachine.execute(_:)();
  v26 = (*(*v4 + 520))(v25);
  if (v26)
  {
    v28 = v26;
    v29 = v27;
    lazy protocol witness table accessor for type Topic.Errors and conformance Topic.Errors();
    v31 = swift_allocError();
    v32 = 4;
LABEL_47:
    *v30 = v32;
LABEL_48:
    v28();
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v29);
  }

LABEL_54:
  swift_beginAccess();
  v4[2] = 0;

  Lock.withLock<A>(_:)();

  v4[9] = 0;
}

void (*specialized Topic.catchupNeeded(topic:catchupSender:completion:)(uint64_t a1, void (*a2)(char *)))(uint64_t)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMd, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  if (one-time initialization token for topic != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.topic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 80), *(v3 + 88), &v20);
    _os_log_impl(&dword_1AEE80000, v10, v11, "Catchup is needed, topic=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  a2(v8);
  v14 = outlined destroy of NSObject?(v8, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMd, &_ss6ResultOyyt14CopresenceCore17TopicCatchupErrorOGMR);
  result = (*(*v3 + 376))(v14);
  if (result)
  {
    v17 = result;
    v18 = v16;
    result(a1);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v17, v18);
  }

  return result;
}

void type metadata completion function for Topic(uint64_t a1)
{
  type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<PubSubTopic.QueueState>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<PubSubTopic.QueueState>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<PubSubTopic.QueueState>)
  {
    type metadata accessor for PubSubTopic.QueueState();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<PubSubTopic.QueueState>);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Topic.BootstrapPubSubTopicInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Topic.BootstrapPubSubTopicInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s5Error_pSgIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Topic.PendingMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Topic.PendingMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Topic and conformance Topic(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed [UInt64]?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v9[0] = a1;
  v9[1] = a2;
  v7 = a4;
  v8 = a3;
  return v5(v9, &v8, &v7);
}

uint64_t partial apply for closure #2 in Topic.topicClosed(topic:reason:unackedMessages:)()
{
  v1 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_28Tm()
{

  outlined consume of Data._Representation(v0[4], v0[5]);

  if (v0[11])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

GroupActivities::AbsoluteSpatialTemplateOutput __swiftcall AbsoluteSpatialTemplateOutput.init(elements:defaultInitiatorRole:)(Swift::OpaquePointer elements, GroupActivities::AbsoluteSpatialTemplateOutput::Role_optional defaultInitiatorRole)
{
  *v2 = elements;
  *(v2 + 8) = *defaultInitiatorRole.value.identifier._countAndFlagsBits;
  result.defaultInitiatorRole = defaultInitiatorRole;
  result.elements = elements;
  return result;
}

uint64_t SpatialTemplatePreferenceOutput.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = qword_1AF018D78[*(result + 9)];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v3;
  *(a2 + 40) = 2;
  return result;
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.init(role:position:direction:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 3);
  v6 = a3->n128_u64[0];
  v7 = a3[3].n128_u8[0];
  v8 = *a1;
  *(a4 + 32) = *(a2 + 2);
  *(a4 + 40) = v5;
  *a4 = v8;
  *(a4 + 16) = v4;
  *(a4 + 48) = v6;
  result = a3[1];
  v10 = a3[2];
  *(a4 + 64) = result;
  *(a4 + 80) = v10;
  *(a4 + 96) = v7;
  return result;
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.init(anchor:rotation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 32);
  if (v4 == 1)
  {
    v5 = 0;
    v6 = v3 == 2;
    v7 = v3 == 4;
    v3 = 2;
    if (!v7)
    {
      v3 = v6;
    }

    v8 = 0uLL;
  }

  else
  {
    v5 = *(result + 24);
    v8 = *(result + 8);
  }

  *a2 = a3;
  *(a2 + 16) = v3;
  *(a2 + 24) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v4;
  return result;
}

_BYTE *AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.init(alignedWith:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 4;
  if (!*result)
  {
    v2 = 1;
  }

  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

void AbsoluteSpatialTemplateOutput.Element.Direction.anchor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = 0;
    v2 = qword_1AF018DA0[v2];
    v5 = 0uLL;
  }

  else
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 24);
  }

  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

void AbsoluteSpatialTemplateOutput.Element.Position.init(anchor:offset:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

BOOL static AbsoluteSpatialTemplateOutput.Element.Position.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1 == *a2;
  if (a1[1] != a2[1])
  {
    v2 = 0;
  }

  return a1[2] == a2[2] && v2;
}

uint64_t SpatialTemplatePreferenceOutput.template.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys()
{
  v1 = *v0;
  v2 = 0x62416D6F74737563;
  v3 = 0x646E756F72727573;
  v4 = 1701736302;
  if (v1 != 4)
  {
    v4 = 0x61746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61737265766E6F63;
  if (v1 != 1)
  {
    v5 = 0x6953794265646973;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialTemplatePreferenceOutput.SpatialTemplate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v17 = v1[1];
  v50 = *v1;
  v18 = v1[2];
  v19 = *(v1 + 24);
  v20 = a1[3];
  v21 = a1;
  v23 = &v33 - v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v19)
  {
    LOBYTE(v53) = 0;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();
    v25 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v53 = v50;
    v54 = v17;
    v55 = v18;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v46 + 8))(v15, v13);
    return (*(v51 + 8))(v23, v25);
  }

  if (v19 == 1)
  {
    LOBYTE(v53) = 5;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();
    v24 = v47;
    v25 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v53) = v50 & 1;
    lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput();
    v26 = v49;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v48 + 8))(v24, v26);
    return (*(v51 + 8))(v23, v25);
  }

  v28 = v18 | v17;
  if (v18 | v17 | v50)
  {
    if (v50 != 1 || v28)
    {
      if (v50 != 2 || v28)
      {
        LOBYTE(v53) = 4;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();
        v29 = v37;
        v30 = v52;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v38;
        v31 = v39;
      }

      else
      {
        LOBYTE(v53) = 3;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();
        v29 = v34;
        v30 = v52;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v35;
        v31 = v36;
      }
    }

    else
    {
      LOBYTE(v53) = 2;
      lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();
      v29 = v40;
      v30 = v52;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v41;
      v31 = v42;
    }
  }

  else
  {
    LOBYTE(v53) = 1;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();
    v29 = v43;
    v30 = v52;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v32 = v44;
    v31 = v45;
  }

  (*(v32 + 8))(v29, v31);
  return (*(v51 + 8))(v23, v30);
}

void SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v4 & 1);
    }

    else
    {
      v8 = v6 | v5;
      if (v6 | v5 | v4)
      {
        if (v4 == 1 && v8 == 0)
        {
          v10 = 2;
        }

        else if (v4 != 2 || v8)
        {
          v10 = 4;
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 1;
      }

      MEMORY[0x1B2715040](v10);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(a1, v4);
    if (v6)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }
}

Swift::Int SpatialTemplatePreferenceOutput.SpatialTemplate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v1 & 1);
    }

    else
    {
      v5 = v3 | v2;
      if (v3 | v2 | v1)
      {
        if (v1 != 1 || v5)
        {
          if (v1 != 2 || v5)
          {
            v6 = 4;
          }

          else
          {
            v6 = 3;
          }
        }

        else
        {
          v6 = 2;
        }
      }

      else
      {
        v6 = 1;
      }

      MEMORY[0x1B2715040](v6);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(v8, v1);
    if (v3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  return Hasher._finalize()();
}

uint64_t SpatialTemplatePreferenceOutput.SpatialTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O22PresentationCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O14NoneCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v53 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O18SurroundCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O06SideByJ10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v53 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24ConversationalCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O24CustomAbsoluteCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV0fG0O10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v20 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys();
  v21 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v15;
    v54 = v13;
    v23 = v69;
    v24 = v70;
    v72 = v17;
    v25 = v71;
    v55 = v16;
    v26 = KeyedDecodingContainer.allKeys.getter();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = specialized Collection<>.popFirst()();
    if (v28 == 6 || v77 != v78 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v34 = &type metadata for SpatialTemplatePreferenceOutput.SpatialTemplate;
      v35 = v55;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
      (*(v72 + 8))(v19, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 2u)
      {
        if (v28 == 3)
        {
          LOBYTE(v73) = 3;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys();
          v42 = v23;
          v43 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v44 = v72;
          (*(v59 + 8))(v42, v62);
          (*(v44 + 8))(v19, v43);
          swift_unknownObjectRelease();
          v51 = 0uLL;
          v50 = 2;
          v52 = 2;
        }

        else
        {
          v37 = v72;
          v38 = v55;
          if (v28 == 4)
          {
            LOBYTE(v73) = 4;
            lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys();
            v39 = v68;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            (*(v63 + 8))(v39, v64);
            (*(v37 + 8))(v19, v38);
            swift_unknownObjectRelease();
            v51 = 0uLL;
            v52 = 2;
            v50 = 3;
          }

          else
          {
            LOBYTE(v73) = 5;
            lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput();
            v48 = v65;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v66 + 8))(v24, v48);
            (*(v37 + 8))(v19, v38);
            swift_unknownObjectRelease();
            v50 = v73;
            v51 = 0uLL;
            v52 = 1;
          }
        }
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v73) = 1;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys();
          v29 = v12;
          v30 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v31 = v72;
          (*(v57 + 8))(v29, v58);
          (*(v31 + 8))(v19, v30);
          swift_unknownObjectRelease();
          v50 = 0;
          v51 = 0uLL;
          v52 = 2;
        }

        else
        {
          LOBYTE(v73) = 2;
          lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys();
          v45 = v67;
          v46 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v47 = v72;
          (*(v60 + 8))(v45, v61);
          (*(v47 + 8))(v19, v46);
          swift_unknownObjectRelease();
          v51 = 0uLL;
          v52 = 2;
          v50 = 1;
        }
      }

      else
      {
        LOBYTE(v73) = 0;
        lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys();
        v40 = v19;
        v41 = v55;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput();
        v49 = v54;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v56 + 8))(v22, v49);
        (*(v72 + 8))(v40, v41);
        swift_unknownObjectRelease();
        v52 = 0;
        v50 = v73;
        v51 = v74;
      }

      *v25 = v50;
      *(v25 + 8) = v51;
      *(v25 + 24) = v52;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplatePreferenceOutput.SpatialTemplate()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.SpatialTemplate.hash(into:)(v5);
  return Hasher._finalize()();
}

__n128 SpatialTemplatePreferenceOutput.init(template:contentExtent:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u8[8];
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u64[0] = v4;
  a4[2].n128_u8[8] = v5;
  a4->n128_u64[0] = a2;
  a4->n128_u8[8] = a3 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x45746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x45746E65746E6F63 && a2 == 0xED0000746E657478;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialTemplatePreferenceOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SpatialTemplatePreferenceOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v9;
  v12 = *(v1 + 32);
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v7;
  LOBYTE(v17) = v8;
  v21 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v10 = v15;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v10)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v19 = v20;
    v21 = 1;
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v14, v13, v12, v20);
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v16, v17, v18, v19);
  }

  return (*(v4 + 8))(v6, v3);
}

void SpatialTemplatePreferenceOutput.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(v2 + 40);
  if (*(v2 + 8) == 1)
  {
    Hasher._combine(_:)(0);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *v2;
    Hasher._combine(_:)(1u);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1B2715070](v9);
    if (v7)
    {
LABEL_3:
      if (v7 == 1)
      {
        MEMORY[0x1B2715040](5);
        Hasher._combine(_:)(v4 & 1);
      }

      else
      {
        v10 = v6 | v5;
        if (v6 | v5 | v4)
        {
          if (v4 != 1 || v10)
          {
            if (v4 != 2 || v10)
            {
              v11 = 4;
            }

            else
            {
              v11 = 3;
            }
          }

          else
          {
            v11 = 2;
          }
        }

        else
        {
          v11 = 1;
        }

        MEMORY[0x1B2715040](v11);
      }

      return;
    }
  }

  MEMORY[0x1B2715040](0);
  specialized Array<A>.hash(into:)(a1, v4);
  if (v6)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int SpatialTemplatePreferenceOutput.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 1);
  v9 = v2;
  v10 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t SpatialTemplatePreferenceOutput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities31SpatialTemplatePreferenceOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = v15;
    v10 = BYTE8(v15);
    v18 = 1;
    lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v16;
    v12 = v17;
    v13 = v15;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialTemplatePreferenceOutput()
{
  v1 = *(v0 + 8);
  v2 = v0[4];
  v3 = *(v0 + 40);
  v6 = *v0;
  v7 = v1;
  v8 = *(v0 + 1);
  v9 = v2;
  v10 = v3;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialTemplatePreferenceOutput(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v1[4];
  v4 = *(v1 + 40);
  v7 = *v1;
  v8 = v2;
  v9 = *(v1 + 1);
  v10 = v3;
  v11 = v4;
  Hasher.init(_seed:)();
  SpatialTemplatePreferenceOutput.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.defaultInitiatorRole.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  if (a1 == a2)
  {
    return 1;
  }

  v7 = 0;
  for (i = v4 - 1; ; --i)
  {
    v9 = *(a1 + v7 + 80);
    v10 = *(a1 + v7 + 64);
    v11 = *(a1 + v7 + 72);
    v12 = *(a2 + v7 + 64);
    v13 = *(a2 + v7 + 72);
    v14 = *(a2 + v7 + 80);
    v15 = *(a2 + v7 + 128);
    v37 = *(a1 + v7 + 128);
    v38 = v15;
    v17 = *(a1 + v7 + 32);
    v16 = *(a1 + v7 + 48);
    v31 = v10;
    v32 = v11;
    v30[0] = v17;
    v30[1] = v16;
    v33 = v9;
    v18 = *(a1 + v7 + 112);
    v34 = *(a1 + v7 + 96);
    v35 = v18;
    v36 = v37;
    v20 = *(a2 + v7 + 32);
    v19 = *(a2 + v7 + 48);
    v24 = v12;
    v25 = v13;
    v23[0] = v20;
    v23[1] = v19;
    v26 = v14;
    v21 = *(a2 + v7 + 112);
    v27 = *(a2 + v7 + 96);
    v28 = v21;
    v29 = v15;
    if ((specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v30, v23) & 1) == 0)
    {
      break;
    }

    if (!i)
    {
      return 1;
    }

    v7 += 112;
  }

  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x73746E656D656C65;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AF01D970 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = v1[2];
  v11 = v1[1];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
  lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](&lazy protocol witness table cache variable for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A], lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v13 = v11;
    v14 = v12;
    v15 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void AbsoluteSpatialTemplateOutput.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
  v14 = 0;
  lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](&lazy protocol witness table cache variable for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A], lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element, MEMORY[0x1E69E6330]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13[0];
  v14 = 1;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v13[0];
  v11 = v13[1];
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresentationTemplateOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001AF01D990 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresentationTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresentationTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationTemplateOutput.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int PresentationTemplateOutput.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t PresentationTemplateOutput.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PresentationTemplateOutput(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationTemplateOutput()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationTemplateOutput(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t static AbsoluteSpatialTemplateOutput.Element.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 96);
  v30 = *(a1 + 96);
  v31 = v8;
  v10 = *a1;
  v9 = a1[1];
  v24 = v2;
  v25 = v3;
  v23[0] = v10;
  v23[1] = v9;
  v26 = v4;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v29 = v30;
  v13 = *a2;
  v12 = a2[1];
  v17 = v5;
  v18 = v6;
  v16[0] = v13;
  v16[1] = v12;
  v19 = v7;
  v14 = a2[5];
  v20 = a2[4];
  v21 = v14;
  v22 = v8;
  return specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v23, v16) & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1952540019 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = v2[1];
  v22 = *v2;
  v21 = v12;
  v13 = *(v2 + 5);
  v20 = *(v2 + 4);
  v19 = v13;
  v14 = *(v2 + 6);
  v15 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = v15;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v27 = v20;
  v28 = v19;
  v25 = v22;
  v26 = v21;
  v29 = v14;
  v16 = v2[5];
  v30 = v2[4];
  v31 = v16;
  v32 = v33;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat();
  v17 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v24 + 8))(v7, v17);
  return (*(v9 + 8))(v11, v8);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 64);
  v4 = *(v1 + 96);
  MEMORY[0x1B2715040](0);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v4)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v3);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 96);
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();
  v9 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    goto LABEL_6;
  }

  v10 = v21;
  v36 = a1;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v32 = v11;
  v33 = v11 + 32;
  v34 = 0;
  v35 = v12;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v34 != v35 >> 1)
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = &type metadata for AbsoluteSpatialTemplateOutput.Element;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v22 + 8))(v8, v6);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v22;
  (*(v10 + 8))(v5, v3);
  (*(v13 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v23[4] = v29;
  v23[5] = v30;
  v24 = v31;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v23, v20);
  v18 = v36;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element()
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v0, v4);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v4, v3);
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element(uint64_t a1)
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v1, v5);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v5, v4);
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AbsoluteSpatialTemplateOutput.Element(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 96);
  v30 = *(a1 + 96);
  v31 = v8;
  v10 = *a1;
  v9 = a1[1];
  v24 = v2;
  v25 = v3;
  v23[0] = v10;
  v23[1] = v9;
  v26 = v4;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v29 = v30;
  v13 = *a2;
  v12 = a2[1];
  v17 = v5;
  v18 = v6;
  v16[0] = v13;
  v16[1] = v12;
  v19 = v7;
  v14 = a2[5];
  v20 = a2[4];
  v21 = v14;
  v22 = v8;
  return specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v23, v16) & 1;
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.position.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  v3 = v1[2].n128_u64[1];
  a1[1].n128_u64[0] = v1[2].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x6F69746365726964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[5];
  *&v21 = v1[4];
  *(&v21 + 1) = v9;
  v10 = v1[3];
  v19 = v1[2];
  v20 = v10;
  v11 = v1[6];
  v12 = *(v1 + 4);
  v16 = *(v1 + 5);
  v17 = v12;
  v18 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v7;
  v24 = v8;
  v28 = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  v13 = v22;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (!v13)
  {
    v14 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v28 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = v11;
    v25 = v17;
    v26 = v16;
    v27 = v14;
    v28 = 2;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 96);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Seat.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);
  v3 = *(v0 + 96);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v33) = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  v9 = v32;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v40;
  v31 = v41;
  LOBYTE(v33) = 1;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v10;
  v11 = v43;
  v27 = v41;
  v28 = v42;
  v30 = v40;
  v52 = 2;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  v12 = v53;
  v24 = v55;
  v25 = *(&v54 + 1);
  v23 = *(&v55 + 1);
  v13 = v56;
  v57 = v56;
  v14 = v11;
  v26 = v11;
  v16 = v28;
  v15 = v29;
  v32 = v54;
  *&v33 = v29;
  v17 = v31;
  *&v35 = v28;
  *(&v35 + 1) = v14;
  v18 = v27;
  *(&v34 + 1) = v27;
  *(&v33 + 1) = v31;
  *&v34 = v30;
  *&v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  *(a2 + 96) = v56;
  v19 = v34;
  *a2 = v33;
  *(a2 + 16) = v19;
  v20 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v20;
  v21 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v21;
  outlined init with copy of AbsoluteSpatialTemplateOutput.Element.Seat(&v33, &v40);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v40 = v15;
  v41 = v17;
  v44 = v16;
  v45 = v26;
  v42 = v30;
  v43 = v18;
  v46 = v12;
  v47 = v32;
  v48 = v25;
  v49 = v24;
  v50 = v23;
  v51 = v13;
  return outlined destroy of AbsoluteSpatialTemplateOutput.Element.Seat(&v40);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat()
{
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Seat(uint64_t a1)
{
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 48);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

uint64_t AbsoluteSpatialTemplateOutput.Role.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AbsoluteSpatialTemplateOutput.Role.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Role.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int AbsoluteSpatialTemplateOutput.Role.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Role.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AbsoluteSpatialTemplateOutput.Role(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746E6543707061 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.Anchor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Position.Anchor.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.Anchor.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = KeyedDecodingContainer.allKeys.getter();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = &type metadata for AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = v1[3];
  v13 = v1[2];
  v14 = v8;
  v9 = v1[1];
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v12;
    v16 = v9;
    v17 = v13;
    v18 = v14;
    v19 = 1;
    type metadata accessor for SPVector3D(0);
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPVector3D and conformance SPVector3D, type metadata accessor for SPVector3D, MEMORY[0x1EEE9A638]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Position.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for SPVector3D(0);
    v15 = 1;
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPVector3D and conformance SPVector3D, type metadata accessor for SPVector3D, MEMORY[0x1EEE9A640]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    v10 = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v10;
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(*v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }
}

BOOL static AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = LODWORD(v2) == LODWORD(v3);
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v6 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v6;
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1)
{
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(*v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = LODWORD(v2) == LODWORD(v3);
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v6 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v6;
  }
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMR);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMR);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMR);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMR);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMR);
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v19 - v10;
  v12 = v1[1];
  v27 = *v1;
  v13 = v1[3];
  v21 = v1[2];
  v22 = v12;
  v20 = v13;
  v14 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    LOBYTE(v29) = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();
    v15 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v29) = v27;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis();
    v16 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v25 + 8))(v5, v16);
  }

  else
  {
    LOBYTE(v29) = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();
    v15 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v21;
    v32 = v20;
    v29 = v27;
    v30 = v22;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
    v17 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v17);
  }

  return (*(v9 + 8))(v11, v15);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMR);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMR);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32[-v12];
  v14 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();
  v15 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v39 = v11;
    v16 = v38;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v44 = v17;
    v45 = v17 + 32;
    v46 = 0;
    v47 = v18;
    v19 = specialized Collection<>.popFirst()();
    v20 = v10;
    if (v19 == 2 || v46 != v47 >> 1)
    {
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v25 = &unk_1F24BFB08;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v13;
      v33 = v19;
      v21 = v39;
      if (v19)
      {
        LOBYTE(v40) = 1;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();
        v22 = v34;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis();
        v27 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v37 + 8))(v6, v27);
        (*(v21 + 8))(v22, v20);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = v40;
      }

      else
      {
        LOBYTE(v40) = 0;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v35 + 8))(v9, v7);
        (*(v21 + 8))(v34, v20);
        swift_unknownObjectRelease();
        v31 = v40;
        v28 = v41;
        v29 = v42;
        v30 = v43;
      }

      *v16 = v31;
      *(v16 + 8) = v28;
      *(v16 + 16) = v29;
      *(v16 + 24) = v30;
      *(v16 + 32) = v33 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v48);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73697841707061 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys()
{
  if (*v0)
  {
    return 0x5764656E67696C61;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5764656E67696C61 && a2 == 0xEB00000000687469)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor(uint64_t a1)
{
  v2 = *v1;
  if (v1[4])
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys()
{
  if (*v0)
  {
    return 0x726F68636E615FLL;
  }

  else
  {
    return 0x6E6F697461746F72;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E615FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12 = *(v1 + 2);
  v13 = v9;
  v10 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v14 = v8;
  v17 = 0;
  type metadata accessor for SPAngle(0);
  lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPAngle and conformance SPAngle, type metadata accessor for SPAngle, MEMORY[0x1EEE9A648]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v13;
    v15 = v12;
    v16 = v10;
    v17 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 48);
  SPAngle.hash(into:)();
  if (v3)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Direction.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v2)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for SPAngle(0);
    v16 = 0;
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPAngle and conformance SPAngle, type metadata accessor for SPAngle, MEMORY[0x1EEE9A650]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = *&v14[0];
    v16 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    v11 = v14[0];
    v12 = v14[1];
    *a2 = v9;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
    *(a2 + 48) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v7 = a1[8];
  v9 = a1[9];
  v8 = a1[10];
  v10 = *(a1 + 96);
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  v16 = *(a2 + 64);
  v18 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 96);
  if (v2)
  {
    if (v11)
    {
      if (*a1 != *a2 || v2 != v11)
      {
        v28 = a1[10];
        v30 = a1[6];
        v24 = *(a2 + 80);
        v26 = a1[3];
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = v24;
        v3 = v26;
        v8 = v28;
        v6 = v30;
        v21 = v20;
        result = 0;
        if ((v21 & 1) == 0)
        {
          return result;
        }
      }

      goto LABEL_12;
    }

LABEL_8:

    return 0;
  }

  if (v11)
  {
    goto LABEL_8;
  }

  v29 = a1[10];
  v31 = a1[6];
  v25 = *(a2 + 80);
  v27 = a1[3];

  v17 = v25;
  v3 = v27;
  v8 = v29;
  v6 = v31;
LABEL_12:
  result = 0;
  if (v4 == v13 && v3 == v12 && v5 == v14)
  {
    if (v6 == v15)
    {
      if (v10)
      {
        if (LOBYTE(v16) != LOBYTE(v7))
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

        if (v23)
        {
          return 1;
        }
      }

      else if ((v19 & 1) == 0 && v7 == v16 && v9 == v18 && v8 == v17)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL specialized static AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = (LOBYTE(v3) ^ LOBYTE(v2)) == 0;
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v6 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v6;
  }
}

BOOL specialized static AbsoluteSpatialTemplateOutput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      return v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    goto LABEL_9;
  }

  if (v5)
  {
LABEL_9:

    return 0;
  }

  return 1;
}

uint64_t specialized static SpatialTemplatePreferenceOutput.SpatialTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v17[0] = *a1;
      v17[1] = v3;
      v17[2] = v4;
      v16[0] = v6;
      v16[1] = v7;
      v16[2] = v8;
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      v10 = specialized static AbsoluteSpatialTemplateOutput.== infix(_:_:)(v17, v16);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      return v10 & 1;
    }

    goto LABEL_34;
  }

  if (v5 != 1)
  {
    v11 = v4 | v3;
    if (!(v4 | v3 | v2))
    {
      if (v9 != 2 || (v8 | v7 | v6) != 0)
      {
        goto LABEL_34;
      }

      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(0, 0, 0, 2);
      v13 = 0;
      goto LABEL_33;
    }

    if (v2 != 1 || v11 != 0)
    {
      if (v2 != 2 || v11)
      {
        if (v9 != 2 || v6 != 3 || v8 | v7)
        {
          goto LABEL_34;
        }

        outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(3, 0, 0, 2);
        v13 = 3;
      }

      else
      {
        if (v9 != 2 || v6 != 2 || v8 | v7)
        {
          goto LABEL_34;
        }

        outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(2, 0, 0, 2);
        v13 = 2;
      }

LABEL_33:
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v13, 0, 0, 2);
      v10 = 1;
      return v10 & 1;
    }

    if (v9 == 2 && v6 == 1 && !(v8 | v7))
    {
      v10 = 1;
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(1, 0, 0, 2);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(1, 0, 0, 2);
      return v10 & 1;
    }

LABEL_34:
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, v9);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, v5);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, v9);
    v10 = 0;
    return v10 & 1;
  }

  if (v9 != 1)
  {
    goto LABEL_34;
  }

  outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(*a1, v3, v4, 1);
  outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 1);
  v10 = v6 ^ v2 ^ 1;
  return v10 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput()
{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

uint64_t specialized static SpatialTemplatePreferenceOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if ((v4 & 1) == 0)
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v5, v6, v7, v8);
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v9, v10, v11, v12);
    v13 = specialized static SpatialTemplatePreferenceOutput.SpatialTemplate.== infix(_:_:)(&v20, &v16);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v16, v17, v18, v19);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v20, v21, v22, v23);
    return v13 & 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreferenceOutput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreferenceOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AbsoluteSpatialTemplateOutput(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PresentationTemplateOutput(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy33_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62416D6F74737563 && a2 == 0xEE006574756C6F73;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE006C616E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6953794265646973 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E756F72727573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 122 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.init(from:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMR);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMR);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMR);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();
  v13 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = specialized Collection<>.popFirst()();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v35);
          return v9;
        }

        v40 = 2;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();
        v24 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v22 = &unk_1F24C0538;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v9;
}

uint64_t GroupActivityAssociationKind.storage.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static GroupActivityAssociationKind.Storage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static GroupActivityAssociationKind.primary(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

void *GroupActivityAssociationKind.init(storage:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static GroupActivityAssociationKind.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t GroupActivityAssociationKind.hash(into:)(uint64_t a1)
{
  MEMORY[0x1B2715040](0);

  return String.hash(into:)();
}

Swift::Int GroupActivityAssociationKind.Storage.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAssociationKind.Storage(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind);
  }

  return result;
}

uint64_t StaticGroupActivity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticGroupActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticGroupActivity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

uint64_t StaticGroupActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance StaticGroupActivity(uint64_t a1)
{
  StaticGroupActivity.metadata.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t StaticGroupActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v3, a1);
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
  v10 = a1 + v4[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = qword_1EDADC9F0;
  v12 = qword_1EDADCA08;
  *v10 = static SceneAssociationBehavior.default;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_1EDADC9F8;
  *(v10 + 32) = v12;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 2;
  v13 = one-time initialization token for none;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static SceneAssociationBehavior.none;
  v15 = qword_1EB61B458;
  v17 = xmmword_1EB61B460;
  v16 = qword_1EB61B470;

  *v10 = v14;
  *(v10 + 8) = v15;
  *(v10 + 16) = v17;
  *(v10 + 32) = v16;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StaticGroupActivity(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall StaticGroupActivity.register()()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3[0] = v1;
  v3[1] = v2;
  (*(*static StaticGroupActivityRegistry.shared + 120))(v3);
}

uint64_t *StaticGroupActivityRegistry.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static StaticGroupActivityRegistry.shared;
}

uint64_t StaticGroupActivity.eraseToAnyGroupActivity()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v35 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v4 = v1[1];
  v6 = one-time initialization token for generic;
  swift_bridgeObjectRetain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v8 = __swift_project_value_buffer(v7, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v8, v3);
  v9 = type metadata accessor for GroupActivityMetadata(0);
  v10 = &v3[v9[5]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[v9[6]];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v3[v9[7]] = 0;
  v12 = v9[8];
  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 56);
  v14(&v3[v12], 1, 1, v13);
  *&v3[v9[9]] = 0;
  v3[v9[10]] = dyld_program_sdk_at_least() ^ 1;
  v14(&v3[v9[11]], 1, 1, v13);
  v15 = &v3[v9[12]];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v39 = v5;
  v16 = qword_1EDADC9F0;
  v17 = qword_1EDADCA08;
  *v15 = static SceneAssociationBehavior.default;
  *(v15 + 1) = v16;
  *(v15 + 1) = xmmword_1EDADC9F8;
  *(v15 + 4) = v17;
  v3[v9[13]] = 0;
  *&v3[v9[14]] = 2;
  v18 = one-time initialization token for none;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static SceneAssociationBehavior.none;
  v20 = qword_1EB61B458;
  v22 = xmmword_1EB61B460;
  v21 = qword_1EB61B470;

  *v15 = v19;
  *(v15 + 1) = v20;
  *(v15 + 1) = v22;
  *(v15 + 4) = v21;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v23 = v39;
  v37 = v39;
  v38 = v4;
  lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  v24 = v36;
  v25 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v27 = v26;

  if (v24)
  {
    swift_bridgeObjectRelease_n();
    return outlined destroy of AnyGroupActivity.MetadataProvider(v3, type metadata accessor for AnyGroupActivity.MetadataProvider);
  }

  else
  {
    v29 = type metadata accessor for AnyGroupActivity(0);
    v30 = v34;
    specialized IdentifiableGroupActivity.uuid.getter();
    *v30 = v23;
    v30[1] = v4;
    result = outlined init with take of AnyGroupActivity.MetadataProvider(v3, v30 + v29[5]);
    v31 = (v30 + v29[6]);
    *v31 = v25;
    v31[1] = v27;
    v32 = (v30 + v29[8]);
    *v32 = v23;
    v32[1] = v4;
  }

  return result;
}

uint64_t StaticGroupActivityRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 24) = Lock.init()();
  return v0;
}

double static StaticGroupActivityRegistry.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t StaticGroupActivityRegistry.subscriptions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

Swift::Void __swiftcall StaticGroupActivityRegistry.register(activity:)(GroupActivities::StaticGroupActivity activity)
{
  v2 = v1;
  countAndFlagsBits = activity.id._countAndFlagsBits;
  v38 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v11 = *countAndFlagsBits;
  v10 = countAndFlagsBits[1];
  v12 = v2[3];
  Lock.lock()();
  v13 = *(*v2 + 96);

  if (*(v13(v14) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v11, v10), (v15 & 1) != 0))
  {
  }

  else
  {
    v33 = v7;
    v34 = v12;

    if (one-time initialization token for conversationManagerClient != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = qword_1EB62D008;
    v17 = __swift_project_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, qword_1EB62D008);
    v32[1] = v32;
    v18 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
    (*(v18 + 8))(v20, v16);
    v40[0] = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *(v22 + 24) = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38TUConversationActivitySessionContainerCSgMd, &_sSo38TUConversationActivitySessionContainerCSgMR);
    v32[0] = v11;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher.map<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR, MEMORY[0x1E695BD60]);
    v23 = v36;
    Publisher.removeDuplicates(by:)();
    (*(v35 + 8))(v6, v23);
    v24 = swift_allocObject();
    v25 = v32[0];
    v24[2] = v32[0];
    v24[3] = v10;
    v24[4] = v38;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR, MEMORY[0x1E695BD38]);

    v26 = v33;
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v37 + 8))(v9, v26);
    v28 = (*(*v2 + 112))(v40);
    v30 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *v30;
    *v30 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v25, v10, isUniquelyReferenced_nonNull_native);

    *v30 = v39;
    v28(v40, 0);
  }

  Lock.unlock()();
}

uint64_t *StaticGroupActivityRegistry.conversationManagerClient.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  return static StaticGroupActivityRegistry.conversationManagerClient;
}

void closure #1 in StaticGroupActivityRegistry.register(activity:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
LABEL_9:
    while (2)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = *(*(v5 + 56) + ((v11 << 9) | (8 * v13)));
        if ([v14 state] == 3 && (objc_msgSend(v14, sel_capabilities) & 1) != 0)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_5;
        }
      }

      v45 = v5;
      v46 = a4;
      v15 = [v14 activitySessions];
      v16 = type metadata accessor for TUConversationActivitySession();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession, MEMORY[0x1E69E81B8]);
      v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v10;
      v44 = v6;
      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v18 = v53;
        v19 = v54;
        v20 = v55;
        v21 = v56;
        v22 = v57;
      }

      else
      {
        v23 = -1 << *(v17 + 32);
        v19 = v17 + 56;
        v24 = ~v23;
        v25 = -v23;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v22 = v26 & *(v17 + 56);

        v20 = v24;
        v21 = 0;
      }

      v27 = v16;
      v28 = (v20 + 64) >> 6;
      v48 = v19;
      v49 = v18;
      v47 = v28;
      while (1)
      {
        if (v18 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v32 = v52, v31 = v22, !v52))
          {
LABEL_40:
            v18 = v49;
LABEL_41:
            outlined consume of [UUID : Conversation].Iterator._Variant(v18);

            a4 = v46;
            goto LABEL_42;
          }
        }

        else
        {
          v29 = v21;
          for (i = v22; !i; ++v29)
          {
            v21 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_44;
            }

            if (v21 >= v28)
            {
              goto LABEL_41;
            }

            i = *(v19 + 8 * v21);
          }

          v31 = (i - 1) & i;
          v32 = *(*(v18 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v32)
          {
            goto LABEL_40;
          }
        }

        v33 = v27;
        v34 = v14;
        v35 = v32;
        v36 = [v32 activity];
        v37 = [v36 activityIdentifier];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        if (v38 == a2 && v40 == a3)
        {
          break;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v34;
        v27 = v33;
        v19 = v48;
        v18 = v49;
        v28 = v47;
        v22 = v31;
        if (v42)
        {

          goto LABEL_36;
        }
      }

LABEL_36:
      outlined consume of [UUID : Conversation].Iterator._Variant(v49);

      v5 = v45;
      a4 = v46;
      v10 = v43;
      v6 = v44;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v14 = 0;
LABEL_42:
      *a4 = v14;
      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t closure #2 in StaticGroupActivityRegistry.register(activity:)(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = *a2;
  if (*a1)
  {
    v20 = [*a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v5 + 56);
    v21(v18, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);
    v21(&v30 - v17, 1, 1, v4);
  }

  if (v19)
  {
    v22 = [v19 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v21(v16, v23, 1, v4);
  v24 = *(v7 + 48);
  outlined init with copy of UUID?(v18, v9);
  outlined init with copy of UUID?(v16, &v9[v24]);
  v25 = *(v5 + 48);
  if (v25(v9, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v9, v13);
    if (v25(&v9[v24], 1, v4) != 1)
    {
      v27 = v31;
      (*(v5 + 32))(v31, &v9[v24], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v5 + 8);
      v28(v27, v4);
      outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v28(v13, v4);
      outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v26 & 1;
    }

    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v9[v24], 1, v4) != 1)
  {
LABEL_12:
    outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v26 = 0;
    return v26 & 1;
  }

  outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = 1;
  return v26 & 1;
}

void closure #3 in StaticGroupActivityRegistry.register(activity:)(void **a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*a1)
  {
    v71 = v10;
    v72 = a2;
    v70 = v12;
    v14 = one-time initialization token for default;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.default);
    v17 = v15;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v68 = v9;
    v69 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v76[0] = v22;
      *v21 = 136315394;
      v23 = [v17 UUID];
      v24 = v70;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v9;
      v28 = v27;
      (*(v71 + 8))(v24, v26);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v76);

      *(v21 + 4) = v29;
      *(v21 + 12) = 2080;
      v73 = v72;
      v74 = a3;

      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v76);

      *(v21 + 14) = v32;
      _os_log_impl(&dword_1AEE80000, v18, v19, "Beginning static activity on conversation %s: %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v33);
    tryLog<A>(_:_:function:line:)();
    if (v74 >> 60 == 15)
    {
    }

    else
    {
      v67 = v74;
      v34 = v73;
      if (one-time initialization token for generic != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
      v36 = __swift_project_value_buffer(v35, static GroupActivityMetadata.ActivityType.generic);
      outlined init with copy of GroupActivityMetadata.ActivityType(v36, v8);
      v37 = &v8[v6[5]];
      *v37 = 0;
      *(v37 + 1) = 0;
      v38 = &v8[v6[6]];
      *v38 = 0;
      *(v38 + 1) = 0;
      *&v8[v6[7]] = 0;
      v39 = v6[8];
      v40 = type metadata accessor for URL();
      v41 = *(*(v40 - 8) + 56);
      v41(&v8[v39], 1, 1, v40);
      *&v8[v6[9]] = 0;
      v8[v6[10]] = dyld_program_sdk_at_least() ^ 1;
      v41(&v8[v6[11]], 1, 1, v40);
      v42 = &v8[v6[12]];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v66 = v34;
      v43 = qword_1EDADC9F0;
      v44 = qword_1EDADCA08;
      *v42 = static SceneAssociationBehavior.default;
      *(v42 + 1) = v43;
      *(v42 + 1) = xmmword_1EDADC9F8;
      *(v42 + 4) = v44;
      v8[v6[13]] = 0;
      *&v8[v6[14]] = 2;
      v45 = one-time initialization token for none;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = static SceneAssociationBehavior.none;
      v47 = qword_1EB61B458;
      v49 = xmmword_1EB61B460;
      v48 = qword_1EB61B470;

      *v42 = v46;
      *(v42 + 1) = v47;
      *(v42 + 1) = v49;
      *(v42 + 4) = v48;
      v50 = GroupActivityMetadata.tuMetadata.getter();
      outlined destroy of AnyGroupActivity.MetadataProvider(v8, type metadata accessor for GroupActivityMetadata);
      v52 = v66;
      v51 = v67;
      outlined copy of Data._Representation(v66, v67);
      v53 = v70;
      v54 = v72;
      specialized IdentifiableGroupActivity.uuid.getter();
      v55 = objc_allocWithZone(MEMORY[0x1E69D8B38]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v57 = MEMORY[0x1B2714130](v54, a3);
      v58 = UUID._bridgeToObjectiveC()().super.isa;
      v59 = MEMORY[0x1B2714130](v54, a3);
      v60 = [v55 initWithMetadata:v50 applicationContext:isa activityIdentifier:v57 uuid:v58 staticIdentifier:v59];

      outlined consume of Data?(v52, v51);
      v61 = *(v71 + 8);
      v62 = v68;
      v61(v53, v68);
      if (one-time initialization token for conversationManagerClient != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      outlined init with copy of Transferable(static StaticGroupActivityRegistry.conversationManagerClient, &v73);
      __swift_project_boxed_opaque_existential_1(&v73, v75);
      v63 = v69;
      v64 = [v69 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of ConversationManagerClientProtocol.createStaticActivitySession(with:onConversationWithUUID:)();
      outlined consume of Data?(v66, v67);

      v61(v53, v62);
      __swift_destroy_boxed_opaque_existential_0(&v73);
    }
  }
}

uint64_t implicit closure #3 in closure #3 in StaticGroupActivityRegistry.register(activity:)@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    *a3 = v5;
    a3[1] = v7;
  }

  return result;
}

uint64_t one-time initialization function for conversationManagerClient()
{
  v0 = type metadata accessor for ConversationManagerClient();
  result = static ConversationManagerClient.shared.getter();
  qword_1EB62D008 = v0;
  unk_1EB62D010 = MEMORY[0x1E69975E0];
  static StaticGroupActivityRegistry.conversationManagerClient[0] = result;
  return result;
}

uint64_t static StaticGroupActivityRegistry.conversationManagerClient.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return outlined init with copy of Transferable(static StaticGroupActivityRegistry.conversationManagerClient, a1);
}

uint64_t static StaticGroupActivityRegistry.conversationManagerClient.setter(uint64_t *a1)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*static StaticGroupActivityRegistry.conversationManagerClient.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t key path getter for static StaticGroupActivityRegistry.conversationManagerClient : StaticGroupActivityRegistry.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return outlined init with copy of Transferable(static StaticGroupActivityRegistry.conversationManagerClient, a1);
}

uint64_t key path setter for static StaticGroupActivityRegistry.conversationManagerClient : StaticGroupActivityRegistry.Type(uint64_t *a1)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, a1);
  return swift_endAccess();
}

uint64_t StaticGroupActivityRegistry.deinit()
{

  return v0;
}

uint64_t StaticGroupActivityRegistry.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StaticGroupActivityRegistry.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 24) = Lock.init()();
  return v0;
}

uint64_t outlined init with copy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity()
{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for StaticGroupActivity(a1, a2, a3, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity);
}

{
  return instantiation function for generic protocol witness table for StaticGroupActivity(a1, a2, a3, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity);
}

uint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined destroy of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void AVPlaybackCoordinator.coordinateWithSession<A>(_:)(char *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v52 = __swift_project_value_buffer(v12, static Logger.playback);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AEE80000, v13, v14, "coordinateWithSession called", v15, 2u);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  v16 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v17 = *&a1[v16];
  if (v17)
  {
    v18 = *(v17 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);
    GroupSession.localParticipant.getter(v11);
    (*(v6 + 16))(v8, v11, v5);

    outlined destroy of Participant(v11);
    (*(*v18 + 496))(v2, v8);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    type metadata accessor for GroupSessionMessenger();

    v20 = GroupSessionMessenger.__allocating_init<A>(session:)(v19);
    v21 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    *&a1[v21] = v20;

    type metadata accessor for PlaybackSyncer(0);
    v22 = *(*a1 + 296);
    v51 = v4;
    v23 = *&a1[v22];
    GroupSession.localParticipant.getter(v11);
    (*(v6 + 16))(v8, v11, v5);
    v24 = v2;
    v25 = v23;
    outlined destroy of Participant(v11);
    v26 = PlaybackSyncer.__allocating_init(coordinator:serialQueue:localParticipantUUID:)(v24, v25, v8);
    v55.val[0] = *(v51 + 80);
    v55.val[1] = v55.val[0];
    v27 = v54;
    vst2q_f64(v27, v55);
    type metadata accessor for GroupSession.GroupSessionPlaybackSyncerLink(0, v54);

    v28 = GroupSession.GroupSessionPlaybackSyncerLink.__allocating_init(groupSession:messenger:playbackSyncer:)(a1, v20, v26);
    GroupSession.registerPlaybackSyncerLink(_:)(v28);
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    v31 = v2;
    v32 = [v30 player];
    if (v32)
    {
      v33 = v32;
      v34 = UUID.uuidString.getter();
      v35 = MEMORY[0x1B2714130](v34);

      [v33 setBackgroundPIPAuthorizationToken_];
    }

    v36 = v31;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315394;
      v54[0] = UUID.uuidString.getter();
      v54[1] = v41;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v53);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = [v30 player];
      if (v45)
      {
        v54[0] = v45;
        type metadata accessor for AVPlayer();
        v46 = String.init<A>(reflecting:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v53);

      *(v39 + 14) = v49;
      _os_log_impl(&dword_1AEE80000, v37, v38, "Setting session identifier %s on %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v40, -1, -1);
      MEMORY[0x1B2715BA0](v39, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t type metadata accessor for AVPlayer()
{
  result = lazy cache variable for type metadata for AVPlayer;
  if (!lazy cache variable for type metadata for AVPlayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVPlayer);
  }

  return result;
}

id AppCapabilities.managedConfigurationObserver.getter()
{
  v1 = OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver;
  v2 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CPManagedConfigurationObserver()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*AppCapabilities.managedConfigurationObserver.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AppCapabilities.managedConfigurationObserver.getter();
  return AppCapabilities.managedConfigurationObserver.modify;
}

void AppCapabilities.managedConfigurationObserver.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver) = v2;
}

uint64_t AppCapabilities.supportsSharePlay.getter()
{
  v1 = type metadata accessor for Entitlement();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay;
  v6 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay);
  if (v6 == 2)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69974B8], v1);
    LOBYTE(v6) = _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSb_Tt0g5(v4);
    (*(v2 + 8))(v4, v1);
    *(v0 + v5) = v6 & 1;
  }

  return v6 & 1;
}

uint64_t AppCapabilities.supportsStartFromApp.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp;
  v3 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))())
    {
      v5 = (*((*v4 & *v1) + 0x70))();
      LOBYTE(v3) = dispatch thunk of CPManagedConfigurationObserver.allowed.getter();
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

id AppCapabilities.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver;
  *&v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver] = 0;
  v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay] = 2;
  v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp] = 2;
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (v11)
  {
    *&v4[OBJC_IVAR___GPAppCapabilities_task] = v11;
    v21.receiver = v4;
    v21.super_class = type metadata accessor for AppCapabilities();
    return objc_msgSendSuper2(&v21, sel_init);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *token.val = a1;
      *v16 = 136315138;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Failed to create SecTask with auditToken %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    type metadata accessor for AppCapabilities();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id AppCapabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppCapabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCapabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Conversation.__allocating_init(sessionContainer:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = (*(v1 + 384))(v8, v6, ([a1 capabilities] >> 3) & 1);

  Conversation.update(with:)(a1);

  return v11;
}

Swift::Int Conversation.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *key path getter for Conversation.state : Conversation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for Conversation.state : Conversation(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for Conversation.$state : Conversation(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities12ConversationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities12ConversationC5StateO_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t key path setter for Conversation.id : Conversation(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v12 + v13, v11, v8);
  return swift_endAccess();
}

uint64_t Conversation.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t key path getter for Conversation.activeParticipants : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.$activeParticipants : Conversation(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t key path getter for Conversation.localParticipantIdentifier : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.localParticipantIdentifier : Conversation(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.localParticipantIdentifier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Conversation.$localParticipantIdentifier : Conversation(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t key path getter for Conversation.activitySessions : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.activeParticipants : Conversation(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.activeParticipants.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path setter for Conversation.$activitySessions : Conversation(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D7SessionCyAF03AnyD8ActivityVGG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D7SessionCyAF03AnyD8ActivityVGG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Conversation.__allocating_init(identifier:groupUUID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Conversation.init(identifier:groupUUID:)(a1, a2);
  return v4;
}

uint64_t Conversation.init(identifier:groupUUID:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v25 - v4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  LOBYTE(v32) = 0;
  Published.init(initialValue:)();
  (*(v13 + 32))(v2 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v32 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v9 + 32))(v2 + v17, v11, v8);
  v18 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v32 = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(v2 + v18, v7, v26);
  v19 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v32 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
  v20 = v27;
  Published.init(initialValue:)();
  (*(v28 + 32))(v2 + v19, v20, v29);
  v21 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 32);
  v23(v2 + v21, v30, v22);
  v23(v2 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v31, v22);
  *(v2 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = 1;
  return v2;
}

uint64_t Conversation.__allocating_init(identifier:groupUUID:isEligibleForGroupSessions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(a1, a2, v3);
  return v6;
}

uint64_t Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  (*(v14 + 32))(v3 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v33 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v3 + v18, v12, v9);
  v19 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v33 = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v3 + v19, v8, v26);
  v20 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v33 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
  v21 = v27;
  Published.init(initialValue:)();
  (*(v28 + 32))(v3 + v20, v21, v29);
  v22 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v23 = type metadata accessor for UUID();
  v24 = *(*(v23 - 8) + 32);
  v24(v3 + v22, v30, v23);
  v24(v3 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v31, v23);
  *(v3 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = v32;
  return v3;
}

uint64_t Conversation.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v2);
  v6 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t Conversation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v2);
  v6 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

uint64_t Conversation.addActivitySession(newSession:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = static Published.subscript.modify();
  v2 = v1;

  MEMORY[0x1B27142A0](v3);
  if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v0(&v5, 0);
}

unint64_t Conversation.State.init(tuConversationState:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t Conversation.update(with:)(void *a1)
{
  [a1 state];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  [a1 localParticipantIdentifier];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized InternalGroupSessionProvider.groupSessions(for:)(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type Conversation.State and conformance Conversation.State()
{
  result = lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State;
  if (!lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t URLActivity.webpageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLActivity.webpageURL.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t URLActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v4 = __swift_project_value_buffer(v3, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v4, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
  v5 = type metadata accessor for GroupActivityMetadata(0);
  v6 = (a1 + v5[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v5[6]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v5[7]) = 0;
  v8 = v5[8];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v16 = *(v10 + 56);
  v16(a1 + v8, 1, 1, v9);
  *(a1 + v5[9]) = 0;
  *(a1 + v5[10]) = dyld_program_sdk_at_least() ^ 1;
  v16(a1 + v5[11], 1, 1, v9);
  v11 = v5[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = a1 + v11;
  v13 = qword_1EDADC9F0;
  v14 = qword_1EDADCA08;
  *v12 = static SceneAssociationBehavior.default;
  *(v12 + 8) = v13;
  *(v12 + 16) = xmmword_1EDADC9F8;
  *(v12 + 32) = v14;
  *(a1 + v5[13]) = 0;
  *(a1 + v5[14]) = 2;

  outlined destroy of URL?(a1 + v8);
  (*(v10 + 16))(a1 + v8, v1, v9);

  return (v16)(a1 + v8, 0, 1, v9);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URLActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5565676170626577 && a2 == 0xEA00000000004C52)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLActivity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t URLActivity.init(webpageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance URLActivity(uint64_t a1)
{
  URLActivity.metadata.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t URLActivity.init(from:)(void *a1)
{
  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  *v4 = type metadata accessor for URLActivity(0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance URLActivity(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t URLActivity.init(activity:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AnyGroupActivity(0);
  outlined init with copy of GroupActivityMetadata.ActivityType(&a1[*(v16 + 20)], v12, type metadata accessor for AnyGroupActivity.MetadataProvider);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v12, type metadata accessor for AnyGroupActivity.MetadataProvider);
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v19 = v13;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
    v20 = type metadata accessor for AnyGroupActivity;
    v21 = a1;
    return _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v21, v20);
  }

  outlined init with take of GroupActivityMetadata(v12, v15);
  outlined init with copy of URL?(&v15[*(v13 + 32)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5);
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v24 = v6;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B08], v22);
    swift_willThrow();
    _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(a1, type metadata accessor for AnyGroupActivity);
    v20 = type metadata accessor for GroupActivityMetadata;
    v21 = v15;
    return _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v21, v20);
  }

  _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(a1, type metadata accessor for AnyGroupActivity);
  _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v15, type metadata accessor for GroupActivityMetadata);
  v26 = *(v7 + 32);
  v26(v9, v5, v6);
  return (v26)(v28, v9, v6);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for URLActivity(uint64_t a1)
{
  result = type metadata singleton initialization cache for URLActivity;
  if (!type metadata singleton initialization cache for URLActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for URLActivity(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URLActivity and conformance URLActivity, type metadata accessor for URLActivity, &protocol conformance descriptor for URLActivity);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URLActivity and conformance URLActivity, type metadata accessor for URLActivity, &protocol conformance descriptor for URLActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for URLActivity(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1B27141F0](v3, v4);
}

GroupActivities::Subsystem_optional __swiftcall Subsystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_Subsystem_runtimeIssues;
  }

  else
  {
    v4.value = GroupActivities_Subsystem_unknownDefault;
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

unint64_t Subsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Subsystem(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "AttachmentLedger";
  }

  else
  {
    v4 = "com.apple.calls.copresence";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "com.apple.calls.copresence";
  }

  else
  {
    v7 = "AttachmentLedger";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Subsystem(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Subsystem(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.calls.copresence";
  }

  else
  {
    v3 = "AttachmentLedger";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for copmanager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.copmanager);
  __swift_project_value_buffer(v0, static Logger.copmanager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1)
{
  return one-time initialization function for runtimeIssues(a1, static Logger.runtimeIssues);
}

{
  return one-time initialization function for runtimeIssues(a1, static Log.runtimeIssues);
}

uint64_t one-time initialization function for extensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.extensionController);
  __swift_project_value_buffer(v0, static Log.extensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProviderObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProviderObserver);
  __swift_project_value_buffer(v0, static Log.groupSessionProviderObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProvider);
  __swift_project_value_buffer(v0, static Log.groupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for ckShareGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for personalGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personalGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.personalGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for shareChangeObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.shareChangeObserver);
  __swift_project_value_buffer(v0, static Log.shareChangeObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for reliableBroadcast()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.reliableBroadcast);
  __swift_project_value_buffer(v0, static Log.reliableBroadcast);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for systemCoordinator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.systemCoordinator);
  __swift_project_value_buffer(v0, static Log.systemCoordinator);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupActivityAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupActivityAssociation);
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for nearbyActivityAdvertiser()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  __swift_project_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.systemCoordinator.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logger.sessionUI.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t static GroupActivityAdvertisement.Destinations.all.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GroupActivityAdvertisement.Destinations(255, a1, a2, a4);
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v4 = xmmword_1AF00CA60;
  v4[1] = xmmword_1AF0196A0;
  type metadata accessor for Array();
  swift_getWitnessTable();
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for SetAlgebra.init() in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Int and conformance Int();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityAdvertisement<A>.Destinations@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupActivityAdvertisement.Destinations.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GroupActivityAdvertisement<A>.Destinations@<X0>(uint64_t *a1@<X8>)
{
  result = GroupActivityAdvertisement.Destinations.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t GroupActivityAdvertisement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for GroupActivityAdvertisement.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupActivityAdvertisement.__allocating_init(activity:destinations:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  GroupActivityAdvertisement.init(activity:destinations:)(a1, a2);
  return v4;
}

char *GroupActivityAdvertisement.init(activity:destinations:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v2 + 2) = static ConversationManager.shared;

  UUID.init()();
  (*(*(*(v4 + 80) - 8) + 32))(&v2[*(*v2 + 112)], a1);
  *&v2[*(*v2 + 120)] = v5;
  return v2;
}

uint64_t GroupActivityAdvertisement.advertise()()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v1[4] = *(v2 + 80);
  v3 = type metadata accessor for Optional();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.advertise(), 0, 0);
}

{
  v22 = v0;
  if (one-time initialization token for nearbyActivityAdvertiser != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static Log.nearbyActivityAdvertiser);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v19 = v0[5];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = *(v6 - 8);
    (*(v10 + 16))(v4, v7 + *(*v7 + 112), v6);
    (*(v10 + 56))(v4, 0, 1, v6);
    v11 = >> prefix<A>(_:)(v4, v6);
    v13 = v12;
    (*(v5 + 8))(v4, v19);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Advertising activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v15 = v0[2];
  v16 = direct field offset for GroupActivityAdvertisement.id;
  v20 = (*(**(v15 + 16) + 312) + **(**(v15 + 16) + 312));
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = GroupActivityAdvertisement.advertise();

  return v20(v15 + v16);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.advertise(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[10];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Could not start to advertise the given activity: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v10 = v0[10];
  v12 = v0[3];
  v11 = v0[4];

  type metadata accessor for GroupActivityAdvertisement.Errors(0, v11, *(v12 + 88), v13);
  swift_getWitnessTable();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t GroupActivityAdvertisement.stopAdvertisement()()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v1[4] = *(v2 + 80);
  v3 = type metadata accessor for Optional();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.stopAdvertisement(), 0, 0);
}

{
  v22 = v0;
  if (one-time initialization token for nearbyActivityAdvertiser != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v1, static Log.nearbyActivityAdvertiser);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v19 = v0[5];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = *(v6 - 8);
    (*(v10 + 16))(v4, v7 + *(*v7 + 112), v6);
    (*(v10 + 56))(v4, 0, 1, v6);
    v11 = >> prefix<A>(_:)(v4, v6);
    v13 = v12;
    (*(v5 + 8))(v4, v19);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Stopping advertisement for activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v15 = v0[2];
  v16 = direct field offset for GroupActivityAdvertisement.id;
  v20 = (*(**(v15 + 16) + 320) + **(**(v15 + 16) + 320));
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = GroupActivityAdvertisement.stopAdvertisement();

  return v20(v15 + v16);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.stopAdvertisement(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[10];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Could not stop to advertise the given activity: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v10 = v0[10];
  v12 = v0[3];
  v11 = v0[4];

  type metadata accessor for GroupActivityAdvertisement.Errors(0, v11, *(v12 + 88), v13);
  swift_getWitnessTable();
  swift_allocError();
  *v14 = 1;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t *GroupActivityAdvertisement.deinit()
{
  v1 = *v0;

  v2 = direct field offset for GroupActivityAdvertisement.id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  return v0;
}

uint64_t GroupActivityAdvertisement.__deallocating_deinit()
{
  GroupActivityAdvertisement.deinit();

  return swift_deallocClassInstance();
}

Swift::Int GroupActivityAdvertisement.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAdvertisement<A>.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  GroupActivityAdvertisement.Errors.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for GroupActivityAdvertisement(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of GroupActivityAdvertisement.advertise()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of GroupActivityAdvertisement.stopAdvertisement()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v4();
}

uint64_t type metadata instantiation function for GroupActivityAdvertisement.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for UTType();
  __swift_project_value_buffer(v8, static UTType._groupActivity);
  v9 = UTType.identifier.getter();
  v10 = MEMORY[0x1B2714130](v9);

  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  [a2 loadItemForTypeIdentifier:v10 options:0 completionHandler:v13];
  _Block_release(v13);
}

void closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd, &_sSo14NSSecureCoding_pMR);
    if (swift_dynamicCast())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v13 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v14 = one-time initialization token for default;
      v15 = v13;
      v16 = v15;
      if (v14 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v16;
        *v21 = v13;
        v22 = v16;
        _os_log_impl(&dword_1AEE80000, v18, v19, "Unarchiving activity from item provider data: %@", v20, 0xCu);
        outlined destroy of NSObject?(v21);
        MEMORY[0x1B2715BA0](v21, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }

      outlined consume of Data._Representation(v26, v27);

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        swift_unknownObjectRetain();
      }

      v2 = one-time initialization token for default;
      v3 = v13;
      if (v2 != -1)
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
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v3;
        *v8 = v13;
        v9 = v3;
        _os_log_impl(&dword_1AEE80000, v5, v6, "Received activity object from item provider: %@", v7, 0xCu);
        outlined destroy of NSObject?(v8);
        MEMORY[0x1B2715BA0](v8, -1, -1);
        MEMORY[0x1B2715BA0](v7, -1, -1);
      }

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v23 = [v13 sanitizedCopy];

    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();

LABEL_24:
      swift_unknownObjectRelease();

      return;
    }

LABEL_23:
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    *v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_24;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    v11 = v10;
    a2 = 0;
    *v11 = 1;
  }

  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
}

void partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);

  closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(a1, a2);
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError()
{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t *a2)
{
  v47 = a2;
  v43 = type metadata accessor for UUID();
  v3 = MEMORY[0x1EEE9AC00](v43);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v44 = a1;
  v45 = &v37 - v9;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v41 = (v8 + 8);

  v15 = 0;
  v42 = a1 + 64;
  v39 = v7;
  v40 = v14;
  while (v13)
  {
    v29 = v45;
    v30 = &unk_1E7A4B000;
LABEL_13:
    v32 = *(*(v44 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    v33 = [v32 v30[493]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = *v47;
    if (*(*v47 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v36 & 1) != 0))
    {
      v23 = v30;
      v22 = *(*(v34 + 56) + 8 * v35);
    }

    else
    {
      v16 = v32;
      v17 = [v16 v30[493]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v16 groupUUID];
      v19 = v7;
      v20 = v38;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = ([v16 capabilities] >> 3) & 1;
      type metadata accessor for Conversation(0);
      swift_allocObject();
      v22 = Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(v19, v20, v21);

      Conversation.update(with:)(v16);

      v23 = &unk_1E7A4B000;
    }

    v13 &= v13 - 1;
    v46 = *v41;
    v24 = v29;
    v25 = v43;
    v46(v24, v43);
    Conversation.update(with:)(v32);
    v26 = [v32 v23[493]];
    v7 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v27;
    *v27 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v7, isUniquelyReferenced_nonNull_native);
    v46(v7, v25);
    *v27 = v48;

    v10 = v42;
    v14 = v40;
  }

  v29 = v45;
  v30 = &unk_1E7A4B000;
  while (1)
  {
    v31 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v31 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v31);
    ++v15;
    if (v13)
    {
      v15 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ConversationManager.__allocating_init(client:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ConversationManager.init(client:)(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

double static ConversationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ConversationManager.conversationsByUUID.getter()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 24);
  }

  else
  {
    outlined init with copy of Transferable(v0 + 96, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = dispatch thunk of ActivitySessionContainerProvider.activitySessions.getter();
    v3 = specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(v4);

    __swift_destroy_boxed_opaque_existential_0(v7);
    *(v0 + 24) = v3;
  }

  os_unfair_lock_unlock((v0 + 16));
  if (!v2)
  {
    outlined init with copy of Transferable(v0 + 96, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
    v5 = Publisher<>.sink(receiveValue:)();

    __swift_destroy_boxed_opaque_existential_0(v7);
    *(v1 + 136) = v5;
  }

  return v3;
}

uint64_t closure #2 in ConversationManager.conversationsByUUID.getter(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v3 = specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(v2);

  ConversationManager.conversationsByUUID.setter(v3);
}

uint64_t ConversationManager.conversationsByUUID.setter(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v2 + 16));

  *(v2 + 24) = a1;
  os_unfair_lock_unlock((v2 + 16));
  v4 = ConversationManager.conversationsByUUID.getter();
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v4 + 16), 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v18, (v7 + 32), v6, v5);
  outlined consume of [UUID : Conversation].Iterator._Variant(v18);
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:

    v7 = MEMORY[0x1E69E7CC0];
  }

  v18 = MEMORY[0x1E69E7CC0];
  if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
  {
LABEL_22:
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(v7 + 16);
    if (v9)
    {
LABEL_8:
      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1B2714B30](v10, v7);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v14 = v18;
            goto LABEL_24;
          }
        }

        else
        {
          if (v10 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v11 = *(v7 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_19;
          }
        }

        v13 = (*(*v11 + 160))(&v17);
        if (v17 == 3 && (*(*v11 + 280))(v13))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v10;
        if (v12 == v9)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v15 = specialized Sequence.flatMap<A>(_:)(v14);

  ConversationManager._groupSessions.getter();
  v18 = v15;
  CurrentValueSubject.send(_:)();
}

void *ConversationManager.conversations.getter()
{
  v0 = ConversationManager.conversationsByUUID.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v0 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);
  outlined consume of [UUID : Conversation].Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ConversationManager.suggest(activity:)()
{
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

unint64_t ConversationManager.groupSessions(_:)(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1B2714B30](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v6 = v10;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        (*(*v4 + 160))(&v9);
        if (v9 == 3)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v7 = specialized Sequence.flatMap<A>(_:)(v6);

  return v7;
}

uint64_t ConversationManager._groupSessions.getter()
{
  if (!v0[4])
  {
    v2 = v0;
    v3 = ConversationManager.conversationsByUUID.getter();
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v3 + 16), 0);
      v7 = specialized Sequence._copySequenceContents(initializing:)(&v10, v6 + 4, v5, v4);
      outlined consume of [UUID : Conversation].Iterator._Variant(v10);
      if (v7 == v5)
      {
LABEL_7:
        v8 = (*(*v2 + 168))(v6);

        v10 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
        swift_allocObject();
        v1 = CurrentValueSubject.init(_:)();
        v2[4] = v1;

        goto LABEL_8;
      }

      __break(1u);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v1 = v0[4];
LABEL_8:

  return v1;
}

uint64_t ConversationManager.groupSessions.getter()
{
  ConversationManager._groupSessions.getter();
  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t ConversationManager.groupSessionsPublisher.getter()
{
  v0 = ConversationManager._groupSessions.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t ConversationManager.topicManager.getter()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = type metadata accessor for TopicManager(0);
    v3 = v0[15];
    v4 = v0[16];
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
    v10 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPFeatureFlags, 0x1E6997708);
    v1 = specialized TopicManager.__allocating_init(provider:featureFlags:)(v8, v9, v2, v3, v10, *(v4 + 8));
    (*(v6 + 8))(v8, v3);
    v0[5] = v1;
  }

  return v1;
}

uint64_t (*ConversationManager.topicManager.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = ConversationManager.topicManager.getter();
  return ConversationManager.topicManager.modify;
}

uint64_t ConversationManager.audioSessionAssertionManager.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 48));
  outlined init with take of Transferable(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t (*ConversationManager.groupSessionTable.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = ConversationManager.groupSessionTable.getter();
  return ConversationManager.groupSessionTable.modify;
}

uint64_t ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](ConversationManager.prepareForActivation(options:), 0, 0);
}

uint64_t ConversationManager.prepareForActivation(options:)()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = ConversationManager.prepareForActivation(options:);
  v4 = v0[11];

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0xD00000000000001ELL, 0x80000001AF01DEE0, partial apply for closure #1 in ConversationManager.prepareForActivation(options:), v2, &type metadata for GroupActivityActivationResult);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v37 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = v27 - v6;
  v8 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  outlined init with copy of Transferable(a2 + 96, v39);
  v35 = v41;
  v36 = v40;
  v34 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v15 = 0;
  if (a3[1] != 1)
  {
    v16 = a3[6];
    v17 = a3[4];
    v18 = a3[5];
    v28 = a3[7];
    v29 = v18;
    v32 = v17;
    v33 = v16;
    v19 = a3[2];
    v30 = *a3;
    v31 = v19;
    v20 = *(a3 + 64);
    v21 = *(v9 + 104);
    v42 = *(a3 + 65);
    v21(v12, **(&unk_1E7A4BBF0 + v20), v8);
    v27[1] = v42;
    (*(v9 + 32))(v14, v12, v8);
    v22 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());

    v15 = AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
  }

  v23 = v38;
  (*(v5 + 16))(v7, v37, v38);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  (*(v5 + 32))(v25 + v24, v7, v23);
  dispatch thunk of ConversationManagerClientProtocol.prepareForGroupActivity(overrides:completionHandler:)();

  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(char a1, void *a2)
{
  if (a2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Error preparing activity for activation: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v13 = 2;
  }

  else
  {
    v13 = (a1 & 1) == 0;
  }

  LOBYTE(v15) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ConversationManager.begin(activity:request:onConversationWithUUID:), 0, 0);
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)()
{
  v46 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  outlined init with copy of UUID?(v0[10], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = ConversationManager.activeConversation.getter();
    if (v5)
    {
      (*(*v5 + 136))(v5);

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v10 = v0[14];
    v11 = v0[12];
    (*(v0[15] + 56))(v0[13], v6, 1, v10);
    if (v4(v11, 1, v10) != 1)
    {
      outlined destroy of NSObject?(v0[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    (*(v8 + 32))(v9, v0[12], v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v13 = v0[13];
  v12 = v0[14];
  if (v4(v13, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v14 = v0[9];
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136315138;
      v0[7] = v19;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
      v22 = v19;
      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v45);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1AEE80000, v17, v18, "Dropping activity as there is no active conversation: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B2715BA0](v21, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    v26 = v0[1];

    return v26(0);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v13, v12);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v28 = v0[9];
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.default);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[9];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v0[8] = v33;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
      v36 = v33;
      v37 = String.init<A>(reflecting:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v45);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1AEE80000, v31, v32, "Activating activity through current session: %s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B2715BA0](v35, -1, -1);
      MEMORY[0x1B2715BA0](v34, -1, -1);
    }

    outlined init with copy of Transferable(v0[11] + 96, (v0 + 2));
    v40 = v0[5];
    v41 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v40);
    v42 = swift_task_alloc();
    v0[17] = v42;
    *v42 = v0;
    v42[1] = ConversationManager.begin(activity:request:onConversationWithUUID:);
    v43 = v0[16];
    v44 = v0[9];

    return MEMORY[0x1EEDF8BF0](v44, v43, v40, v41);
  }
}

{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  (*(v0[15] + 8))(v0[16], v0[14]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1(0);
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = ConversationManager.begin(activity:request:onConversationWithUUID:);
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v5 = ConversationManager.begin(activity:request:onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t ConversationManager.activeConversation.getter()
{
  v0 = ConversationManager.conversationsByUUID.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v0 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v3 + 32), v2, v1);
    result = outlined consume of [UUID : Conversation].Iterator._Variant(v10);
    if (v4 != v2)
    {
      __break(1u);
      return result;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_20;
  }

  do
  {
    v7 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2714B30](v7, v3);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      (*(*v8 + 160))(&v10);
      if (v10 == 3)
      {
        goto LABEL_21;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_20;
      }
    }

    if (v7 >= *(v3 + 16))
    {
      goto LABEL_18;
    }

    v8 = *(v3 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  while (v6);
LABEL_20:
  v8 = 0;
LABEL_21:

  return v8;
}

uint64_t ConversationManager.advertiseGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManager.advertiseGroupActivity(_:), 0, 0);
}

uint64_t ConversationManager.advertiseGroupActivity(_:)()
{
  outlined init with copy of Transferable(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = ConversationManager.advertiseGroupActivity(_:);
  v4 = v0[8];

  return MEMORY[0x1EEDF8BF8](v4, v1, v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = ConversationManager.advertiseGroupActivity(_:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Error advertising activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t ConversationManager.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManager.stopAdvertisingGroupActivity(_:), 0, 0);
}

uint64_t ConversationManager.stopAdvertisingGroupActivity(_:)()
{
  outlined init with copy of Transferable(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = ConversationManager.stopAdvertisingGroupActivity(_:);
  v4 = v0[8];

  return MEMORY[0x1EEDF8C10](v4, v1, v2);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = ConversationManager.stopAdvertisingGroupActivity(_:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Error stopping advertising activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t ConversationManager.init(client:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ConversationManager.init(client:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t closure #1 in closure #2 in ConversationManager.updateConversations(conversationsByGroupUUID:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t ConversationManager.deinit()
{
  outlined destroy of NSObject?(v0 + 24, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMd, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMR);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  return v0;
}

uint64_t ConversationManager.__deallocating_deinit()
{
  outlined destroy of NSObject?(v0 + 24, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMd, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMR);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ConversationManager@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConversationManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for InternalGroupSessionProvider.prepareForActivation(options:) in conformance ConversationManager(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 296) + **(*v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t protocol witness for InternalGroupSessionProvider.end(activity:) in conformance ConversationManager(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2714B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2714B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized ConversationManager.init(client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static AVAudioSessionAssertionManager.shared;
  *(a2 + 72) = type metadata accessor for AVAudioSessionAssertionManager();
  *(a2 + 80) = &protocol witness table for AVAudioSessionAssertionManager;
  *(a2 + 48) = v8;
  *(a2 + 88) = 0;
  *(a2 + 136) = 0;
  outlined init with take of Transferable(&v10, a2 + 96);

  return a2;
}

uint64_t dispatch thunk of ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ConversationManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 296) + **(*v3 + 296));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ConversationManager.end(activity:)(uint64_t a1)
{
  v6 = (*(*v1 + 304) + **(*v1 + 304));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t dispatch thunk of ConversationManager.advertiseGroupActivity(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 312) + **(*v1 + 312));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t dispatch thunk of ConversationManager.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);

  return closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(a1, a2);
}

uint64_t specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v64 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  if (one-time initialization token for default != -1)
  {
LABEL_31:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v15 = os_log_type_enabled(v13, v14);
  v63 = v2;
  v59 = v11;
  v55 = v7;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67 = v7;
    *v16 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v17 = Dictionary.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v67);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v13, v14, "ConversationManager received event conversationsByGroupUUID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);
  }

  v67 = MEMORY[0x1E69E7CC8];
  v61 = a1;
  specialized Sequence.forEach(_:)(a1, &v67);
  v20 = v67;
  v2 = v67 + 64;
  v21 = 1 << *(v67 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  a1 = v22 & *(v67 + 64);
  v23 = (v21 + 63) >> 6;
  v65 = v64 + 16;
  v62 = v64 + 32;
  v24 = (v64 + 8);

  v11 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  v57 = v23;
  v58 = v2;
LABEL_7:
  v25 = v11;
  if (!a1)
  {
    goto LABEL_9;
  }

  do
  {
    v11 = v25;
LABEL_12:
    v26 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v7 = v63;
    v27 = v64;
    v28 = *(v64 + 72);
    v29 = v60;
    (*(v64 + 16))(v60, *(v20 + 48) + v28 * (v26 | (v11 << 6)), v63);
    v30 = *(v27 + 32);
    v31 = v59;
    v32 = v30(v59, v29, v7);
    MEMORY[0x1EEE9AC00](v32);
    *(&v53 - 2) = v31;
    specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in ConversationManager.updateConversations(conversationsByGroupUUID:), (&v53 - 4), v61);
    if ((v33 & 1) == 0)
    {
      v30(v54, v31, v7);
      v34 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v34;
      v36 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1);
        v36 = v30;
        v34 = v66;
      }

      v7 = v28;
      v23 = v57;
      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v56 = v36;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
        v39 = v38 + 1;
        v36 = v56;
        v34 = v66;
      }

      *(v34 + 2) = v39;
      v40 = *(v64 + 80);
      v56 = v34;
      (v36)(&v34[((v40 + 32) & ~v40) + v38 * v7], v54, v63);
      v2 = v58;
      goto LABEL_7;
    }

    (*v24)(v31, v7);
    v25 = v11;
    v23 = v57;
    v2 = v58;
  }

  while (a1);
  while (1)
  {
LABEL_9:
    v11 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v23)
    {
      break;
    }

    a1 = *(v2 + 8 * v11);
    ++v25;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  v41 = *(v56 + 2);
  if (v41)
  {
    v42 = v63;
    v43 = &v56[(*(v64 + 80) + 32) & ~*(v64 + 80)];
    v44 = *(v64 + 72);
    v45 = *(v64 + 16);
    v46 = v55;
    v45(v55, v43, v63);
    while (1)
    {
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      if (v48)
      {
        v49 = v47;
        v20 = v67;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v66 = v20;
        if (!v50)
        {
          specialized _NativeDictionary.copy()();
          v20 = v66;
        }

        v51 = *v24;
        (*v24)(*(v20 + 48) + v49 * v44, v42);

        specialized _NativeDictionary._delete(at:)();
        v51(v46, v42);
        v67 = v20;
      }

      else
      {
        (*v24)(v46, v42);
      }

      v43 += v44;
      if (!--v41)
      {
        break;
      }

      v45(v46, v43, v42);
    }
  }

  return v20;
}

Swift::Void __swiftcall GroupSession.setGroupActivityAssociations(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v12[2]._rawValue = v2;
  v12[3]._rawValue = a1._rawValue;
  aBlock[4] = partial apply for closure #1 in GroupSession.setGroupActivityAssociations(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall GroupSession.associateScene(persistentIdentifier:)(Swift::String persistentIdentifier)
{
  object = persistentIdentifier._object;
  countAndFlagsBits = persistentIdentifier._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v12);
    *(v5 + 12) = 2080;
    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v12);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_1AEE80000, oslog, v4, "Application called unsupported associateScene method with sceneID:%s on %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall GroupSession.disassociateScene()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;

    v4 = GroupSession.description.getter();
    v6 = v5;

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Application called unsupported disassociateScene method on %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in GroupSession.setGroupActivityAssociations(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:);
  *(v8 + 24) = v7;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for GroupActivityAssociation();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setGroupActivityAssociations_];
}

void SystemCoordinator.setDefaultSpatialTemplatePreference(_:for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SystemCoordinator.setDefaultSpatialTemplatePreference(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5 & 0xFF01, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v12;
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

Swift::Void __swiftcall SystemCoordinator.clearDefaultSpatialTemplatePreference(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in SystemCoordinator.clearDefaultSpatialTemplatePreference(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v6);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

void SystemCoordinator.setDefaultSpatialTemplateRole(_:for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SystemCoordinator.setDefaultSpatialTemplateRole(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Transferable(a4, v7);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v7, a2, a3);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

Swift::Void __swiftcall SystemCoordinator.clearDefaultSpatialTemplateRole(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in SystemCoordinator.clearDefaultSpatialTemplateRole(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v6, a2, a3);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t protocol witness for AssetDownloadCoordinator.result() in conformance AssetDownloadCoordinator(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69946C8] + MEMORY[0x1E69946C8]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v5(a1);
}

uint64_t protocol witness for AssetDownloadCoordinator.receive(signal:) in conformance AssetDownloadCoordinator(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69946D0] + MEMORY[0x1E69946D0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v5(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.assetSkeleton.getter in conformance AssetUploadCoordinator(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69946B0] + MEMORY[0x1E69946B0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v5(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.signals.getter in conformance AssetUploadCoordinator(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69946C0] + MEMORY[0x1E69946C0]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v5(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.result() in conformance AssetUploadCoordinator(uint64_t a1)
{
  v5 = (*MEMORY[0x1E69946B8] + MEMORY[0x1E69946B8]);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v5(a1);
}

uint64_t AssetManager.process(request:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = AssetManager.process(request:);

  return MEMORY[0x1EEDF4010](a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = AssetManager.process(request:);

  return MEMORY[0x1EEDF4018](a2);
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](AssetManager.process(request:), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](AssetManager.process(request:), 0, 0);
  }
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF4000](a1, a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AssetManager.process(request:) in conformance AssetManager;

  return MEMORY[0x1EEDF4010](a2);
}

{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF4008](a1, a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AssetManager.process(request:) in conformance AssetManager;

  return MEMORY[0x1EEDF4018](a2);
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AssetManager.process(request:) in conformance AssetManager, 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AssetManager.process(request:) in conformance AssetManager, 0, 0);
  }
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for AssetUploadCoordinator();
  v2[4] = &protocol witness table for AssetUploadCoordinator;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for AssetDownloadCoordinator();
  v2[4] = &protocol witness table for AssetDownloadCoordinator;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t dispatch thunk of AssetManager.process(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

void GroupActivityMetadata.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v95 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v82 - v13;
  v15 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v15, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v83, a2, type metadata accessor for GroupActivityMetadata.ActivityType);
  v18 = type metadata accessor for GroupActivityMetadata(0);
  v84 = v18[7];
  *(a2 + v84) = 0;
  v19 = v18[8];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v23 = v21 + 56;
  v88 = v19;
  v22(a2 + v19, 1, 1, v20);
  v87 = v18[9];
  *(a2 + v87) = 0;
  dyld_program_sdk_at_least();
  v89 = v18[11];
  v90 = v22;
  v91 = v20;
  v96 = v23;
  v22(a2 + v89, 1, 1, v20);
  v24 = a2 + v18[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = qword_1EDADC9F0;
  v26 = qword_1EDADCA08;
  *v24 = static SceneAssociationBehavior.default;
  *(v24 + 8) = v25;
  *(v24 + 16) = xmmword_1EDADC9F8;
  *(v24 + 32) = v26;
  v93 = v18[13];
  *(a2 + v93) = 0;
  v94 = v18[14];
  *(a2 + v94) = 2;

  v27 = [v97 context];
  v28 = [v27 typedIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)();
  v29 = v85;
  outlined init with take of GroupActivityDescription?(v11, v85);
  v30 = type metadata accessor for GroupActivityDescription();
  v31 = *(v30 - 8);
  v32 = 1;
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    (*(v31 + 32))(v14, v29, v30);
    v32 = 0;
  }

  (*(v16 + 56))(v14, v32, 1, v15);
  v33 = *(v16 + 48);
  if (v33(v14, 1, v15) == 1)
  {
    v34 = v86;
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v83, v86, type metadata accessor for GroupActivityMetadata.ActivityType);
    v35 = v33(v14, 1, v15);
    v36 = v97;
    v37 = v90;
    if (v35 != 1)
    {
      outlined destroy of NSObject?(v14, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
    }
  }

  else
  {
    v34 = v86;
    outlined init with take of GroupActivityMetadata.ActivityType(v14, v86);
    v36 = v97;
    v37 = v90;
  }

  outlined assign with take of GroupActivityMetadata.ActivityType(v34, a2);
  v38 = [v36 title];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v43 = v91;
  v44 = (a2 + v18[5]);
  *v44 = v40;
  v44[1] = v42;
  v45 = [v36 subTitle];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v50 = (a2 + v18[6]);
  *v50 = v47;
  v50[1] = v49;
  v51 = [v36 imageData];
  if (v51)
  {
    v52 = v51;
    v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v56 = specialized static CGImageRef.thumbnailImage(from:)();
    outlined consume of Data._Representation(v53, v55);
    *(a2 + v84) = v56;
  }

  v57 = [v36 fallbackURL];
  if (v57)
  {
    v58 = v92;
    v59 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v58 = v92;
  }

  v61 = 1;
  v37(v58, v60, 1, v43);
  v62 = v18[10];
  outlined assign with take of URL?(v58, a2 + v88);
  v63 = [v36 preferredBroadcastingAttributes];
  *(a2 + v87) = v63;
  *(a2 + v62) = [v36 supportsContinuationOnTV];
  v64 = [v36 invitationURL];
  v65 = v95;
  if (v64)
  {
    v66 = v64;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = 0;
  }

  v37(v65, v61, 1, v43);
  outlined assign with take of URL?(v65, a2 + v89);
  v67 = [v36 sceneAssociationBehavior];
  v68 = [v67 shouldAssociateScene];
  v69 = [v67 targetContentIdentifier];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  v74 = [v67 preferredSceneSessionRole];
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {

    v76 = 0;
    v78 = 0;
  }

  *v24 = v68;
  *(v24 + 8) = v71;
  *(v24 + 16) = v73;
  *(v24 + 24) = v76;
  *(v24 + 32) = v78;
  v79 = v97;
  v80 = [v97 supportsActivityPreviews];
  *(a2 + v93) = v80;
  v81 = [v79 lifetimePolicy];

  *(a2 + v94) = v81;
}

uint64_t GroupActivityMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v3, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
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
}

id GroupActivityMetadata.tuMetadata.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupActivityMetadata.infoDictionaryActivityType.getter(v10);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v1, v14, type metadata accessor for GroupActivityMetadata.ActivityType);
    if (v15(v10, 1, v11) != 1)
    {
      outlined destroy of NSObject?(v10, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
    }
  }

  else
  {
    outlined init with take of GroupActivityMetadata.ActivityType(v10, v14);
  }

  v62 = GroupActivityDescription.tuActivityContext.getter();
  v16 = type metadata accessor for GroupActivityMetadata(0);
  outlined init with copy of URL?(v1 + v16[8], v7);
  outlined init with copy of URL?(v1 + v16[11], v5);
  v61 = *(v1 + v16[10]);
  v17 = (v1 + v16[5]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (v1 + v16[6]);
  v22 = *v20;
  v21 = v20[1];
  v53 = v18;
  v54 = v22;
  v57 = v19;
  v58 = v21;
  if (*(v1 + v16[7]))
  {
    v52 = CGImageRef.thumbnailImageData(_:)(300);
    v59 = v23;
  }

  else
  {
    v52 = 0;
    v59 = 0xF000000000000000;
  }

  v60 = *(v1 + v16[9]);
  v24 = (v1 + v16[12]);
  v25 = *v24;
  v26 = v24[3];
  v27 = v24[4];
  if (v24[2])
  {
    v28 = MEMORY[0x1B2714130](v24[1]);
    if (v27)
    {
LABEL_10:
      v29 = MEMORY[0x1B2714130](v26, v27);
      goto LABEL_13;
    }
  }

  else
  {
    v28 = 0;
    if (v27)
    {
      goto LABEL_10;
    }
  }

  v29 = 0;
LABEL_13:
  v30 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:v28 shouldAssociateScene:v25 preferredSceneSessionRole:v29];

  v31 = v16[14];
  v56 = *(v1 + v16[13]);
  v55 = *(v1 + v31);
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v36 = 0;
  if (v34(v7, 1, v32) != 1)
  {
    URL._bridgeToObjectiveC()(v35);
    v36 = v37;
    (*(v33 + 8))(v7, v32);
  }

  if (v34(v5, 1, v32) == 1)
  {
    v39 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v38);
    v39 = v40;
    (*(v33 + 8))(v5, v32);
  }

  v41 = v59;
  if (v57)
  {
    v42 = MEMORY[0x1B2714130](v53);
    if (v58)
    {
LABEL_20:
      v43 = MEMORY[0x1B2714130](v54);
      goto LABEL_23;
    }
  }

  else
  {
    v42 = 0;
    if (v58)
    {
      goto LABEL_20;
    }
  }

  v43 = 0;
LABEL_23:
  if (v41 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v45 = v52;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v45, v41);
  }

  v46 = objc_allocWithZone(MEMORY[0x1E69D8B48]);
  LOBYTE(v50) = v56;
  v47 = v62;
  v48 = [v46 initWithContext:v62 linkMetadata:0 fallbackURL:v36 invitationURL:v39 supportsContinuationOnTV:v61 title:v42 subTitle:v43 imageData:isa preferredBroadcastingAttributes:v60 sceneAssociationBehavior:v30 supportsActivityPreviews:v50 lifetimePolicy:v55];

  outlined destroy of GroupActivityMetadata.ActivityType(v14, type metadata accessor for GroupActivityMetadata.ActivityType);
  return v48;
}

uint64_t GroupActivityMetadata.ActivityType.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GroupActivityDescription();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupActivityMetadata.ActivityType.description.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupActivityDescription();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t outlined init with take of GroupActivityDescription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityMetadata.ActivityType.init(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t one-time initialization function for generic(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for GroupActivityDescription();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  a3();
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t static GroupActivityMetadata.ActivityType.generic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v7, a4, type metadata accessor for GroupActivityMetadata.ActivityType);
}

uint64_t GroupActivityMetadata.ActivityType.hash(into:)(uint64_t a1)
{
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8], MEMORY[0x1E69975D0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GroupActivityMetadata.ActivityType.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8], MEMORY[0x1E69975D0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityMetadata.ActivityType()
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8], MEMORY[0x1E69975D0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityMetadata.ActivityType(uint64_t a1)
{
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8], MEMORY[0x1E69975D0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityMetadata.ActivityType(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8], MEMORY[0x1E69975D0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int GroupActivityMetadata.LifetimePolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *GroupActivityMetadata.previewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupActivityMetadata(0) + 28));
  v2 = v1;
  return v1;
}

void GroupActivityMetadata.previewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t GroupActivityMetadata.fallbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 32);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GroupActivityMetadata.fallbackURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 32);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t GroupActivityMetadata.preferredBroadcastOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t GroupActivityMetadata.preferredBroadcastOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t GroupActivityMetadata.supportsContinuationOnTV.setter(char a1)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t GroupActivityMetadata.invitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 44);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GroupActivityMetadata.invitationURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 44);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t GroupActivityMetadata.sceneAssociationBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
}

__n128 GroupActivityMetadata.sceneAssociationBehavior.setter(char *a1)
{
  v3 = *a1;
  v4 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 48);

  *v4 = v3;
  result = *(a1 + 8);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 8) = result;
  return result;
}

uint64_t GroupActivityMetadata.supportsActivityPreviews.setter(char a1)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*GroupActivityMetadata.supportsActivityPreviews.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return GroupActivityMetadata.supportsActivityPreviews.modify;
}

uint64_t GroupActivityMetadata.lifetimePolicy.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t GroupActivityMetadata.lifetimePolicy.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

GroupActivities::GroupActivityMetadata::CodingKeys_optional __swiftcall GroupActivityMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupActivityMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t GroupActivityMetadata.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6B6361626C6C6166;
  }

  if (a1 == 1)
  {
    return 0x6974617469766E69;
  }

  return 0xD000000000000018;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivityMetadata.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974617469766E69;
  v4 = 0xED00004C52556E6FLL;
  v5 = 0x80000001AF01A350;
  if (v2 != 1)
  {
    v3 = 0xD000000000000018;
    v4 = 0x80000001AF01A350;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6B6361626C6C6166;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB000000004C5255;
  }

  v8 = 0x6974617469766E69;
  if (*a2 == 1)
  {
    v5 = 0xED00004C52556E6FLL;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B6361626C6C6166;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB000000004C5255;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityMetadata.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityMetadata.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004C5255;
  v4 = 0xED00004C52556E6FLL;
  v5 = 0x6974617469766E69;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x80000001AF01A350;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B6361626C6C6166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupActivityMetadata.CodingKeys()
{
  v1 = 0x6974617469766E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6166;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupActivityMetadata.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroupActivityMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMR);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v13 = __swift_project_value_buffer(v12, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v13, v11, type metadata accessor for GroupActivityMetadata.ActivityType);
  v14 = &v11[v9[5]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[6]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v11[v9[7]] = 0;
  v16 = v9[8];
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v38 = v16;
  v18(&v11[v16], 1, 1, v17);
  *&v11[v9[9]] = 0;
  v19 = dyld_program_sdk_at_least();
  v36 = v9[10];
  v11[v36] = v19 ^ 1;
  v20 = v9[11];
  v18(&v11[v20], 1, 1, v17);
  v21 = &v11[v9[12]];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = qword_1EDADC9F0;
  v23 = qword_1EDADCA08;
  *v21 = static SceneAssociationBehavior.default;
  *(v21 + 1) = v22;
  *(v21 + 1) = xmmword_1EDADC9F8;
  *(v21 + 4) = v23;
  v11[v9[13]] = 0;
  *&v11[v9[14]] = 2;
  v24 = one-time initialization token for default;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.default);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = v6;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1AEE80000, v26, v27, "GroupActivityMetadata should no longer be encoded with your\nactivity. Please adopt asynchronous metadata.", v29, 2u);
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();
  v30 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v30)
  {
    v42 = v20;
    v46 = 0;
    lazy protocol witness table accessor for type URL? and conformance <A> A?(&lazy protocol witness table cache variable for type URL? and conformance <A> A?, &lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FD0], MEMORY[0x1E69E7C88]);
    v31 = v40;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined assign with take of URL?(v31, &v11[v38]);
    v45 = 1;
    v32 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined assign with take of URL?(v32, &v11[v42]);
    v44 = 2;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v41 + 8))(v8, v28);
    v35 = v37;
    v11[v36] = v34 & 1;
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v11, v35, type metadata accessor for GroupActivityMetadata);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of GroupActivityMetadata.ActivityType(v11, type metadata accessor for GroupActivityMetadata);
}

uint64_t GroupActivityMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1AEE80000, v8, v9, "GroupActivityMetadata should no longer be encoded with your\nactivity. Please adopt asynchronous metadata.", v10, 2u);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for GroupActivityMetadata(0);
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  lazy protocol witness table accessor for type URL? and conformance <A> A?(&lazy protocol witness table cache variable for type URL? and conformance <A> A?, &lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB8], MEMORY[0x1E69E7C70]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v14 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GroupActivityMetadata.init(tuActivityMetadataBlob:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
  v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v3)
  {
  }

  else if (v7)
  {
    GroupActivityMetadata.init(_:)(v7, a3);
    return outlined consume of Data._Representation(a1, a2);
  }

  lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();
  return outlined consume of Data._Representation(a1, a2);
}

uint64_t GroupActivityMetadata.infoDictionaryActivityType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 infoDictionary];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16))
  {
    goto LABEL_14;
  }

  v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AF01DFC0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v26 = 1;
    goto LABEL_16;
  }

  if (!*(v30 + 16) || (v13 = *(v30 + 32), , , !*(v13 + 16)) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001AF01DFE0), (v15 & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v16 = (*(v13 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.default);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v31);
    _os_log_impl(&dword_1AEE80000, v20, v21, "Using info dictionary activity type: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  GroupActivityDescription.init(id:)();
  outlined init with take of GroupActivityDescription?(v7, v5);
  v24 = type metadata accessor for GroupActivityDescription();
  v25 = *(v24 - 8);
  v26 = 1;
  if ((*(v25 + 48))(v5, 1, v24) != 1)
  {
    (*(v25 + 32))(a1, v5, v24);
    v26 = 0;
  }

LABEL_16:
  v27 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  return (*(*(v27 - 8) + 56))(a1, v26, 1, v27);
}

GroupActivities::GroupActivityMetadata::Experience_optional __swiftcall GroupActivityMetadata.Experience.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityMetadata.Experience@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t GroupActivityMetadata.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupActivityMetadata(0) + 20));

  return v1;
}

uint64_t key path setter for GroupActivityMetadata.localizedTitle : GroupActivityMetadata(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for GroupActivityMetadata(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t GroupActivityMetadata.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GroupActivityMetadata(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*GroupActivityMetadata.localizedTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for GroupActivityMetadata(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return GroupActivityMetadata.localizedTitle.modify;
}

uint64_t GroupActivityMetadata.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupActivityMetadata(0) + 24));

  return v1;
}

uint64_t key path setter for GroupActivityMetadata.localizedSubtitle : GroupActivityMetadata(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for GroupActivityMetadata(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t GroupActivityMetadata.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GroupActivityMetadata(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*GroupActivityMetadata.localizedSubtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for GroupActivityMetadata(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return GroupActivityMetadata.localizedSubtitle.modify;
}

void GroupActivityMetadata.localizedTitle.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t (*GroupActivityMetadata.preferredBroadcastingAttributes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 36);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return GroupActivityMetadata.preferredBroadcastingAttributes.modify;
}

uint64_t GroupActivityMetadata.contentAssociation.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 56)) == 1;
  return result;
}

uint64_t GroupActivityMetadata.contentAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  v4 = 1;
  if (v2 != 1)
  {
    v4 = 2;
  }

  *(v1 + *(result + 56)) = v4;
  return result;
}

uint64_t (*GroupActivityMetadata.contentAssociation.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 56);
  *(a1 + 16) = v3;
  *a1 = *(v1 + v3) == 1;
  return GroupActivityMetadata.contentAssociation.modify;
}

uint64_t GroupActivityMetadata.contentAssociation.modify(uint64_t result)
{
  v1 = 1;
  if (*result != 1)
  {
    v1 = 2;
  }

  *(*(result + 8) + *(result + 16)) = v1;
  return result;
}

BOOL specialized static GroupActivityMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  if ((MEMORY[0x1B2712FE0](a1, a2) & 1) == 0)
  {
    return 0;
  }

  *&v61 = v5;
  v20 = type metadata accessor for GroupActivityMetadata(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = *v22 == *v24 && v23 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = v20[6];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v60 = v20;
  v32 = v20[7];
  v33 = *(a2 + v32);
  if (*(a1 + v32))
  {
    if (!v33)
    {
      return 0;
    }

    *&v59 = *(a1 + v32);
    type metadata accessor for CGImageRef(0);
    v58 = v34;
    v57 = lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, type metadata accessor for CGImageRef, &protocol conformance descriptor for CGImageRef);
    v56 = v33;
    v35 = static _CFObject.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  *&v59 = v60[8];
  v36 = *(v14 + 48);
  outlined init with copy of URL?(a1 + v59, v19);
  v37 = a2 + v59;
  *&v59 = v36;
  outlined init with copy of URL?(v37, &v19[v36]);
  v38 = v61 + 48;
  v58 = *(v61 + 48);
  if (v58(v19, 1, v4) == 1)
  {
    if (v58(&v19[v59], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_31;
    }

LABEL_28:
    v39 = v19;
LABEL_29:
    outlined destroy of NSObject?(v39, &_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  outlined init with copy of URL?(v19, v13);
  v57 = v38;
  if (v58(&v19[v59], 1, v4) == 1)
  {
    (*(v61 + 8))(v13, v4);
    goto LABEL_28;
  }

  (*(v61 + 32))(v7, &v19[v59], v4);
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  LODWORD(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
  *&v59 = *(v61 + 8);
  (v59)(v7, v4);
  (v59)(v13, v4);
  outlined destroy of NSObject?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (*(a1 + v60[9]) != *(a2 + v60[9]) || *(a1 + v60[10]) != *(a2 + v60[10]))
  {
    return 0;
  }

  v41 = v60[11];
  v42 = *(v14 + 48);
  outlined init with copy of URL?(a1 + v41, v17);
  outlined init with copy of URL?(a2 + v41, &v17[v42]);
  v43 = v58;
  if (v58(v17, 1, v4) != 1)
  {
    outlined init with copy of URL?(v17, v11);
    if (v43(&v17[v42], 1, v4) != 1)
    {
      v44 = v61;
      (*(v61 + 32))(v7, &v17[v42], v4);
      lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v44 + 8);
      v46(v7, v4);
      v46(v11, v4);
      outlined destroy of NSObject?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_42;
    }

    (*(v61 + 8))(v11, v4);
    goto LABEL_40;
  }

  if (v43(&v17[v42], 1, v4) != 1)
  {
LABEL_40:
    v39 = v17;
    goto LABEL_29;
  }

  outlined destroy of NSObject?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_42:
  v47 = v60;
  v48 = v60[12];
  v49 = *(a1 + v48 + 8);
  v50 = *(a1 + v48 + 32);
  LOBYTE(v65[0]) = *(a1 + v48);
  v65[1] = v49;
  v61 = *(a1 + v48 + 16);
  v66 = v61;
  v67 = v50;
  v51 = a2 + v48;
  v52 = *(v51 + 8);
  v53 = *(v51 + 32);
  LOBYTE(v62[0]) = *v51;
  v62[1] = v52;
  v59 = *(v51 + 16);
  v63 = v59;
  v64 = v53;
  v54 = specialized static SceneAssociationBehavior.== infix(_:_:)(v65, v62);

  if ((v54 & 1) != 0 && *(a1 + v47[13]) == *(a2 + v47[13]))
  {
    return *(a1 + v47[14]) == *(a2 + v47[14]);
  }

  return 0;
}

uint64_t outlined init with take of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupActivityMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience);
  }

  return result;
}

uint64_t *GroupSessionEndpointIdentifier.systemCoordinator.unsafeMutableAddressor()
{
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  return &static GroupSessionEndpointIdentifier.systemCoordinator;
}

uint64_t one-time initialization function for identity()
{
  v0 = type metadata accessor for XPCIdentity();
  __swift_allocate_value_buffer(v0, static SystemCoordinatorInterface.identity);
  v1 = __swift_project_value_buffer(v0, static SystemCoordinatorInterface.identity);
  v2 = *MEMORY[0x1E69974E8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t SystemCoordinatorInterface.identity.unsafeMutableAddressor()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for XPCIdentity();

  return __swift_project_value_buffer(v0, static SystemCoordinatorInterface.identity);
}

uint64_t static SystemCoordinatorInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static SystemCoordinatorInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *SystemCoordinatorInterface.hostObjectInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorInterface.hostObjectInterface;
}

uint64_t (*static SystemCoordinatorInterface.hostObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

void one-time initialization function for hostObjectInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

void *SystemCoordinatorInterface.clientObjectInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorInterface.clientObjectInterface;
}

id static SystemCoordinatorInterface.hostObjectInterface.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void static SystemCoordinatorInterface.hostObjectInterface.setter(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static SystemCoordinatorInterface.clientObjectInterface.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

id key path getter for static SystemCoordinatorInterface.hostObjectInterface : SystemCoordinatorInterface.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a4@<X8>)
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

void key path setter for static SystemCoordinatorInterface.hostObjectInterface : SystemCoordinatorInterface.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6, uint64_t a7)
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

uint64_t protocol witness for static XPCInterface.identity.getter in conformance SystemCoordinatorInterface@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static SystemCoordinatorInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance SystemCoordinatorInterface(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a4;

  return v6;
}

uint64_t Publisher<>.flatMap<A>(maxPublishers:_:)()
{
  return MEMORY[0x1EEDB60D8]();
}

{
  return MEMORY[0x1EEDB60E0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}