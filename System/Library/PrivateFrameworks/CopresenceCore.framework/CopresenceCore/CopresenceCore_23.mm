uint64_t PubSubTopic.closeStreams(reason:)(uint64_t a1, unsigned int a2)
{
  v46 = a2;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v21)
  {
    if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 4)
    {
      LOBYTE(v48) = 3;
      PubSubTopic.updateState(state:)(&v48);
      v23 = v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
      v24 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason);
      v25 = v45;
      *v23 = v45;
      v26 = *(v23 + 8);
      v27 = v46;
      *(v23 + 8) = v46;
      outlined consume of PubSubTopic.ClosedReason?(v24, v26);
      LOBYTE(v48) = 1;
      outlined copy of PubSubTopic.ClosedReason(v25, v27);

      PassthroughSubject.send(completion:)();

      LOBYTE(v48) = 1;

      PassthroughSubject.send(completion:)();

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
      v28 = [objc_opt_self() mainRunLoop];
      v29 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
      v30 = static NSTimer.publish(every:tolerance:on:in:options:)();

      outlined destroy of NSObject?(v8, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
      v48 = v30;
      type metadata accessor for NSTimer.TimerPublisher();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
      v31 = ConnectablePublisher.autoconnect()();

      v47 = v20;
      v48 = v31;
      v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
      v33 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, MEMORY[0x1E695BCA0]);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v5, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
      v34 = v42;
      Publisher.first()();
      (*(v41 + 8))(v11, v34);
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v37 = v45;
      *(v36 + 24) = v45;
      v38 = v46;
      *(v36 + 32) = v46;
      outlined copy of PubSubTopic.ClosedReason(v37, v38);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BDB8]);
      v39 = v44;
      v40 = Publisher<>.sink(receiveValue:)();

      (*(v43 + 8))(v14, v39);
      *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = v40;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.publish(message:to:messageTypeIdentifier:previousSeqNumUnacked:)(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, void), uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v54 = a7;
  v51 = a5;
  v52 = a6;
  v50 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v7 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v53[0] >> 62))
    {
      v18 = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v18 = __CocoaSet.count.getter();
LABEL_4:

  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (*(v8 + 40) < v18 + 1)
  {
    goto LABEL_26;
  }

  v19 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(a2);
      if (!BYTE6(a2))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    LODWORD(v20) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v20 = v20;
      if (v20 < 1)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (*(v8 + 32) >= v20)
      {
        goto LABEL_17;
      }

LABEL_26:
      type metadata accessor for PubSubTopicError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type PubSubTopicError and conformance PubSubTopicError, type metadata accessor for PubSubTopicError, &protocol conformance descriptor for PubSubTopicError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_24;
  }

  if (v19 != 2)
  {
    goto LABEL_17;
  }

  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v20 >= 1)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (*(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    goto LABEL_26;
  }

  v49 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
  type metadata accessor for PubSubTopic.SendItem(0);
  v18 = swift_allocObject();
  *(v18 + 56) = 0;
  *(v18 + 64) = 1;
  *(v18 + 72) = 0;
  *(v18 + 80) = 1;
  v24 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v18 + v24, 1, 1, v25);
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v26 = v50;
  *(v18 + 32) = a3;
  *(v18 + 40) = v26;
  *(v18 + 48) = v51;
  swift_beginAccess();
  *(v18 + 72) = v52;
  *(v18 + 80) = v54 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of Data._Representation(a1, a2);

  a3 = static Published.subscript.modify();
  v28 = v27;
  MEMORY[0x1B2710150]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_38:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3(v53, 0);

  if (*(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2 && *(v8 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) == 2 && *(v8 + v49) != 1)
  {
    PubSubTopic._publish(_:)(v18);
  }

  if ((v54 & 1) == 0)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, log);

    v30 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v30, v44))
    {
      goto LABEL_32;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53[0] = v33;
    *v32 = 134218242;
    *(v32 + 4) = v52;
    *(v32 + 12) = 2080;
    v45 = PubSubTopic.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v53);

    *(v32 + 14) = v47;
    v37 = "[Publish] Queueing message, previousSeqNumUnacked=%llu %s";
    v38 = v44;
    v39 = v30;
    v40 = v32;
    v41 = 22;
    goto LABEL_31;
  }

  if (one-time initialization token for log != -1)
  {
    goto LABEL_41;
  }

LABEL_24:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, log);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v53[0] = v33;
    *v32 = 136315138;
    v34 = PubSubTopic.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v53);

    *(v32 + 4) = v36;
    v37 = "[Publish] Queueing message %s";
    v38 = v31;
    v39 = v30;
    v40 = v32;
    v41 = 12;
LABEL_31:
    _os_log_impl(&dword_1AEB26000, v39, v38, v37, v40, v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B27120C0](v33, -1, -1);
    MEMORY[0x1B27120C0](v32, -1, -1);
  }

LABEL_32:
}

uint64_t PubSubTopic.publishQueueCount.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10 >> 62)
  {
LABEL_6:
    v7 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v7;
}

uint64_t PubSubTopic.retrieveNextMessage()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
    result = swift_beginAccess();
    v11 = *(v1 + v10);
    if (*(v11 + 16) && *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
    {
      swift_beginAccess();
      *(a1 + 24) = &type metadata for PubSubTopic.ReceivedRecord;
      *(a1 + 32) = &protocol witness table for PubSubTopic.ReceivedRecord;
      v12 = swift_allocObject();
      *a1 = v12;
      outlined init with copy of PubSubTopic.ReceivedRecord(v11 + 32, v12 + 16);
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      return swift_endAccess();
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.retrieveQueueCount.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
    {
      v8 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
      swift_beginAccess();
      return *(*(v0 + v8) + 16);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v85 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v77 - v7;
  v81 = type metadata accessor for CP_UpsertTopicMetadataRequest(0);
  MEMORY[0x1EEE9AC00](v81);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (*(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v8);
    return outlined destroy of NSObject?(v8, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  }

  v17 = v3;
  v78 = a2;
  v79 = a3;
  v80 = v10;
  v18 = v85 + 64;
  v19 = 1 << *(v85 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v85 + 64);
  v22 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata;
  v23 = (v19 + 63) >> 6;

  v24 = 0;
  v84 = v22;
  v82 = v3;
  while (v21)
  {
LABEL_14:
    v29 = (v24 << 10) | (16 * __clz(__rbit64(v21)));
    v30 = *(v85 + 56);
    v31 = (*(v85 + 48) + v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v30 + v29);
    v35 = *(v30 + v29 + 8);
    v86 = v35;
    v87 = v34;
    if (v35 >> 60 == 15)
    {
      swift_beginAccess();

      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
      v37 = v17;
      if (v38)
      {
        v39 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v37 + v22);
        v88 = v41;
        *(v37 + v22) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v41 = v88;
        }

        v42 = (*(v41 + 56) + 16 * v39);
        v25 = *v42;
        v26 = v42[1];
        specialized _NativeDictionary._delete(at:)(v39, v41);
        *(v37 + v84) = v41;
      }

      else
      {
        v25 = 0;
        v26 = 0xF000000000000000;
      }

      v17 = v37;
      swift_endAccess();
      outlined consume of Data?(v25, v26);
      v22 = v84;
      v27 = v86;
      goto LABEL_8;
    }

    swift_beginAccess();
    v43 = v87;
    outlined copy of Data?(v87, v35);
    outlined copy of Data?(v43, v35);

    v83 = v43;
    outlined copy of Data?(v43, v35);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v32;
    v46 = v44;
    v88 = *(v17 + v22);
    v47 = v88;
    *(v17 + v22) = 0x8000000000000000;
    v48 = v45;
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v33);
    v51 = v47[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_34;
    }

    v54 = v49;
    if (v47[3] >= v53)
    {
      v57 = v87;
      if (v46)
      {
        goto LABEL_25;
      }

      specialized _NativeDictionary.copy()();
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v53, v46);
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v33);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_37;
      }

      v50 = v55;
    }

    v57 = v87;
LABEL_25:
    v58 = v88;
    if (v54)
    {
      v59 = (v88[7] + 16 * v50);
      v60 = *v59;
      v61 = v59[1];
      *v59 = v57;
      outlined consume of Data._Representation(v60, v61);
    }

    else
    {
      v88[(v50 >> 6) + 8] |= 1 << v50;
      v62 = (v58[6] + 16 * v50);
      *v62 = v48;
      v62[1] = v33;
      *(v58[7] + 16 * v50) = v57;
      v63 = v58[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_36;
      }

      v58[2] = v65;
    }

    v17 = v82;
    v22 = v84;
    *(v82 + v84) = v58;
    swift_endAccess();
    v27 = v86;
    outlined consume of Data?(v83, v86);
LABEL_8:
    v21 &= v21 - 1;

    outlined consume of Data?(v87, v27);
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v67 = v85;

      MEMORY[0x1EEE9AC00](v68);
      *(&v77 - 2) = v17;
      *(&v77 - 1) = v67;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_UpsertTopicMetadataRequest and conformance CP_UpsertTopicMetadataRequest, type metadata accessor for CP_UpsertTopicMetadataRequest, &protocol conformance descriptor for CP_UpsertTopicMetadataRequest);
      v69 = v80;
      static Message.with(_:)();
      v70 = v17;
      v71 = *(v17 + 120);
      v72 = *(v17 + 128);
      __swift_project_boxed_opaque_existential_1((v70 + 96), v71);
      v89 = (*(v72 + 72))(v69, v71, v72);
      v73 = swift_allocObject();
      v75 = v78;
      v74 = v79;
      v73[2] = v70;
      v73[3] = v75;
      v73[4] = v74;
      v76 = swift_allocObject();
      v76[2] = v75;
      v76[3] = v74;
      v76[4] = v70;
      v76[5] = v67;
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<CP_UpsertTopicMetadataResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore30CP_UpsertTopicMetadataResponseVAD14PluginRpcErrorOGMR, MEMORY[0x1E695BED8]);
      Publisher.sink(receiveCompletion:receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v69, type metadata accessor for CP_UpsertTopicMetadataRequest);
    }

    v21 = *(v18 + 8 * v28);
    ++v24;
    if (v21)
    {
      v24 = v28;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in PubSubTopic.upsertMetadata(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);

  *a1 = v6;
  a1[1] = v5;
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation4DataVSgG_14CopresenceCore11CP_KeyValueVs5NeverOTg5017_sSS10Foundation4e5VSg14f6Core11h1_ij27VIgggr_SS3key_AD5valuetAGs5k20OIegnrzr_TR04_s14c66p45PubSubTopicC14upsertMetadata_10completionySDym39Foundation4b40VSgG_ys6ResultOyytAA0cdE5C70OGctFyAA09e31_UpserteG7RequestVzXEfU0_AA0M9_fG12VSS_AItXEfU_Tf3nnnpf_nTf1cn_n(a3);

  a1[2] = v7;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic.upsertMetadata(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;
  if (a5 >> 60 != 15)
  {
    v11 = a1[2];
    v12 = a1[3];
    outlined copy of Data._Representation(a4, a5);
    result = outlined consume of Data._Representation(v11, v12);
    a1[2] = a4;
    a1[3] = a5;
  }

  return result;
}

uint64_t closure #3 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v38 - v11);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v38 - v11, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v13 = type metadata accessor for PluginRpcError(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    v14 = &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd;
    v15 = &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR;
    v16 = v12;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for PluginRpcError);
    }

    v43 = a4;
    v44 = a3;
    LODWORD(v17) = *v12;
    v18 = v12[1];
    v42 = v12[2];
    v19 = v12[3];
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, log);
    v21 = v18;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = v17;
      v17 = v24;
      v40 = swift_slowAlloc();
      v48 = v19;
      v49 = v40;
      *v17 = 136315394;
      v45 = v41;
      v25 = v42;
      v46 = v18;
      v47 = v42;
      v39 = v23;
      v26 = PluginRpcStatus.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v49);
      v38 = v22;
      v29 = v28;

      *(v17 + 4) = v29;
      *(v17 + 12) = 2080;
      v30 = PubSubTopic.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v49);

      *(v17 + 14) = v32;
      v33 = v38;
      _os_log_impl(&dword_1AEB26000, v38, v39, "[UpsertMetadata] Failed, error=%s %s", v17, 0x16u);
      v34 = v40;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v34, -1, -1);
      v35 = v17;
      LOBYTE(v17) = v41;
      MEMORY[0x1B27120C0](v35, -1, -1);
    }

    else
    {

      v25 = v42;
    }

    *v9 = v17;
    *(v9 + 1) = v18;
    *(v9 + 2) = v25;
    *(v9 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v37 = v18;

    v44(v9);

    v14 = &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd;
    v15 = &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR;
    v16 = v9;
  }

  return outlined destroy of NSObject?(v16, v14, v15);
}

uint64_t closure #4 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, void (*a2)(void *), void (*a3)(void, void), void *a4, uint64_t a5)
{
  v80 = a5;
  v85 = a2;
  v86 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v84 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v76 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v76 - v21);
  v23 = *a1;
  if (*(a1 + 8) != 1)
  {
    v84 = v20;
    goto LABEL_7;
  }

  if (v23 <= 4)
  {
    if (v23 <= 2)
    {
      v84 = v20;
      if (v23 >= 2)
      {
        v23 = 3;
      }

      goto LABEL_7;
    }

    if (v23 == 3)
    {
      v49 = *(a1 + 16);
      v48 = *(a1 + 24);
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, log);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        aBlock = v54;
        *v53 = 136315394;
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &aBlock);

        *(v53 + 4) = v55;
        *(v53 + 12) = 2080;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
        _os_log_impl(&dword_1AEB26000, v51, v52, "[UpsertMetadata] Failed, unknown-topic, error=%s topic=%s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v54, -1, -1);
        MEMORY[0x1B27120C0](v53, -1, -1);
LABEL_40:

        type metadata accessor for PubSubTopicError(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v36 = v22;
        goto LABEL_13;
      }

      goto LABEL_39;
    }

    v84 = v20;
    v23 = 5;
LABEL_7:
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, log);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 134218498;
      *(v29 + 4) = v23;
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &aBlock);
      *(v29 + 22) = 2080;
      v31 = PubSubTopic.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &aBlock);

      *(v29 + 24) = v33;
      _os_log_impl(&dword_1AEB26000, v27, v28, "[UpsertMetadata] Failed, unexpected response-status, code=%ld error=%s %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v30, -1, -1);
      MEMORY[0x1B27120C0](v29, -1, -1);
    }

    aBlock = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    aBlock = 0x3D65646F63;
    v88 = 0xE500000000000000;
    v93 = v23;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2710020](v34);

    MEMORY[0x1B2710020](0x3D726F72726520, 0xE700000000000000);
    MEMORY[0x1B2710020](v25, v24);
    v35 = v88;
    *v22 = aBlock;
    v22[1] = v35;
    type metadata accessor for PubSubTopicError(0);
    swift_storeEnumTagMultiPayload();
    goto LABEL_12;
  }

  if (v23 > 6)
  {
    if (v23 != 7)
    {
LABEL_12:
      swift_storeEnumTagMultiPayload();
      v36 = v22;
LABEL_13:
      v85(v36);
      return outlined destroy of NSObject?(v22, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMd, &_ss6ResultOyyt14CopresenceCore16PubSubTopicErrorOGMR);
    }

    v84 = v20;
    v23 = 8;
    goto LABEL_7;
  }

  if (v23 != 5)
  {
    v57 = *(a1 + 16);
    v56 = *(a1 + 24);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, log);

    v51 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v60 = 136315394;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &aBlock);

      *(v60 + 4) = v62;
      *(v60 + 12) = 2080;
      *(v60 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
      _os_log_impl(&dword_1AEB26000, v51, v59, "[UpsertMetadata] Failed, topic metadata exceeded size, error=%s topic=%s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v61, -1, -1);
      MEMORY[0x1B27120C0](v60, -1, -1);
      goto LABEL_40;
    }

LABEL_39:

    goto LABEL_40;
  }

  v38 = *(a1 + 24);
  v78 = *(a1 + 16);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = __swift_project_value_buffer(v39, log);

  v79 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v76 = v41;
    v44 = v43;
    v77 = swift_slowAlloc();
    aBlock = v77;
    *v44 = 136315394;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v38, &aBlock);
    *(v44 + 12) = 2080;
    *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
    v45 = v42;
    v46 = v76;
    _os_log_impl(&dword_1AEB26000, v76, v45, "[UpsertMetadata] Failed, not-authorized, error=%s topic=%s", v44, 0x16u);
    v47 = v77;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }

  else
  {
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v79 = v63;
    v67 = v66;
    aBlock = v66;
    *v65 = 134218242;
    *(v65 + 4) = a4[8];
    *(v65 + 12) = 2080;
    *(v65 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4[2], a4[3], &aBlock);
    v68 = v64;
    v69 = v79;
    _os_log_impl(&dword_1AEB26000, v79, v68, "Will retry UpsertMetadata in %f seconds topic=%s", v65, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x1B27120C0](v67, -1, -1);
    MEMORY[0x1B27120C0](v65, -1, -1);
  }

  else
  {
  }

  v70 = v86;
  static DispatchTime.now()();
  + infix(_:_:)();
  v71 = *(v84 + 8);
  v84 += 8;
  v86 = v71;
  v71(v16, v13);
  v79 = *(a4 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  v78 = v72;
  v74 = v80;
  v73[2] = v72;
  v73[3] = v74;
  v73[4] = v85;
  v73[5] = v70;
  v91 = partial apply for closure #1 in closure #4 in PubSubTopic.upsertMetadata(_:completion:);
  v92 = v73;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v90 = &block_descriptor_124_0;
  v75 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v93 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B2710670](v18, v12, v9, v75);
  _Block_release(v75);
  (*(v83 + 8))(v9, v7);
  (*(v81 + 8))(v12, v82);
  v86(v18, v13);
}

uint64_t closure #1 in closure #4 in PubSubTopic.upsertMetadata(_:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PubSubTopic.upsertMetadata(_:completion:)(a2, a3, a4);
  }

  return result;
}

uint64_t PubSubTopic.refreshDataCryptorProvider(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, log);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), aBlock);
    _os_log_impl(&dword_1AEB26000, v11, v12, "Refreshing data-cryptor-provider topic=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  outlined init with copy of Any(a1, v23);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  outlined init with take of Any(v23, (v15 + 24));
  aBlock[4] = partial apply for closure #1 in PubSubTopic.refreshDataCryptorProvider(with:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41_0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v20 + 8))(v6, v4);
  (*(v7 + 8))(v9, v19);
}

Swift::Void __swiftcall PubSubTopic.unsubscribe(force:)(Swift::Bool force)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    if (one-time initialization token for log == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, log);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21 = v14;
        *v13 = 67109378;
        *(v13 + 4) = force;
        *(v13 + 8) = 2080;
        *(v13 + 10) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v21);
        _os_log_impl(&dword_1AEB26000, v11, v12, "[Unsubscribe] Shutting down, forced=%{BOOL}d topic=%s", v13, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1B27120C0](v14, -1, -1);
        MEMORY[0x1B27120C0](v13, -1, -1);
      }

      LOBYTE(v21) = 3;
      PubSubTopic.updateState(state:)(&v21);
      if (force)
      {
        LOBYTE(v21) = 1;

        PassthroughSubject.send(completion:)();

        LOBYTE(v21) = 1;

        PassthroughSubject.send(completion:)();

        PubSubTopic.close(reason:description:)(5, 2u, 0xD000000000000012, 0x80000001AEE37660);
      }

      else
      {
        PubSubTopic.closeStreams(reason:)(5, 2u);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, log);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v2 + 16), *(v2 + 24), &v21);
    _os_log_impl(&dword_1AEB26000, v16, v17, "[Unsubscribe] Ignored, already shutting down, topic=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }
}

uint64_t PubSubTopic.PrimaryStream.description.getter(char a1)
{
  if (a1)
  {
    return 0x6873696C627550;
  }

  else
  {
    return 0x6269726373627553;
  }
}

CopresenceCore::PubSubTopic::PrimaryStream_optional __swiftcall PubSubTopic.PrimaryStream.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubTopic.PrimaryStream.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CopresenceCore_PubSubTopic_PrimaryStream_publish;
  }

  else
  {
    v4.value = CopresenceCore_PubSubTopic_PrimaryStream_unknownDefault;
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

uint64_t PubSubTopic.PrimaryStream.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6873696C627570;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopic.PrimaryStream(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6873696C627570;
  }

  else
  {
    v3 = 0x6269726373627573;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6873696C627570;
  }

  else
  {
    v5 = 0x6269726373627573;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PubSubTopic.PrimaryStream()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PubSubTopic.PrimaryStream(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PubSubTopic.PrimaryStream(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PubSubTopic.PrimaryStream@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PubSubTopic.PrimaryStream.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance PubSubTopic.PrimaryStream(uint64_t *a1@<X8>)
{
  v2 = 0x6269726373627573;
  if (*v1)
  {
    v2 = 0x6873696C627570;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PubSubTopic.PrimaryStream()
{
  if (*v0)
  {
    return 0x6873696C627550;
  }

  else
  {
    return 0x6269726373627553;
  }
}

void closure #1 in PubSubTopic.closeStreams(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 3)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, log);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v23 = v11;
        *v10 = 136315138;
        v12 = PubSubTopic.description.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1AEB26000, v8, v9, "Shutdown failsafe triggered, %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x1B27120C0](v11, -1, -1);
        MEMORY[0x1B27120C0](v10, -1, -1);
      }

      PubSubTopic.close(reason:description:)(a3, a4, 0xD00000000000001BLL, 0x80000001AEE37A30);
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, log);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v19;
        *v18 = 136315138;
        v20 = PubSubTopic.description.getter();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1AEB26000, v16, v17, "Shutdown failsafe timer fired but already shutdown, %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1B27120C0](v19, -1, -1);
        MEMORY[0x1B27120C0](v18, -1, -1);
      }
    }
  }
}

uint64_t PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(unsigned int a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v190 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v198 = &v177 - v8;
  v191 = type metadata accessor for PluginConnectError(0);
  v189 = *(v191 - 8);
  v9 = MEMORY[0x1EEE9AC00](v191);
  v178 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v179 = &v177 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v197 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v177 - v15;
  v186 = type metadata accessor for DispatchWorkItemFlags();
  v185 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DispatchQoS();
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v181 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTime();
  v20 = *(v19 - 8);
  v193 = v19;
  v194 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v180 = &v177 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v192 = &v177 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v195 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v196 = &v177 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v177 - v29;
  v31 = type metadata accessor for PluginRpcError(0);
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v187 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v188 = &v177 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v177 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v177 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v199 = &v177 - v43;
  v200 = v2;
  v201 = a1;
  LOBYTE(aBlock) = 1;

  PassthroughSubject.send(completion:)();

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a2, v30, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v44 = *(v32 + 48);
  if (v44(v30, 1, v31) == 1)
  {
    outlined destroy of NSObject?(v30, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v45 = v200;
    v46 = *(v200 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason);
    v47 = *(v200 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason + 8);
    v48 = v201;
    if (v47 == 255)
    {
      goto LABEL_45;
    }

    if (v47 == 2)
    {
      if (v46 <= 2)
      {
        if (v46)
        {
          if (v46 != 1)
          {
            if (v46 == 2)
            {
              aBlock = 0;
              v203 = 0xE000000000000000;
              outlined copy of PubSubTopic.ClosedReason(2, 2u);
              _StringGuts.grow(_:)(38);

              aBlock = 0xD000000000000014;
              v203 = 0x80000001AEE37B80;
              if (v48)
              {
                v49 = 0x6873696C627550;
              }

              else
              {
                v49 = 0x6269726373627553;
              }

              if (v48)
              {
                v50 = 0xE700000000000000;
              }

              else
              {
                v50 = 0xE900000000000065;
              }

              MEMORY[0x1B2710020](v49, v50);

              MEMORY[0x1B2710020](0x206D616572747320, 0xEE003D6369706F74);
              MEMORY[0x1B2710020](*(v45 + 16), *(v45 + 24));
              v51 = aBlock;
              v52 = v203;

              v47 = 2;
              goto LABEL_114;
            }

            goto LABEL_52;
          }

          aBlock = 0;
          v203 = 0xE000000000000000;
          v47 = 2;
          outlined copy of PubSubTopic.ClosedReason(1, 2u);
          _StringGuts.grow(_:)(38);

          v150 = 0x80000001AEE37BA0;
          v151 = 0xD000000000000014;
        }

        else
        {
          aBlock = 0;
          v203 = 0xE000000000000000;
          v47 = 2;
          outlined copy of PubSubTopic.ClosedReason(0, 2u);
          _StringGuts.grow(_:)(46);

          v150 = 0x80000001AEE37BC0;
          v151 = 0xD00000000000001CLL;
        }

        aBlock = v151;
        v203 = v150;
        if (v48)
        {
          v152 = 0x6873696C627550;
        }

        else
        {
          v152 = 0x6269726373627553;
        }

        if (v48)
        {
          v153 = 0xE700000000000000;
        }

        else
        {
          v153 = 0xE900000000000065;
        }

        MEMORY[0x1B2710020](v152, v153);

        v94 = 0x206D616572747320;
        v95 = 0xEE003D6369706F74;
        goto LABEL_113;
      }

      switch(v46)
      {
        case 3:
          v51 = 0xD000000000000014;
          v52 = 0x80000001AEE37B10;
          v47 = 2;
          outlined copy of PubSubTopic.ClosedReason(3, 2u);
LABEL_114:
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v154 = type metadata accessor for Logger();
          __swift_project_value_buffer(v154, log);

          v155 = Logger.logObject.getter();
          v156 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v155, v156))
          {
            v157 = swift_slowAlloc();
            v158 = swift_slowAlloc();
            v159 = v48;
            v160 = v158;
            aBlock = v158;
            *v157 = 136315650;
            if (v159)
            {
              v161 = 0x6873696C627550;
            }

            else
            {
              v161 = 0x6269726373627553;
            }

            if (v159)
            {
              v162 = 0xE700000000000000;
            }

            else
            {
              v162 = 0xE900000000000065;
            }

            v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, &aBlock);
            v201 = v47;
            v164 = v163;

            *(v157 + 4) = v164;
            *(v157 + 12) = 2080;
            v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &aBlock);

            *(v157 + 14) = v165;
            *(v157 + 22) = 2080;
            v166 = PubSubTopic.description.getter();
            v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, &aBlock);

            *(v157 + 24) = v168;
            v47 = v201;
            _os_log_impl(&dword_1AEB26000, v155, v156, "Service closed %s stream, reason='%s', %s", v157, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B27120C0](v160, -1, -1);
            MEMORY[0x1B27120C0](v157, -1, -1);
          }

          else
          {
          }

          PubSubTopic.close(reason:description:)(v46, v47, v51, v52);
          outlined consume of PubSubTopic.ClosedReason(v46, v47);

        case 4:
          aBlock = 0;
          v203 = 0xE000000000000000;
          v47 = 2;
          outlined copy of PubSubTopic.ClosedReason(4, 2u);
          _StringGuts.grow(_:)(76);
          v94 = 0xD00000000000004ALL;
          v95 = 0x80000001AEE37B30;
LABEL_113:
          MEMORY[0x1B2710020](v94, v95);
          MEMORY[0x1B2710020](*(v45 + 16), *(v45 + 24));
          v51 = aBlock;
          v52 = v203;

          goto LABEL_114;
        case 5:
LABEL_45:
          aBlock = 0;
          v203 = 0xE000000000000000;
          outlined copy of PubSubTopic.ClosedReason?(v46, v47);
          _StringGuts.grow(_:)(27);
          if (v48)
          {
            v90 = 0x6873696C627550;
          }

          else
          {
            v90 = 0x6269726373627553;
          }

          if (v48)
          {
            v91 = 0xE700000000000000;
          }

          else
          {
            v91 = 0xE900000000000065;
          }

          MEMORY[0x1B2710020](v90, v91);

          MEMORY[0x1B2710020](0xD000000000000019, 0x80000001AEE37AD0);
          v51 = aBlock;
          v52 = v203;

          v47 = 2;
          v46 = 5;
          goto LABEL_114;
      }
    }

LABEL_52:
    aBlock = 0;
    v203 = 0xE000000000000000;
    outlined copy of PubSubTopic.ClosedReason(v46, v47);
    _StringGuts.grow(_:)(42);
    MEMORY[0x1B2710020](0x7463657078656E55, 0xEC000000202C6465);
    if (v48)
    {
      v92 = 0x6873696C627550;
    }

    else
    {
      v92 = 0x6269726373627553;
    }

    if (v48)
    {
      v93 = 0xE700000000000000;
    }

    else
    {
      v93 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v92, v93);

    MEMORY[0x1B2710020](0xD000000000000010, 0x80000001AEE37AF0);
    v208 = v46;
    LOBYTE(v209) = v47;
    _print_unlocked<A, B>(_:_:)();
    v94 = 0x3D6369706F74202CLL;
    v95 = 0xE800000000000000;
    goto LABEL_113;
  }

  v53 = v199;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v30, v199, type metadata accessor for PluginRpcError);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v53, v42, type metadata accessor for PluginRpcError);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v42, v16, type metadata accessor for PluginConnectError);
    if (*(v200 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 4)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      __swift_project_value_buffer(v72, log);
      v73 = v197;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v16, v197, type metadata accessor for PluginConnectError);

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock = v77;
        *v76 = 136315906;
        if (v201)
        {
          v78 = 0x6873696C627550;
        }

        else
        {
          v78 = 0x6269726373627553;
        }

        if (v201)
        {
          v79 = 0xE700000000000000;
        }

        else
        {
          v79 = 0xE900000000000065;
        }

        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &aBlock);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = v198;
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v73, v198, type metadata accessor for PluginConnectError);
        v82 = v189;
        v83 = v191;
        v189[7](v81, 0, 1, v191);
        v84 = v81;
        v85 = v190;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v84, v190, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        if ((v82[6])(v85, 1, v83) == 1)
        {
          v86 = 7104878;
          v87 = 0xE300000000000000;
        }

        else
        {
          v128 = v179;
          _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v85, v179, type metadata accessor for PluginConnectError);
          _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v128, v178, type metadata accessor for PluginConnectError);
          v86 = String.init<A>(reflecting:)();
          v87 = v129;
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v128, type metadata accessor for PluginConnectError);
        }

        outlined destroy of NSObject?(v198, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v73, type metadata accessor for PluginConnectError);
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &aBlock);

        *(v76 + 14) = v130;
        *(v76 + 22) = 2080;
        PubSubTopic.seqNumWatermark.getter();
        v131 = Dictionary.description.getter();
        v133 = v132;

        v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v133, &aBlock);

        *(v76 + 24) = v134;
        *(v76 + 32) = 2080;
        v135 = PubSubTopic.description.getter();
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &aBlock);

        *(v76 + 34) = v137;
        _os_log_impl(&dword_1AEB26000, v74, v75, "%s stream failed with connection error, error=%s seqNumWatermark=%s %s", v76, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v77, -1, -1);
        MEMORY[0x1B27120C0](v76, -1, -1);
      }

      else
      {

        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v73, type metadata accessor for PluginConnectError);
      }
    }

    v138 = PubSubTopic.seqNumWatermark.getter();
    aBlock = 0;
    v203 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    if (v201)
    {
      v139 = 0x6873696C627550;
    }

    else
    {
      v139 = 0x6269726373627553;
    }

    if (v201)
    {
      v140 = 0xE700000000000000;
    }

    else
    {
      v140 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v139, v140);

    MEMORY[0x1B2710020](0xD000000000000024, 0x80000001AEE37BE0);
    v142 = aBlock;
    v141 = v203;
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    PubSubTopic.close(reason:description:)(v138, 0, v142, v141);

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for PluginConnectError);
    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v199, type metadata accessor for PluginRpcError);
  }

  LODWORD(v197) = *v42;
  v54 = v42[2];
  v198 = v42[1];
  v191 = v54;
  v55 = v42[3];
  v56 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt;
  v57 = v201;
  if ((v201 & 1) == 0)
  {
    v56 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt;
  }

  v58 = *(v200 + *v56);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  v60 = __swift_project_value_buffer(v59, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v199, v39, type metadata accessor for PluginRpcError);
  v190 = v60;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  v63 = os_log_type_enabled(v61, v62);
  v179 = v58;
  if (v63)
  {
    LODWORD(v178) = v62;
    v189 = v55;
    v64 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    aBlock = v177;
    *v64 = 136315650;
    if (v57)
    {
      v65 = 0x6873696C627550;
    }

    else
    {
      v65 = 0x6269726373627553;
    }

    if (v57)
    {
      v66 = 0xE700000000000000;
    }

    else
    {
      v66 = 0xE900000000000065;
    }

    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &aBlock);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2048;
    *(v64 + 14) = v58;
    *(v64 + 22) = 2080;
    v68 = v196;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v39, v196, type metadata accessor for PluginRpcError);
    (*(v32 + 56))(v68, 0, 1, v31);
    v69 = v195;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v68, v195, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    if (v44(v69, 1, v31) == 1)
    {
      v70 = 7104878;
      v71 = 0xE300000000000000;
    }

    else
    {
      v96 = v188;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v69, v188, type metadata accessor for PluginRpcError);
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v96, v187, type metadata accessor for PluginRpcError);
      v70 = String.init<A>(reflecting:)();
      v71 = v97;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v96, type metadata accessor for PluginRpcError);
    }

    v88 = v200;
    v89 = v198;
    outlined destroy of NSObject?(v68, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v39, type metadata accessor for PluginRpcError);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &aBlock);

    *(v64 + 24) = v98;
    _os_log_impl(&dword_1AEB26000, v61, v178, "%s stream attempt #%ld failed, error=%s", v64, 0x20u);
    v99 = v177;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v99, -1, -1);
    MEMORY[0x1B27120C0](v64, -1, -1);

    v55 = v189;
  }

  else
  {

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v39, type metadata accessor for PluginRpcError);
    v88 = v200;
    v89 = v198;
  }

  if (*(v88 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {
    aBlock = 0;
    v203 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v208 = aBlock;
    v209 = v203;
    if (v201)
    {
      v112 = 0x6873696C627550;
    }

    else
    {
      v112 = 0x6269726373627553;
    }

    if (v201)
    {
      v113 = 0xE700000000000000;
    }

    else
    {
      v113 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v112, v113);

    MEMORY[0x1B2710020](0xD000000000000028, 0x80000001AEE37C10);
    LOBYTE(aBlock) = v197;
    v203 = v89;
    v204 = v191;
    v205 = v55;
    v114 = PluginRpcStatus.description.getter();
    MEMORY[0x1B2710020](v114);

    MEMORY[0x1B2710020](39, 0xE100000000000000);
    v116 = v208;
    v115 = v209;
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v145 = 5;
    goto LABEL_83;
  }

  if (v197 == 14)
  {

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      aBlock = v103;
      *v102 = 136315394;
      PubSubTopic.seqNumWatermark.getter();
      v104 = Dictionary.description.getter();
      v106 = v105;

      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &aBlock);

      *(v102 + 4) = v107;
      *(v102 + 12) = 2080;
      v108 = PubSubTopic.description.getter();
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &aBlock);

      *(v102 + 14) = v110;
      _os_log_impl(&dword_1AEB26000, v100, v101, "Server bouncing, seqNum-watermark=%s %s", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v103, -1, -1);
      MEMORY[0x1B27120C0](v102, -1, -1);
    }

    v111 = PubSubTopic.seqNumWatermark.getter();
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v143 = 0x6220726576726553;
    v144 = 0xEF676E69636E756FLL;
    v145 = v111;
    v146 = 1;
    goto LABEL_93;
  }

  if (v179 >= *(v88 + 56))
  {
    aBlock = 0;
    v203 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    if (v201)
    {
      v148 = 0x6873696C627550;
    }

    else
    {
      v148 = 0x6269726373627553;
    }

    if (v201)
    {
      v149 = 0xE700000000000000;
    }

    else
    {
      v149 = 0xE900000000000065;
    }

    MEMORY[0x1B2710020](v148, v149);

    MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE37C40);
    v116 = aBlock;
    v115 = v203;
    LOBYTE(aBlock) = 1;

    PassthroughSubject.send(completion:)();

    v145 = 0;
LABEL_83:
    v146 = 2;
    v143 = v116;
    v144 = v115;
LABEL_93:
    PubSubTopic.close(reason:description:)(v145, v146, v143, v144);

    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v199, type metadata accessor for PluginRpcError);
  }

  v189 = v55;
  v117 = v180;
  static DispatchTime.now()();
  v118 = *(v88 + 64);
  + infix(_:_:)();
  v119 = *(v194 + 8);
  v194 += 8;
  v119(v117, v193);

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    aBlock = v123;
    *v122 = 136315394;
    v124 = v201;
    if (v201)
    {
      v125 = 0x6873696C627550;
    }

    else
    {
      v125 = 0x6269726373627553;
    }

    if (v201)
    {
      v126 = 0xE700000000000000;
    }

    else
    {
      v126 = 0xE900000000000065;
    }

    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &aBlock);

    *(v122 + 4) = v127;
    *(v122 + 12) = 2048;
    *(v122 + 14) = v118;
    _os_log_impl(&dword_1AEB26000, v120, v121, "Will retry %s stream in %f seconds", v122, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    MEMORY[0x1B27120C0](v123, -1, -1);
    MEMORY[0x1B27120C0](v122, -1, -1);
  }

  else
  {

    v124 = v201;
  }

  v169 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState;
  if ((v124 & 1) == 0)
  {
    v169 = &OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState;
  }

  *(v88 + *v169) = 1;
  v170 = swift_allocObject();
  swift_weakInit();
  v171 = swift_allocObject();
  *(v171 + 16) = v170;
  *(v171 + 24) = v124 & 1;
  v206 = partial apply for closure #1 in PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:);
  v207 = v171;
  aBlock = MEMORY[0x1E69E9820];
  v203 = 1107296256;
  v204 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v205 = &block_descriptor_142_0;
  v172 = _Block_copy(&aBlock);

  v173 = v181;
  static DispatchQoS.unspecified.getter();
  v208 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  v174 = v183;
  v175 = v186;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v176 = v192;
  MEMORY[0x1B2710670](v192, v173, v174, v172);
  _Block_release(v172);

  (*(v185 + 8))(v174, v175);
  (*(v182 + 8))(v173, v184);
  v119(v176, v193);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v199, type metadata accessor for PluginRpcError);
}

uint64_t closure #1 in PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v4 = *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt);
      v5 = __OFADD__(v4, 1);
      v6 = v4 + 1;
      if (!v5)
      {
        *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = v6;
        PubSubTopic.setupPublishStream()();
      }

      __break(1u);
    }

    else
    {
      v7 = *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);
      v5 = __OFADD__(v7, 1);
      v8 = v7 + 1;
      if (!v5)
      {
        *(result + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = v8;
        PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 0);
      }
    }

    __break(1u);
  }

  return result;
}

void closure #2 in PubSubTopic.setupPublishStream()(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = &v111 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v111 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v114 = *(v9 - 8);
  v115 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  isa = v11[-1].isa;
  v118 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v111 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v111 - v14;
  v16 = type metadata accessor for CP_SequenceNumber(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for CP_PublishResponse(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_22;
  }

  if (v23 <= 3)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, log);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v120[0] = v63;
          *v62 = 136315138;
          v64 = PubSubTopic.description.getter();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v120);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_1AEB26000, v60, v61, "[Publish] Failed, unknown-topic, %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x1B27120C0](v63, -1, -1);
          MEMORY[0x1B27120C0](v62, -1, -1);
        }

        PubSubTopic.closeStreams(reason:)(2, 2u);
        return;
      }

      *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
      if (one-time initialization token for log == -1)
      {
LABEL_18:
        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, log);

        v118 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v118, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v120[0] = v36;
          *v35 = 136315138;
          v37 = PubSubTopic.description.getter();
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v120);

          *(v35 + 4) = v39;
          v40 = "[Publish] Rejected, upcoming server-bounce, %s";
LABEL_51:
          _os_log_impl(&dword_1AEB26000, v118, v34, v40, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x1B27120C0](v36, -1, -1);
          v51 = v35;
          goto LABEL_26;
        }

LABEL_28:
        v52 = v118;

        return;
      }
    }

    else
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
      dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(a1, a2);
      v25 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
      v26 = __CFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v27;
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, log);
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v22, type metadata accessor for CP_PublishResponse);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          LODWORD(v118) = v30;
          v31 = swift_slowAlloc();
          isa = swift_slowAlloc();
          v120[0] = isa;
          *v31 = 134218242;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v22[*(v20 + 28)], v15, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
          v32 = *(v17 + 48);
          if (v32(v15, 1, v16) == 1)
          {
            *v19 = 0;
            v19[1] = 0;
            UnknownStorage.init()();
            if (v32(v15, 1, v16) != 1)
            {
              outlined destroy of NSObject?(v15, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
            }
          }

          else
          {
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v15, v19, type metadata accessor for CP_SequenceNumber);
          }

          v97 = v19[1];
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for CP_SequenceNumber);
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v22, type metadata accessor for CP_PublishResponse);
          *(v31 + 4) = v97;
          *(v31 + 12) = 2080;
          v98 = PubSubTopic.description.getter();
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v120);

          *(v31 + 14) = v100;
          _os_log_impl(&dword_1AEB26000, v29, v118, "[Publish] Ignored, responseSeqNum=%llu %s", v31, 0x16u);
          v101 = isa;
          __swift_destroy_boxed_opaque_existential_1Tm(isa);
          MEMORY[0x1B27120C0](v101, -1, -1);
          MEMORY[0x1B27120C0](v31, -1, -1);
        }

        else
        {
          outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v22, type metadata accessor for CP_PublishResponse);
        }

        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_18;
  }

  v24 = a2;
  if (v23 <= 5)
  {
    if (v23 == 4)
    {
      v23 = 5;
      goto LABEL_22;
    }

    v23 = *(a1 + 16);
    v20 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    if (one-time initialization token for log == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_71;
  }

  if (v23 == 6)
  {
    v54 = *(a1 + 16);
    v53 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = v120[0];
    if (v120[0] >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_33:
        if ((v55 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x1B2710B10](0, v55);
        }

        else
        {
          if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v56 = *(v55 + 32);
        }

        swift_beginAccess();
        v57 = *(v56 + 56);
        v58 = *(v56 + 64);

        if (v58 != 1)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

    else if (*((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_61:
    v57 = 0;
LABEL_62:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    __swift_project_value_buffer(v102, log);

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v119 = v106;
      *v105 = 134218498;
      *(v105 + 4) = v57;
      *(v105 + 12) = 2080;
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v119);

      *(v105 + 14) = v107;
      *(v105 + 22) = 2080;
      v108 = PubSubTopic.description.getter();
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, &v119);

      *(v105 + 24) = v110;
      _os_log_impl(&dword_1AEB26000, v103, v104, "[Publish] Failed, quota-exceeded, seqNumRejected=%llu error=%s %s", v105, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v106, -1, -1);
      MEMORY[0x1B27120C0](v105, -1, -1);
    }

    else
    {
    }

    PubSubTopic.closeStreams(reason:)(3, 2u);
    return;
  }

  if (v23 == 7)
  {
    v23 = 8;
LABEL_22:
    v42 = *(a1 + 16);
    v41 = *(a1 + 24);
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, log);

    v118 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v118, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v120[0] = v46;
      *v45 = 134218498;
      *(v45 + 4) = v23;
      *(v45 + 12) = 2080;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v120);

      *(v45 + 14) = v47;
      *(v45 + 22) = 2080;
      v48 = PubSubTopic.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v120);

      *(v45 + 24) = v50;
      _os_log_impl(&dword_1AEB26000, v118, v44, "[Publish] Failed, unexpected response-status, code=%ld error=%s %s", v45, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v46, -1, -1);
      v51 = v45;
LABEL_26:
      MEMORY[0x1B27120C0](v51, -1, -1);

      return;
    }

    goto LABEL_28;
  }

  *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(a1, a2);
  v67 = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  v26 = __CFADD__(v67, 1);
  v68 = v67 + 1;
  if (!v26)
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v68;
    return;
  }

  __break(1u);
LABEL_71:
  swift_once();
LABEL_46:
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, log);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v120[0] = v73;
    *v72 = 136315394;
    *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v20, v120);
    *(v72 + 12) = 2080;
    v74 = PubSubTopic.description.getter();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v120);

    *(v72 + 14) = v76;
    _os_log_impl(&dword_1AEB26000, v70, v71, "[Publish] Failed, not-authorized, error=%s %s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v73, -1, -1);
    v77 = v72;
    v24 = a2;
    MEMORY[0x1B27120C0](v77, -1, -1);
  }

  if (*(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 1)
  {

    v118 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v118, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v120[0] = v36;
      *v35 = 136315138;
      v78 = PubSubTopic.description.getter();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v120);

      *(v35 + 4) = v80;
      v40 = "[Publish] Already retrying subscribe stream, %s";
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  *(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;

  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 134217984;
    *(v83 + 4) = v24[8];
    _os_log_impl(&dword_1AEB26000, v81, v82, "Will retry Subscribe stream in %f seconds", v83, 0xCu);
    MEMORY[0x1B27120C0](v83, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
  v84 = [objc_opt_self() mainRunLoop];
  v85 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v85 - 8) + 56))(v8, 1, 1, v85);
  v86 = static NSTimer.publish(every:tolerance:on:in:options:)();

  outlined destroy of NSObject?(v8, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  v120[0] = v86;
  type metadata accessor for NSTimer.TimerPublisher();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
  v87 = ConnectablePublisher.autoconnect()();

  v119 = *(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  v88 = v119;
  v120[0] = v87;
  v89 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v90 = v113;
  (*(*(v89 - 8) + 56))(v113, 1, 1, v89);
  v91 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, MEMORY[0x1E695BCA0]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v92 = v112;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v90, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v93 = v115;
  v94 = v116;
  Publisher.first()();
  (*(v114 + 8))(v92, v93);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BDB8]);
  v95 = v118;
  v96 = Publisher<>.sink(receiveValue:)();

  (isa[1])(v94, v95);
  *(v24 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = v96;
}

uint64_t dequeue #1 () in closure #2 in PubSubTopic.setupPublishStream()(uint64_t a1, uint64_t *a2)
{
  v103 = a2;
  v3 = type metadata accessor for CP_PublishResponse(0);
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v92 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v99 = v10;
  v100 = v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v93 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v92 - v19;
  v21 = type metadata accessor for CP_SequenceNumber(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v92 = (&v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v92 - v25);
  v94 = v3;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v3 + 28), v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v27 = *(v22 + 48);
  v28 = v27(v20, 1, v21);
  v102 = v26;
  if (v28 == 1)
  {
    *v26 = 0;
    v26[1] = 0;
    UnknownStorage.init()();
    if (v27(v20, 1, v21) != 1)
    {
      outlined destroy of NSObject?(v20, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v20, v26, type metadata accessor for CP_SequenceNumber);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v106[0] >> 62))
  {
    v29 = *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v29)
    {
      goto LABEL_7;
    }

LABEL_40:
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, log);
    v77 = a1;
    v78 = v96;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v77, v96, type metadata accessor for CP_PublishResponse);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = v78;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v106[0] = v83;
      *v82 = 134218242;
      v84 = v81 + *(v94 + 28);
      v85 = v93;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v84, v93, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v27(v85, 1, v21) == 1)
      {
        v86 = v92;
        *v92 = 0;
        v86[1] = 0;
        UnknownStorage.init()();
        v87 = v86;
        if (v27(v85, 1, v21) != 1)
        {
          outlined destroy of NSObject?(v85, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        v87 = v92;
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v85, v92, type metadata accessor for CP_SequenceNumber);
      }

      v88 = v87[1];
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v87, type metadata accessor for CP_SequenceNumber);
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v96, type metadata accessor for CP_PublishResponse);
      *(v82 + 4) = v88;
      *(v82 + 12) = 2080;
      v89 = PubSubTopic.description.getter();
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v106);

      *(v82 + 14) = v91;
      _os_log_impl(&dword_1AEB26000, v79, v80, "[Publish] Unexpected, queue empty, seqNumAck=%llu %s", v82, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1B27120C0](v83, -1, -1);
      MEMORY[0x1B27120C0](v82, -1, -1);

      v74 = v102;
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v78, type metadata accessor for CP_PublishResponse);

      v74 = v102;
    }

    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v74, type metadata accessor for CP_SequenceNumber);
  }

  v75 = __CocoaSet.count.getter();

  if (!v75)
  {
    goto LABEL_40;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = static Published.subscript.modify();
  specialized RangeReplaceableCollection.removeFirst()();
  v32 = v31;
  v30(v106, 0);

  v33 = OBJC_IVAR____TtCC14CopresenceCore11PubSubTopic8SendItem_publishedAt;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32 + v33, v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v35 = v99;
  v34 = v100;
  if ((*(v100 + 48))(v9, 1, v99) == 1)
  {
    outlined destroy of NSObject?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = v102;
    v36 = v103;
    goto LABEL_18;
  }

  v38 = v95;
  (*(v34 + 32))(v95, v9, v35);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v40 = v39;
  v41 = *(v34 + 8);
  result = v41(v14, v35);
  v37 = v102;
  if (v40 <= 0.0)
  {
    v44 = 0;
    v36 = v103;
    goto LABEL_15;
  }

  v43 = v40 * 1000.0;
  v36 = v103;
  if (COERCE_UNSIGNED_INT64(v40 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v43 <= -1.0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v43 >= 1.84467441e19)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v44 = v43;
LABEL_15:
  v45 = *(v36 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
  if (v45)
  {
    (*(*v45 + 152))(v44, *(v36 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v36 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v36[2], v36[3]);
  }

  v41(v38, v35);
LABEL_18:
  v46 = v101;
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v47, static Signposts.messenger);
  v48 = *(v32 + 16);
  v49 = *(v32 + 24);
  outlined copy of Data._Representation(v48, v49);
  if (OSSignposter.isEnabled.getter())
  {
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v48, v49, v46);
  }

  else
  {
    OSSignpostID.init(_:)();
    outlined consume of Data._Representation(v48, v49);
  }

  lazy protocol witness table accessor for type Int and conformance Int();

  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v50, v51);

  v52 = OSSignposter.logHandle.getter();
  v53 = static os_signpost_type_t.event.getter();

  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v97 + 8))(v46, v98);
LABEL_38:
    v74 = v37;
    return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v74, type metadata accessor for CP_SequenceNumber);
  }

  v54 = swift_slowAlloc();
  result = swift_slowAlloc();
  v55 = result;
  v105 = result;
  *v54 = 134218754;
  v56 = *(v32 + 16);
  v57 = *(v32 + 24);
  v58 = v57 >> 62;
  LODWORD(v103) = v53;
  if ((v57 >> 62) > 1)
  {
    if (v58 != 2)
    {
      v59 = v37;
      v56 = 0;
      goto LABEL_34;
    }

    v62 = v56 + 16;
    v60 = *(v56 + 16);
    v61 = *(v62 + 8);
    v63 = __OFSUB__(v61, v60);
    v56 = v61 - v60;
    if (!v63)
    {
      v59 = v37;
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if (!v58)
  {
    v59 = v37;
    v56 = BYTE6(v57);
LABEL_34:
    *(v54 + 4) = v56;
    *(v54 + 12) = 2080;
    *(v54 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[2], v36[3], &v105);
    *(v54 + 22) = 2048;
    v65 = v36[15];
    v64 = v36[16];
    __swift_project_boxed_opaque_existential_1(v36 + 12, v65);
    *(v54 + 24) = (*(v64 + 16))(v65, v64);

    *(v54 + 32) = 2080;
    swift_beginAccess();
    if (*(v32 + 64))
    {
      v66 = 0xE300000000000000;
      v67 = 7104878;
    }

    else
    {
      v104 = *(v32 + 56);
      v67 = String.init<A>(reflecting:)();
      v66 = v68;
    }

    v69 = v98;
    v37 = v59;
    v70 = v103;
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v66, &v105);

    *(v54 + 34) = v71;
    v72 = v101;
    v73 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v52, v70, v73, "plugin-ack-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%s", v54, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);

    (*(v97 + 8))(v72, v69);
    goto LABEL_38;
  }

  v63 = __OFSUB__(HIDWORD(v56), v56);
  LODWORD(v56) = HIDWORD(v56) - v56;
  if (!v63)
  {
    v59 = v37;
    v56 = v56;
    goto LABEL_34;
  }

LABEL_54:
  __break(1u);
  return result;
}

void closure #1 in closure #2 in PubSubTopic.setupPublishStream()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, log);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11 = v7;
        *v6 = 136315138;
        v8 = PubSubTopic.description.getter();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v11);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_1AEB26000, v4, v5, "Skipping Subscribe stream setup, already ready, %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1B27120C0](v7, -1, -1);
        MEMORY[0x1B27120C0](v6, -1, -1);
      }
    }

    else
    {
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(0, 0);
    }
  }
}

uint64_t closure #1 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v10 - v5, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v7 = type metadata accessor for PluginRpcError(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  result = outlined destroy of NSObject?(v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if (v8 == 1 && *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 1 && *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) <= 2u)
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
  }

  else
  {
    *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
    return PubSubTopic.handlePrimaryStreamClosed(stream:completedWith:)(0, a1);
  }

  return result;
}

uint64_t closure #2 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for CP_SubscribeResponse.OneOf_Operation(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v13, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of NSObject?(v13, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore20CP_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v13, v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v20, v18, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v18, v7, type metadata accessor for CP_Record);
      PubSubTopic.processRecord(_:)(v7);
      v23 = type metadata accessor for CP_Record;
      v24 = v7;
    }

    else
    {
      v25 = v26;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v18, v26, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      PubSubTopic.processTopicUpdate(_:)(v25);
      v23 = type metadata accessor for CP_SubscribeResponse.TopicUpdate;
      v24 = v25;
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v18, v10, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    *(v27 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
    PubSubTopic.processInitializeAck(_:)(v10);
    v23 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    v24 = v10;
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v24, v23);
  return outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for CP_SubscribeResponse.OneOf_Operation);
}

void PubSubTopic.processInitializeAck(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v286 = &v271 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v284 = &v271 - v7;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR);
  v287 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v285 = &v271 - v8;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR);
  v290 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v289 = &v271 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtSgMd, &_ss6UInt64V_10Foundation4UUIDVtSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v307 = &v271 - v11;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v306 = *(v309 - 8);
  v12 = MEMORY[0x1EEE9AC00](v309);
  v308 = &v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v304 = &v271 - v14;
  v15 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v298 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v299 = &v271 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v305 = &v271 - v18;
  v295 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v301 = *(v295 - 8);
  v19 = *(v301 + 64);
  v20 = MEMORY[0x1EEE9AC00](v295);
  MEMORY[0x1EEE9AC00](v20);
  v296 = (&v271 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v280 = &v271 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v294 = &v271 - v25;
  v293 = type metadata accessor for CP_SequenceNumber(0);
  v300 = *(v293 - 8);
  v26 = MEMORY[0x1EEE9AC00](v293);
  v275 = &v271 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v279 = &v271 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v277 = (&v271 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v278 = &v271 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v276 = &v271 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v292 = &v271 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v281 = &v271 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v312 = &v271 - v40;
  v302 = type metadata accessor for Date();
  *&v313 = *(v302 - 8);
  v41 = MEMORY[0x1EEE9AC00](v302);
  v282 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v297 = &v271 - v43;
  v310 = type metadata accessor for CP_SubscribeResponse.InitializeAck(0);
  v44 = MEMORY[0x1EEE9AC00](v310);
  v311 = (&v271 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v271 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v271 - v49;
  v51 = type metadata accessor for DispatchPredicate();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = (&v271 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v54 = v55;
  (*(v52 + 104))(v54, *MEMORY[0x1E69E8020], v51);
  v283 = v55;
  LOBYTE(v55) = _dispatchPreconditionTest(_:)();
  (*(v52 + 8))(v54, v51);
  if (v55)
  {
    v274 = &v271 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v56 = type metadata accessor for Logger();
  v57 = __swift_project_value_buffer(v56, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v50, type metadata accessor for CP_SubscribeResponse.InitializeAck);

  v58 = Logger.logObject.getter();
  KeyPath = static os_log_type_t.default.getter();

  v60 = os_log_type_enabled(v58, KeyPath);
  v273 = v19;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v303 = a1;
    v62 = v61;
    v63 = v57;
    v64 = v2;
    v65 = swift_slowAlloc();
    v315[0] = v65;
    *v62 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeResponse.InitializeAck and conformance CP_SubscribeResponse.InitializeAck, type metadata accessor for CP_SubscribeResponse.InitializeAck, &protocol conformance descriptor for CP_SubscribeResponse.InitializeAck);
    v66 = Message.debugDescription.getter();
    v68 = v67;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v50, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v315);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2080;
    *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64[2], v64[3], v315);
    _os_log_impl(&dword_1AEB26000, v58, KeyPath, "[Subscribe] Received InitializeAck response=%s topic=%s", v62, 0x16u);
    swift_arrayDestroy();
    v70 = v65;
    v2 = v64;
    v57 = v63;
    MEMORY[0x1B27120C0](v70, -1, -1);
    v71 = v62;
    a1 = v303;
    MEMORY[0x1B27120C0](v71, -1, -1);
  }

  else
  {

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v50, type metadata accessor for CP_SubscribeResponse.InitializeAck);
  }

  v72 = v312;
  v73 = v313;
  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) > 2u)
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v87, v88))
    {
LABEL_26:

      return;
    }

    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v315[0] = v90;
    *v89 = 136315138;
    v91 = PubSubTopic.description.getter();
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v315);

    *(v89 + 4) = v93;
    v94 = "[Subscribe] Ignoring InitializeAck, unsubscribed while initializing %s";
    goto LABEL_19;
  }

  v74 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing);
  *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  if (*(a1 + 8) != 1)
  {
    goto LABEL_21;
  }

  v75 = *a1;
  if (*a1 <= 3)
  {
    if (*a1 >= 3uLL)
    {

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v315[0] = v113;
        *v112 = 136315138;
        v114 = PubSubTopic.description.getter();
        v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v315);

        *(v112 + 4) = v116;
        _os_log_impl(&dword_1AEB26000, v110, v111, "[Subscribe] InitializeAck failed, topic not found, %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        MEMORY[0x1B27120C0](v113, -1, -1);
        MEMORY[0x1B27120C0](v112, -1, -1);
      }

      v117 = 2;
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  if ((v75 - 4) < 3)
  {
LABEL_21:
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v48, type metadata accessor for CP_SubscribeResponse.InitializeAck);
    v96 = v311;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v311, type metadata accessor for CP_SubscribeResponse.InitializeAck);

    v87 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v315[0] = v99;
      *v98 = 134218498;
      v100 = *v48;
      if (v48[8] == 1)
      {
        v100 = qword_1AEE1B9C0[v100];
      }

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v48, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      *(v98 + 4) = v100;
      *(v98 + 12) = 2080;
      v101 = v311;
      v102 = v311[2];
      v103 = v311[3];

      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v101, type metadata accessor for CP_SubscribeResponse.InitializeAck);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, v315);

      *(v98 + 14) = v104;
      *(v98 + 22) = 2080;
      v105 = PubSubTopic.description.getter();
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v315);

      *(v98 + 24) = v107;
      _os_log_impl(&dword_1AEB26000, v87, v97, "[Subscribe] InitializeAck failed, unexpected response-status, code=%ld error=%s %s", v98, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v99, -1, -1);
      v95 = v98;
      goto LABEL_25;
    }

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v48, type metadata accessor for CP_SubscribeResponse.InitializeAck);

    v108 = v96;
    v109 = type metadata accessor for CP_SubscribeResponse.InitializeAck;
    goto LABEL_28;
  }

  if (v75 == 7)
  {
    v76 = *(a1 + 48);
    v77 = *(v76 + 16);
    if (v77)
    {
      LODWORD(v312) = v74;
      v272 = v2;
      v315[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
      v78 = v315[0];
      v79 = *(v298 + 80);
      *&v313 = v76;
      v80 = v76 + ((v79 + 32) & ~v79);
      v81 = *(v298 + 72);
      v82 = v80;
      v83 = v299;
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v82, v83, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        v84 = *v83;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v83, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        v315[0] = v78;
        v86 = *(v78 + 16);
        v85 = *(v78 + 24);
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v83 = v299;
          v78 = v315[0];
        }

        *(v78 + 16) = v86 + 1;
        *(v78 + 8 * v86 + 32) = v84;
        v82 += v81;
        --v77;
      }

      while (v77);
      v299 = v57;
      v122 = *(v313 + 16);
      if (!v122)
      {
        v127 = MEMORY[0x1E69E7CC0];
LABEL_58:
        if (v127[2])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCys6UInt64V10Foundation4UUIDVGMR);
          v146 = static _DictionaryStorage.allocate(capacity:)();
        }

        else
        {
          v146 = MEMORY[0x1E69E7CC8];
        }

        v147 = v272;
        v315[0] = v146;

        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v148, 1, v315);

        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v315[0] = v152;
          *v151 = 136315138;
          type metadata accessor for UUID();
          v153 = Dictionary.description.getter();
          v155 = v154;

          v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v315);

          *(v151 + 4) = v156;
          _os_log_impl(&dword_1AEB26000, v149, v150, "[Subscribe] Missing encryptionIDs publisherIDToEncryptionIDs=%s", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v152);
          MEMORY[0x1B27120C0](v152, -1, -1);
          MEMORY[0x1B27120C0](v151, -1, -1);
        }

        else
        {
        }

        if (v312)
        {

          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v315[0] = v160;
            *v159 = 136315138;
            v161 = PubSubTopic.description.getter();
            v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v162, v315);

            *(v159 + 4) = v163;
            _os_log_impl(&dword_1AEB26000, v157, v158, "[Subscribe] Retrying, dataCryptorProvider updated while Initialize was in flight %s", v159, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v160);
            MEMORY[0x1B27120C0](v160, -1, -1);
            MEMORY[0x1B27120C0](v159, -1, -1);
          }

          *(v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
          PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
        }

        else
        {
          v164 = *(v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
          v165 = *(v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
          __swift_project_boxed_opaque_existential_1((v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v164);
          (*(v165 + 72))(v78, v164, v165);

          *(v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer, 0x1E695DFF0);
          v166 = [objc_opt_self() mainRunLoop];
          v167 = type metadata accessor for NSRunLoop.SchedulerOptions();
          v168 = v284;
          (*(*(v167 - 8) + 56))(v284, 1, 1, v167);
          v169 = static NSTimer.publish(every:tolerance:on:in:options:)();

          outlined destroy of NSObject?(v168, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
          v315[0] = v169;
          type metadata accessor for NSTimer.TimerPublisher();
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type NSTimer.TimerPublisher and conformance NSTimer.TimerPublisher, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
          v170 = ConnectablePublisher.autoconnect()();

          v315[0] = v170;
          v171 = v283;
          v315[4] = v283;
          v172 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v173 = v286;
          (*(*(v172 - 8) + 56))(v286, 1, 1, v172);
          v174 = v171;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd, &_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMR, MEMORY[0x1E695BCA0]);
          lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
          v175 = v285;
          Publisher.receive<A>(on:options:)();
          outlined destroy of NSObject?(v173, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
          v176 = v289;
          v177 = v288;
          Publisher.first()();
          (*(v287 + 8))(v175, v177);
          swift_allocObject();
          swift_weakInit();
          lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.First<Publishers.ReceiveOn<Publishers.Autoconnect<NSTimer.TimerPublisher>, OS_dispatch_queue>> and conformance Publishers.First<A>, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO5FirstVy_AC9ReceiveOnVy_AC11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGSo17OS_dispatch_queueCGGMR, MEMORY[0x1E695BDB8]);
          v178 = v291;
          v179 = Publisher<>.sink(receiveValue:)();

          (*(v290 + 8))(v176, v178);
          *(v147 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = v179;
        }

        return;
      }

      v123 = 0;
      v124 = 0;
      v125 = v307;
      v126 = (v306 + 48);
      v127 = MEMORY[0x1E69E7CC0];
      KeyPath = v305;
      while (v123 < *(v313 + 16))
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v80, KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        closure #4 in PubSubTopic.processInitializeAck(_:)(KeyPath, v272, v125);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
        if ((*v126)(v125, 1, v309) == 1)
        {
          outlined destroy of NSObject?(v125, &_ss6UInt64V_10Foundation4UUIDVtSgMd, &_ss6UInt64V_10Foundation4UUIDVtSgMR);
        }

        else
        {
          v128 = v125;
          v129 = v304;
          outlined init with take of (UInt64, UUID)(v128, v304);
          outlined init with take of (UInt64, UUID)(v129, v308);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127[2] + 1, 1, v127);
          }

          v131 = v127[2];
          v130 = v127[3];
          if (v131 >= v130 >> 1)
          {
            v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v130 > 1), v131 + 1, 1, v127);
          }

          v127[2] = v131 + 1;
          outlined init with take of (UInt64, UUID)(v308, v127 + ((*(v306 + 80) + 32) & ~*(v306 + 80)) + *(v306 + 72) * v131);
          v125 = v307;
          KeyPath = v305;
        }

        ++v123;
        v80 += v81;
        if (v122 == v123)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v315[0] = v136;
      *v135 = 136315138;
      v137 = PubSubTopic.description.getter();
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, v315);

      *(v135 + 4) = v139;
      _os_log_impl(&dword_1AEB26000, v133, v134, "[Subscribe] Missing encryptionIDs, empty response from server, %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v136);
      MEMORY[0x1B27120C0](v136, -1, -1);
      MEMORY[0x1B27120C0](v135, -1, -1);
    }

    v117 = 1;
LABEL_51:
    PubSubTopic.closeStreams(reason:)(v117, 2u);
    return;
  }

  v118 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState;
  if (*(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) == 2)
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_26;
    }

    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v315[0] = v90;
    *v89 = 136315138;
    v119 = PubSubTopic.description.getter();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v315);

    *(v89 + 4) = v121;
    v94 = "[Subscribe] Skipping InitializeAck processing, already ready %s";
LABEL_19:
    _os_log_impl(&dword_1AEB26000, v87, v88, v94, v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x1B27120C0](v90, -1, -1);
    v95 = v89;
LABEL_25:
    MEMORY[0x1B27120C0](v95, -1, -1);
    goto LABEL_26;
  }

  v299 = v57;
  v124 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v2 + v124, v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v132 = v302;
  if ((*(v73 + 48))(v72, 1, v302) == 1)
  {
    outlined destroy of NSObject?(v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_73:
    *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
    *(v2 + v118) = 2;
    v315[0] = *(a1 + 32);
    v309 = v315[0];

    specialized Array.append<A>(contentsOf:)(v183);
    v184 = v315[0];
    v185 = *(v315[0] + 16);
    if (v185)
    {
      v124 = 0;
      KeyPath = (v315[0] + 32);
      v272 = v2;
      v303 = a1;
      v312 = v185;
      *&v313 = v315[0];
      v311 = (v315[0] + 32);
      do
      {
        if (v124 >= *(v184 + 16))
        {
          goto LABEL_131;
        }

        v186 = KeyPath[v124];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*(v315[0] + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v186);
          v188 = v187;

          if (v188)
          {
            goto LABEL_77;
          }
        }

        else
        {
        }

        v189 = v2[15];
        v190 = v2[16];
        __swift_project_boxed_opaque_existential_1(v2 + 12, v189);
        if (v186 == (*(v190 + 16))(v189, v190))
        {
          goto LABEL_77;
        }

        swift_getKeyPath();
        KeyPath = swift_getKeyPath();
        v191 = static Published.subscript.modify();
        v193 = v192;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v314 = *v193;
        v195 = v314;
        *v193 = 0x8000000000000000;
        v197 = specialized __RawDictionaryStorage.find<A>(_:)(v186);
        v198 = v195[2];
        v199 = (v196 & 1) == 0;
        v200 = v198 + v199;
        if (__OFADD__(v198, v199))
        {
          goto LABEL_132;
        }

        v201 = v196;
        if (v195[3] >= v200)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v204 = v314;
            if ((v196 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v204 = v314;
            if ((v201 & 1) == 0)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v200, isUniquelyReferenced_nonNull_native);
          v202 = specialized __RawDictionaryStorage.find<A>(_:)(v186);
          if ((v201 & 1) != (v203 & 1))
          {
            goto LABEL_137;
          }

          v197 = v202;
          v204 = v314;
          if ((v201 & 1) == 0)
          {
LABEL_91:
            v204[(v197 >> 6) + 8] |= 1 << v197;
            *(v204[6] + 8 * v197) = v186;
            *(v204[7] + 8 * v197) = 0;
            v205 = v204[2];
            v206 = __OFADD__(v205, 1);
            v207 = v205 + 1;
            if (v206)
            {
              goto LABEL_133;
            }

            v204[2] = v207;
            goto LABEL_76;
          }
        }

        *(v204[7] + 8 * v197) = 0;
LABEL_76:
        *v193 = v204;

        v191(v315, 0);

        v2 = v272;
        a1 = v303;
        v185 = v312;
        v184 = v313;
        KeyPath = v311;
LABEL_77:
        ++v124;
      }

      while (v185 != v124);
    }

    MEMORY[0x1EEE9AC00](v208);
    *(&v271 - 2) = a1;
    v209 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x1E69E7CC8], closure #1 in CP_SubscribeResponse.InitializeAck.otherParticipants.getterpartial apply, (&v271 - 4), v309);
    v210 = v2[15];
    v211 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v210);
    v212 = (*(v211 + 16))(v210, v211);
    v213 = v2[15];
    v214 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v213);
    v215 = (*(v214 + 16))(v213, v214);
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v315[0] = v209;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v215, 0, v212, v216);
    v217 = v315[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v315[0] = v217;

    v312 = v217;

    static Published.subscript.setter();
    v218 = *(v310 + 48);
    v219 = v292;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v218, v292, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    v220 = *(v300 + 48);
    v221 = v293;
    LODWORD(v215) = v220(v219, 1, v293);
    outlined destroy of NSObject?(v219, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
    if (v215 != 1)
    {
      v222 = v276;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v218, v276, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v220(v222, 1, v221) == 1)
      {
        v223 = v277;
        *v277 = 0;
        v223[1] = 0;
        UnknownStorage.init()();
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v223, type metadata accessor for CP_SequenceNumber);
        v224 = v220(v222, 1, v221);
        v225 = v279;
        v226 = v278;
        if (v224 != 1)
        {
          outlined destroy of NSObject?(v222, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        v227 = v277;
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v222, v277, type metadata accessor for CP_SequenceNumber);
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v227, type metadata accessor for CP_SequenceNumber);
        v225 = v279;
        v226 = v278;
      }

      outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v218, v226, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
      if (v220(v226, 1, v221) == 1)
      {
        *v225 = 0;
        v225[1] = 0;
        UnknownStorage.init()();
        if (v220(v226, 1, v221) != 1)
        {
          outlined destroy of NSObject?(v226, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
        }
      }

      else
      {
        _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v226, v225, type metadata accessor for CP_SequenceNumber);
      }

      v228 = v225[1];
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v225, type metadata accessor for CP_SequenceNumber);
      if (v228)
      {
        *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v228;
        *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v228;

        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v315[0] = v232;
          *v231 = 134218242;
          *(v231 + 4) = v228;
          *(v231 + 12) = 2080;
          v233 = PubSubTopic.description.getter();
          v235 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v233, v234, v315);

          *(v231 + 14) = v235;
          _os_log_impl(&dword_1AEB26000, v229, v230, "[Subscribe] Updated selfSeqNum, responseSeqNum=%llu %s", v231, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v232);
          MEMORY[0x1B27120C0](v232, -1, -1);
          MEMORY[0x1B27120C0](v231, -1, -1);
        }
      }
    }

    v236 = *(a1 + 40);
    if (*(v236 + 16))
    {
      PubSubTopic._setMetadata(metadata:)(v236);
    }

    v237 = *(v310 + 44);
    v238 = v294;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v237, v294, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    v239 = *(v301 + 48);
    v240 = v295;
    v241 = v239(v238, 1, v295);
    outlined destroy of NSObject?(v238, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    if (v241 == 1)
    {

      LOBYTE(v315[0]) = 2;
      PubSubTopic.updateState(state:)(v315);
      PubSubTopic.attemptSendQueueFlush()();
      return;
    }

    v242 = v280;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v237, v280, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
    v243 = v239(v242, 1, v240);
    v244 = MEMORY[0x1E69E7CC0];
    if (v243 == 1)
    {
      v245 = v296;
      *v296 = 0;
      v245[1] = v244;
      UnknownStorage.init()();
      if (v239(v242, 1, v240) != 1)
      {
        outlined destroy of NSObject?(v242, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMd, &_s14CopresenceCore20CP_SubscribeResponseV13InitializeAckV19TopicCatchupSummaryVSgMR);
      }
    }

    else
    {
      v245 = v296;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v242, v296, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
    }

    v246 = *v245;
    v247 = v245[1];
    v248 = *(v247 + 16);
    if (v248)
    {
      v315[0] = v244;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v248, 0);
      v249 = v315[0];
      v250 = v247 + ((*(v300 + 80) + 32) & ~*(v300 + 80));
      v251 = *(v300 + 72);
      v252 = v275;
      do
      {
        _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v250, v252, type metadata accessor for CP_SequenceNumber);
        v313 = *v252;
        outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v252, type metadata accessor for CP_SequenceNumber);
        v315[0] = v249;
        v254 = *(v249 + 16);
        v253 = *(v249 + 24);
        if (v254 >= v253 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v253 > 1), v254 + 1, 1);
          v252 = v275;
          v249 = v315[0];
        }

        *(v249 + 16) = v254 + 1;
        *(v249 + 16 * v254 + 32) = v313;
        v250 += v251;
        --v248;
      }

      while (v248);
    }

    else
    {

      v249 = MEMORY[0x1E69E7CC0];
    }

    v255 = Logger.logObject.getter();
    v256 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v315[0] = v258;
      *v257 = 134218498;
      *(v257 + 4) = v246;
      *(v257 + 12) = 2080;
      v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_ABtMd, &_ss6UInt64V_ABtMR);
      v260 = MEMORY[0x1B2710180](v249, v259);
      v262 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v260, v261, v315);

      *(v257 + 14) = v262;
      *(v257 + 22) = 2080;
      *(v257 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v315);
      _os_log_impl(&dword_1AEB26000, v255, v256, "[Subscribe] Catchup required, fromParticipantID=%llu seqNums=%s topic=%s", v257, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v258, -1, -1);
      MEMORY[0x1B27120C0](v257, -1, -1);
    }

    LOBYTE(v315[0]) = 1;
    PubSubTopic.updateState(state:)(v315);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v263 = v2[18];
      ObjectType = swift_getObjectType();
      v265 = v296;
      v266 = v274;
      _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v296, v274, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
      v267 = (*(v301 + 80) + 32) & ~*(v301 + 80);
      v268 = swift_allocObject();
      *(v268 + 16) = v2;
      *(v268 + 24) = v249;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v266, v268 + v267, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
      v269 = *(v263 + 48);

      v269(v270, v246, partial apply for closure #2 in PubSubTopic.processInitializeAck(_:), v268, ObjectType, v263);
      swift_unknownObjectRelease();

      v109 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary;
      v108 = v265;
    }

    else
    {

      v109 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary;
      v108 = v296;
    }

LABEL_28:
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v108, v109);
    return;
  }

  (*(v73 + 32))(v297, v72, v132);
  v140 = v282;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v142 = v141;
  v143 = *(v73 + 8);
  v143(v140, v132);
  if (v142 <= 0.0)
  {
    v145 = 0;
LABEL_70:
    v180 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
    if (v180)
    {
      (*(*v180 + 144))(v145, *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v2[2], v2[3]);
    }

    v181 = v302;
    v143(v297, v302);
    v182 = v281;
    (*(v73 + 56))(v281, 1, 1, v181);
    swift_beginAccess();
    outlined assign with take of Date?(v182, v2 + v124);
    swift_endAccess();
    goto LABEL_73;
  }

  v144 = v142 * 1000.0;
  if (COERCE_UNSIGNED_INT64(v142 * 1000.0) >> 52 > 0x7FE)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v144 > -1.0)
  {
    if (v144 >= 1.84467441e19)
    {
      goto LABEL_136;
    }

    v145 = v144;
    goto LABEL_70;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(KeyPath, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

  __break(1u);
LABEL_137:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void *PubSubTopic.processRecord(_:)(unint64_t a1)
{
  v2 = v1;
  v135 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v118 - v4;
  v5 = type metadata accessor for CP_EncryptionID(0);
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v127 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = type metadata accessor for CP_Record(0);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v118 - v11;
  v13 = type metadata accessor for CP_SequenceNumber(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v130 = v17;
  v131 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v24 = v25;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  v29 = *(v22 + 8);
  v28 = (v22 + 8);
  v29(v24, v21);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v31 = v30 * 1000.0;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v31 <= -1.0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v31 < 1.84467441e19)
  {
    v28 = v20;
    v27 = v135;
    v32 = *(v135 + 40);
    v20 = v16;
    v16 = v132;
    if (v32 > v31)
    {
      goto LABEL_12;
    }

    Date.timeIntervalSince1970.getter();
    v34 = v33 * 1000.0;
    if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -1.0)
    {
      if (v34 < 1.84467441e19)
      {
        if (v34 >= v32)
        {
          v35 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter);
          if (v35)
          {
            (*(*v35 + 160))(v34 - v32, *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag), *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag + 8), v2[2], v2[3]);
          }

LABEL_12:
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v27 + *(v16 + 9), v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
          v36 = *(v14 + 48);
          if (v36(v12, 1, v13) == 1)
          {
            *v20 = 0;
            v20[1] = 0;
            UnknownStorage.init()();
            if (v36(v12, 1, v13) != 1)
            {
              outlined destroy of NSObject?(v12, &_s14CopresenceCore17CP_SequenceNumberVSgMd, &_s14CopresenceCore17CP_SequenceNumberVSgMR);
            }
          }

          else
          {
            _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v12, v20, type metadata accessor for CP_SequenceNumber);
          }

          v37 = *v20;
          v14 = v20[1];
          v38 = v2[15];
          v39 = v2[16];
          __swift_project_boxed_opaque_existential_1(v2 + 12, v38);
          v40 = (*(v39 + 16))(v38, v39);
          v134 = v37;
          if (v37 == v40)
          {
            goto LABEL_17;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v52 = v137[0];
          if (*(v137[0] + 16))
          {
            v53 = specialized __RawDictionaryStorage.find<A>(_:)(v134);
            if (v54)
            {
              v55 = *(*(v52 + 56) + 8 * v53);

              if (v55 >= v14)
              {
LABEL_42:
                v89 = v14;
                if (one-time initialization token for log != -1)
                {
                  swift_once();
                }

                v90 = type metadata accessor for Logger();
                __swift_project_value_buffer(v90, log);

                v61 = Logger.logObject.getter();
                v91 = static os_log_type_t.error.getter();

                if (!os_log_type_enabled(v61, v91))
                {
                  goto LABEL_61;
                }

                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v137[0] = v64;
                *v63 = 134218754;
                *(v63 + 4) = v134;
                *(v63 + 12) = 2048;
                *(v63 + 14) = v89;
                *(v63 + 22) = 2048;
                *(v63 + 24) = v55;
                *(v63 + 32) = 2080;
                v92 = PubSubTopic.description.getter();
                v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v137);

                *(v63 + 34) = v94;
                v68 = "Skipping old record, participantID=%llu, recordSeqNum=%llu <= currentSeqNum=%llu %s";
                v69 = v91;
                v70 = v61;
                v71 = v63;
                v72 = 42;
                goto LABEL_31;
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v56 = static Published.subscript.modify();
              v58 = v57;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v136 = *v58;
              *v58 = 0x8000000000000000;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v134, isUniquelyReferenced_nonNull_native);
              *v58 = v136;
              v27 = v135;

              v56(v137, 0);

LABEL_17:
              if (one-time initialization token for log == -1)
              {
                goto LABEL_18;
              }

              goto LABEL_73;
            }
          }

          v32 = v14;

          if (one-time initialization token for log == -1)
          {
LABEL_29:
            v60 = type metadata accessor for Logger();
            __swift_project_value_buffer(v60, log);

            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v61, v62))
            {
              goto LABEL_61;
            }

            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v137[0] = v64;
            *v63 = 134218498;
            *(v63 + 4) = v134;
            *(v63 + 12) = 2048;
            *(v63 + 14) = v32;
            *(v63 + 22) = 2080;
            v65 = PubSubTopic.description.getter();
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v137);

            *(v63 + 24) = v67;
            v68 = "Skipping record from unknown publisher participantID=%llu seqNum=%llu %s";
            v69 = v62;
            v70 = v61;
            v71 = v63;
            v72 = 32;
LABEL_31:
            _os_log_impl(&dword_1AEB26000, v70, v69, v68, v71, v72);
            __swift_destroy_boxed_opaque_existential_1Tm(v64);
            MEMORY[0x1B27120C0](v64, -1, -1);
            v73 = v63;
LABEL_60:
            MEMORY[0x1B27120C0](v73, -1, -1);
            goto LABEL_61;
          }

LABEL_78:
          swift_once();
          goto LABEL_29;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_18:
  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, log);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  v45 = os_log_type_enabled(v43, v44);
  v120 = v42;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v137[0] = v47;
    *v46 = 134218498;
    *(v46 + 4) = v134;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v14;
    *(v46 + 22) = 2080;
    *(v46 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v137);
    _os_log_impl(&dword_1AEB26000, v43, v44, "Received record fromParticipantID=%llu seqNum=%llu topic=%s", v46, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1B27120C0](v47, -1, -1);
    MEMORY[0x1B27120C0](v46, -1, -1);
  }

  v48 = v129;
  if (one-time initialization token for messenger != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v49, static Signposts.messenger);
  v50 = *(v27 + 16);
  v51 = *(v27 + 24);
  if (OSSignposter.isEnabled.getter())
  {
    outlined copy of Data._Representation(v50, v51);
    _s2os12OSSignpostIDV14CopresenceCoreE4hash5usingACx_q_mtc10Foundation12DataProtocolRz9CryptoKit12HashFunctionR_r0_lufCAG0I0V_AI8InsecureO3MD5VTt1t2g5(v50, v51, v133);
  }

  else
  {
    OSSignpostID.init(_:)();
  }

  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v27, v48, type metadata accessor for CP_Record);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v74, v75);

  v76 = OSSignposter.logHandle.getter();
  v77 = static os_signpost_type_t.event.getter();

  v78 = OS_os_log.signpostsEnabled.getter();
  v121 = v28;
  v122 = v20;
  v119 = v14;
  if ((v78 & 1) == 0)
  {

    (*(v123 + 8))(v133, v124);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v48, type metadata accessor for CP_Record);
    goto LABEL_50;
  }

  v79 = swift_slowAlloc();
  result = swift_slowAlloc();
  v81 = v48;
  v55 = result;
  v137[0] = result;
  *v79 = 134218754;
  v82 = *(v81 + 16);
  v83 = *(v81 + 24);
  v84 = v83 >> 62;
  if ((v83 >> 62) > 1)
  {
    if (v84 != 2)
    {
      v82 = 0;
      goto LABEL_49;
    }

    v87 = v82 + 16;
    v85 = *(v82 + 16);
    v86 = *(v87 + 8);
    v88 = __OFSUB__(v86, v85);
    v82 = v86 - v85;
    if (!v88)
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (!v84)
  {
    v82 = BYTE6(v83);
LABEL_49:
    *(v79 + 4) = v82;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v129, type metadata accessor for CP_Record);
    *(v79 + 12) = 2080;
    *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v137);
    *(v79 + 22) = 2048;
    v95 = v133;
    *(v79 + 24) = v134;
    *(v79 + 32) = 2048;
    *(v79 + 34) = v14;
    v96 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEB26000, v76, v77, v96, "transport-message-received", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu seqNum=%llu", v79, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v79, -1, -1);

    (*(v123 + 8))(v95, v124);
LABEL_50:
    v97 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 24);
    v98 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider), v97);
    v99 = *(v16 + 10);
    v100 = v135;
    v101 = v128;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v135 + v99, v128, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    v102 = v126;
    v103 = *(v125 + 48);
    v104 = v103(v101, 1, v126);
    v105 = v127;
    if (v104 == 1)
    {
      *v127 = xmmword_1AEE0C200;
      UnknownStorage.init()();
      v106 = v103(v101, 1, v102);
      v28 = v121;
      if (v106 != 1)
      {
        outlined destroy of NSObject?(v101, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
      }
    }

    else
    {
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v101, v127, type metadata accessor for CP_EncryptionID);
      v28 = v121;
    }

    v107 = *v105;
    v108 = v105[1];
    outlined copy of Data._Representation(*v105, v108);
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v105, type metadata accessor for CP_EncryptionID);
    v109 = (*(v98 + 40))(v107, v108, v97, v98);
    outlined consume of Data._Representation(v107, v108);
    v20 = v122;
    if (v109)
    {
      v110 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue;
      swift_beginAccess();
      if (*(*(v2 + v110) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v134), (v111 & 1) != 0))
      {
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v115 = PubSubTopic.decryptAndMarkReady(record:)(v100);
        if (v115 != 1)
        {
          if (!v115 && *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) >= 2u)
          {
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v116 = v2[18];
              ObjectType = swift_getObjectType();
              (*(v116 + 8))(v2, ObjectType, v116);
              swift_unknownObjectRelease();
            }
          }

          goto LABEL_62;
        }
      }

      PubSubTopic.queueRecordForDecryption(_:)(v100);
LABEL_62:
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for CP_SequenceNumber);
      return (*(v131 + 8))(v28, v130);
    }

    v61 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v137[0] = v114;
      *v113 = 134218242;
      *(v113 + 4) = v119;
      *(v113 + 12) = 2080;
      *(v113 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[2], v2[3], v137);
      _os_log_impl(&dword_1AEB26000, v61, v112, "Record has invalid encryptionID, dropping, seqNum=%llu topic=%s", v113, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v114);
      MEMORY[0x1B27120C0](v114, -1, -1);
      v73 = v113;
      goto LABEL_60;
    }

LABEL_61:

    goto LABEL_62;
  }

  v88 = __OFSUB__(HIDWORD(v82), v82);
  LODWORD(v82) = HIDWORD(v82) - v82;
  if (!v88)
  {
    v82 = v82;
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

void PubSubTopic.processTopicUpdate(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_SubscribeResponse.TopicUpdate(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = v83 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
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
  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, log);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v9, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v83[1] = v17;
    v21 = v7;
    v22 = v2;
    v23 = v20;
    v24 = swift_slowAlloc();
    v85 = v24;
    *v23 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeResponse.TopicUpdate and conformance CP_SubscribeResponse.TopicUpdate, type metadata accessor for CP_SubscribeResponse.TopicUpdate, &protocol conformance descriptor for CP_SubscribeResponse.TopicUpdate);
    v25 = Message.debugDescription.getter();
    v27 = v26;
    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v85);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = v22[2];
    v30 = v22[3];
    v31 = v22;
    v7 = v21;
    *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v85);
    _os_log_impl(&dword_1AEB26000, v18, v19, "[TopicUpdate] Received message=%s topic=%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {
    v31 = v2;

    outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
  }

  if (*(a1 + 8) == 1)
  {
    v32 = *(a1 + 24);
    v33 = *(a1 + 32);
    v34 = v31;
    if (*a1)
    {
      if (*a1 == 1)
      {

        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v84[0] = v38;
          *v37 = 136315394;
          v85 = v32;
          v86 = v33;
          v39 = PubSubTopic.Participant.description.getter();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v84);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2080;
          *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[2], v34[3], v84);
          _os_log_impl(&dword_1AEB26000, v35, v36, "[TopicUpdate] Subscriber removed participant=%s topic=%s", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v38, -1, -1);
          MEMORY[0x1B27120C0](v37, -1, -1);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v42 = static Published.subscript.modify();
        specialized Dictionary._Variant.removeValue(forKey:)(v32);
        v42(&v85, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v43 = static Published.subscript.modify();
        specialized Dictionary.removeValue(forKey:)(v32, v84);
        v43(&v85, 0);

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v34[18];
          ObjectType = swift_getObjectType();
          (*(v44 + 32))(v34, v32, ObjectType, v44);
LABEL_30:
          swift_unknownObjectRelease();
        }
      }

      else
      {

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v85 = v65;
          *v64 = 136315138;
          *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31[2], v31[3], &v85);
          _os_log_impl(&dword_1AEB26000, v62, v63, "[TopicUpdate] Metadata changed topic=%s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          MEMORY[0x1B27120C0](v65, -1, -1);
          MEMORY[0x1B27120C0](v64, -1, -1);
        }

        PubSubTopic.updateMetadata(metadata:)(*(a1 + 16));
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v51 = v85;
      if (v85[2] && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v53 & 1) != 0))
      {
        v54 = *(*(v51 + 56) + 8 * v52);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v84[0] = v58;
          *v57 = 136315650;
          v85 = v32;
          v86 = v33;
          v59 = PubSubTopic.Participant.description.getter();
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v84);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2048;
          *(v57 + 14) = v54;
          *(v57 + 22) = 2080;
          *(v57 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[2], v34[3], v84);
          _os_log_impl(&dword_1AEB26000, v55, v56, "[TopicUpdate] Subscriber re-added participant=%s seqNum=%llu topic=%s", v57, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v58, -1, -1);
          MEMORY[0x1B27120C0](v57, -1, -1);
        }
      }

      else
      {

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v84[0] = v69;
          *v68 = 136315394;
          v85 = v32;
          v86 = v33;
          v70 = PubSubTopic.Participant.description.getter();
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v84);

          *(v68 + 4) = v72;
          *(v68 + 12) = 2080;
          *(v68 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34[2], v34[3], v84);
          _os_log_impl(&dword_1AEB26000, v66, v67, "[TopicUpdate] Subscriber added participant=%s topic=%s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v69, -1, -1);
          MEMORY[0x1B27120C0](v68, -1, -1);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v73 = static Published.subscript.modify();
        v75 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84[0] = *v75;
        *v75 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v32, isUniquelyReferenced_nonNull_native);
        *v75 = v84[0];

        v73(&v85, 0);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v77 = static Published.subscript.modify();
      v79 = v78;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = *v79;
      *v79 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v33, v32, v80);
      *v79 = v84[0];

      v77(&v85, 0);

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v81 = v34[18];
        v82 = swift_getObjectType();
        (*(v81 + 24))(v34, v32, v82, v81);
        goto LABEL_30;
      }
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a1, v7, type metadata accessor for CP_SubscribeResponse.TopicUpdate);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v85 = v49;
      *v48 = 134218242;
      v50 = *v7;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
      *(v48 + 4) = v50;
      *(v48 + 12) = 2080;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31[2], v31[3], &v85);
      _os_log_impl(&dword_1AEB26000, v46, v47, "[TopicUpdate] Unexpected event-type, event=%ld topic=%s", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1B27120C0](v49, -1, -1);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for CP_SubscribeResponse.TopicUpdate);
    }
  }
}

uint64_t closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CP_SubscribeRequest.Initialize(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.Initialize and conformance CP_SubscribeRequest.Initialize, type metadata accessor for CP_SubscribeRequest.Initialize, &protocol conformance descriptor for CP_SubscribeRequest.Initialize);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v10, a1, type metadata accessor for CP_SubscribeRequest.Initialize);
  v11 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
}

uint64_t closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v46 = a3;
  v49 = type metadata accessor for UUID();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CP_EncryptionID(0);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = v41 - v12;
  v13 = type metadata accessor for CP_SequenceNumber(0);
  v53 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[2];
  v17 = a2[3];

  *a1 = v16;
  a1[1] = v17;
  v19 = a2[15];
  v18 = a2[16];
  __swift_project_boxed_opaque_existential_1(a2 + 12, v19);
  a1[4] = (*(v18 + 16))(v19, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDys6UInt64VAGG_14CopresenceCore17CP_SequenceNumberVs5NeverOTg504_ss6d5VAB14e6Core17g1_hi27VIgyyr_AB3key_AB5valuetAEs5J215OIegnrzr_TR04_s14b115Core11PubSubTopicC20setupSubscribeStream33_6FF60077F0B19FDD9659960D5DD0DECCLL05reuseH014isFirstAttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n(v54);

  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber, &protocol conformance descriptor for CP_SequenceNumber);
  v21 = AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n;
  static Message.with(_:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n[2] + 1, 1, AttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n);
  }

  v23 = v21[2];
  v22 = v21[3];
  v24 = v46;
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v15, v21 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v23, type metadata accessor for CP_SequenceNumber);

  a1[2] = v21;
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v53 = v4;
    v41[1] = v21;
    v42 = v11;
    v43 = a1;
    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v54;
    v27 = *(v52 + 16);
    v28 = v24 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v46 = *(v52 + 72);
    v47 = v27;
    v52 += 16;
    v29 = (v52 - 8);
    v30 = v44;
    do
    {
      v32 = v48;
      v31 = v49;
      v33 = v47(v48, v28, v49);
      MEMORY[0x1EEE9AC00](v33);
      v41[-2] = v32;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
      v34 = v53;
      static Message.with(_:)();
      v53 = v34;
      (*v29)(v32, v31);
      v54 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v26 = v54;
      }

      *(v26 + 16) = v36 + 1;
      _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v30, v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v36, type metadata accessor for CP_EncryptionID);
      v28 += v46;
      --v25;
    }

    while (v25);
    v11 = v42;
    a1 = v43;
  }

  if (*(v26 + 16))
  {

    a1[3] = v26;
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v37);
  v41[-2] = v45;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_EncryptionID and conformance CP_EncryptionID, type metadata accessor for CP_EncryptionID, &protocol conformance descriptor for CP_EncryptionID);
  v38 = v51;
  static Message.with(_:)();

  v39 = *(type metadata accessor for CP_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a1 + v39, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v11, a1 + v39, type metadata accessor for CP_EncryptionID);
  return (*(v50 + 56))(a1 + v39, 0, 1, v38);
}

uint64_t closure #2 in PubSubTopic.processInitializeAck(_:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  LOBYTE(a1) = *a1;
  v21[1] = *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue);
  _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(a4, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  v17 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary);
  aBlock[4] = partial apply for closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_135;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v19);
  _Block_release(v19);
  (*(v24 + 8))(v10, v8);
  (*(v22 + 8))(v13, v23);
}

void closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CP_SubscribeRequest(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  if (a1)
  {
    if (one-time initialization token for log != -1)
    {
LABEL_90:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, log);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v102[0] = v15;
      *v14 = 136315394;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v102);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2[2], a2[3], v102);
      _os_log_impl(&dword_1AEB26000, v12, v13, "[Subscribe] Catchup failed, retrying subscription error=%s topic=%s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    v19 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
    if (*(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) == 1)
    {
      *(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
      return;
    }

    v100 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v100, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v102[0] = v78;
      *v77 = 136315394;
      v79 = *(a2 + v19);
      if (v79 <= 1)
      {
        if (*(a2 + v19))
        {
          v80 = 0x676E696863746143;
          v81 = 0xEA00000000007055;
        }

        else
        {
          v80 = 0x676E697472617453;
          v81 = 0xE800000000000000;
        }
      }

      else if (v79 == 2)
      {
        v81 = 0xE500000000000000;
        v80 = 0x7964616552;
      }

      else if (v79 == 3)
      {
        v80 = 0x676E697474756853;
        v81 = 0xEC0000006E776F44;
      }

      else
      {
        v81 = 0xE800000000000000;
        v80 = 0x6E776F6474756853;
      }

      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, v102);

      *(v77 + 4) = v90;
      *(v77 + 12) = 2080;
      *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2[2], a2[3], v102);
      v91 = "[Subscribe] Re-subscribe aborted, state=%s topic=%s";
LABEL_82:
      _os_log_impl(&dword_1AEB26000, v100, v76, v91, v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v78, -1, -1);
      MEMORY[0x1B27120C0](v77, -1, -1);

      return;
    }

LABEL_63:
    v85 = v100;

    return;
  }

  v95 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v9;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, log);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v97 = a2;
  v94 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v102[0] = v25;
    *v24 = 136315138;
    v26 = PubSubTopic.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v102);

    *(v24 + 4) = v28;
    a2 = v97;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[Subscribe] Catchup completed successfully, %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1B27120C0](v25, -1, -1);
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  v29 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state;
  if (*(a2 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) != 1)
  {

    v100 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v100, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v102[0] = v78;
      *v77 = 136315394;
      v82 = *(a2 + v29);
      if (v82 <= 1)
      {
        if (*(a2 + v29))
        {
          v83 = 0x676E696863746143;
          v84 = 0xEA00000000007055;
        }

        else
        {
          v83 = 0x676E697472617453;
          v84 = 0xE800000000000000;
        }
      }

      else if (v82 == 2)
      {
        v84 = 0xE500000000000000;
        v83 = 0x7964616552;
      }

      else if (v82 == 3)
      {
        v83 = 0x676E697474756853;
        v84 = 0xEC0000006E776F44;
      }

      else
      {
        v84 = 0xE800000000000000;
        v83 = 0x6E776F6474756853;
      }

      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v102);

      *(v77 + 4) = v92;
      *(v77 + 12) = 2080;
      *(v77 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2[2], a2[3], v102);
      v91 = "[Subscribe] Post-catchup work aborted, state=%s topic=%s";
      goto LABEL_82;
    }

    goto LABEL_63;
  }

  LOBYTE(v102[0]) = 2;
  v30 = PubSubTopic.updateState(state:)(v102);
  v31 = *(a3 + 16);
  if (v31)
  {
    v32 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    v33 = (a3 + 40);
    while (1)
    {
      v34 = *(v33 - 1);
      v100 = *v33;
      v35 = a2[15];
      v36 = a2[16];
      __swift_project_boxed_opaque_existential_1(a2 + 12, v35);
      if ((*(v36 + 16))(v35, v36) == v34)
      {
        goto LABEL_37;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!*(v102[0] + 16))
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v34);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        goto LABEL_25;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v39 = v102[0];
      if (!*(v102[0] + 16))
      {
        goto LABEL_88;
      }

      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
      if ((v41 & 1) == 0)
      {
        goto LABEL_89;
      }

      v42 = *(*(v39 + 56) + 8 * v40);

      if (v42 < v100)
      {
        goto LABEL_25;
      }

LABEL_37:
      swift_beginAccess();
      v59 = *(a2 + v32);
      if (!*(v59 + 16))
      {
        swift_endAccess();
LABEL_43:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(a2 + v32);
        v64 = v101;
        *(a2 + v32) = 0x8000000000000000;
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
        v67 = v64[2];
        v68 = (v66 & 1) == 0;
        v57 = __OFADD__(v67, v68);
        v69 = v67 + v68;
        if (v57)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v70 = v66;
        if (v64[3] >= v69)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_48;
          }

          v75 = v65;
          specialized _NativeDictionary.copy()();
          v65 = v75;
          v72 = v101;
          if (v70)
          {
            goto LABEL_14;
          }

LABEL_49:
          v72[(v65 >> 6) + 8] |= 1 << v65;
          *(v72[6] + 8 * v65) = v34;
          *(v72[7] + 8 * v65) = v100;
          v73 = v72[2];
          v57 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v57)
          {
            goto LABEL_85;
          }

          v72[2] = v74;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
          v65 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
          if ((v70 & 1) != (v71 & 1))
          {
LABEL_91:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

LABEL_48:
          v72 = v101;
          if ((v70 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_14:
          *(v72[7] + 8 * v65) = v100;
        }

        *(a2 + v32) = v72;
        v30 = swift_endAccess();
        goto LABEL_16;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v34);
      v61 = v60;
      swift_endAccess();
      if ((v61 & 1) == 0)
      {
        goto LABEL_43;
      }

      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
      if ((v62 & 1) == 0)
      {
        goto LABEL_86;
      }

      if (*(*(v59 + 56) + 8 * v30) < v100)
      {
        goto LABEL_43;
      }

LABEL_16:
      v33 += 2;
      if (!--v31)
      {
        goto LABEL_66;
      }
    }

LABEL_25:
    v99 = v31;
    swift_getKeyPath();
    a2 = swift_getKeyPath();
    v98 = static Published.subscript.modify();
    v44 = v43;
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v101 = *v44;
    v46 = v101;
    *v44 = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_84;
    }

    v52 = v47;
    if (v46[3] < v51)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v45);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_91;
      }

      v48 = v53;
      v55 = v101;
      if ((v52 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_32:
      *(v55[7] + 8 * v48) = v100;
LABEL_36:
      *v44 = v55;

      v98(v102, 0);

      a2 = v97;
      v31 = v99;
      goto LABEL_37;
    }

    if (v45)
    {
      v55 = v101;
      if (v47)
      {
        goto LABEL_32;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v55 = v101;
      if (v52)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v55[(v48 >> 6) + 8] |= 1 << v48;
    *(v55[6] + 8 * v48) = v34;
    *(v55[7] + 8 * v48) = v100;
    v56 = v55[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_87;
    }

    v55[2] = v58;
    goto LABEL_36;
  }

LABEL_66:
  MEMORY[0x1EEE9AC00](v30);
  *(&v93 - 2) = v94;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest and conformance CP_SubscribeRequest, type metadata accessor for CP_SubscribeRequest, &protocol conformance descriptor for CP_SubscribeRequest);
  v86 = v95;
  static Message.with(_:)();

  PassthroughSubject.send(_:)();

  PubSubTopic.attemptSendQueueFlush()();
  v87 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue;
  swift_beginAccess();
  if (*(*(a2 + v87) + 16))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v88 = a2[18];
      ObjectType = swift_getObjectType();
      (*(v88 + 8))(a2, ObjectType, v88);
      swift_unknownObjectRelease();
    }
  }

  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v86, type metadata accessor for CP_SubscribeRequest);
}

uint64_t closure #1 in closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CP_SubscribeRequest.RecordAck(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SubscribeRequest.RecordAck and conformance CP_SubscribeRequest.RecordAck, type metadata accessor for CP_SubscribeRequest.RecordAck, &protocol conformance descriptor for CP_SubscribeRequest.RecordAck);
  static Message.with(_:)();
  outlined destroy of NSObject?(a1, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore19CP_SubscribeRequestV15OneOf_OperationOSgMR);
  _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v6, a1, type metadata accessor for CP_SubscribeRequest.RecordAck);
  v7 = type metadata accessor for CP_SubscribeRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t closure #4 in PubSubTopic.processInitializeAck(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v45 = a3;
  v43 = a2;
  v4 = type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v42 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for CP_EncryptionID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v5 + 32);
  v44 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v20, v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    *v16 = xmmword_1AEE0C200;
    UnknownStorage.init()();
    if (v21(v12, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v12, &_s14CopresenceCore15CP_EncryptionIDVSgMd, &_s14CopresenceCore15CP_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v12, v16, type metadata accessor for CP_EncryptionID);
  }

  v22 = *v16;
  v23 = v16[1];
  outlined copy of Data._Representation(*v16, v23);
  UUID.init(data:)(v22, v23, v9);
  outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for CP_EncryptionID);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    outlined destroy of NSObject?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, log);
    v25 = v42;
    _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(v44, v42, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 134218242;
      v30 = *v25;
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      v31 = PubSubTopic.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v46);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1AEB26000, v26, v27, "[Subscribe] Unexpected, malformed encryptionID, participantID=%llu %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    else
    {
      outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for CP_SubscribeResponse.InitializeAck.MissingEncryptionID);
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
    return (*(*(v40 - 8) + 56))(v45, 1, 1, v40);
  }

  else
  {
    v34 = *(v18 + 32);
    v35 = v41;
    v34(v41, v9, v17);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
    v37 = *(v36 + 48);
    v38 = v45;
    *v45 = *v44;
    v34(&v38[v37], v35, v17);
    return (*(*(v36 - 8) + 56))(v38, 0, 1, v36);
  }
}

uint64_t closure #5 in PubSubTopic.processInitializeAck(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, log);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 134218242;
      *(v7 + 4) = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);

      *(v7 + 12) = 2080;
      v9 = PubSubTopic.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_1AEB26000, v5, v6, "[Subscribe] EncryptionID refresh timed out, retrying attempt=%ld %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    else
    {
    }

    v12 = *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt);
    if (v12 >= *(v3 + 72))
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        v17 = PubSubTopic.description.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v20);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1AEB26000, v13, v14, "[Subscribe] Failed to refresh encryptionIDs, closing topic %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1B27120C0](v16, -1, -1);
        MEMORY[0x1B27120C0](v15, -1, -1);
      }

      *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 3;
      PubSubTopic.closeStreams(reason:)(1, 2u);
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = v12 + 1;
      PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(1, 0);
    }
  }

  return result;
}

void CP_SubscribeResponse.TopicUpdate.participant.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t CP_SubscribeResponse.TopicUpdate.participant.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t (*CP_SubscribeResponse.TopicUpdate.participant.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  return CP_SubscribeResponse.TopicUpdate.participant.modify;
}

uint64_t CP_SubscribeResponse.TopicUpdate.participant.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t closure #1 in CP_SubscribeResponse.InitializeAck.otherParticipants.getter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + 56);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  do
  {
    v8 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v10 = *v7++;
  }

  while (v10 != v4);
  v11 = v8 != 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a1;
  result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, v11, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v14;
  return result;
}

uint64_t key path setter for PubSubTopic.subscribers : PubSubTopic(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_24;
  }

  v6 = a1[6];
  v5 = a1[7];
  v8 = a1[4];
  v7 = a1[5];

  outlined copy of Data._Representation(v6, v5);
  if (!v7)
  {
    goto LABEL_24;
  }

  v9 = *a3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v10;
  if (v9[3] >= v14)
  {
    if (a2)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined consume of Data._Representation(v6, v5);

      return;
    }

    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_29:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_30:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE37AB0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B2710020](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v11 = v16;
  if (v15)
  {
    goto LABEL_10;
  }

LABEL_13:
  v20 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v21 = (v20[6] + 16 * v11);
  *v21 = v8;
  v21[1] = v7;
  v22 = (v20[7] + 16 * v11);
  *v22 = v6;
  v22[1] = v5;
  v23 = v20[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20[2] = v25;
  if (v43 != 1)
  {
    v26 = a1 + 11;
    v27 = 1;
    while (v27 < a1[2])
    {
      v6 = *(v26 - 1);
      v5 = *v26;
      v29 = *(v26 - 3);
      v28 = *(v26 - 2);

      outlined copy of Data._Representation(v6, v5);
      if (!v28)
      {
        goto LABEL_24;
      }

      v30 = *a3;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v24 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v24)
      {
        goto LABEL_26;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_29;
        }
      }

      if (v36)
      {
        goto LABEL_10;
      }

      v38 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v29;
      v39[1] = v28;
      v40 = (v38[7] + 16 * v31);
      *v40 = v6;
      v40[1] = v5;
      v41 = v38[2];
      v24 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      ++v27;
      v38[2] = v42;
      v26 += 4;
      if (v43 == v27)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v53 - v14);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_22;
  }

  v55 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  v54 = v17;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v17, &v53 - v14, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  v56 = v8;
  v18 = *(v8 + 32);
  v67 = *v15;
  v19 = v67;
  v58 = v16;
  v62 = v7;
  v63 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v22;
  if (v20[3] < v26)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, a2 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    if ((v27 & 1) != (v28 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v27)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v31 = v21;
  specialized _NativeDictionary.copy()();
  v21 = v31;
  if (v27)
  {
LABEL_9:
    v29 = swift_allocError();
    swift_willThrow();
    v66 = v29;
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v56 + 8))(v63, v62);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v32 = *a3;
  *(*a3 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(v32[6] + 8 * v21) = v19;
  v33 = v32[7];
  v57 = *(v56 + 72);
  v34 = v62;
  v18((v33 + v57 * v21), v63, v62);
  v35 = v32[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v32[2] = v36;
    v37 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v61 + v59 + v54;
    v39 = 1;
    while (v39 < *(v37 + 16))
    {
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v38, v15, &_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
      v40 = v34;
      v67 = *v15;
      v41 = v67;
      v18(v63, v15 + v58, v40);
      v42 = *a3;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v25 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v25)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, 1);
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(v50[6] + 8 * v43) = v41;
      v34 = v62;
      v18((v50[7] + v57 * v43), v63, v62);
      v51 = v50[2];
      v25 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      ++v39;
      v50[2] = v52;
      v38 += v59;
      v37 = v61;
      if (v60 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1B2710020](0xD00000000000001BLL, 0x80000001AEE37AB0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    String.hash(into:)();

    MEMORY[0x1B27111E0](v12);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1B27111E0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static PubSubTopic.ClosedReason.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(a1, a3);
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_ADTt1g5(a1, a3);
    }

    return 0;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return a4 == 2 && a3 == 3;
    }

    else if (a1 == 4)
    {
      return a4 == 2 && a3 == 4;
    }

    else
    {
      return a4 == 2 && a3 == 5;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && a3 == 2;
  }

  else
  {
    return a4 == 2 && !a3;
  }
}

uint64_t specialized static PubSubTopic.SendItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  swift_beginAccess();
  result = *(a2 + 64);
  if ((v5 & 1) == 0)
  {
    return (v4 == *(a2 + 56)) & ~result;
  }

  return result;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized PubSubTopic.init(name:config:service:dataCryptorProvider:delegate:seqNumWatermark:reporter:reporterTag:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v118 = a8;
  v109 = a7;
  v110 = a6;
  v129 = a5;
  v130 = a4;
  v106 = a2;
  v105 = a1;
  v108 = a11;
  v107 = a9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v127 = *(v128 - 8);
  v14 = MEMORY[0x1EEE9AC00](v128);
  v125 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v97 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v97 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v97 - v18;
  v116 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v111 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UUID();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMd, &_s7Combine9PublishedVySay14CopresenceCore11PubSubTopicC8SendItemCGGMR);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v97 - v24;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64VAEGGMd, &_s7Combine9PublishedVySDys6UInt64VAEGGMR);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v97 - v33;
  v35 = a3[1];
  v134 = *a3;
  v135 = v35;
  v36 = a3[3];
  v136 = a3[2];
  v137 = v36;
  *(v12 + 144) = 0;
  swift_unknownObjectWeakInit();
  v37 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_firstSubscribeAttemptAt;
  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v12 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscribers;
  v40 = MEMORY[0x1E69E7CC8];
  v133 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  Published.init(initialValue:)();
  v41 = v34;
  v42 = v105;
  (*(v32 + 32))(v12 + v39, v41, v31);
  v43 = v106;
  v44 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__queueState;
  v45 = MEMORY[0x1E69E7CC0];
  v133 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  Published.init(initialValue:)();
  v46 = *(v28 + 32);
  v47 = v30;
  v48 = v45;
  v117 = v27;
  v49 = v27;
  v50 = v107;
  v46(v12 + v44, v47, v49);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__topicMetadata) = v40;
  v51 = v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_closedStreamsReason;
  *v51 = 0;
  *(v51 + 8) = -1;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamAttempt) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamAttempt) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeStreamState) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishStreamState) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInitializeInFlight) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_cryptorUpdatedWhileInitializing) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = 0;
  v52 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__subscriberSeqNums;
  v133 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
  Published.init(initialValue:)();
  (*(v100 + 32))(v12 + v52, v26, v101);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked) = v40;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_pendingDecryptionQueue) = v40;
  v53 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic__sendQueue;
  v133 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
  v54 = v102;
  Published.init(initialValue:)();
  (*(v103 + 32))(v12 + v53, v54);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_receiveQueue) = v45;
  v55 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore19CP_SubscribeRequestVs5NeverOGMR);
  swift_allocObject();
  *(v12 + v55) = PassthroughSubject.init()();
  v56 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore17CP_PublishRequestVs5NeverOGMR);
  swift_allocObject();
  *(v12 + v56) = PassthroughSubject.init()();
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeResponseCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeMissingEncryptionIDsCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscribeNotAuthorizedCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_publishResponseCancellable) = 0;
  v57 = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_upsertMetadataCancellables) = MEMORY[0x1E69E7CD0];
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_shutdownFailsafeCancellable) = 0;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorCancellables) = v57;
  *(v12 + 16) = v42;
  *(v12 + 24) = v43;
  v58 = v135;
  *(v12 + 32) = v134;
  *(v12 + 48) = v58;
  v59 = v137;
  *(v12 + 64) = v136;
  *(v12 + 80) = v59;
  outlined init with copy of UserNotificationCenter(v130, v12 + 96);
  outlined init with copy of UserNotificationCenter(v129, v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  swift_beginAccess();
  *(v12 + 144) = v109;
  swift_unknownObjectWeakAssign();
  v60 = v108;
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporter) = v50;
  if (v60)
  {
    v61 = (v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v61 = a10;
    v61[1] = v60;
  }

  else
  {

    v62 = v97;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v65 = v64;
    (*(v98 + 8))(v62, v99);
    v66 = (v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_reporterTag);
    *v66 = v63;
    v66[1] = v65;
    if (v50)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, log);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = v42;
        v72 = swift_slowAlloc();
        v132[0] = v72;
        *v70 = 136315138;
        v73 = *v66;
        v74 = v66[1];

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v132);

        *(v70 + 4) = v75;
        v48 = MEMORY[0x1E69E7CC0];
        _os_log_impl(&dword_1AEB26000, v68, v69, "PubSubTopic initialized with a reporter, but no tag. Assigning random tag=%s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v76 = v72;
        v42 = v71;
        MEMORY[0x1B27120C0](v76, -1, -1);
        MEMORY[0x1B27120C0](v70, -1, -1);
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  strcpy(v132, "PubSubTopic.");
  BYTE5(v132[1]) = 0;
  HIWORD(v132[1]) = -5120;
  MEMORY[0x1B2710020](v42, v43);

  static DispatchQoS.unspecified.getter();
  v132[0] = v48;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v115 + 104))(v114, *MEMORY[0x1E69E8090], v116);
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_state) = 0;
  v77 = v118;
  if (v118)
  {
    v78 = *(v12 + 120);
    v79 = *(v12 + 128);
    __swift_project_boxed_opaque_existential_1((v12 + 96), v78);
    v80 = (*(v79 + 16))(v78, v79);
    if (*(v77 + 16))
    {
      v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
      if (v82)
      {
        v83 = *(*(v77 + 56) + 8 * v81);
        *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum) = v83;
        *(v12 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked) = v83;
      }
    }

    v84 = OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_subscriberSeqNumsAcked;
    swift_beginAccess();
    *(v12 + v84) = v77;

    v132[0] = v77;
    v85 = *(v12 + 120);
    v86 = *(v12 + 128);
    __swift_project_boxed_opaque_existential_1((v12 + 96), v85);
    v87 = (*(v86 + 16))(v85, v86);
    specialized Dictionary._Variant.removeValue(forKey:)(v87);
    v88 = v132[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v131 = v88;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v89 = v119;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<[PubSubTopic.SendItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GMR, MEMORY[0x1E695C068]);
  v90 = v122;
  v91 = v121;
  Publisher.map<A>(_:)();
  (*(v120 + 8))(v89, v91);
  swift_beginAccess();
  v92 = v126;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[PubSubTopic.SendItem]>.Publisher, PubSubTopic.QueueState> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySay14CopresenceCore11PubSubTopicC8SendItemCG_GAL10QueueStateVGMR, MEMORY[0x1E695BD60]);
  v93 = v124;
  Publisher<>.assign(to:)();
  (*(v123 + 8))(v90, v93);
  v94 = v127;
  v95 = v128;
  (*(v127 + 16))(v125, v92, v128);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v94 + 8))(v92, v95);
  PubSubTopic.bootstrap()();
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v130);
  return v12;
}

uint64_t outlined consume of PubSubTopic.ClosedReason?(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined consume of PubSubTopic.ClosedReason(result, a2);
  }

  return result;
}

uint64_t outlined consume of PubSubTopic.ClosedReason(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t partial apply for closure #1 in PubSubTopic.refreshDataCryptorProvider(with:)()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_dataCryptorProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v0 + 24, v2, v3);
}

unint64_t lazy protocol witness table accessor for type TopicCatchupError and conformance TopicCatchupError()
{
  result = lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError;
  if (!lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicCatchupError and conformance TopicCatchupError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.QueueState and conformance PubSubTopic.QueueState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.State and conformance PubSubTopic.State()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State;
  if (!lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.State and conformance PubSubTopic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState;
  if (!lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.PrimaryStreamState and conformance PubSubTopic.PrimaryStreamState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream()
{
  result = lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream;
  if (!lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PubSubTopic.PrimaryStream and conformance PubSubTopic.PrimaryStream);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.Participant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.Participant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PubSubTopic.Message(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for PubSubTopic.Message(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore11PubSubTopicC12ClosedReasonO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for PubSubTopic.ClosedReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PubSubTopic.ClosedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PubSubTopic.ClosedReason(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PubSubTopic.ReceivedRecord(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PubSubTopic.ReceivedRecord(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void type metadata completion function for PubSubTopic.SendItem(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

void type metadata completion function for PubSubTopic(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[UInt64 : PubSubTopic.Participant]>, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Published<PubSubTopic.QueueState>, &type metadata for PubSubTopic.QueueState, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[UInt64 : UInt64]>, &_sSDys6UInt64VABGMd, &_sSDys6UInt64VABGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<[UInt64 : PubSubTopic.Participant]>(319, &lazy cache variable for type metadata for Published<[PubSubTopic.SendItem]>, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMd, &_sSay14CopresenceCore11PubSubTopicC8SendItemCGMR);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined copy of PubSubTopic.ClosedReason(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for closure #1 in PubSubTopic.nextSeqNum()(uint64_t *a1)
{
  a1[1] = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNum);
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(uint64_t *a1)
{
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  a1[1] = *(v1 + OBJC_IVAR____TtC14CopresenceCore11PubSubTopic_selfSeqNumServerAcked);
  return result;
}

__n128 partial apply for closure #1 in closure #1 in closure #1 in closure #3 in PubSubTopic.setupSubscribeStream(reuseStream:isFirstAttempt:)(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t outlined init with take of (UInt64, UUID)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10Foundation4UUIDVtMd, &_ss6UInt64V_10Foundation4UUIDVtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in PubSubTopic.processInitializeAck(_:)(_BYTE *a1)
{
  v3 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in PubSubTopic.processInitializeAck(_:)(a1, v4, v5, v6);
}

void partial apply for closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)()
{
  v1 = *(type metadata accessor for CP_SubscribeResponse.InitializeAck.TopicCatchupSummary(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in PubSubTopic.processInitializeAck(_:)(uint64_t *a1)
{
  v3 = *(*(v1 + 16) + 8);

  *a1 = v3;
  return result;
}

uint64_t outlined copy of PubSubTopic.ClosedReason?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of PubSubTopic.ClosedReason(a1, a2);
  }

  return a1;
}

uint64_t _s14CopresenceCore17CP_SequenceNumberVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CP_CreateTopicResponse.ClientTopicConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore17CP_SequenceNumberVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PresenceHostSession.updateSuspensionController(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of SessionSuspensionControllerProtocol?(v1 + v3, v6);
  v4 = v7;
  result = outlined destroy of NSObject?(v6, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of UserNotificationCenter(a1, v6);
    swift_beginAccess();
    outlined assign with take of SessionSuspensionControllerProtocol?(v6, v1 + v3);
    return swift_endAccess();
  }

  return result;
}

id PresenceHostSession.connectionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint);
  v2 = type metadata accessor for PresenceSessionConnectionInfo();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC14CopresenceCore29PresenceSessionConnectionInfo_endpoint] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall PresenceHostSession.resetSession()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in PresenceHostSession.resetSession(), v5);
}

uint64_t PresenceHostSession.join()()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to join session.", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = v0[12];

  v0[16] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v14 = 1;
  AsyncSerialQueue.precondition(_:)(&v14);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v10;
  v12 = v10;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
}

{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v0[2] = v0;
  v0[3] = PresenceHostSession.join();
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.join();
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v7 + 24) = v6;
  v0[10] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PresenceHostSession.join()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 144) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.join(), 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t PresenceHostSession.leave()()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to leave session.", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = v0[12];

  v0[16] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v14 = 1;
  AsyncSerialQueue.precondition(_:)(&v14);
  v11 = swift_allocObject();
  v0[17] = v11;
  *(v11 + 16) = v10;
  v12 = v10;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
}

{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v0[2] = v0;
  v0[3] = PresenceHostSession.leave();
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.leave();
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:)specialized partial apply;
  *(v7 + 24) = v6;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t PresenceHostSession.leave()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 144) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.leave(), 0, 0);
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t PresenceHostSession.updateMembers(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.updateMembers(_:), 0, 0);
}

uint64_t PresenceHostSession.updateMembers(_:)()
{
  v21 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2080;
    type metadata accessor for AddressableMember();
    _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);
    v10 = v6;
    v11 = Set.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to update members to: %s.", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v14 = *(v0 + 24);
  v19 = 1;
  AsyncSerialQueue.precondition(_:)(&v19);
  v15 = *(**(v14 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 112);

  v15(v16);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t PresenceHostSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int PresenceHostSession.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

Swift::Int PresenceHostSession.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t PresenceHostSession.state.didset()
{
  v17 = 0;
  AsyncSerialQueue.precondition(_:)(&v17);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.host);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2080;
    v10 = *((*v6 & *v2) + 0xB8);
    v11 = v2;
    v10();
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v7 + 14) = v14;
    v6 = MEMORY[0x1E69E7D40];
    _os_log_impl(&dword_1AEB26000, v3, v4, "%@ updated state to: %s", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  else
  {
  }

  result = (*((*v6 & *v2) + 0xB8))();
  if (result == 4)
  {
    return (*((*v6 & *v2) + 0x128))(0);
  }

  return result;
}

uint64_t PresenceHostSession.state.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t PresenceHostSession.state.setter(char a1)
{

  CurrentValueSubject.send(_:)();

  return PresenceHostSession.state.didset();
}

uint64_t (*PresenceHostSession.state.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state;
  *a1 = v1;
  *(a1 + 8) = v3;

  CurrentValueSubject.value.getter();

  *(a1 + 16) = *(a1 + 17);
  return PresenceHostSession.state.modify;
}

uint64_t PresenceHostSession.state.modify(uint64_t a1)
{
  *(a1 + 17) = *(a1 + 16);

  CurrentValueSubject.send(_:)();

  return PresenceHostSession.state.didset();
}

void PresenceHostSession.suspensionAssertions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_suspensionAssertions;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = 0;
  AsyncSerialQueue.precondition(_:)(&v4);
}

void (*PresenceHostSession.suspensionAssertions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PresenceHostSession.suspensionAssertions.modify;
}

void PresenceHostSession.suspensionAssertions.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3 = 0;
    AsyncSerialQueue.precondition(_:)(&v3);
  }
}

uint64_t PresenceHostSession.reporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t PresenceHostSession.reporter.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of any BidirectionalCollection<Self.BidirectionalCollection.Element == String>(a1, v1 + v3);
  return swift_endAccess();
}

void PresenceHostSession.connection.willset(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = static CP_Record._protobuf_nameMap;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *v10 = v5;
    *(v9 + 12) = 2080;
    v12 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
    swift_beginAccess();
    v13 = *&v5[v12];
    if (v13)
    {
      type metadata accessor for PresenceSessionHostConnection(0);
      v14 = v5;
      v15 = v13;
      v16 = String.init<A>(reflecting:)();
      v18 = v17;
    }

    else
    {
      v19 = v5;
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v31);

    *(v9 + 14) = v20;
    *(v9 + 22) = 2080;
    if (a1)
    {
      type metadata accessor for PresenceSessionHostConnection(0);
      v21 = v4;
      v22 = String.init<A>(reflecting:)();
      v24 = v23;
      v8 = static CP_Record._protobuf_nameMap;
    }

    else
    {
      v24 = 0xE300000000000000;
      v8 = static CP_Record._protobuf_nameMap;
      v22 = 7104878;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v31);

    *(v9 + 24) = v25;
    _os_log_impl(&dword_1AEB26000, v6, v7, "%@ updated oldConnection: %s newConnection: %s", v9, 0x20u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v26 = v8[203];
  swift_beginAccess();
  v27 = *&v5[v26];
  if (v27)
  {
    v28 = direct field offset for XPCHostConnection.connection;
    v29 = *&v27[direct field offset for XPCHostConnection.connection];
    v30 = v27;
    [v29 setExportedObject_];
    [*&v27[v28] setInvalidationHandler_];
    [*&v27[v28] setInterruptionHandler_];
    [*&v27[v28] invalidate];
  }
}

void *PresenceHostSession.connection.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenceHostSession.connection.setter(void *a1)
{
  PresenceHostSession.connection.willset(a1);
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*PresenceHostSession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return PresenceHostSession.connection.modify;
}

void PresenceHostSession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v3;
    PresenceHostSession.connection.willset(v3);
    v8 = *(v5 + v6);
    *(v5 + v6) = v3;

    v9 = *v4;
  }

  else
  {
    PresenceHostSession.connection.willset(*(*a1 + 24));
    v9 = *(v5 + v6);
    *(v5 + v6) = v3;
  }

  free(v2);
}

uint64_t PresenceHostSession.presentDeviceListener.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *PresenceHostSession.init(id:presenceController:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a2;
  v78 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v70);
  v69 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v61 - v20;
  v22 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession__state;
  LOBYTE(v80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore19PresenceHostSessionC5StateOs5NeverOGMR);
  swift_allocObject();
  *&v2[v22] = CurrentValueSubject.init(_:)();
  v23 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  v64 = type metadata accessor for TaskPriority();
  v24 = *(v64 - 8);
  v63 = *(v24 + 56);
  v65 = v24 + 56;
  v62 = v21;
  v63(v21, 1, 1, v64);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8650], v15);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v21, v18, &v3[v23]);
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_suspensionAssertions] = MEMORY[0x1E69E7CD0];
  v25 = &v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_reporter];
  *(v25 + 3) = &type metadata for FastSyncAnalyticsReporter;
  *(v25 + 4) = &protocol witness table for FastSyncAnalyticsReporter;
  *v25 = 0;
  v26 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter;
  type metadata accessor for ABCReporter();
  v27 = swift_allocObject();
  v27[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v27[3] = 0x636E795374736146;
  v27[4] = 0xE800000000000000;
  v27[5] = 0x65636E6573657250;
  v27[6] = 0xEF6E6F6973736553;
  *&v3[v26] = v27;
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_connection] = 0;
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener] = 0;
  v28 = &v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_sessionSuspensionController];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v29 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v30 = *(v10 + 16);
  v30(&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id], v78, v9);
  v31 = [objc_opt_self() anonymousListener];
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener] = v31;
  v32 = [v31 endpoint];
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_endpoint] = v32;
  v61[1] = type metadata accessor for OS_dispatch_queue();
  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v80 = 0xD000000000000014;
  v81 = 0x80000001AEE37C60;
  v67 = v30;
  v30(v14, &v3[v29], v9);
  v61[0] = _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v33);

  v34 = *(v10 + 8);
  v77 = v9;
  v75 = v10 + 8;
  v68 = v34;
  v34(v14, v9);
  static DispatchQoS.unspecified.getter();
  v80 = MEMORY[0x1E69E7CC0];
  _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v72 + 104))(v71, *MEMORY[0x1E69E8090], v73);
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController] = v76;
  v35 = type metadata accessor for PresenceHostSession(0);
  v82.receiver = v3;
  v82.super_class = v35;

  v36 = objc_msgSendSuper2(&v82, sel_init);
  v37 = v62;
  v63(v62, 1, 1, v64);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v36;
  v39 = v36;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #1 in PresenceHostSession.init(id:presenceController:), v38);
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v40 = AnyCancellable.init(_:)();
  v41 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presentDeviceListener;
  swift_beginAccess();
  *&v39[v41] = v40;

  v42 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener;
  v43 = *&v39[OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_listener];
  [v43 setDelegate_];

  [*&v39[v42] resume];
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Log.host);
  v45 = v74;
  v46 = v78;
  v67(v74, v78, v77);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79 = v50;
    *v49 = 136315138;
    v51 = v77;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v45;
    v55 = v54;
    v56 = v68;
    v68(v53, v51);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, &v79);

    *(v49 + 4) = v57;
    _os_log_impl(&dword_1AEB26000, v47, v48, "Initialized PresenceHostSession with identifier: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1B27120C0](v50, -1, -1);
    MEMORY[0x1B27120C0](v49, -1, -1);

    v56(v78, v77);
  }

  else
  {

    v58 = v77;
    v59 = v68;
    v68(v46, v77);
    v59(v45, v58);
  }

  return v39;
}

uint64_t outlined init with copy of SessionSuspensionControllerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SessionSuspensionControllerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in PresenceHostSession.init(id:presenceController:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x158);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v8();
}

uint64_t PresenceHostSession.listenForUpdatedDevices()()
{
  v1[25] = v0;
  v2 = type metadata accessor for UUID();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v1[29] = v3;
  v1[30] = *(v3 - 8);
  v1[31] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMR);
  v1[35] = v5;
  v1[36] = *(v5 - 8);
  v1[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.listenForUpdatedDevices(), 0, 0);
}

{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Waiting for presenceController to provide updated devices.", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[25];

  v0[19] = (*(**(v8 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 152))();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v10 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[PresentDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B270F520](v9, v10);

  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v11 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = PresenceHostSession.listenForUpdatedDevices();
  v13 = v0[38];

  return MEMORY[0x1EEE6D8C8](v0 + 20, v13, v11);
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = PresenceHostSession.listenForUpdatedDevices();
  }

  else
  {
    v2 = PresenceHostSession.listenForUpdatedDevices();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 352) = *(v0 + 160);
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.listenForUpdatedDevices(), 0, 0);
}

{
  v66 = v0;
  v1 = v0[44];
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v65 = v5;
      *v4 = 136315138;
      v0[24] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
      v6 = String.init<A>(reflecting:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v65);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1AEB26000, v2, v3, "Received updated present devices: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x1B27120C0](v5, -1, -1);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    v9 = MEMORY[0x1E69E7D40];
    v10 = (*((*MEMORY[0x1E69E7D40] & *v0[25]) + 0x108))();
    if (v10)
    {
      v11 = v10;
      v12 = *(v1 + 16);
      v13 = (*((*v9 & *v0[25]) + 0x100))(v0 + 13);
      v14 = v1;
      v16 = *(v15 + 24);
      v17 = *(v15 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      (*(v17 + 16))(v12, v16, v17);
      v13(v0 + 13, 0);
      v18 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v58 = v11;
        v0[22] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v19 = v14 + 32;
        do
        {
          v20 = v0[27];
          v21 = v0[28];
          v61 = v0[26];
          v63 = v12;
          outlined init with copy of UserNotificationCenter(v19, (v0 + 8));
          v23 = v0[11];
          v22 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v23);
          (*(v22 + 16))(v23, v22);
          v24 = v0[11];
          v25 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v24);
          v26 = (*(v25 + 24))(v24, v25);
          v28 = v27;
          v30 = v0[11];
          v29 = v0[12];
          __swift_project_boxed_opaque_existential_1(v0 + 8, v30);
          LOBYTE(v29) = (*(v29 + 32))(v30, v29);
          v31 = type metadata accessor for PresenceSessionParticipant();
          v32 = objc_allocWithZone(v31);
          *&v32[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_id] = UUID._bridgeToObjectiveC()();
          v33 = MEMORY[0x1B270FF70](v26, v28);

          *&v32[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_handle] = v33;
          v32[OBJC_IVAR____TtC14CopresenceCore26PresenceSessionParticipant_isCurrentDevice] = v29 & 1;
          v0[17] = v32;
          v0[18] = v31;
          objc_msgSendSuper2((v0 + 17), sel_init);
          (*(v20 + 8))(v21, v61);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v19 += 40;
          v12 = v63 - 1;
        }

        while (v63 != 1);

        v34 = v0[22];
        v11 = v58;
        v18 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v34 = MEMORY[0x1E69E7CC0];
      }

      v48 = v0[34];
      v49 = v0[31];
      v62 = v0[33];
      v64 = v0[32];
      v50 = v0[29];
      v59 = v0[30];
      v51 = *&v11[direct field offset for XPCHostConnection.queue];
      v52 = swift_allocObject();
      *(v52 + 16) = v11;
      *(v52 + 24) = v34;
      v0[6] = partial apply for closure #2 in PresenceHostSession.listenForUpdatedDevices();
      v0[7] = v52;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v0[5] = &block_descriptor_37;
      v53 = _Block_copy(v0 + 2);
      v54 = v51;
      aBlock = v11;
      static DispatchQoS.unspecified.getter();
      v0[23] = v18;
      _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27106E0](0, v48, v49, v53);
      _Block_release(v53);

      (*(v59 + 8))(v49, v50);
      (*(v62 + 8))(v48, v64);
    }

    else
    {
      v40 = v0[25];

      v41 = v40;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v0[25];
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v44;
        *v46 = v44;
        v47 = v44;
        _os_log_impl(&dword_1AEB26000, v42, v43, "%@ Ignoring updated devices because there is no XPC connection to the client.", v45, 0xCu);
        outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B27120C0](v46, -1, -1);
        MEMORY[0x1B27120C0](v45, -1, -1);
      }
    }

    v55 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
    v56 = swift_task_alloc();
    v0[42] = v56;
    *v56 = v0;
    v56[1] = PresenceHostSession.listenForUpdatedDevices();
    v57 = v0[38];

    return MEMORY[0x1EEE6D8C8](v0 + 20, v57, v55);
  }

  else
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1AEB26000, v35, v36, "PresenceController finished providing devices. ", v37, 2u);
      MEMORY[0x1B27120C0](v37, -1, -1);
    }

    v38 = v0[1];

    return v38();
  }
}

{
  *(v0 + 168) = *(v0 + 344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void closure #2 in PresenceHostSession.listenForUpdatedDevices()(uint64_t a1)
{
  v1 = [*(a1 + direct field offset for XPCHostConnection.connection) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24PresenceSessionXPCClient_pMd, &_s14CopresenceCore24PresenceSessionXPCClient_pMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for PresenceSessionParticipant();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 updatePresentDevicesWithDevices_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t PresenceHostSession.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(32);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B2710020](v1);

  MEMORY[0x1B2710020](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v2);

  v3 = MEMORY[0x1B2710020](0x3A6574617473202CLL, 0xE900000000000020);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v3);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

id PresenceHostSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenceHostSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceHostSession(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceHostSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession;

  return PresenceHostSession.acquireSuspensionAssertion()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance PresenceHostSession(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t PresenceHostSession.acquireSuspensionAssertion()()
{
  v1[13] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyyyYaYbc__GMd, &_sScS12ContinuationV11YieldResultOyyyYaYbc__GMR);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(0);
  v1[17] = v3;
  v4 = *(v3 - 8);
  v1[18] = v4;
  v1[19] = *(v4 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

{
  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 12;
  v0[3] = PresenceHostSession.acquireSuspensionAssertion();
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &async function pointer to partial apply for closure #1 in PresenceHostSession.acquireSuspensionAssertion();
  v6[4] = v1;
  type metadata accessor for AsyncSerialQueue(0);
  v7 = swift_allocObject();
  *(v7 + 16) = &async function pointer to partial apply for specialized closure #1 in closure #1 in AsyncSerialQueue.performAndWaitFor<A>(_:);
  *(v7 + 24) = v6;
  v0[10] = &thunk for @escaping @callee_guaranteed @Sendable @async () -> ()partial apply;
  v0[11] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYaYbc_GMd, &_sScS12ContinuationVyyyYaYbc_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v0[21], type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());

  v1 = v0[1];
  v2 = v0[25];

  return v1(v2);
}

{
  v1 = *(v0 + 168);

  outlined destroy of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v1, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PresenceHostSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[18];
  v5 = v1[13];
  UUID.init()();
  swift_unknownObjectWeakInit();
  v1[22] = OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_workQueue;
  outlined init with copy of AsyncSerialQueue(v3, v2, type metadata accessor for Assertion #1 in PresenceHostSession.acquireSuspensionAssertion());
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v1[23] = v7;
  *(v7 + 16) = v5;
  outlined init with take of Assertion #1 in PresenceHostSession.acquireSuspensionAssertion()(v2, v7 + v6);
  v8 = v5;

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.acquireSuspensionAssertion(), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 192) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = PresenceHostSession.acquireSuspensionAssertion();
  }

  else
  {

    *(v2 + 200) = *(v2 + 96);
    v4 = PresenceHostSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in PresenceHostSession.join()()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PresenceHostSession.join();
  v3 = *(v0 + 16);

  return specialized PresenceHostSession.invalidation(block:)(v3);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PresenceHostSession._join()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession._join(), 0, 0);
}

{
  v13 = v0;
  v12 = 0;
  AsyncSerialQueue.precondition(_:)(&v12);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ processing request to join", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PresenceHostSession.assertPresence()();
}

uint64_t PresenceHostSession.invalidation(block:)(int *a1)
{
  *(v2 + 24) = v1;
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = PresenceHostSession.invalidation(block:);

  return v5();
}

uint64_t PresenceHostSession.invalidation(block:)()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.invalidation(block:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v26 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v0[2] = v8;
    v13 = v9;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating %@ due to invalidation block throwing error. %s", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v10, -1, -1);
  }

  v18 = v0[3];
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v18) + 0xC0))(4);
  (*((*v19 & *v18) + 0x110))(0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1AEB26000, v20, v21, "Releasing presence assertion due to invalidation.", v22, 2u);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  v23 = swift_task_alloc();
  v0[6] = v23;
  *v23 = v0;
  v23[1] = PresenceHostSession.invalidation(block:);

  return PresenceHostSession.releasePresence()();
}

{

  if (v0)
  {
  }

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.invalidation(block:), 0, 0);
}

uint64_t PresenceHostSession.assertPresence()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceHostSession.assertPresence(), 0, 0);
}

{
  v29 = v0;
  v28 = 0;
  AsyncSerialQueue.precondition(_:)(&v28);
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  *(v0 + 32) = __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to assert presence", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  *(v0 + 40) = v7;
  v11 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xB8))();
  if (v11 <= 1)
  {
    if (v11)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Failing to assert presence because we're already asserted.";
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

  else if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Failing to assert presence because session is currently leaving and shouldn't have been able to re-enter.";
LABEL_20:
        _os_log_impl(&dword_1AEB26000, v12, v13, v15, v14, 2u);
        MEMORY[0x1B27120C0](v14, -1, -1);
      }
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = "Failing to assert presence because we're in the invalidated state.";
        goto LABEL_20;
      }
    }

LABEL_21:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }

  v16 = *(v0 + 16);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 16);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v7;
    v22 = v19;
    _os_log_impl(&dword_1AEB26000, v17, v18, "%@ asserting presence", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v21, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v23 = *(v0 + 16);

  v27 = (*(**(v23 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 192) + **(**(v23 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 192));
  v24 = swift_task_alloc();
  *(v0 + 48) = v24;
  *v24 = v0;
  v24[1] = PresenceHostSession.assertPresence();

  return v27();
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.assertPresence(), 0, 0);
  }
}

{
  v1 = *(v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v4;
    v8 = v5;
    _os_log_impl(&dword_1AEB26000, v2, v3, "%@ Asserted presence", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v9 = *(v0 + 16);

  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0xC0))(1);
  if ((*((*v10 & *v9) + 0x120))(v11))
  {
  }

  else
  {
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    static TaskPriority.background.getter();
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v16 = v13;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in PresenceHostSession.assertPresence(), v15);

    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in PresenceHostSession.leave()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return PresenceHostSession._leave(endState:)(4);
}

uint64_t PresenceHostSession._leave(endState:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 50) = a1;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession._leave(endState:), 0, 0);
}

uint64_t PresenceHostSession._leave(endState:)()
{
  v42 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = *(v0 + 50);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41[0] = v11;
    *v9 = 138412546;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2080;
    *(v0 + 49) = v8;
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v41);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Received request to leave current session with an end-desired state of: %s", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  *(v0 + 24) = v7;
  v16 = *(v0 + 16);
  v17 = *(v0 + 50);
  LOBYTE(v41[0]) = 0;
  AsyncSerialQueue.precondition(_:)(v41);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xB8);
  if (v17 == v19())
  {
    v20 = *(v0 + 16);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 16);
      v24 = *(v0 + 50);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41[0] = v27;
      *v25 = 138412546;
      *(v25 + 4) = v23;
      *v26 = v7;
      *(v25 + 12) = 2080;
      *(v0 + 48) = v24;
      v28 = v23;
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v41);

      *(v25 + 14) = v31;
      _os_log_impl(&dword_1AEB26000, v21, v22, "%@ is already in desired end-state: %s", v25, 0x16u);
      outlined destroy of NSObject?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1B27120C0](v27, -1, -1);
      MEMORY[0x1B27120C0](v25, -1, -1);
    }

LABEL_9:
    specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
    v32 = *(v0 + 8);
LABEL_25:

    return v32();
  }

  v33 = v19();
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      v38 = *(v0 + 50);
      if (v38 == 4)
      {
        (*((*v18 & **(v0 + 16)) + 0xC0))(3);
        v38 = *(v0 + 50);
      }

      (*((*v18 & **(v0 + 16)) + 0xC0))(v38);
      goto LABEL_9;
    }

    if (v33 == 3)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Session is currently leaving and shouldn't have been able to re-enter.";
LABEL_23:
        _os_log_impl(&dword_1AEB26000, v34, v35, v37, v36, 2u);
        MEMORY[0x1B27120C0](v36, -1, -1);
        goto LABEL_24;
      }
    }

    else
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Session is currently invalidated. Can't leave.";
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  if (!v33)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Session is currently idle in .waiting state. Can't leave.";
      goto LABEL_23;
    }

LABEL_24:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
    v32 = *(v0 + 8);
    goto LABEL_25;
  }

  if (*(v0 + 50) == 4)
  {
    (*((*v18 & **(v0 + 16)) + 0xC0))(3);
  }

  v40 = swift_task_alloc();
  *(v0 + 32) = v40;
  *v40 = v0;
  v40[1] = PresenceHostSession._leave(endState:);

  return PresenceHostSession.releasePresence()();
}

{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = PresenceHostSession._leave(endState:);
  }

  else
  {
    v2 = PresenceHostSession._leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xC0))(*(v0 + 50));
  specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xC0))(*(v0 + 50));
  specialized $defer #1 () in PresenceHostSession._leave(endState:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PresenceHostSession.releasePresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.releasePresence(), 0, 0);
}

{
  v6 = v0;
  v1 = *(v0 + 24);
  v5 = 0;
  AsyncSerialQueue.precondition(_:)(&v5);
  v4 = (*(**(v1 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 200) + **(**(v1 + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_presenceController) + 200));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = PresenceHostSession.releasePresence();

  return v4();
}

{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in PresenceHostSession.assertPresence()()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14CopresenceCore19PresenceHostSession_abcReporter);
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001AEE31310;
    v4 = 0xD00000000000001DLL;
  }

  v7 = (*(*v1 + 112))(0xD000000000000011, 0x80000001AEE37D60, 0xD00000000000002FLL, 0x80000001AEE37D80, v4, v6);
  v0[3] = v7;

  if (v7)
  {
    v16 = (*(*v1 + 120) + **(*v1 + 120));
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = closure #2 in IDSGroupSessionProvider.requestParticipant(for:);
    v9.n128_u64[0] = 0;

    return v16(v7, v9);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.abcReporter);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEB26000, v12, v13, "Failed to generate signature for session unsuspend failure", v14, 2u);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t closure #1 in PresenceHostSession.resetSession()()
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Resetting session", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = closure #1 in PresenceHostSession.resetSession();

  return PresenceHostSession.leave()();
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in PresenceHostSession.resetSession(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v16 = v0;
  v1 = v0[6];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Failed to reset session, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  else
  {
    v12 = v0[6];
  }

  v13 = v0[1];

  return v13();
}

uint64_t partial apply for closure #1 in PresenceHostSession.resetSession()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.resetSession()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in PresenceHostSession.join()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in PresenceHostSession.join()(a1, v4);
}

uint64_t PresenceHostSession.suspend()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.suspend(), 0, 0);
}

{
  v44 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  *(v0 + 24) = __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Handling request to suspend", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  *(v0 + 32) = v7;
  v11 = *(v0 + 16);
  v43 = 0;
  AsyncSerialQueue.precondition(_:)(&v43);
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*((*MEMORY[0x1E69E7D40] & *v11) + 0xD8))() + 16);

  v15 = *(v0 + 16);
  if (!v13)
  {
    v25 = v15;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = "%@ Not suspending because we have no suspension assertions";
LABEL_18:
      v33 = *(v0 + 16);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v7;
      v36 = v33;
      _os_log_impl(&dword_1AEB26000, v26, v27, v28, v34, 0xCu);
      outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

LABEL_19:

    v37 = *(v0 + 8);
LABEL_24:

    return v37();
  }

  v16 = (*((*v12 & *v15) + 0xB8))(v14);
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v17 = *(v0 + 16);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = *(v0 + 16);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v20;
          *v22 = v7;
          v23 = v20;
          v24 = "%@ Session is currently leaving and shouldn't have been able to re-enter.";
LABEL_22:
          _os_log_impl(&dword_1AEB26000, v18, v19, v24, v21, 0xCu);
          outlined destroy of NSObject?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B27120C0](v22, -1, -1);
          MEMORY[0x1B27120C0](v21, -1, -1);
          goto LABEL_23;
        }
      }

      else
      {
        v38 = *(v0 + 16);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v39 = *(v0 + 16);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v39;
          *v22 = v7;
          v40 = v39;
          v24 = "%@ Session is currently invalidated. Can't suspend.";
          goto LABEL_22;
        }
      }

      goto LABEL_23;
    }

    v32 = *(v0 + 16);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = "%@ already suspended.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v16)
  {
    v29 = *(v0 + 16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v30 = *(v0 + 16);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v30;
      *v22 = v7;
      v31 = v30;
      v24 = "%@ can't suspend without an idle session";
      goto LABEL_22;
    }

LABEL_23:

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    v37 = *(v0 + 8);
    goto LABEL_24;
  }

  v42 = swift_task_alloc();
  *(v0 + 40) = v42;
  *v42 = v0;
  v42[1] = PresenceHostSession.suspend();

  return PresenceHostSession._leave(endState:)(2);
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceHostSession.suspend(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v7;
    *(v9 + 12) = 2112;
    v11 = v8;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "%@ Suspend's leave failed, reason: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t PresenceHostSession.unsuspend()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceHostSession.unsuspend(), 0, 0);
}

{
  v31 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Handling request to unsuspend", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  LOBYTE(v30[0]) = 0;
  AsyncSerialQueue.precondition(_:)(v30);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD8);
  v8 = *(v7() + 16);

  v10 = *(v0 + 16);
  if (v8)
  {
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30[0] = v15;
      *v14 = 136315138;
      v7();
      type metadata accessor for UUID();
      _s14CopresenceCore17AddressableMemberCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v16 = Set.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v30);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, v12, v13, "Not unsuspending due to active suspension assertions: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1B27120C0](v15, -1, -1);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    v20 = *(v0 + 8);
LABEL_16:

    return v20();
  }

  if ((*((*v6 & *v10) + 0xB8))(v9) != 2)
  {
    v23 = *(v0 + 16);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 16);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v5;
      v29 = v26;
      _os_log_impl(&dword_1AEB26000, v24, v25, "%@ Can't unsuspend without a suspended session.", v27, 0xCu);
      outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v28, -1, -1);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }

    lazy protocol witness table accessor for type PresenceHostSession.Errors and conformance PresenceHostSession.Errors();
    swift_allocError();
    swift_willThrow();
    v20 = *(v0 + 8);
    goto LABEL_16;
  }

  v21 = swift_task_alloc();
  *(v0 + 24) = v21;
  *v21 = v0;
  v21[1] = PersonalPresenceDataSource.assertPresence(using:);

  return PresenceHostSession._join()();
}