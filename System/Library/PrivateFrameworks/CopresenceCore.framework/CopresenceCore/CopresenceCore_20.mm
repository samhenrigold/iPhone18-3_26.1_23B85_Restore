void *ActivitySessionManager.sessionUnjoined(session:startDate:endDate:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for default == -1)
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
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v11;
    v28 = v15;
    *v14 = 136315138;
    type metadata accessor for ActivitySession(0);
    v16 = v11;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v12, v13, "ActivitySessionManager revoking background authorization for unjoined session: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v20 = MEMORY[0x1E69E7D40];
  v21 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x138))();
  [v21 revokeBackgroundAuthorizationForSession_];

  result = (*((*v20 & *v2) + 0x120))();
  if (result)
  {
    v23 = result;
    v24 = (*((*v20 & *v11) + 0x388))();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = Date._bridgeToObjectiveC()().super.isa;
    [v23 activitySessionManager:v2 sessionUnjoined:v24 startDate:isa endDate:v26];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sessionCapabilitiesUpdated(session:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_4:
    v9 = type metadata accessor for Logger();
    v10 = __swift_project_value_buffer(v9, static Log.default);
    v11 = a1;
    v55 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = MEMORY[0x1E69E7D40];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v58 = v11;
      v59 = v17;
      *v16 = 136315394;
      type metadata accessor for ActivitySession(0);
      v18 = v11;
      v19 = String.init<A>(reflecting:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v59);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2048;
      (*((*v15 & *v18) + 0x2C0))(&v58, v22);

      *(v16 + 14) = v58;
      _os_log_impl(&dword_1AEB26000, v12, v13, "ActivitySessionManager capabilities on session: %s updated to: %ld", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    else
    {
    }

    (*((*v15 & *v11) + 0x2C0))(&v59);
    v28 = v53;
    v29 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      v30 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 2) = v30;
      v33 = &v29[16 * v32];
      *(v33 + 4) = 0xD000000000000010;
      *(v33 + 5) = 0x80000001AEE2EFD0;
    }

    else
    {
      v30 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v30)
      {
LABEL_29:

        return;
      }
    }

    v34 = *((*v15 & *v28) + 0x120);
    v56 = (*v15 & *v28) + 288;
    v57 = v34;
    v51[1] = v29;
    v35 = (v29 + 40);
    *&v27 = 136315394;
    v52 = v27;
    do
    {
      v38 = *(v35 - 1);
      v39 = *v35;

      v40 = v28;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v59 = v44;
        *v43 = v52;
        v45 = v57();
        v54 = v38;
        if (v45)
        {
          v58 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32CPActivitySessionManagerDelegate_pMd, &_sSo32CPActivitySessionManagerDelegate_pMR);
          v46 = String.init<A>(reflecting:)();
          v48 = v47;
        }

        else
        {
          v48 = 0xE300000000000000;
          v46 = 7104878;
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v59);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;
        v38 = v54;
        *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v39, &v59);
        _os_log_impl(&dword_1AEB26000, v41, v42, "Asking delegate %s to register plugin: %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v44, -1, -1);
        MEMORY[0x1B27120C0](v43, -1, -1);

        v28 = v53;
      }

      else
      {
      }

      v50 = v57();
      if (v50)
      {
        v36 = v50;
        v37 = MEMORY[0x1B270FF70](v38, v39);

        [v36 activitySessionManager:v40 shouldRegisterPlugin:v37];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v35 += 2;
      --v30;
    }

    while (v30);
    goto LABEL_29;
  }

  if ([*(v1 + OBJC_IVAR___CPActivitySessionManager_featureFlags) sharePlayInFaceTimeCanvasEnabled])
  {
    v53 = v1;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1AEB26000, v24, v25, "Not updating capabilities due to FeatureFlag being disabled.", v26, 2u);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }
}

Swift::Void __swiftcall ActivitySessionManager.updateVirtualParticipantId(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMR);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMd, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMR);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR);
  MEMORY[0x1EEE9AC00](v42);
  v13 = v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMR);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = v34 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v38 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    if (a1 && [*&v2[OBJC_IVAR___CPActivitySessionManager_featureFlags] expanseTopicStateEnabled])
    {
      v21 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))();
      v22 = v21(v2, &v2[OBJC_IVAR___CPActivitySessionManager_groupUUID], a1);

      *&v2[OBJC_IVAR___CPActivitySessionManager_topicsObserver] = v22;

      v46 = v22;
      v34[1] = static Subscribers.Demand.unlimited.getter();
      type metadata accessor for PubSubTopicsObserver();
      v36 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMR);
      v35 = v6;
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type PubSubTopicsObserver and conformance PubSubTopicsObserver, type metadata accessor for PubSubTopicsObserver, &protocol conformance descriptor for PubSubTopicsObserver);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Sequence<[TopicInfo], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGMR, MEMORY[0x1E695BE60]);
      Publisher.flatMap<A>(maxPublishers:_:)();

      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMd, &_s7Combine10PublishersO7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_Say14CopresenceCore9TopicInfoOGs5NeverOGAJ14PluginRpcErrorOGAJ20PubSubTopicsObserverCGMR, MEMORY[0x1E695BE40]);
      Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
      (*(v37 + 8))(v11, v9);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMd, &_s7Combine9PublishedVyShy14CopresenceCore15ActivitySessionCGGMR);
      v23 = v39;
      Published.projectedValue.getter();
      swift_endAccess();
      v24 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<ActivitySession>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14CopresenceCore15ActivitySessionCG_GMR, MEMORY[0x1E695C068]);
      v25 = v41;
      Publisher.map<A>(_:)();
      (*(v40 + 8))(v23, v25);
      MEMORY[0x1B27106A0](*&v2[OBJC_IVAR___CPActivitySessionManager_topicsObserverCacheEvictionTimeout]);
      v26 = v38;
      *&v13[*(v24 + 88)] = v38;
      v46 = v26;
      v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v28 = v35;
      (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.WaitUntilAvailable<Publishers.HandleEvents<Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver>>, Publishers.Map<Published<Set<ActivitySession>>.Publisher, [String]>, OS_dispatch_queue> and conformance Publishers.WaitUntilAvailable<A, B, C>, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.WaitUntilAvailable<A, B, C>);
      lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v29 = v26;
      v30 = v43;
      Publisher.receive<A>(on:options:)();
      outlined destroy of NSObject?(v28, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      outlined destroy of NSObject?(v13, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAD9TopicInfoOGs5NeverOGAD14PluginRpcErrorOGAD20PubSubTopicsObserverCGGAC0K0Vy_AA9PublishedV9PublisherVyShyAD15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGMR);
      *(swift_allocObject() + 16) = v36;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.WaitUntilAvailable<Publishers.HandleEvents<Publishers.FlatMap<Publishers.SetFailureType<Publishers.Sequence<[TopicInfo], Never>, PluginRpcError>, PubSubTopicsObserver>>, Publishers.Map<Published<Set<ActivitySession>>.Publisher, [String]>, OS_dispatch_queue>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMd, &_s7Combine10PublishersO9ReceiveOnVy_AC14CopresenceCoreE18WaitUntilAvailableVy_AC12HandleEventsVy_AC7FlatMapVy_AC14SetFailureTypeVy_AC8SequenceVy_SayAF9TopicInfoOGs5NeverOGAF14PluginRpcErrorOGAF20PubSubTopicsObserverCGGAC0M0Vy_AA9PublishedV9PublisherVyShyAF15ActivitySessionCG_GSaySSGGSo17OS_dispatch_queueCGA15_GMR, MEMORY[0x1E695BE98]);
      v31 = v45;
      v32 = Publisher.sink(receiveCompletion:receiveValue:)();

      (*(v44 + 8))(v30, v31);
      v33 = &OBJC_IVAR___CPActivitySessionManager_topicsObserverSubscription;
    }

    else
    {
      v32 = 0;
      v33 = &OBJC_IVAR___CPActivitySessionManager_topicsObserver;
    }

    *&v2[*v33] = v32;
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for Sequence.publisher : [TopicInfo]()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [TopicInfo] and conformance [A], &_sSay14CopresenceCore9TopicInfoOGMd, &_sSay14CopresenceCore9TopicInfoOGMR, MEMORY[0x1E69E6328]);
  return Sequence.publisher.getter();
}

uint64_t specialized implicit closure #2 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t *a1)
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

void closure #1 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  outlined copy of TopicInfo(v2, v1, v3, v4, v5);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined consume of TopicInfo(v2, v1, v3, v4, v5);
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;

    if (v5)
    {
    }

    else
    {
    }

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Received topic info: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

void closure #3 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - v7;
  v9 = type metadata accessor for PluginRpcError(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v39 - v21;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v39 - v21, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v23 = *(v10 + 48);
  if (v23(v22, 1, v9) == 1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.default);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v43;
      _os_log_impl(&dword_1AEB26000, v25, v26, "Stopped observing topics for virtualParticipantId=%llu", v27, 0xCu);
      MEMORY[0x1B27120C0](v27, -1, -1);
    }
  }

  else
  {
    _s14CopresenceCore14PluginRpcErrorOWObTm_0(v22, v19, type metadata accessor for PluginRpcError);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Log.default);
    _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v19, v17, type metadata accessor for PluginRpcError);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v40 = v30;
      v31 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v31 = 134218242;
      *(v31 + 4) = v43;
      *(v31 + 12) = 2080;
      _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v17, v8, type metadata accessor for PluginRpcError);
      (*(v10 + 56))(v8, 0, 1, v9);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v8, v6, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      if (v23(v6, 1, v9) == 1)
      {
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        v35 = v42;
        _s14CopresenceCore14PluginRpcErrorOWObTm_0(v6, v42, type metadata accessor for PluginRpcError);
        _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v35, v41, type metadata accessor for PluginRpcError);
        v33 = String.init<A>(reflecting:)();
        v32 = v36;
        _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v35, type metadata accessor for PluginRpcError);
      }

      outlined destroy of NSObject?(v8, &_s14CopresenceCore14PluginRpcErrorOSgMd, &_s14CopresenceCore14PluginRpcErrorOSgMR);
      _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v17, type metadata accessor for PluginRpcError);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v44);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1AEB26000, v29, v40, "Failed to observe topics for virtualParticipantId=%llu, error=%s", v31, 0x16u);
      v38 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B27120C0](v38, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);

      v34 = v19;
    }

    else
    {

      _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v17, type metadata accessor for PluginRpcError);
      v34 = v19;
    }

    _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v34, type metadata accessor for PluginRpcError);
  }
}

void closure #4 in ActivitySessionManager.updateVirtualParticipantId(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v75 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  LOBYTE(v5) = *(a1 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_25:
    if (one-time initialization token for default == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

  v7 = Strong;
  v71 = v5;
  v72 = v4;
  v73 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v82;
  v74 = v2;
  if ((v82 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v5 = v82;
    v8 = v83;
    v9 = v84;
    v10 = v85;
    v2 = v86;
  }

  else
  {
    v11 = -1 << *(v82 + 32);
    v8 = v82 + 56;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v2 = v13 & *(v82 + 56);

    v10 = 0;
  }

  v3 = (v9 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v14 = v10;
  v15 = v2;
  v16 = v10;
  if (!v2)
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        goto LABEL_24;
      }

      v15 = *(v8 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_26:
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    outlined copy of TopicInfo(v75, v2, v4, v3, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    outlined consume of TopicInfo(v75, v2, v4, v3, v5);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v81 = v29;
      *v28 = 136315138;
      if (v5)
      {
        v77 = v75;
        v78 = v2;
        v79 = v4;
        v80 = v3;
      }

      else
      {
        v77 = v75;
        v78 = v2;
        v79 = v4;
      }

      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v81);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1AEB26000, v26, v27, "Dropping topic update for unrecognized activity session: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1B27120C0](v29, -1, -1);
      MEMORY[0x1B27120C0](v28, -1, -1);
    }

    goto LABEL_31;
  }

LABEL_13:
  v17 = (v15 - 1) & v15;
  v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
  if (!v18)
  {
LABEL_24:
    outlined consume of Set<String>.Iterator._Variant(v5);

    v3 = v73;
    v2 = v74;
    v4 = v72;
    LOBYTE(v5) = v71;
    goto LABEL_25;
  }

  while (1)
  {
    v76 = v18;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    v4 = v74;

    if (v20 == v75 && v22 == v74)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_33;
    }

    v10 = v16;
    v2 = v17;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v19 = __CocoaSet.Iterator.next()();
    if (v19)
    {
      v81 = v19;
      type metadata accessor for ActivitySession(0);
      swift_dynamicCast();
      v18 = v77;
      v16 = v10;
      v17 = v2;
      if (v77)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

LABEL_33:
  outlined consume of Set<String>.Iterator._Variant(v5);

  if ((v71 & 1) == 0)
  {
    v26 = v76;
    (*((*MEMORY[0x1E69E7D40] & v76->isa) + 0x428))(v72, 0);
    goto LABEL_31;
  }

  v33 = v76;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Log.default);
  v35 = v76;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v80 = v73;
    v81 = v40;
    *v38 = 138412546;
    *(v38 + 4) = v35;
    *v39 = v76;
    *(v38 + 12) = 2080;
    v77 = v75;
    v78 = v74;
    v79 = v72;
    v41 = v35;

    v42 = String.init<A>(reflecting:)();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v81);

    *(v38 + 14) = v44;
    _os_log_impl(&dword_1AEB26000, v36, v37, "Terminating activitySession %@ from topicTermination signal %s", v38, 0x16u);
    outlined destroy of NSObject?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v45 = v39;
    v33 = v76;
    MEMORY[0x1B27120C0](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);
  }

  v46 = MEMORY[0x1E69E7D40];
  v47 = (*((*MEMORY[0x1E69E7D40] & v35->isa) + 0x328))();
  v48 = [v47 isStaticActivity];

  if (v48)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v49 = v35;
    v26 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80 = v73;
      v81 = v53;
      *v51 = 136315394;
      v77 = v75;
      v78 = v74;
      v79 = v72;
      v54 = String.init<A>(reflecting:)();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v81);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2112;
      *(v51 + 14) = v49;
      *v52 = v33;
      v57 = v49;
      _os_log_impl(&dword_1AEB26000, v26, v50, "Ignoring topicTermination signal %s for static activitySession %@", v51, 0x16u);
      outlined destroy of NSObject?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x1B27120C0](v53, -1, -1);
      MEMORY[0x1B27120C0](v51, -1, -1);

      return;
    }

LABEL_31:

    return;
  }

  v58 = (*((*v46 & v35->isa) + 0x440))();
  (*((*v46 & v35->isa) + 0x2F8))(&v77, v58);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v81 = v59;
  v60 = static ActivitySession.State.== infix(_:_:)(&v77, &v81);
  outlined consume of ActivitySession.State(v81);
  outlined consume of ActivitySession.State(v77);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = v62;
  if (v60)
  {
    v64 = v35;

    if (os_log_type_enabled(v61, v63))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v77 = v66;
      *v65 = 136315138;
      v67 = v75;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v77);
      _os_log_impl(&dword_1AEB26000, v61, v63, "Successfully terminated topic %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x1B27120C0](v66, -1, -1);
      MEMORY[0x1B27120C0](v65, -1, -1);
    }

    else
    {

      v67 = v75;
    }

    v72(v67, v74);
  }

  else
  {
    if (os_log_type_enabled(v61, v62))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v77 = v69;
      *v68 = 136315138;

      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v77);

      *(v68 + 4) = v70;
      _os_log_impl(&dword_1AEB26000, v61, v63, "Couldn't terminate topic %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x1B27120C0](v69, -1, -1);
      MEMORY[0x1B27120C0](v68, -1, -1);
    }

    else
    {
    }
  }
}

void ActivitySessionManager.logMetricsForSessionStart(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  v12 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(v11) & 1) == 0)
  {
    return;
  }

  v13 = (*((*v12 & *v2) + 0x120))();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = *((*v12 & *a1) + 0x328);
  v16 = v15();
  v17 = [v16 metadata];

  if (!v17 || (v18 = [v17 context], v17, !v18))
  {
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x7079745F6C6C6163;
  v45 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  v20 = [v14 activitySessionManagerRequestedCallTypeStringForLogging_];
  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x1B270FF70](v21);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 48) = v22;
  strcpy((inited + 56), "activity_type");
  *(inited + 70) = -4864;
  v23 = [v18 analyticsIdentifier];
  if (!v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x1B270FF70](v24);
  }

  v46 = v18;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 72) = v25;
  *(inited + 80) = 0x695F656C646E7562;
  *(inited + 88) = 0xE900000000000064;
  v26 = v15();
  v27 = [v26 bundleIdentifier];

  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 96) = v28;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000001AEE36BE0;
  v29 = v15();
  v30 = [v29 metadata];

  if (v30)
  {
    v31 = [v30 supportsContinuationOnTV];
  }

  else
  {
    v31 = 0;
  }

  v10 = "com.apple.facetime.groupsession";
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  if (one-time initialization token for default != -1)
  {
    goto LABEL_21;
  }

LABEL_16:
  v32 = v10 - 32;
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.default);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, v32 | 0x8000000000000000, aBlock);
    *(v36 + 12) = 2080;
    v47 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v38 = String.init<A>(reflecting:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, aBlock);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_1AEB26000, v34, v35, "Logged analytics event for session: %s %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v37, -1, -1);
    MEMORY[0x1B27120C0](v36, -1, -1);
  }

  v41 = v46;
  v42 = MEMORY[0x1B270FF70](0xD00000000000001FLL, v32 | 0x8000000000000000);
  v43 = swift_allocObject();
  *(v43 + 16) = a1;
  aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_137;
  v44 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v44);
  swift_unknownObjectRelease();
}

void ActivitySessionManager.logMetricsForSessionEnd(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v12 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(v11) & 1) == 0)
  {
    return;
  }

  v13 = (*((*v12 & *v2) + 0x120))();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = *((*v12 & *a1) + 0x328);
  v16 = v15();
  v17 = [v16 metadata];

  if (!v17 || (v18 = [v17 context], v17, !v18))
  {
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x7079745F6C6C6163;
  v48 = inited + 32;
  *(inited + 40) = 0xE900000000000065;
  v20 = [v14 activitySessionManagerRequestedCallTypeStringForLogging_];
  if (!v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = MEMORY[0x1B270FF70](v21);
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 48) = v22;
  strcpy((inited + 56), "activity_type");
  *(inited + 70) = -4864;
  v23 = [v18 analyticsIdentifier];
  if (!v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x1B270FF70](v24);
  }

  v49 = v18;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 72) = v25;
  *(inited + 80) = 0x695F656C646E7562;
  *(inited + 88) = 0xE900000000000064;
  v26 = v15();
  v27 = [v26 bundleIdentifier];

  if (!v27)
  {
    __break(1u);

    _OBJC_LABEL_PROTOCOL___SKPresenceDelegate = aBlock[0];

    __break(1u);
    return;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];

  *(inited + 96) = v28;
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x80000001AEE36BE0;
  v29 = v15();
  v30 = [v29 metadata];

  if (v30)
  {
    v31 = [v30 supportsContinuationOnTV];
  }

  else
  {
    v31 = 0;
  }

  v2 = swift_allocObject();
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  v33 = swift_arrayDestroy();
  v2[2] = v32;
  v34 = (*((*v12 & *a1) + 0x2D8))(v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v32;
  v2[2] = 0x8000000000000000;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v34, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, aBlock);

  v10 = v49;
  v7 = "com.apple.facetime.groupsession.end";
  v2[2] = aBlock[0];

  if (one-time initialization token for default != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v36 = v7 - 32;
  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Log.default);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, v36 | 0x8000000000000000, aBlock);
    *(v40 + 12) = 2080;
    swift_beginAccess();
    v50 = v2[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v42 = String.init<A>(reflecting:)();
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, aBlock);

    *(v40 + 14) = v45;
    _os_log_impl(&dword_1AEB26000, v38, v39, "Logged analytics event for session: %s %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v41, -1, -1);
    MEMORY[0x1B27120C0](v40, -1, -1);
  }

  else
  {
  }

  v46 = MEMORY[0x1B270FF70](0xD000000000000023, v36 | 0x8000000000000000);
  aBlock[4] = DelegatesManager.delegates.getter;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_131;
  v47 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v47);
  swift_unknownObjectRelease();
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(*a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t key path setter for ActivitySessionManager.topicsObserverGenerator : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2E0);

  return v6(thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)partial apply, v5);
}

uint64_t (*ActivitySessionManager.topicsObserverGenerator.getter())()
{
  v1 = (v0 + OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver);
}

void ActivitySessionManager.activitySessionCreation.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (v5 + *a4);
  swift_beginAccess();

  v12 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v13 = NSClassFromString(v12);

  if (v13 || (v14 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v15 = NSClassFromString(v14), v14, v15))
  {
    *v11 = a5;
    v11[1] = v10;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*ActivitySessionManager.topicsObserverGenerator.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR___CPActivitySessionManager__topicsObserverGenerator;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v4 + 24) = thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)partial apply;
  *(v4 + 32) = v9;

  return ActivitySessionManager.topicsObserverGenerator.modify;
}

void ActivitySessionManager.activitySessionCreation.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if ((a2 & 1) == 0)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v8;

    v18 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v19 = NSClassFromString(v18);

    if (v19 || (v20 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v21 = NSClassFromString(v20), v20, v21))
    {
      v22 = (v6[5] + v6[6]);
      *v22 = a4;
      v22[1] = v17;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;

  v11 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v12 = NSClassFromString(v11);

  if (!v12)
  {
    v13 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v14 = NSClassFromString(v13);

    if (!v14)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v15 = (v6[5] + v6[6]);
  *v15 = a6;
  v15[1] = v10;

LABEL_8:
  swift_endAccess();

  free(v6);
}

uint64_t closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PluginClient.Configuration(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v17)
  {
    closure #1 in closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator(a3, a1, v10);
    _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v10, v8, type metadata accessor for PluginClient.Configuration);
    type metadata accessor for PluginClient(0);
    swift_allocObject();
    v19 = PluginClient.init(config:queue:reporter:reporterTag:)(v8, v16, 0, 0, 0);
    type metadata accessor for PluginPubSubServiceProvider();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = *(a1 + OBJC_IVAR___CPActivitySessionManager_serverBag);

    v22 = [v21 qrPluginMaxRpcStreamAttempts];
    v23 = [v21 qrPluginRpcStreamRetryIntervalMillis] / 1000.0;
    type metadata accessor for PubSubTopicsObserver();
    v24 = swift_allocObject();
    v25 = specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(v20, v22, v24, v23);

    _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v10, type metadata accessor for PluginClient.Configuration);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of ActivitySessionManager._topicsObserverGenerator@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v59 = a3;
  v58 = type metadata accessor for PluginClient.Configuration(0) - 8;
  MEMORY[0x1EEE9AC00](v58);
  v57 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PluginEndpoint(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v51 - v10;
  *v11 = UUID.uuidString.getter();
  *(v11 + 1) = v12;
  *(v11 + 2) = a1;
  *(v11 + 24) = xmmword_1AEE07B50;
  *(v11 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  v13 = *(a2 + OBJC_IVAR___CPActivitySessionManager_serverBag);
  v14 = [v13 qrPluginConnectionRetryIntervalMillis] / 1000.0;
  v56 = type metadata accessor for PluginEndpoint;
  _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v11, v9, type metadata accessor for PluginEndpoint);
  v54 = [v13 qrPluginMaxConnectionAttempts];
  v15 = (*MEMORY[0x1E69E7D40] & *a2) + 432;
  v60 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x1B0);
  v60(v66);
  v51[1] = v15;
  v16 = v67;
  v17 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v18 = objc_opt_self();
  v19 = [v18 serverCertValidationEnabledUserDefaultsKey];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  (*(v17 + 32))(v62, MEMORY[0x1E69E6370], v20, v22, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v16, v17);

  v53 = (LOBYTE(v62[0]) == 2) | LOBYTE(v62[0]);
  v23 = __swift_destroy_boxed_opaque_existential_1Tm(v66);
  (v60)(v66, v23);
  v24 = v67;
  v25 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v26 = [v18 serverCertHostnameUserDefaultsKey];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = MEMORY[0x1E69E6158];
  (*(v25 + 32))(v65, MEMORY[0x1E69E6158], v27, v29, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v24, v25);

  v32 = v65[1];
  v52 = v65[0];
  (v60)(v62, v31);
  v33 = v63;
  v34 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v35 = [v18 serverCertLeafMarkerOIDUserDefaultsKey];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  (*(v34 + 32))(v61, v30, v36, v38, v30, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v33, v34);

  v39 = v61[0];
  v40 = v61[1];
  v41 = v55;
  v43 = v56;
  v42 = v57;
  _s14CopresenceCore14PluginRpcErrorOWOcTm_0(v55, v57, v56);
  v44 = v58;
  *(v42 + *(v58 + 28)) = v54;
  *(v42 + v44[8]) = v14;
  v45 = v44;
  *(v42 + v44[9]) = v53 & 1;
  v46 = 0x80000001AEE36C20;
  v47 = v52;
  if (v32)
  {
    v46 = v32;
  }

  else
  {
    v47 = 0xD000000000000015;
  }

  v48 = (v42 + v44[10]);
  *v48 = v47;
  v48[1] = v46;
  if (!v40)
  {
    v39 = 0xD00000000000001BLL;
    v40 = 0x80000001AEE36C40;
  }

  _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v41, v43);
  _s14CopresenceCore14PluginRpcErrorOWOhTm_0(v11, v43);
  v49 = (v42 + v45[11]);
  *v49 = v39;
  v49[1] = v40;
  _s14CopresenceCore14PluginRpcErrorOWObTm_0(v42, v59, type metadata accessor for PluginClient.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

void *ActivitySessionManager.requestForegroundPresentationFor(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))(result);
    if (result)
    {
      v12 = result;
      v13 = (*((*v11 & *a1) + 0x388))();
      [v12 activitySessionManager:v2 requestForegroundPresentationForActivity:v13];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *ActivitySessionManager.associatedSceneChanged(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (one-time initialization token for default == -1)
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
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "ActivitySessionManager: associated scene changed for %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v17 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x120))();
  if (result)
  {
    v19 = result;
    v20 = (*((*v17 & *v11) + 0x388))();
    [v19 activitySessionManager:v2 activitySessionAssociatedSceneChanged:v20];

    return swift_unknownObjectRelease();
  }

  return result;
}

void ActivitySessionManager.sendResource(atURL:to:metadata:activitySessionUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x120))();
  if (v12)
  {
    v13 = v12;
    v18 = a1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
    lazy protocol witness table accessor for type TUConversationActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90, MEMORY[0x1E69E81B8]);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v15 = Data._bridgeToObjectiveC()().super.isa;
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    aBlock[4] = a6;
    aBlock[5] = a7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_59_1;
    v17 = _Block_copy(aBlock);

    [v13 activitySessionManager:v8 sendResourceAtURL:v18 toParticipants:isa metadata:v15 activitySessionUUID:v16 completion:v17];
    swift_unknownObjectRelease();
    _Block_release(v17);
  }
}

void ActivitySessionManager.session(session:requestedEndpointWith:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v18 = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v19 = MEMORY[0x1E69E7D40];
    v20 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x120))(v18);
    if (v20)
    {
      v21 = v20;
      v22 = MEMORY[0x1B270FF70](a2, a3);
      v23 = (*((*v19 & *a1) + 0x388))();
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed TUConversationParticipant?) -> ();
      aBlock[3] = &block_descriptor_62_0;
      v24 = _Block_copy(aBlock);

      [v21 activitySessionManager:v6 requestedEndpointWithIdentifier:v22 activitySession:v23 completion:v24];
      swift_unknownObjectRelease();
      _Block_release(v24);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ActivitySessionManager.requestTopicTermination(withTopicName:)(Swift::String withTopicName)
{
  object = withTopicName._object;
  countAndFlagsBits = withTopicName._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR___CPActivitySessionManager_topicsObserver);
  if (v4)
  {
    v5 = *(*v4 + 272);

    v5(countAndFlagsBits, object);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.default);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v11);
      _os_log_impl(&dword_1AEB26000, oslog, v7, "ActivitySessionManager: requestTopicTermination withTopicName: %s couldn't reference topicObserver", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1B27120C0](v9, -1, -1);
      MEMORY[0x1B27120C0](v8, -1, -1);
    }
  }
}

void ActivitySessionManager.updateExternalParticipants(_:)(uint64_t a1)
{
  v2 = v1;
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
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    type metadata accessor for TUExternalParticipant();
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type TUExternalParticipant and conformance NSObject, MEMORY[0x1E69D8A28], MEMORY[0x1E69E81B8]);
    v9 = Set.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v5, v6, "ActivitySessionManager: updating external participants %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x118))();
  v14 = specialized Collection.first.getter(v13);

  if (v14)
  {
    (*((*v12 & *v14) + 0x270))(a1);
  }
}

uint64_t ActivitySessionManager.createStaticActivities()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR___CPActivitySessionManager_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in ActivitySessionManager.createStaticActivities();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_143;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t closure #1 in ActivitySessionManager.createStaticActivities()(void *a1)
{
  v63 = type metadata accessor for UUID();
  v2 = *(v63 - 8);
  v3 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v49 - v5;
  v55 = a1;
  v6 = a1 + OBJC_IVAR___CPActivitySessionManager_groupUUID;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v66 = v6;
  v8 = specialized Sequence.flatMap<A>(_:)(v7, partial apply for closure #1 in static StaticActivityLoader.activitySessions(for:));

  v10 = v8;
  if (v8 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v10 = v47)
  {
    v12 = 0;
    v54 = v10 & 0xC000000000000001;
    v51 = v10 & 0xFFFFFFFFFFFFFF8;
    v50 = v10 + 32;
    v60 = (v2 + 8);
    *&v9 = 136315138;
    v49 = v9;
    v53 = v10;
    v52 = i;
    while (1)
    {
      if (v54)
      {
        v13 = MEMORY[0x1B2710B10](v12);
      }

      else
      {
        if (v12 >= *(v51 + 16))
        {
          goto LABEL_38;
        }

        v13 = *(v50 + 8 * v12);
      }

      v14 = v13;
      v15 = __OFADD__(v12, 1);
      v16 = v12 + 1;
      if (v15)
      {
        break;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17 = v68[0];
      v57 = v68[0];
      v58 = v16;
      v65 = v14;
      if ((v68[0] & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        Set.Iterator.init(_cocoa:)();
        v17 = v68[2];
        v18 = v68[3];
        v2 = v68[4];
        v19 = v68[5];
        v20 = v68[6];
      }

      else
      {
        v21 = -1 << *(v68[0] + 32);
        v18 = v68[0] + 56;
        v2 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(v68[0] + 56);

        v19 = 0;
      }

      v56 = v2;
      v59 = (v2 + 64) >> 6;
      v64 = v18;
      while (1)
      {
        if (v17 < 0)
        {
          v35 = __CocoaSet.Iterator.next()();
          if (!v35)
          {
            break;
          }

          v67 = v35;
          type metadata accessor for ActivitySession(0);
          swift_dynamicCast();
          v24 = v68[0];
          v2 = v20;
          if (!v68[0])
          {
            break;
          }

          goto LABEL_20;
        }

        v33 = v19;
        v34 = v20;
        if (!v20)
        {
          while (1)
          {
            v19 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v19 >= v59)
            {
              goto LABEL_29;
            }

            v34 = *(v18 + 8 * v19);
            ++v33;
            if (v34)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_37;
        }

LABEL_19:
        v2 = (v34 - 1) & v34;
        v24 = *(*(v17 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v34)))));
        if (!v24)
        {
          break;
        }

LABEL_20:
        v25 = [v24 UUID];
        v26 = v61;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = [v65 UUID];
        v28 = v62;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v27) = static UUID.== infix(_:_:)();
        v29 = *v60;
        v30 = v28;
        v31 = v63;
        (*v60)(v30, v63);
        v32 = v31;
        v20 = v2;
        v29(v26, v32);
        v18 = v64;
        if (v27)
        {

          outlined consume of Set<String>.Iterator._Variant(v17);

          goto LABEL_6;
        }
      }

LABEL_29:
      outlined consume of Set<String>.Iterator._Variant(v17);

      v36 = v65;
      v37 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x1D0))(v65);
      if (v37)
      {
        v2 = v37;

LABEL_5:
        goto LABEL_6;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.default);
      v39 = v36;
      v2 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v2, v40))
      {

        goto LABEL_5;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67 = v39;
      v68[0] = v42;
      *v41 = v49;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
      v43 = v39;
      v44 = String.init<A>(reflecting:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v68);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1AEB26000, v2, v40, "ActivitySessionManager: Failed to create static activity session: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1B27120C0](v42, -1, -1);
      MEMORY[0x1B27120C0](v41, -1, -1);

LABEL_6:
      v10 = v53;
      v12 = v58;
      if (v58 == v52)
      {
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v47 = v10;
    i = __CocoaSet.count.getter();
  }
}

id ActivitySessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ActivitySessionManager@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___CPActivitySessionManager_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR___CPActivitySessionManager_queue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionManager.applicationController(_:bundleIdentifierChanged:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68_0;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void closure #1 in ActivitySessionManager.applicationController(_:bundleIdentifierChanged:)(int a1, Swift::String a2, uint64_t a3)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v5 = CPApplicationController.isBundleIdentifierSupported(_:)(a2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = specialized Set._Variant.filter(_:)(v23, countAndFlagsBits, object);

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ActivitySession(0);
    lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
    Set.Iterator.init(_cocoa:)();
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
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

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  v15 = MEMORY[0x1E69E7D40];
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v9;
    v17 = v10;
    v18 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v6 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant(v6);

      return;
    }

    while (1)
    {
      v21 = (*((*v15 & *v20) + 0x328))();
      [v21 setSupported_];
      (*((*v15 & *v20) + 0x330))(v21);

      v9 = v18;
      v10 = v19;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ActivitySession(0);
        swift_dynamicCast();
        v20 = v22;
        v18 = v9;
        v19 = v10;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_18;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void @objc ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v6 = a4;
  swift_unknownObjectRetain();
  v8 = a1;
  specialized ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(v6, a5);
  swift_unknownObjectRelease();
}

uint64_t ActivitySession.allowsSceneAssociation.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8);
  v2(&v12);
  v11 = 0x8000000000000008;
  v3 = static ActivitySession.State.== infix(_:_:)(&v12, &v11);
  v4 = outlined consume of ActivitySession.State(v12);
  if (v3)
  {
    return 1;
  }

  (v2)(&v12, v4);
  v11 = 0x8000000000000000;
  v6 = static ActivitySession.State.== infix(_:_:)(&v12, &v11);
  v7 = outlined consume of ActivitySession.State(v12);
  if ((v6 & 1) != 0 && (v7 = (*((*v1 & *v0) + 0x1C0))(v7), v8))
  {

    return 1;
  }

  else
  {
    v9 = (*((*v1 & *v0) + 0x328))(v7);
    v10 = [v9 isScreenSharingActivity];

    return v10;
  }
}

uint64_t key path getter for ActivitySessionManager._activitySessions : ActivitySessionManager@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for ActivitySessionManager._activitySessions : ActivitySessionManager(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy14CopresenceCore15ActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_14i6Core15kL5C_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n04_s14i6Core22kL106ManagerC21applicationController_23bundleIdentifierChangedyAA013CPApplicationG0C_SStFyyYbcfU_SbAA0cD0CXEfU_SSTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t specialized PubSubTopicsObserver.init(serviceProvider:rpcMaxAttempts:rpcRetryIntervalSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v11 = type metadata accessor for PluginPubSubServiceProvider();
  v12 = &protocol witness table for PluginPubSubServiceProvider;
  *&v10 = a1;
  *(a3 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMd, &_s7Combine18PassthroughSubjectCySay14CopresenceCore9TopicInfoOGAD14PluginRpcErrorOGMR);
  swift_allocObject();
  v8 = PassthroughSubject.init()();
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = v8;
  outlined init with take of ContiguousBytes(&v10, a3 + 16);
  *(a3 + 56) = a2;
  *(a3 + 64) = a4;
  return a3;
}

uint64_t type metadata accessor for ActivitySessionManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivitySessionManager;
  if (!type metadata singleton initialization cache for ActivitySessionManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActivitySession and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:)(uint64_t a1, char *a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = swift_allocObject();
  *(v50 + 16) = a3;
  v14 = *&a2[OBJC_IVAR___CPActivitySessionManager_queue];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  _Block_copy(a3);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v51;
  MEMORY[0x1EEE9AC00](v16);
  *(&v48 - 2) = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in ActivitySessionManager.presentSessionDismissalAlert(activitySessionUUID:allowingCancellation:completion:), (&v48 - 4), v17);
  v19 = v18;

  if (!v19)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_6:
      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Log.default);
      (*(v7 + 16))(v9, a1, v6);
      v28 = a2;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v51 = v49;
        *v31 = 136315394;
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v7 + 8))(v9, v6);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v51);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2080;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        type metadata accessor for ActivitySession(0);
        lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
        v36 = Set.description.getter();
        v38 = v37;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v51);

        *(v31 + 14) = v39;
        _os_log_impl(&dword_1AEB26000, v29, v30, "Couldn't find matching activitySession for %s activitySessions: %s", v31, 0x16u);
        v40 = v49;
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v40, -1, -1);
        MEMORY[0x1B27120C0](v31, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }

      a3[2](a3, 0);

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v19) + 0x328))(v20);
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    (*((*v21 & *v19) + 0x488))(v24, v26, 1, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v50);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.default);
    v42 = v19;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v19;
      v47 = v42;
      _os_log_impl(&dword_1AEB26000, v43, v44, "Unable to find bundleID for activitySession %@", v45, 0xCu);
      outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v46, -1, -1);
      MEMORY[0x1B27120C0](v45, -1, -1);
    }

    a3[2](a3, 0);
  }
}

void specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v5 = a3;
  v30 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x328);
    v18 = v16;
    v19 = v17(v18);
    v20 = [v19 bundleIdentifier];

    if (v20)
    {
      v31 = v15;
      v21 = v5;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (v22 == a4 && v24 == a5)
      {

        v5 = v21;
LABEL_20:
        *(a1 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_23:

          specialized _NativeSet.extractSubset(using:count:)(a1, v28, v30, v5);
          return;
        }
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v21;
        if (v26)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_23;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Int specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = (8 * v9);
  v41 = a3;

  if (v8 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v35 = v9;
    v36 = v4;
    v40 = a2;
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v11);
    v37 = v34 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v10);
    v38 = 0;
    v12 = 0;
    v13 = v6 + 56;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & *(v6 + 56);
    v9 = (v14 + 63) >> 6;
    while (v4)
    {
      v16 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(*(v6 + 48) + 8 * v19);
      v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x328);
      v10 = v20;
      v22 = v21();
      a2 = [v22 bundleIdentifier];

      if (a2)
      {
        v39 = v19;
        v23 = v6;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v24 == v40 && v26 == v41)
        {

          v6 = v23;
LABEL_21:
          *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
          if (__OFADD__(v38++, 1))
          {
            __break(1u);
LABEL_24:
            v29 = specialized _NativeSet.extractSubset(using:count:)(v37, v35, v38, v6);

            return v29;
          }
        }

        else
        {
          a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v23;
          if (a2)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v13 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v4 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = a2;
  v32 = swift_slowAlloc();
  v33 = v41;

  v29 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy14CopresenceCore15ActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_14i6Core15kL5C_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n04_s14i6Core22kL106ManagerC21applicationController_23bundleIdentifierChangedyAA013CPApplicationG0C_SStFyyYbcfU_SbAA0cD0CXEfU_SSTf1nnc_n(v32, v9, v6, v31, v33);

  MEMORY[0x1B27120C0](v32, -1, -1);

  return v29;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, a3);
  }

  v5 = MEMORY[0x1E69E7CD0];
  v27 = MEMORY[0x1E69E7CD0];

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ActivitySession(0);
    v6 = MEMORY[0x1E69E7D40];
    do
    {
      v7 = swift_dynamicCast();
      v8 = (*((*v6 & *v26) + 0x328))(v7);
      v9 = [v8 bundleIdentifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v10 == a2 && v12 == a3)
        {

LABEL_14:
          v15 = *(v5 + 16);
          if (*(v5 + 24) <= v15)
          {
            specialized _NativeSet.resize(capacity:)(v15 + 1);
          }

          v5 = v27;
          result = NSObject._rawHashValue(seed:)(*(v27 + 40));
          v17 = v27 + 56;
          v18 = -1 << *(v27 + 32);
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *(v17 + 8 * v20);
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
          *(*(v27 + 48) + 8 * v21) = v26;
          ++*(v27 + 16);
          continue;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_14;
        }
      }
    }

    while (__CocoaSet.Iterator.next()());
  }

  return v5;
}

void specialized ActivitySessionManager.systemStateObserver(_:sharePlayAllowedStateChanged:)(char a1, const char *a2, ...)
{
  v4 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v4 + OBJC_IVAR___CPActivitySessionManager_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_30:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 136315138;
    LOBYTE(v38) = a1 & 1;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v39);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEB26000, v13, v14, a2, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v39[0];
    if ((v39[0] & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ActivitySession(0);
      lazy protocol witness table accessor for type ActivitySession and conformance NSObject(&lazy protocol witness table cache variable for type ActivitySession and conformance NSObject, type metadata accessor for ActivitySession, MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v20 = v39[0];
      a2 = v39[1];
      v21 = v39[2];
      v22 = v39[3];
      v23 = v39[4];
    }

    else
    {
      v22 = 0;
      v24 = -1 << *(v39[0] + 32);
      a2 = (v39[0] + 56);
      v21 = ~v24;
      v25 = -v24;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v23 = v26 & *(v39[0] + 56);
    }

    a1 = 0;
    v37[1] = v21;
    v27 = (v21 + 64) >> 6;
    v28 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if (v20 < 0)
      {
        v34 = __CocoaSet.Iterator.next()();
        if (!v34 || (v37[2] = v34, type metadata accessor for ActivitySession(0), swift_dynamicCast(), v33 = v38, v31 = v22, v32 = v23, !v38))
        {
LABEL_26:
          outlined consume of Set<String>.Iterator._Variant(v20);
          return;
        }
      }

      else
      {
        v29 = v22;
        v30 = v23;
        v31 = v22;
        if (!v23)
        {
          while (1)
          {
            v31 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v31 >= v27)
            {
              goto LABEL_26;
            }

            v30 = *&a2[8 * v31];
            ++v29;
            if (v30)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_19:
        v32 = (v30 - 1) & v30;
        v33 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
        if (!v33)
        {
          goto LABEL_26;
        }
      }

      v35 = (*((*v28 & *v33) + 0x408))();
      if (!v35 || (v36 = v35[direct field offset for XPCHostConnection.isEntitledToBypassSharePlayRestriction], v35, (v36 & 1) == 0))
      {
        (*((*v28 & *v33) + 0x438))();
      }

      v22 = v31;
      v23 = v32;
    }
  }
}

void type metadata completion function for ActivitySessionManager(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<ActivitySession>>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Set<ActivitySession>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<ActivitySession>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14CopresenceCore15ActivitySessionCGMd, &_sShy14CopresenceCore15ActivitySessionCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<ActivitySession>>);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ActivitySessionManager, @in_guaranteed UUID, @in_guaranteed UInt64) -> (@out PubSubTopicsObserver)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a3;
  v8 = a1;
  v4(&v6, &v8, a2, &v7);
  return v6;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ActivitySessionManager, @in_guaranteed UUID, @unowned UInt64) -> (@owned PubSubTopicsObserver)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationActivitySession, @in_guaranteed ActivitySessionManager) -> (@out ActivitySession)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUConversationActivitySession, @guaranteed ActivitySessionManager) -> (@owned ActivitySession)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t outlined copy of TopicInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of TopicInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  else
  {
  }
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore14PluginRpcErrorOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t AnyCancellable.init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return MEMORY[0x1EEDB5C30](destructiveProjectEnumData for ActivitySession.Errors, v2);
}

uint64_t CPCarPlayObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CPCarPlayObserver.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate;
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

id CPCarPlayObserver.init(queue:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession] = 0;
  *&v1[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue] = a1;
  v4 = one-time initialization token for default;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Initializing CPCarPlayObserver", v9, 2u);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E6993960]) init];
  *&v2[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] = v10;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for CPCarPlayObserver();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 addSessionObserver_];

  return v12;
}

uint64_t CPCarPlayObserver.isCarplaySessionConnected.getter()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v7 = [*&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] currentSession];
  v1 = v7;
  if (v7)
  {
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.default);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315394;
    v23[7] = v1 != 0;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v23[6] = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x98))(v17) & 1;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v24);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1AEB26000, v10, v11, "CPCarPlayObserver hasCurrentSession %s isAttemptingConnection %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  if (v1)
  {
    v21 = 1;
  }

  else
  {
    v21 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x98))();
  }

  return v21 & 1;
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.didset(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  result = swift_beginAccess();
  if (*(v1 + v10) != (a1 & 1))
  {
    result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(result);
    v12 = v11;
    if (a1)
    {
      if (!result)
      {
        return result;
      }

      ObjectType = swift_getObjectType();
      (*(v12 + 32))(ObjectType, v12);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v14 = swift_getObjectType();
      (*(v12 + 24))(v14, v12);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CPCarPlayObserver.isAttemptingCarplaySession.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return CPCarPlayObserver.isAttemptingCarplaySession.didset(v4);
}

void (*CPCarPlayObserver.isAttemptingCarplaySession.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_isAttemptingCarplaySession;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return CPCarPlayObserver.isAttemptingCarplaySession.modify;
}

void CPCarPlayObserver.isAttemptingCarplaySession.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  CPCarPlayObserver.isAttemptingCarplaySession.didset(v5);

  free(v1);
}

id CPCarPlayObserver.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14CopresenceCore17CPCarPlayObserver_sessionStatus] removeSessionObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPCarPlayObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CPCarPlayObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*protocol witness for CPCarPlayObserverProtocol.delegate.modify in conformance CPCarPlayObserver(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  return protocol witness for PresenceDataSource.members.modify in conformance SKPresenceDataSource<A>;
}

uint64_t closure #1 in CPCarPlayObserver.sessionDidConnect(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(0);
  result = (*((*v2 & *a1) + 0x70))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.sessionDidConnect(_:)(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v10;
    v22 = v21;
    v39 = v17;
    aBlock[0] = v21;
    *v20 = 136315138;
    type metadata accessor for CARSession();
    v32 = v15;
    v23 = v17;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);
    v15 = v32;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1AEB26000, v18, v19, v34, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    v10 = v33;
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v20, -1, -1);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v7;
  aBlock[4] = v36;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v29 = _Block_copy(aBlock);
  v30 = v7;
  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v12, v29);
  _Block_release(v29);
  (*(v10 + 8))(v12, v9);
  (*(v37 + 8))(v15, v38);
}

uint64_t closure #1 in CPCarPlayObserver.sessionDidDisconnect(_:)(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA0))(0);
  result = (*((*v2 & *a1) + 0x70))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CPCarPlayObserver.startedConnectionAttempt(on:)(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v38 = v10;
    v36 = v21;
    v43 = a1;
    aBlock[0] = v21;
    *v20 = 136315138;
    type metadata accessor for CARTransportType(0);
    v22 = String.init<A>(reflecting:)();
    v24 = v15;
    v25 = v12;
    v26 = v9;
    v27 = v7;
    v28 = a5;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, aBlock);

    *(v20 + 4) = v29;
    a5 = v28;
    v7 = v27;
    v9 = v26;
    v12 = v25;
    v15 = v24;
    _os_log_impl(&dword_1AEB26000, v17, v18, v39, v20, 0xCu);
    v30 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v10 = v38;
    MEMORY[0x1B27120C0](v30, -1, -1);
    v31 = v20;
    v13 = v37;
    MEMORY[0x1B27120C0](v31, -1, -1);
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v7;
  aBlock[4] = v41;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a5;
  v33 = _Block_copy(aBlock);
  v34 = v7;
  static DispatchQoS.unspecified.getter();
  v43 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v12, v33);
  _Block_release(v33);
  (*(v10 + 8))(v12, v9);
  (*(v42 + 8))(v15, v13);
}

unint64_t type metadata accessor for CARSession()
{
  result = lazy cache variable for type metadata for CARSession;
  if (!lazy cache variable for type metadata for CARSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CARSession);
  }

  return result;
}

uint64_t partial apply for closure #1 in CPCarPlayObserver.startedConnectionAttempt(on:)()
{
  return partial apply for closure #1 in CPCarPlayObserver.startedConnectionAttempt(on:)();
}

{
  return (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0xA0))();
}

uint64_t BackgroundSession.__allocating_init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v71 = a1;
  v72 = a6;
  v66 = a2;
  v67 = a5;
  v63 = a8;
  v64 = a12;
  v69 = a9;
  v70 = a11;
  v68 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v52 - v16;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v57 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  v27 = (v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v27[3] = &type metadata for FastSyncAnalyticsReporter;
  v27[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v27 = 0;
  v28 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v29 = swift_allocObject();
  v29[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v29[3] = 0x636E795374736146;
  v29[4] = 0xE800000000000000;
  v29[5] = 0x6E6F6973736553;
  v29[6] = 0xE700000000000000;
  *(v26 + v28) = v29;
  v30 = v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v31 = v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  v32 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v75 = 0xC000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  swift_allocObject();
  *(v26 + v32) = CurrentValueSubject.init(_:)();
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v33 = MEMORY[0x1E69E7CD0];
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v33;
  v34 = v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0;
  v35 = v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0;
  v36 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v26 + v36) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  (*(v23 + 16))(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, v71, v22);
  v38 = v66;
  v37 = v67;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v66;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = a3;
  v39 = (v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  *v39 = a4;
  v39[1] = v37;
  outlined init with copy of UserNotificationCenter(v72, v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = a7;
  swift_beginAccess();
  *(v30 + 8) = v68;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v67 = a4;
  swift_unknownObjectRetain();
  v68 = a7;
  swift_unknownObjectRetain();
  v40 = v38;
  v65 = a3;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v70, v34);
  swift_endAccess();
  v54 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v73 = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v73 = 0xD000000000000012;
  v74 = 0x80000001AEE342B0;
  v56 = v40;
  v41 = [v40 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v42);

  v43 = *(v23 + 8);
  v66 = v22;
  v55 = v43;
  v43(v25, v22);
  static DispatchQoS.unspecified.getter();
  v73 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v44 = v63;
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v61 + 104))(v60, *MEMORY[0x1E69E8090], v62);
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = v64;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v64;
  *(v26 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v44;
  v46 = v45;

  if ([v46 fastSyncPresenceSeparationEnabled])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(*v44 + 112))(v65);
    v47 = type metadata accessor for TaskPriority();
    v48 = v53;
    (*(*(v47 - 8) + 56))(v53, 1, 1, v47);
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v44;
    v50[5] = v49;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), v50);
    type metadata accessor for AnyCancellable();
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  outlined destroy of NSObject?(v70, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v55(v71, v66);
  return v26;
}

BOOL BackgroundSession.State.canBeReplaced.getter(unint64_t a1)
{
  if ((a1 >> 62) < 2)
  {
    return 0;
  }

  return a1 >> 62 == 2 || __ROR8__(a1 + 0x4000000000000000, 3) >= 5uLL;
}

Swift::Int BackgroundSession.BackgroundSessionError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t BackgroundSession.State.containerState.getter(unint64_t a1)
{
  if ((a1 >> 62) < 2)
  {
    return 2;
  }

  if (a1 >> 62 == 2)
  {
    return 4;
  }

  return *(&unk_1AEE19CF0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t BackgroundSession.State.hash(into:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      MEMORY[0x1B27111E0](1);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v6 = MEMORY[0x1E69E7288];
      v7 = MEMORY[0x1E69E7CA8] + 8;
      v8 = a1;
      v9 = a2;
LABEL_8:

      return MEMORY[0x1EEE6DA08](v8, v9, v7, v5, v6);
    }

    v10 = 5;
LABEL_7:
    MEMORY[0x1B27111E0](v10);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = MEMORY[0x1E69E7288];
    v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = MEMORY[0x1E69E7CA8] + 8;
    v8 = a1;
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v10 = 8;
    goto LABEL_7;
  }

  v11 = __ROR8__(a2 + 0x4000000000000000, 3);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = 4;
    }

    else if (v11 == 4)
    {
      v12 = 6;
    }

    else
    {
      v12 = 7;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 0;
  }

  return MEMORY[0x1B27111E0](v12);
}

Swift::Int BackgroundSession.State.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundSession.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundSession.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  BackgroundSession.State.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t BackgroundSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for BackgroundSession.reporter : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  outlined init with take of ContiguousBytes(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t BackgroundSession.reporter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  return outlined init with copy of UserNotificationCenter(v1 + v3, a1);
}

uint64_t BackgroundSession.reporter.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ContiguousBytes(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t BackgroundSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*BackgroundSession.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
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

uint64_t key path setter for BackgroundSession.protectedStorage : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of UserNotificationCenter(a1, v7);
  v3 = *a2;
  outlined init with take of ContiguousBytes(v7, v6);
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v3 + v4, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.protectedStorage.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, &v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  if (v8)
  {
    return outlined init with take of ContiguousBytes(&v7, a1);
  }

  outlined destroy of NSObject?(&v7, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserDefaults, 0x1E695E000);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSUserDefaults.classProtectedStorage(suiteName:)(v5, v6, a1);

  outlined init with copy of UserNotificationCenter(a1, &v7);
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(&v7, v1 + v3, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.protectedStorage.setter(__int128 *a1)
{
  outlined init with take of ContiguousBytes(a1, v4);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v4, v1 + v2, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
  return swift_endAccess();
}

void (*BackgroundSession.protectedStorage.modify(void *a1))(uint64_t *a1, char a2)
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
  BackgroundSession.protectedStorage.getter(v3);
  return BackgroundSession.protectedStorage.modify;
}

void BackgroundSession.protectedStorage.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    outlined init with copy of UserNotificationCenter(*a1, (v2 + 5));
    v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?((v2 + 5), v3 + v4, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    outlined init with take of ContiguousBytes(*a1, (v2 + 5));
    v5 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?((v2 + 5), v3 + v5, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);
    swift_endAccess();
  }

  free(v2);
}

uint64_t key path getter for BackgroundSession.state : BackgroundSession@<X0>(void *a1@<X8>)
{

  CurrentValueSubject.value.getter();

  *a1 = v3;
  return result;
}

unint64_t key path setter for BackgroundSession.state : BackgroundSession(unint64_t *a1)
{
  v1 = *a1;

  outlined copy of BackgroundSession.State(v1);
  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v1);

  return BackgroundSession.state.didset();
}

unint64_t BackgroundSession.state.didset()
{
  v1 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v0;
    v18[0] = v6;
    *v5 = 136315394;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;

    CurrentValueSubject.value.getter();

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1AEB26000, v3, v4, "BackgroundSession %s state changed to %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v13 = v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v13 + 8);
    ObjectType = swift_getObjectType();

    CurrentValueSubject.value.getter();

    (*(v15 + 16))(v1, v17, ObjectType, v15);
    swift_unknownObjectRelease();
    return outlined consume of BackgroundSession.State(v17);
  }

  return result;
}

uint64_t BackgroundSession.state.getter()
{

  CurrentValueSubject.value.getter();

  return v1;
}

void *BackgroundSession.session.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void BackgroundSession.session.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v1, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

void *BackgroundSession.container.getter()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69D8B60]) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setUUID_];

  v4 = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setGroupUUID_];

  CurrentValueSubject.value.getter();

  if ((v73[0] >> 62) >= 2)
  {
    if (v73[0] >> 62 == 2)
    {
      outlined consume of BackgroundSession.State(v73[0]);
      v5 = 4;
    }

    else
    {
      v5 = *(&unk_1AEE19CF0 + ((v73[0] + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    outlined consume of BackgroundSession.State(v73[0]);
    v5 = 2;
  }

  [v2 setState_];
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TUConversationActivitySessionC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v6 = Set._bridgeToObjectiveC()().super.isa;

  [v2 setActivitySessions_];

  v7 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v66 = v2;
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AEE07B40;
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x388);
    v11 = v8;
    *(inited + 32) = v10();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TUConversationActivitySessionC_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = Set._bridgeToObjectiveC()().super.isa;
    v2 = v66;

    [v66 setActivitySessions_];
  }

  v13 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v13, &v70, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v71)
  {
    outlined init with take of ContiguousBytes(&v70, v73);
    v14 = v74;
    v15 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    [v2 setLocalParticipantIdentifier_];
    v16 = v74;
    v17 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v18 = (*(v17 + 48))(v16, v17);
    if (v18)
    {
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1AEE07B40;
      *(v20 + 32) = v19;
      v21 = v19;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo32TUConversationVirtualParticipantC_Tt0g5Tf4g_n(v20);
      swift_setDeallocating();
      swift_arrayDestroy();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
      lazy protocol witness table accessor for type TUConversationActivitySessionContainer and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
      v22 = Set._bridgeToObjectiveC()().super.isa;

      [v2 setVirtualParticipants_];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  else
  {
    outlined destroy of NSObject?(&v70, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  v23 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag);
  v65 = [v23 qrPluginConnectionRetryIntervalMillis];
  v64 = [v23 qrPluginMaxConnectionAttempts];
  v63 = [v23 qrPluginRpcStreamRetryIntervalMillis];
  v62 = [v23 qrPluginMaxRpcStreamAttempts];
  BackgroundSession.protectedStorage.getter(v73);
  v24 = v74;
  v25 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v26 = objc_opt_self();
  v27 = [v26 serverCertValidationEnabledUserDefaultsKey];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  (*(v25 + 32))(&v70, MEMORY[0x1E69E6370], v28, v30, MEMORY[0x1E69E6370], MEMORY[0x1E69E6390], MEMORY[0x1E69E6378], v24, v25);

  v61 = v70;
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  BackgroundSession.protectedStorage.getter(v73);
  v31 = v74;
  v32 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v33 = [v26 serverCertHostnameUserDefaultsKey];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = MEMORY[0x1E69E6158];
  (*(v32 + 32))(v69, MEMORY[0x1E69E6158], v34, v36, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v31, v32);

  v38 = v69[0];
  v39 = v69[1];
  BackgroundSession.protectedStorage.getter(&v70);
  v40 = v71;
  v41 = v72;
  __swift_project_boxed_opaque_existential_1(&v70, v71);
  v42 = [v26 serverCertLeafMarkerOIDUserDefaultsKey];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  (*(v41 + 32))(&v67, v37, v43, v45, v37, MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v40, v41);

  v46 = v67;
  v47 = v68;
  if (!v39)
  {
    v48 = 0;
    v49 = v66;
    if (v68)
    {
      goto LABEL_16;
    }

LABEL_18:
    v50 = 0;
    goto LABEL_19;
  }

  v48 = MEMORY[0x1B270FF70](v38, v39);

  v49 = v66;
  if (!v47)
  {
    goto LABEL_18;
  }

LABEL_16:
  v50 = MEMORY[0x1B270FF70](v46, v47);

LABEL_19:
  v51 = [objc_allocWithZone(MEMORY[0x1E69D8BC8]) initWithConnectionRetryIntervalMillis:v65 connectionMaxAttempts:v64 rpcStreamRetryIntervalMillis:v63 rpcStreamMaxAttempts:v62 serverCertValidationEnabled:(v61 == 2) | (v61 & 1) serverCertHostnameOverride:v48 serverCertLeafMarkerOIDOverride:v50];

  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  [v49 setVirtualParticipantConfig_];

  v52 = [v23 unreliableMessengerEstablishChannelMaxAttempts];
  v53 = [v23 unreliableMessengerEstablishChannelRetryIntervalMillis];
  v54 = [v23 unreliableMessengerEgressMessagePayloadMaxSizeBytes];
  v55 = [v23 unreliableMessengerChannelStreamMaxQueueSize];
  v56 = [v23 unreliableMessengerChannelStreamMaxTries];
  v57 = [v23 unreliableMessengerChannelStreamRetryIntervalMillis];
  v58 = [v23 unreliableMessengerSeqNumBufferSize];
  v59 = [objc_allocWithZone(MEMORY[0x1E69D8BB8]) initWithEstablishChannelMaxAttempts:v52 establishChannelRetryIntervalMillis:v53 egressMessagePayloadMaxSizeBytes:v54 channelStreamMaxQueueSize:v55 channelStreamMaxTries:v56 channelStreamRetryIntervalMillis:v57 seqNumBufferSize:v58];
  [v49 setUnreliableMessengerConfig_];

  return v49;
}

void key path setter for BackgroundSession.members : BackgroundSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  *(v3 + v4) = v2;

  BackgroundSession.members.didset();
}

void BackgroundSession.members.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);

  v5 = [v4 bundleIdentifier];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
    swift_beginAccess();
    outlined init with copy of UserNotificationCenter(v1 + v7, v20);
    v8 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v9 = UUID.uuidString.getter();
    (*(v8 + 40))(v9);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v10, v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v21)
  {
    outlined init with copy of UserNotificationCenter(v20, v17);
    outlined destroy of NSObject?(v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 88))(v3, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    outlined destroy of NSObject?(v20, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  if ([*(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
  }

  else
  {
    (*(**(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 112))(v3);
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.service);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1AEB26000, v14, v15, "Successfully updated members", v16, 2u);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }
}

void BackgroundSession.members.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
  swift_beginAccess();
  *(v1 + v3) = a1;

  BackgroundSession.members.didset();
}

void (*BackgroundSession.members.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundSession.members.modify;
}

void BackgroundSession.members.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    BackgroundSession.members.didset();
  }
}

uint64_t key path setter for BackgroundSession.suspensionAssertions : BackgroundSession(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t key path setter for BackgroundSession.sessionProvider : BackgroundSession(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v6, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v3 + v4, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.sessionProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  return outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, a1, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
}

uint64_t BackgroundSession.sessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(a1, v1 + v3, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  return swift_endAccess();
}

uint64_t BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v13 = v12;
  v57 = a8;
  v67 = a2;
  v68 = a5;
  v73 = a11;
  v74 = a6;
  v66 = a12;
  v71 = a4;
  v72 = a9;
  v69 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = &v54 - v18;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v19 - 8);
  v65 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v59 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v28 = (v12 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter);
  v28[3] = &type metadata for FastSyncAnalyticsReporter;
  v28[4] = &protocol witness table for FastSyncAnalyticsReporter;
  *v28 = 0;
  v29 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  type metadata accessor for ABCReporter();
  v30 = swift_allocObject();
  v30[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v30[3] = 0x636E795374736146;
  v30[4] = 0xE800000000000000;
  v30[5] = 0x6E6F6973736553;
  v30[6] = 0xE700000000000000;
  *(v13 + v29) = v30;
  v31 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v32 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;
  v77 = 0xC000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore17BackgroundSessionC5StateOs5NeverOGMR);
  swift_allocObject();
  *(v13 + v33) = CurrentValueSubject.init(_:)();
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session) = 0;
  v34 = MEMORY[0x1E69E7CD0];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions) = MEMORY[0x1E69E7CD0];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_cancellables) = v34;
  v35 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0;
  v36 = v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  *(v36 + 32) = 0;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  v37 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_applicationLauncher;
  *(v13 + v37) = [objc_allocWithZone(CPApplicationLauncher) initWithSpatialApplicationManager_];
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sceneObservationManager) = 0;
  v38 = *(v25 + 16);
  v70 = a1;
  v38(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id, a1, v24);
  v40 = v67;
  v39 = v68;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) = v67;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members) = a3;
  v41 = (v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
  *v41 = v71;
  v41[1] = v39;
  outlined init with copy of UserNotificationCenter(v74, v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service);
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag) = a7;
  swift_beginAccess();
  *(v31 + 8) = v69;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v69 = a7;
  swift_unknownObjectRetain();
  v42 = v40;
  v67 = a3;
  v43 = v57;

  outlined assign with copy of IDSGroupSessionProviderProtocol?(v73, v35);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v75 = 0;
  v76 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v75 = 0xD000000000000012;
  v76 = 0x80000001AEE342B0;
  v58 = v42;
  v44 = [v42 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v45);

  v46 = *(v25 + 8);
  v68 = v24;
  v61 = v25 + 8;
  v56 = v46;
  v46(v27, v24);
  static DispatchQoS.unspecified.getter();
  v75 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v64 + 104))(v63, *MEMORY[0x1E69E8090], v65);
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v47 = v66;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) = v66;
  *(v13 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) = v43;
  v48 = v47;

  if ([v48 fastSyncPresenceSeparationEnabled])
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    (*(*v43 + 112))(v67);
    v49 = type metadata accessor for TaskPriority();
    v50 = v55;
    (*(*(v49 - 8) + 56))(v55, 1, 1, v49);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v43;
    v52[5] = v51;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v50, &closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)partial apply, v52);
    type metadata accessor for AnyCancellable();
    swift_allocObject();

    AnyCancellable.init(_:)();
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  outlined destroy of NSObject?(v73, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  v56(v70, v68);
  return v13;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGGMR);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = (*(**(v0 + 64) + 152))();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[PresentDevice], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B270F520](v4, v5);

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v6 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  v8 = *(v0 + 104);

  return MEMORY[0x1EEE6D8C8](v0 + 48, v8, v6);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  }

  else
  {
    v2 = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 144) = *(v0 + 48);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), 0, 0);
}

{
  if (v0[18])
  {
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:), Strong, 0);
    }

    else
    {

      v3 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
      v4 = swift_task_alloc();
      v0[16] = v4;
      *v4 = v0;
      v4[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
      v5 = v0[13];

      return MEMORY[0x1EEE6D8C8](v0 + 6, v5, v3);
    }
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v2 = v0[1];

    return v2();
  }
}

{
  *(v0 + 56) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  BackgroundSession.handlePresentDevicesChanged(_:)(v0[18]);

  v1 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[PresentDevice], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySay14CopresenceCore13PresentDevice_pGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  v0[16]._rawValue = v2;
  *v2 = v0;
  v2[1] = closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:);
  rawValue = v0[13]._rawValue;

  return MEMORY[0x1EEE6D8C8](&v0[6], rawValue, v1);
}

uint64_t partial apply for closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall BackgroundSession.handlePresentDevicesChanged(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.service);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore13PresentDevice_pGMd, &_sSay14CopresenceCore13PresentDevice_pGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Presence updated present devices: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  BackgroundSession.setupIDSGroupSessionIfNecessary()();
  v11 = *(**(v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 128);
  v13 = *(v11(v12) + 16);

  v14 = v2 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
  swift_beginAccess();
  outlined init with copy of UserNotificationCenter(v14, v22);
  v15 = v23;
  v16 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (v17 < v13)
  {
    v19 = *(v11(v18) + 16);

    swift_beginAccess();
    v20 = *(v14 + 24);
    v21 = *(v14 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v14, v20);
    (*(v21 + 16))(v19, v20, v21);
    swift_endAccess();
  }
}

uint64_t BackgroundSession.updateSuspensionController(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v3, v6, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
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
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(v6, v1 + v3, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
    return swift_endAccess();
  }

  return result;
}

uint64_t BackgroundSession.join()()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.join(), v0, 0);
}

{
  v0[6] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;

  CurrentValueSubject.value.getter();

  v1 = v0[2];
  v0[7] = v1;
  if ((v1 >> 62) - 1 >= 2)
  {
    if (v1 >> 62 == 3)
    {
      outlined consume of BackgroundSession.State(v1);
      v11 = v0[5];
      v12 = v0[4];
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      v14 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v14;
      v15[4] = v12;
      swift_retain_n();
      v16 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in BackgroundSession.join(), v15);
      v0[12] = v16;
      v0[3] = v16;

      CurrentValueSubject.send(_:)();

      BackgroundSession.state.didset();
      v17 = swift_task_alloc();
      v0[13] = v17;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v17 = v0;
      v17[1] = BackgroundSession.join();
      v8 = MEMORY[0x1E69E7288];
      v10 = MEMORY[0x1E69E7CA8] + 8;
      v9 = v16;
    }

    else
    {
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Log.service);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1AEB26000, v19, v20, "Join already in progress, awaiting completion of it.", v21, 2u);
        MEMORY[0x1B27120C0](v21, -1, -1);
      }

      v22 = swift_task_alloc();
      v0[10] = v22;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v22 = v0;
      v22[1] = BackgroundSession.join();
      v8 = MEMORY[0x1E69E7288];
      v10 = MEMORY[0x1E69E7CA8] + 8;
      v9 = v1;
    }
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "We are going to wait for our current ending task to finish...", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    v0[8] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v6 = v0;
    v6[1] = BackgroundSession.join();
    v8 = MEMORY[0x1E69E7288];
    v9 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = MEMORY[0x1E69E7CA8] + 8;
  }

  return MEMORY[0x1EEE6DA10](v7, v9, v10, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 72) = v0;

  outlined consume of BackgroundSession.State(v3);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = BackgroundSession.join();
  }

  else
  {
    v5 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = v0[5];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v2;
  swift_retain_n();
  v6 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in BackgroundSession.join(), v5);
  v0[12] = v6;
  v0[3] = v6;

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v7 = v0;
  v7[1] = BackgroundSession.join();
  v9 = MEMORY[0x1E69E7288];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v8, v6, v10, v8, v9);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = BackgroundSession.join();
  }

  else
  {
    v4 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  outlined consume of BackgroundSession.State(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = BackgroundSession.join();
  }

  else
  {
    v4 = BackgroundSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined consume of BackgroundSession.State(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in BackgroundSession.join()()
{
  if ([*(v0[2] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    BackgroundSession.setupIDSGroupSession()();
    v1 = v0[1];

    return v1();
  }

  else
  {
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = closure #1 in BackgroundSession.join();

    return MEMORY[0x1EEE6DE18]();
  }
}

{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = closure #1 in BackgroundSession.join();
  }

  else
  {
    v4 = SKPresenceDataSource.releasePresence();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in BackgroundSession.join()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = closure #1 in closure #1 in BackgroundSession.join();

  return BackgroundSession.assertPresence()();
}

uint64_t closure #1 in closure #1 in BackgroundSession.join()()
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

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.join(), v6, 0);
  }
}

{
  BackgroundSession.setupIDSGroupSessionIfNecessary()();
  v1 = *(v0 + 8);

  return v1();
}

void closure #2 in closure #1 in BackgroundSession.join()(uint64_t a1)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.service);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for BackgroundSession(0);

    v5 = String.init<A>(reflecting:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v2, "Join request on %s was cancelled", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t BackgroundSession.assertPresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.assertPresence(), v0, 0);
}

{
  if ([*(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.service);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEB26000, v2, v3, "Invalid function called when the fastSyncPresenceSeparationEnabled FF is enabled.", v4, 2u);
      MEMORY[0x1B27120C0](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[4] = __swift_project_value_buffer(v7, static Log.service);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Asserting presence", v10, 2u);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    v11 = v0[3];

    v13 = (*(**(v11 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 192) + **(**(v11 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 192));
    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = BackgroundSession.assertPresence();

    return v13();
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
    v6 = *(v2 + 24);

    return MEMORY[0x1EEE6DFA0](BackgroundSession.assertPresence(), v6, 0);
  }
}

{
  *(v0 + 16) = 0xC000000000000008;

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Asserted presence", v3, 2u);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t BackgroundSession.reset()()
{
  *(v1 + 176) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.reset(), v0, 0);
}

{
  v1 = v0[22];
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, (v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  if (v0[5])
  {
    outlined init with copy of UserNotificationCenter((v0 + 2), (v0 + 7));
    outlined destroy of NSObject?((v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    v3 = v0[10];
    v4 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
    (*(v4 + 80))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  else
  {
    outlined destroy of NSObject?((v0 + 2), &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  }

  v5 = v0[22];
  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    *(swift_task_alloc() + 16) = v7;
    v8 = v7;
    OS_dispatch_queue.sync<A>(execute:)();
  }

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = BackgroundSession.reset();

  return BackgroundSession.releasePresence()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #2 in BackgroundSession.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #2 in BackgroundSession.reset(), 0, 0);
}

uint64_t closure #2 in BackgroundSession.reset()()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter);
  _StringGuts.grow(_:)(35);

  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xED00007465736552, 0xD000000000000021, 0x80000001AEE36E70, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v19 = (*(*v3 + 120) + **(*v3 + 120));
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = closure #2 in BackgroundSession.reset();
    v12.n128_u64[0] = 0;

    return v19(v10, v12);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.abcReporter);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Failed to generate signature for session reset failure", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t BackgroundSession.leave(endState:)(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.leave(endState:), v1, 0);
}

uint64_t BackgroundSession.leave(endState:)()
{
  v82 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v2, static Log.service);
  outlined copy of BackgroundSession.State(v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of BackgroundSession.State(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v81[0] = v7;
    *v6 = 136315138;
    v0[27] = v5;
    outlined copy of BackgroundSession.State(v5);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v81);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Received request to leave current session with an end-desired state of: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v0[32] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession__state;

  CurrentValueSubject.value.getter();

  v11 = v0[20];
  v0[33] = v11;
  if ((v11 >> 62) - 1 < 2)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEB26000, v12, v13, "We are going to wait for our current ending task to finish...", v14, 2u);
      MEMORY[0x1B27120C0](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[34] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v15 = v0;
    v15[1] = BackgroundSession.leave(endState:);
    v17 = MEMORY[0x1E69E7288];
    v18 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    v19 = MEMORY[0x1E69E7CA8] + 8;
LABEL_9:

    return MEMORY[0x1EEE6DA10](v16, v18, v19, v16, v17);
  }

  if (v11 >> 62 != 3)
  {
    outlined copy of BackgroundSession.State(v11);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    outlined consume of BackgroundSession.State(v11);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v81[0] = v23;
      *v22 = 136315138;
      v0[26] = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5Error_pGMd, &_sScTyyts5Error_pGMR);
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v81);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1AEB26000, v20, v21, "Currently in joining state. Cancelling join request. %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1B27120C0](v23, -1, -1);
      MEMORY[0x1B27120C0](v22, -1, -1);
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v11, MEMORY[0x1E69E7CA8] + 8, v27, MEMORY[0x1E69E7288]);
    outlined consume of BackgroundSession.State(v11);
  }

  outlined consume of BackgroundSession.State(v11);
  v28 = v0[28];

  CurrentValueSubject.value.getter();

  v29 = v0[21];
  LOBYTE(v28) = specialized static BackgroundSession.State.== infix(_:_:)(v29, v28);
  outlined consume of BackgroundSession.State(v29);
  if (v28)
  {
    v30 = v0[28];
    outlined copy of BackgroundSession.State(v30);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    outlined consume of BackgroundSession.State(v30);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[28];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81[0] = v35;
      *v34 = 136315394;
      v36 = BackgroundSession.description.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v81);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v0[25] = v33;
      outlined copy of BackgroundSession.State(v33);
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v81);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Session %s is already in desired end-state: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v35, -1, -1);
      MEMORY[0x1B27120C0](v34, -1, -1);
    }

    v42 = v0[1];
  }

  else
  {

    CurrentValueSubject.value.getter();

    v43 = v0[22];
    outlined consume of BackgroundSession.State(v43);
    if (v43 != 0xC000000000000028)
    {
      v53 = v0[29];
      v52 = v0[30];
      v54 = v0[28];
      v55 = type metadata accessor for TaskPriority();
      (*(*(v55 - 8) + 56))(v52, 1, 1, v55);
      v56 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
      v57 = swift_allocObject();
      v57[2] = v53;
      v57[3] = v56;
      v57[4] = v53;
      v57[5] = v54;

      outlined copy of BackgroundSession.State(v54);

      v58 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v52, &async function pointer to partial apply for closure #1 in BackgroundSession.leave(endState:), v57);
      v59 = v58;
      v0[36] = v58;
      if (v54 == 0xC000000000000020)
      {
        v0[24] = v58 | 0x4000000000000000;

        CurrentValueSubject.send(_:)();

        BackgroundSession.state.didset();
      }

      else
      {
        if (([*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled] & 1) == 0)
        {
          v60 = [*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) bundleIdentifier];
          if (v60)
          {
            v61 = v0[29];
            v62 = v60;
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v79 = v64;
            v80 = v63;

            v65 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
            swift_beginAccess();
            outlined init with copy of UserNotificationCenter(v61 + v65, (v0 + 2));
            v66 = v0[5];
            v67 = v0[6];
            __swift_project_boxed_opaque_existential_1(v0 + 2, v66);
            v78 = UUID.uuidString.getter();
            v69 = v68;
            outlined init with copy of UserNotificationCenter(v61 + v65, (v0 + 7));
            v70 = v0[10];
            v71 = v0[11];
            __swift_project_boxed_opaque_existential_1(v0 + 7, v70);
            v72 = (*(v71 + 8))(v70, v71);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
            outlined init with copy of UserNotificationCenter(v61 + v65, (v0 + 12));
            v74 = v0[15];
            v73 = v0[16];
            __swift_project_boxed_opaque_existential_1(v0 + 12, v74);
            v75 = (*(v73 + 8))(v74, v73);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
            (*(v67 + 32))(v78, v69, v80, v79, v72, v75 == 33, v66, v67);

            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
          }
        }

        v0[23] = v59 | 0x8000000000000000;

        CurrentValueSubject.send(_:)();

        BackgroundSession.state.didset();
      }

      v76 = swift_task_alloc();
      v0[37] = v76;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v76 = v0;
      v76[1] = BackgroundSession.leave(endState:);
      v17 = MEMORY[0x1E69E7288];
      v19 = MEMORY[0x1E69E7CA8] + 8;
      v18 = v59;
      goto LABEL_9;
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v81[0] = v47;
      *v46 = 136315138;
      v48 = BackgroundSession.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v81);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1AEB26000, v44, v45, "Session %s is in a fatal state and can't be transitioned out of it", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1B27120C0](v47, -1, -1);
      MEMORY[0x1B27120C0](v46, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v51 = 2;
    swift_willThrow();

    v42 = v0[1];
  }

  return v42();
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 232);
  outlined consume of BackgroundSession.State(v3);
  if (v0)
  {
    v5 = BackgroundSession.leave(endState:);
  }

  else
  {
    v5 = BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v58 = v0;
  v1 = v0[28];

  CurrentValueSubject.value.getter();

  v2 = v0[21];
  LOBYTE(v1) = specialized static BackgroundSession.State.== infix(_:_:)(v2, v1);
  outlined consume of BackgroundSession.State(v2);
  if (v1)
  {
    v3 = v0[28];
    outlined copy of BackgroundSession.State(v3);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    outlined consume of BackgroundSession.State(v3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[28];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v57[0] = v8;
      *v7 = 136315394;
      v9 = BackgroundSession.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v57);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v0[25] = v6;
      outlined copy of BackgroundSession.State(v6);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v57);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_1AEB26000, v4, v5, "Session %s is already in desired end-state: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v8, -1, -1);
      MEMORY[0x1B27120C0](v7, -1, -1);
    }

    v15 = v0[1];
LABEL_9:

    return v15();
  }

  CurrentValueSubject.value.getter();

  v16 = v0[22];
  outlined consume of BackgroundSession.State(v16);
  v17 = v0[29];
  if (v16 == 0xC000000000000028)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v57[0] = v21;
      *v20 = 136315138;
      v22 = BackgroundSession.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v57);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Session %s is in a fatal state and can't be transitioned out of it", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    v15 = v0[1];
    goto LABEL_9;
  }

  v27 = v0[30];
  v28 = v0[28];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  v30 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type BackgroundSession and conformance BackgroundSession, type metadata accessor for BackgroundSession, &protocol conformance descriptor for BackgroundSession);
  v31 = swift_allocObject();
  v31[2] = v17;
  v31[3] = v30;
  v31[4] = v17;
  v31[5] = v28;

  outlined copy of BackgroundSession.State(v28);

  v32 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v27, &async function pointer to partial apply for closure #1 in BackgroundSession.leave(endState:), v31);
  v33 = v32;
  v0[36] = v32;
  if (v28 == 0xC000000000000020)
  {
    v0[24] = v32 | 0x4000000000000000;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
  }

  else
  {
    if (([*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled] & 1) == 0)
    {
      v34 = [*(v0[29] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) bundleIdentifier];
      if (v34)
      {
        v35 = v0[29];
        v36 = v34;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v38;
        v56 = v37;

        v39 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter;
        swift_beginAccess();
        outlined init with copy of UserNotificationCenter(v35 + v39, (v0 + 2));
        v40 = v0[5];
        v41 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v40);
        v54 = UUID.uuidString.getter();
        v43 = v42;
        outlined init with copy of UserNotificationCenter(v35 + v39, (v0 + 7));
        v44 = v0[10];
        v45 = v0[11];
        __swift_project_boxed_opaque_existential_1(v0 + 7, v44);
        v46 = (*(v45 + 8))(v44, v45);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
        outlined init with copy of UserNotificationCenter(v35 + v39, (v0 + 12));
        v48 = v0[15];
        v47 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v48);
        v49 = (*(v47 + 8))(v48, v47);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
        (*(v41 + 32))(v54, v43, v56, v55, v46, v49 == 33, v40, v41);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      }
    }

    v0[23] = v33 | 0x8000000000000000;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
  }

  v50 = swift_task_alloc();
  v0[37] = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v50 = v0;
  v50[1] = BackgroundSession.leave(endState:);
  v52 = MEMORY[0x1E69E7288];
  v53 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v51, v33, v53, v51, v52);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = BackgroundSession.leave(endState:);
  }

  else
  {
    v4 = BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in BackgroundSession.leave(endState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = closure #1 in BackgroundSession.leave(endState:);

  return BackgroundSession.reset()();
}

uint64_t closure #1 in BackgroundSession.leave(endState:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = closure #1 in BackgroundSession.leave(endState:);
  }

  else
  {
    v3 = closure #1 in BackgroundSession.leave(endState:);
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

{
  v1 = v0[5];
  v0[3] = v1;

  outlined copy of BackgroundSession.State(v1);
  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v1);

  BackgroundSession.state.didset();
  v2 = v0[1];

  return v2();
}

{
  v1 = v0[5];
  v0[2] = v1;
  outlined copy of BackgroundSession.State(v1);

  CurrentValueSubject.send(_:)();
  outlined consume of BackgroundSession.State(v1);

  BackgroundSession.state.didset();
  v2 = v0[1];

  return v2();
}

uint64_t BackgroundSession.end()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return BackgroundSession.leave(endState:)(0xC000000000000028);
}

Swift::Void __swiftcall BackgroundSession.setupIDSGroupSessionIfNecessary()()
{
  v1 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43[0] = v6;
    *v5 = 136315138;
    v46 = v1;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v43);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Evaluating if we need to setup the IDSGroupSession for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  if ([*(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Invalid function called when the fastSyncPresenceSeparationEnabled FF is enabled.", v12, 2u);
      MEMORY[0x1B27120C0](v12, -1, -1);
    }

    goto LABEL_26;
  }

  CurrentValueSubject.value.getter();

  if (v43[0] == 0xC000000000000008)
  {
    v13 = (*(**(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 128))();
    v14 = v13;
    if (*(v13 + 16) >= 0x21uLL)
    {
      v15 = 33;
    }

    else
    {
      v15 = *(v13 + 16);
    }

    v16 = v13 + 32;
    v42 = (2 * v15) | 1;
    v17 = v15 + 1;
    v18 = v13 + 32;
    while (--v17)
    {
      v19 = v18 + 40;
      outlined init with copy of UserNotificationCenter(v18, v43);
      v20 = v44;
      v21 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v22 = (*(v21 + 32))(v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v18 = v19;
      if (v22)
      {
        v23 = v15 + 1;
        v24 = v16;
        while (--v23)
        {
          v25 = v24 + 40;
          outlined init with copy of UserNotificationCenter(v24, v43);
          v26 = v44;
          v27 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v28 = (*(v27 + 32))(v26, v27);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          v24 = v25;
          if ((v28 & 1) == 0)
          {
            BackgroundSession.setupIDSGroupSession()();
            goto LABEL_24;
          }
        }

        break;
      }
    }

    v10 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v36))
    {

LABEL_26:

      return;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46 = v38;
    *v37 = 136315138;
    v43[0] = v14;
    v43[1] = v16;
    v43[2] = 0;
    v44 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVy14CopresenceCore13PresentDevice_pGMd, &_ss10ArraySliceVy14CopresenceCore13PresentDevice_pGMR);
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v46);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1AEB26000, v10, v36, "Not setting up IDSGroupSession since we only have 1 device currently %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1B27120C0](v38, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);

LABEL_24:
  }

  else
  {
    outlined consume of BackgroundSession.State(v43[0]);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43[0] = v32;
      *v31 = 136315138;

      CurrentValueSubject.value.getter();

      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1AEB26000, v29, v30, "Not setting up IDSGroupSession since our state is invalid %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1B27120C0](v32, -1, -1);
      MEMORY[0x1B27120C0](v31, -1, -1);
    }
  }
}

Swift::Void __swiftcall BackgroundSession.setupIDSGroupSession()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v100 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v98);
  v99 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {

    CurrentValueSubject.value.getter();

    v12 = v101[0];
    outlined consume of BackgroundSession.State(v101[0]);
    if (v12 >> 62)
    {
      goto LABEL_10;
    }
  }

  else
  {

    CurrentValueSubject.value.getter();

    v13 = v101[0];
    if (v101[0] >> 62 != 3)
    {
LABEL_9:
      outlined consume of BackgroundSession.State(v13);
      goto LABEL_10;
    }

    if (v101[0] != 0xC000000000000008)
    {
LABEL_10:
      if (one-time initialization token for service != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Log.service);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v101[0] = v26;
        *v25 = 136315138;
        *&v115 = v1;
        type metadata accessor for BackgroundSession(0);

        v27 = String.init<A>(reflecting:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v101);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1AEB26000, v23, v24, "Failed to join, operation in progress %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1B27120C0](v26, -1, -1);
        MEMORY[0x1B27120C0](v25, -1, -1);
      }

      v101[0] = 0xC000000000000028;

      CurrentValueSubject.send(_:)();

      BackgroundSession.state.didset();
      return;
    }
  }

  v92 = v3;
  v93 = v2;
  v14 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v94 = v14;
    v16 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v18 = swift_allocObject();
    v19 = partial apply for closure #1 in BackgroundSession.setupIDSGroupSession();
    *(v18 + 16) = partial apply for closure #1 in BackgroundSession.setupIDSGroupSession();
    *(v18 + 24) = v17;
    v96 = v17;
    v103 = _sIg_Ieg_TRTA_0;
    v104 = v18;
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 1107296256;
    v101[2] = thunk for @escaping @callee_guaranteed () -> ();
    v102 = &block_descriptor_31;
    v20 = _Block_copy(v101);
    v21 = v15;

    dispatch_sync(v16, v20);

    _Block_release(v20);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v30 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity);
  Date.init()();
  v31 = objc_allocWithZone(MEMORY[0x1E69D8B58]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = Date._bridgeToObjectiveC()().super.isa;
  v34 = [v31 initWithActivity:v30 uuid:isa locallyInitiated:1 timestamp:v33 isFirstJoin:1];

  (*(v9 + 8))(v11, v8);
  v35 = [v34 activity];
  v36 = [v35 bundleIdentifier];

  if (v36)
  {

    v37 = type metadata accessor for FastSyncActivitySession(0);

    v38 = v34;
    v39 = specialized ActivitySession.__allocating_init(activitySession:manager:)(v38, v1, v37);
    v40 = *(v1 + v14);
    v94 = v14;
    *(v1 + v14) = v39;
    v41 = v39;

    v42 = v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 8);
      ObjectType = swift_getObjectType();
      (*(v43 + 8))(v1, ObjectType, v43);
      swift_unknownObjectRelease();
    }

    v19 = 0;
    v96 = 0;
LABEL_19:
    v45 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
    swift_beginAccess();
    v95 = v45;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v45, &v115, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (v116)
    {
      outlined init with take of ContiguousBytes(&v115, v101);
    }

    else
    {
      v91 = v19;
      v46 = UUID.uuidString.getter();
      v48 = v47;
      v49 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_members;
      swift_beginAccess();
      v50 = *(v1 + v49);
      v51 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember);
      v52 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_localMember + 8);
      outlined init with copy of UserNotificationCenter(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service, &v113);
      v53 = *(v1 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
      v54 = type metadata accessor for IDSGroupSessionProvider();
      memset(v112, 0, sizeof(v112));
      v90 = v54;
      v55 = objc_allocWithZone(v54);
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession] = 0;
      v56 = &v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider____lazy_storage___userDefaults];
      *(v56 + 4) = 0;
      *v56 = 0u;
      *(v56 + 1) = 0u;
      v57 = &v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider__currentPlugins];
      *v57 = 0;
      v58 = MEMORY[0x1E69E7CC0];
      *(v57 + 1) = MEMORY[0x1E69E7CC0];
      v59 = MEMORY[0x1E69E7CD0];
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_participants] = MEMORY[0x1E69E7CD0];
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_unknownParticipants] = v59;
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_powerAssertion] = 0;
      v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_state] = 0;
      v60 = &v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupID];
      *v60 = v46;
      v60[1] = v48;
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_members] = v50;
      v61 = &v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_localMember];
      *v61 = v51;
      v61[1] = v52;
      v62 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_service;

      v63 = v53;
      outlined init with copy of UserNotificationCenter(&v113, &v55[v62]);
      v88[1] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
      *&v109 = 0;
      *(&v109 + 1) = 0xE000000000000000;
      swift_unknownObjectRetain();

      _StringGuts.grow(_:)(29);
      MEMORY[0x1B2710020](0xD000000000000018, 0x80000001AEE35B70);
      MEMORY[0x1B2710020](v46, v48);

      MEMORY[0x1B2710020](45, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18IDSServiceProtocol_pMd, &_s14CopresenceCore18IDSServiceProtocol_pMR);
      _print_unlocked<A, B>(_:_:)();
      v88[0] = v109;
      v89 = v63;
      static DispatchQoS.unspecified.getter();
      *&v109 = v58;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v92 + 104))(v100, *MEMORY[0x1E69E8090], v93);
      *&v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v112, &v107, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
      if (v108)
      {
        outlined init with take of ContiguousBytes(&v107, &v109);
      }

      else
      {
        v68 = type metadata accessor for ABCReporter();
        v69 = swift_allocObject();
        v69[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
        v69[3] = 0x636E795374736146;
        v69[4] = 0xE800000000000000;
        v69[5] = 0xD000000000000017;
        v69[6] = 0x80000001AEE36CF0;
        v110 = v68;
        v111 = &protocol witness table for ABCReporter;
        *&v109 = v69;
        if (v108)
        {
          outlined destroy of NSObject?(&v107, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
        }
      }

      outlined init with take of ContiguousBytes(&v109, &v55[OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_abcReporter]);
      v70 = v90;
      v106.receiver = v55;
      v106.super_class = v90;
      v71 = objc_msgSendSuper2(&v106, sel_init);

      outlined destroy of NSObject?(v112, &_s14CopresenceCore19ABCReporterProtocol_pSgMd, &_s14CopresenceCore19ABCReporterProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm(&v113);
      v102 = v70;
      v103 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type IDSGroupSessionProvider and conformance IDSGroupSessionProvider, type metadata accessor for IDSGroupSessionProvider, &protocol conformance descriptor for IDSGroupSessionProvider);
      v101[0] = v71;
      v19 = v91;
      if (v116)
      {
        outlined destroy of NSObject?(&v115, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      }
    }

    v72 = v102;
    v73 = v103;
    __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
    v74 = *(v73 + 24);
    v75 = swift_unknownObjectRetain();
    v74(v75, &protocol witness table for BackgroundSession, v72, v73);
    v76 = v102;
    v77 = v103;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    (*(v77 + 72))(v76, v77);
    *&v115 = 0xC000000000000010;

    CurrentValueSubject.send(_:)();

    BackgroundSession.state.didset();
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Log.service);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v105 = v82;
      *v81 = 136315138;
      swift_beginAccess();
      outlined init with copy of UserNotificationCenter(v101, &v115);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(&v115, &v113, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      if (v114)
      {
        outlined init with take of ContiguousBytes(&v113, v112);
        outlined init with copy of UserNotificationCenter(v112, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMR);
        v83 = String.init<A>(reflecting:)();
        v85 = v84;
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
      }

      else
      {
        v85 = 0xE300000000000000;
        v83 = 7104878;
      }

      outlined destroy of NSObject?(&v115, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v105);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_1AEB26000, v79, v80, "idsGroupSessionProvider %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1B27120C0](v82, -1, -1);
      MEMORY[0x1B27120C0](v81, -1, -1);
    }

    swift_beginAccess();
    outlined init with copy of UserNotificationCenter(v101, &v115);
    v87 = v95;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(&v115, v1 + v87, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v19, v96);
    return;
  }

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Log.service);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1AEB26000, v65, v66, "Failed to join, bundleIdentifier is nil", v67, 2u);
    MEMORY[0x1B27120C0](v67, -1, -1);
  }

  v101[0] = 0xC000000000000028;

  CurrentValueSubject.send(_:)();

  BackgroundSession.state.didset();
}

uint64_t BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.service);
  outlined init with copy of UserNotificationCenter(a2, &aBlock);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = v10;
    *v9 = 136315394;
    outlined init with copy of UserNotificationCenter(&aBlock, v45);
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v45, &v43, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (v44)
    {
      outlined init with take of ContiguousBytes(&v43, v42);
      outlined init with copy of UserNotificationCenter(v42, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pMR);
      v11 = String.init<A>(reflecting:)();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    outlined destroy of NSObject?(v45, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v46);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v45[0] = a1;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v46);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, v7, v8, "BackgroundSessionManager didChangeState for %s state %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (a1)
  {
    *&aBlock = 0xC000000000000018;

LABEL_30:
    CurrentValueSubject.send(_:)();

    return BackgroundSession.state.didset();
  }

  v18 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (!v19)
  {
    v23 = 0;
    v21 = 0;
    goto LABEL_22;
  }

  v20 = *(v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_queue);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v3;
  v22 = swift_allocObject();
  v23 = partial apply for closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:);
  *(v22 + 16) = partial apply for closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:);
  *(v22 + 24) = v21;
  v49 = thunk for @callee_guaranteed () -> ()partial apply;
  v50 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v48 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v48 + 1) = &block_descriptor_50_0;
  v24 = _Block_copy(&aBlock);
  v25 = v19;

  dispatch_sync(v20, v24);

  _Block_release(v24);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
LABEL_22:
    v49 = 0;
    aBlock = 0u;
    v48 = 0u;
    v32 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
    swift_beginAccess();
    outlined assign with take of ActivitySession.DomainAssertionWrapper?(&aBlock, v3 + v32, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    swift_endAccess();
    return _sxRi_zRi0_zlyytIseghHr_SgWOe(v23, v21);
  }

  __break(1u);
LABEL_16:
  v49 = 0;
  aBlock = 0u;
  v48 = 0u;
  v26 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined assign with take of ActivitySession.DomainAssertionWrapper?(&aBlock, v3 + v26, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v28 = *(v3 + v27);
  *(v3 + v27) = 0;

  v29 = v3 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 8))(v3, ObjectType, v30);
    swift_unknownObjectRelease();
  }

  CurrentValueSubject.value.getter();

  if (v43 >> 62 == 3)
  {
    if (v43 == 0xC000000000000010)
    {
LABEL_27:

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v43 = v37;
        *v36 = 136315138;

        CurrentValueSubject.value.getter();

        v38 = String.init<A>(reflecting:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v43);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_1AEB26000, v34, v35, "Error joining IDS group session: operation failed during state: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1B27120C0](v37, -1, -1);
        MEMORY[0x1B27120C0](v36, -1, -1);
      }

      *&v43 = 0xC000000000000028;

      goto LABEL_30;
    }
  }

  else
  {
    outlined consume of BackgroundSession.State(v43);
  }

  CurrentValueSubject.value.getter();

  result = v43;
  if ((v43 >> 62) <= 2)
  {
    return outlined consume of BackgroundSession.State(v43);
  }

  if (v43 == 0xC000000000000018)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x438))(v3);
}

uint64_t closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:), 0, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)()
{
  v1 = 0xD00000000000001DLL;
  v2 = v0[4];
  v3 = *(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter);
  _StringGuts.grow(_:)(54);
  MEMORY[0x1B2710020](0xD000000000000034, 0x80000001AEE36E30);
  v0[2] = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v5);

  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000001AEE31310;
  }

  v10 = (*(*v3 + 112))(0x206E6F6973736553, 0xEF70756E61656C43, 0, 0xE000000000000000, v1, v9);
  v0[5] = v10;

  if (v10)
  {
    v19 = (*(*v3 + 120) + **(*v3 + 120));
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = closure #1 in IDSGroupSessionProvider.session(_:rejectedKeyRecoveryRequestFrom:reason:);
    v12.n128_u64[0] = 0;

    return v19(v10, v12);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.abcReporter);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1AEB26000, v15, v16, "Failed to generate signature for session reset failure", v17, 2u);
      MEMORY[0x1B27120C0](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

void BackgroundSession.updateMembers(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = static CP_Record._protobuf_nameMap;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18[0] = v17;
    *v8 = 136315394;
    swift_beginAccess();
    type metadata accessor for AddressableMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember, MEMORY[0x1E69E81B8]);

    v9 = Set.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);
    v7 = static CP_Record._protobuf_nameMap;

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v5, v6, "Updating members from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v17, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v16 = v7[143];
  swift_beginAccess();
  *(v2 + v16) = a1;

  BackgroundSession.members.didset();
}

unint64_t BackgroundSession.description.getter()
{
  _StringGuts.grow(_:)(31);

  v1 = [*(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_activity) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x1B2710020](v2, v4);

  return 0xD00000000000001DLL;
}

uint64_t BackgroundSession.releasePresence()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), v0, 0);
}

{
  if ([*(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncPresenceSeparationEnabled])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = (*(**(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 200) + **(**(v0[3] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_presenceController) + 200));
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = BackgroundSession.releasePresence();

    return v4();
  }
}

{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releasePresence(), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  v16 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Error releasing presence: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t BackgroundSession.deinit()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_reporter));

  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate);
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession____lazy_storage___protectedStorage, &_s14CopresenceCore16ProtectedStorage_pSgMd, &_s14CopresenceCore16ProtectedStorage_pSgMR);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_service));

  swift_unknownObjectRelease();
  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
  swift_unknownObjectRelease();

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionSuspensionController, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMd, &_s14CopresenceCore35SessionSuspensionControllerProtocol_pSgMR);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundSession.__deallocating_deinit()
{
  BackgroundSession.deinit();

  return swift_defaultActor_deallocate();
}

Swift::Int BackgroundSession.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance BackgroundSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BackgroundSession()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BackgroundSession(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession;

  return BackgroundSession.acquireSuspensionAssertion()();
}

uint64_t protocol witness for SessionSuspensionControllerTarget.acquireSuspensionAssertion() in conformance BackgroundSession(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t BackgroundSession.acquireSuspensionAssertion()()
{
  v1[6] = v0;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v1[13] = *(v4 + 64);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.acquireSuspensionAssertion(), v0, 0);
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = BackgroundSession.acquireSuspensionAssertion();
  }

  else
  {
    v4 = BackgroundSession.acquireSuspensionAssertion();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v2, v1);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v1, v5 + v4);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v6 = AnyCancellable.init(_:)();
  outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v2);

  v7 = v0[1];

  return v7(v6);
}

{
  v23 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to suspend: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[14];
  v15 = v0[15];
  v16 = v0[12];
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v15, v14);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = swift_allocObject();
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v14, v18 + v17);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v19 = AnyCancellable.init(_:)();
  outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(v15);

  v20 = v0[1];

  return v20(v19);
}

uint64_t BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[10];
  v5 = v1[8];
  v4 = v1[9];
  v6 = v1[7];
  UUID.init()();
  swift_weakInit();
  (*(v5 + 16))(v4, v2, v6);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v3, v4);
  (*(v5 + 8))(v3, v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v1;
  v7[1] = BackgroundSession.acquireSuspensionAssertion();

  return BackgroundSession.suspend()();
}

uint64_t BackgroundSession.suspend()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.suspend(), v0, 0);
}

{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Log.service);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Handling request to suspend", v4, 2u);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions;
  swift_beginAccess();
  if (!*(*(v5 + v6) + 16))
  {
    goto LABEL_7;
  }

  CurrentValueSubject.value.getter();

  v7 = v0[5];
  outlined consume of BackgroundSession.State(v7);
  if (v7 == 0xC000000000000020)
  {
    goto LABEL_7;
  }

  CurrentValueSubject.value.getter();

  v10 = v0[6];
  outlined consume of BackgroundSession.State(v10);
  if (v10 == 0xC000000000000000)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1AEB26000, v11, v12, "Can't suspend without idle session", v13, 2u);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    v8 = v0[1];
    goto LABEL_8;
  }

  CurrentValueSubject.value.getter();

  v15 = v0[7];
  outlined consume of BackgroundSession.State(v15);
  if (v15 >> 62 == 2)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Tried to suspend while leaving. Throwing away suspension request", v18, 2u);
      MEMORY[0x1B27120C0](v18, -1, -1);
    }

LABEL_7:
    v8 = v0[1];
LABEL_8:

    return v8();
  }

  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = BackgroundSession.suspend();

  return BackgroundSession.leave(endState:)(0xC000000000000020);
}

{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.suspend(), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t BackgroundSession.suspend()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Suspend's leave failed.", v6, 2u);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t BackgroundSession.unsuspend()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundSession.unsuspend(), v0, 0);
}

{
  v19 = v0;
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

  v5 = v0[5];

  v6 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_suspensionAssertions;
  swift_beginAccess();
  if (*(*(v5 + v6) + 16))
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      type metadata accessor for UUID();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

      v11 = Set.description.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Not unsuspending due to active suspension assertions: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1B27120C0](v10, -1, -1);
      MEMORY[0x1B27120C0](v9, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = BackgroundSession.unsuspend();

    return BackgroundSession.join()();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t BackgroundSession.releaseSuspensionAssertion(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](BackgroundSession.releaseSuspensionAssertion(_:), v1, 0);
}

uint64_t BackgroundSession.releaseSuspensionAssertion(_:)()
{
  v1 = v0[8];
  v2 = v0[6];
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v2, v1);
  outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = BackgroundSession.releaseSuspensionAssertion(_:);

  return BackgroundSession.unsuspend()();
}

{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return MEMORY[0x1EEE6DFA0](BackgroundSession.releaseSuspensionAssertion(_:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v17 = v0;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Failed to unsuspend: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), v10);
}

uint64_t closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()()
{
  type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  Strong = swift_weakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion();
    v3 = *(v0 + 24);

    return BackgroundSession.releaseSuspensionAssertion(_:)(v3);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion(), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 32) == 0;
  return (*(v0 + 8))();
}

uint64_t closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangePlugins(sessionProvider:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)()
{
  v1 = v0[6] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[7] = swift_unknownObjectWeakLoadStrong();
  v0[8] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangePlugins(sessionProvider:), 0, 0);
}

{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v3, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  **(v0 + 40) = v1 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of UserNotificationCenter(a1, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v2;
  *(v9 + 40) = a2;
  outlined init with take of ContiguousBytes(v12, v9 + 48);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundSession.didChangeState(sessionProvider:state:), v9);
}

uint64_t closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didChangeState(sessionProvider:state:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)()
{
  BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(*(v0 + 32), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;

  a4(0, 0, v9, a3, v11);
}

uint64_t closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_session;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 152) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:), 0, 0);
}

{
  v1 = v0[19];
  if (v1)
  {
    v13 = v0[18];
    v2 = v0[15];
    v15 = v0[17];
    v16 = v0[16];
    v4 = v0[13];
    v3 = v0[14];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v0[6] = partial apply for closure #1 in closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:);
    v0[7] = v5;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[5] = &block_descriptor_189;
    v6 = _Block_copy(v0 + 2);
    v14 = v1;
    static DispatchQoS.unspecified.getter();
    v0[11] = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27106E0](0, v13, v2, v6);
    _Block_release(v6);

    (*(v3 + 8))(v2, v4);
    (*(v15 + 8))(v13, v16);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.service);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AEB26000, v8, v9, "Doesn't have a session to refresh the dataCryptor of", v10, 2u);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;

  v9 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v8);
}

uint64_t closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)()
{
  if ([*(v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = v0[5];
    v0[7] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag;

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v1, 0);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling key recovery request rejection due to FeatureFlag being disabled.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

{
  v0[8] = *(v0[5] + v0[7]);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

{
  if ([*(v0 + 64) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = *(v0 + 40);

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), v1, 0);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling key recovery request rejection due to server bag disablement.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[9] = swift_unknownObjectWeakLoadStrong();
  v0[10] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:), 0, 0);
}

{
  if (v0[9])
  {
    v1 = v0[10];
    v3 = v0[5];
    v2 = v0[6];
    ObjectType = swift_getObjectType();
    (*(v1 + 24))(v3, v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v8);
}

uint64_t closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)()
{
  if ([*(v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_featureFlags) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = v0[5];
    v0[7] = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_serverBag;

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v1, 0);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling an updated unknown participant list due to FeatureFlag being disabled.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }
}

{
  v0[8] = *(v0[5] + v0[7]);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

{
  if ([*(v0 + 64) fastSyncRecoveryMessageHandlingEnabled])
  {
    v1 = *(v0 + 40);

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), v1, 0);
  }

  else
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not handling an updated unknown participant list due to server bag disablement.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v1 = v0[5] + OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_delegate;
  swift_beginAccess();
  v0[9] = swift_unknownObjectWeakLoadStrong();
  v0[10] = *(v1 + 8);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:), 0, 0);
}

{
  if (v0[9])
  {
    v1 = v0[10];
    v3 = v0[5];
    v2 = v0[6];
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v3, v2, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didChangeState(sessionProvider:state:) in conformance BackgroundSession(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of UserNotificationCenter(a1, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v2;
  *(v9 + 40) = a2;
  outlined init with take of ContiguousBytes(v12, v9 + 48);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)partial apply, v9);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didRejectKeyRecoveryRequest(sessionProvider:from:reason:) in conformance BackgroundSession(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;

  v9 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)partial apply, v8);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:) in conformance BackgroundSession(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)partial apply, v8);
}

uint64_t protocol witness for IDSGroupSessionProviderDelegate.didReceiveKeyUpdate(sessionProvider:) in conformance BackgroundSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;

  a6(0, 0, v11, a5, v13);
}

Swift::UInt64_optional __swiftcall BackgroundSession.localParticipantAlias(for:)(Swift::String_optional a1)
{
  v1 = 0;
  v2 = 1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a5;
  v16[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v16);
}

uint64_t closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v11;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v4 = type metadata accessor for TaskPriority();
  v0[23] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[24] = v6;
  v0[25] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v3;

  v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14CopresenceCore23IDSGroupSessionProviderC11ParticipantV_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v7);
  v9 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_abcReporter;
  v0[26] = v8;
  v0[27] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), v2, 0);
}

{
  v0[28] = *(v0[16] + v0[27]);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  *(v0 + 40) = type metadata accessor for ABCReporter();
  *(v0 + 48) = &protocol witness table for ABCReporter;
  *(v0 + 16) = v1;
  v4(v5, 1, 1, v3);
  outlined init with copy of UserNotificationCenter(v0 + 16, v0 + 56);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = 0xD000000000000039;
  v8[6] = 0x80000001AEE36DF0;
  v8[7] = v7;
  v8[8] = v6;
  outlined init with take of ContiguousBytes((v0 + 56), (v8 + 9));

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v8);

  outlined destroy of NSObject?(v5, &_sScPSgMd, &_sScPSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v9 = v0;
  v9[1] = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  v11 = *(v0 + 208);
  v12 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 96, v11, &type metadata for IDSGroupSessionProvider.Participant, v10, v12);
}

{

  if (v0)
  {

    v1 = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  else
  {
    v1 = closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = objc_opt_self();
  v5 = MEMORY[0x1B270FF70](v2, v3);
  v6 = [v4 normalizedHandleWithDestinationID_];

  if (!v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
    v8 = MEMORY[0x1B270FF70](v2, v3);
    v6 = [v7 initWithDestinationID_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69D8B90]) initWithIdentifier:v1 handle:v6];

  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    if (v11)
    {
      *(v0 + 120) = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant, 0x1E69D8B90);
      v16 = v11;
      v17 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1AEB26000, v12, v13, "[Translation] Received translated participant: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  (*(v0 + 160))(v11);

  v21 = *(v0 + 8);

  return v21();
}

{
  v10 = v0;
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
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, &v9);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_1AEB26000, v2, v3, "[Translation] Received translated participant: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  (*(v0 + 160))(0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[15] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), a4, 0);
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)()
{
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v13 = (*(v2 + 112) + **(v2 + 112));
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
    v4 = *(v0 + 136);

    return v13(v4, v1, v2);
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.service);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 136);
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&dword_1AEB26000, v7, v8, "[Translation] Not able to translate participantID %llu since we don't have a session", v10, 0xCu);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  *v2 = vextq_s8(*(v0 + 168), *(v0 + 168), 8uLL);
  v2[1].i64[0] = v1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 152) = v3;

  if (v3)
  {
    v9 = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  else
  {
    v8[20] = a3;
    v8[21] = a2;
    v8[22] = a1;
    v9 = closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;

  v17 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), v16);
}

uint64_t closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v10;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:), 0, 0);
}

{
  v22 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 160);
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    (*(v6 + 96))(v4, v3, v1, v2, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 128);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.service);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 128);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      *(v0 + 16) = v12;
      type metadata accessor for ActivitySession(0);
      v15 = v12;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEB26000, v10, v11, "Session, %s failed to fetch data cryptor, no session provider", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1B27120C0](v14, -1, -1);
      MEMORY[0x1B27120C0](v13, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  v10 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), v9);
}

uint64_t closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), a4, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC14CopresenceCore17BackgroundSession_sessionProvider;
  swift_beginAccess();
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v2, v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:), 0, 0);
}

{
  v19 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 136);
    outlined init with take of ContiguousBytes((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    (*(v3 + 104))(v1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of NSObject?(v0 + 56, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMd, &_s14CopresenceCore31IDSGroupSessionProviderProtocol_pSgMR);
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 128);
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.service);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 128);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v0 + 16) = v9;
      type metadata accessor for ActivitySession(0);
      v12 = v9;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEB26000, v7, v8, "Session, %s failed to request encryption keys, no session provider", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1B27120C0](v11, -1, -1);
      MEMORY[0x1B27120C0](v10, -1, -1);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

void BackgroundSession.session(session:stateChanged:)(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  v9 = *a2;
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.service);
  v11 = a1;
  outlined copy of ActivitySession.State(v9);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  outlined consume of ActivitySession.State(v9);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v11;
    v36 = v16;
    *v15 = 136315394;
    type metadata accessor for ActivitySession(0);
    v17 = v11;
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v35 = v9;
    outlined copy of ActivitySession.State(v9);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v36);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1AEB26000, v12, v13, "Session, %s, state changed: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    v24 = v15;
    v3 = v34;
    MEMORY[0x1B27120C0](v24, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v11) + 0x2F8))(&v36);
  if (v36 >> 62)
  {
    if (v36 >> 62 == 1)
    {
      outlined consume of ActivitySession.State(v36);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1AEB26000, v25, v26, "ActivitySession transitioned to invalid state.", v27, 2u);
        MEMORY[0x1B27120C0](v27, -1, -1);
      }
    }
  }

  else
  {
    v29 = *(v36 + 16);
    v28 = *(v36 + 24);
    v30 = v36;
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v29;
    v32[5] = v28;
    v32[6] = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in BackgroundSession.session(session:stateChanged:), v32);

    outlined consume of ActivitySession.State(v30);
  }
}

uint64_t closure #1 in BackgroundSession.session(session:stateChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:stateChanged:), 0, 0);
}

uint64_t closure #1 in BackgroundSession.session(session:stateChanged:)()
{
  v1 = v0[3];

  if (v1)
  {
    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.service);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEB26000, v3, v4, "Not ending BackgroundSession since the ActivitySession's invalidation was not userOriginated.", v5, 2u);
      MEMORY[0x1B27120C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {

    if (one-time initialization token for service != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[5] = __swift_project_value_buffer(v8, static Log.service);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEB26000, v9, v10, "Ending BackgroundSession due to ActivitySession being invalidated.", v11, 2u);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = closure #1 in BackgroundSession.session(session:stateChanged:);

    return BackgroundSession.leave(endState:)(0xC000000000000028);
  }
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundSession.session(session:stateChanged:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    type metadata accessor for BackgroundSession(0);

    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v1, v2, "Error ending BackgroundSession: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
    v10 = v3;
  }

  else
  {
    v10 = v0[7];
  }

  v11 = v0[1];

  return v11();
}

uint64_t protocol witness for ActivitySessionManagerProtocol.participant(with:for:includeLocalParticipant:completion:) in conformance BackgroundSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a5;
  v16[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)partial apply, v16);
}

uint64_t protocol witness for ActivitySessionManagerProtocol.session(session:fetchDataCryptorForTopic:completion:) in conformance BackgroundSession(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;

  v17 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)partial apply, v16);
}

uint64_t protocol witness for ActivitySessionManagerProtocol.session(session:requestEncryptionKeysForParticipants:topicName:) in conformance BackgroundSession(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  v10 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)partial apply, v9);
}

char *_s14CopresenceCore15ActivitySessionC08activityD07managerACSo014TUConversationcD0C_AA0cD15ManagerProtocol_ptcfCTf4nen_nAA0cdH0C_Tt1g5(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [a1 activity];
  v11 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v12 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [a1 isLocallyInitiated];
  v14 = [a1 isLightweightPrimaryInitiated];
  v15 = [a1 isStageInitiated];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static IMUserNotificationCenter.shared;
  v17 = objc_allocWithZone(type metadata accessor for ActivitySession(0));
  v18 = specialized ActivitySession.init(activity:id:manager:timestamp:locallyInitiated:lightweightPrimaryInitiated:stageInitiated:notificationCenter:)(v10, v9, a2, v6, v13, v14, v15, v16, v17);

  v19 = v18;
  v20 = [a1 isUsingAirplay];

  v21 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  v19[v21] = v20;

  return v19;
}

_BYTE *specialized ActivitySession.__allocating_init(activitySession:manager:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [a1 activity];
  v12 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = a2;
  swift_unknownObjectRetain();
  v13 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 isLocallyInitiated];
  v15 = [a1 isLightweightPrimaryInitiated];
  v16 = [a1 isStageInitiated];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static IMUserNotificationCenter.shared;
  v26[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMUserNotificationCenter, 0x1E69A6190);
  v26[4] = &protocol witness table for IMUserNotificationCenter;
  v26[0] = v17;
  v18 = *(a3 + 1200);
  v19 = v17;
  v20 = v18(v24, v11, v25, &protocol witness table for BackgroundSession, v8, v14, v15, v16, v26);
  v21 = [a1 isUsingAirplay];

  v22 = OBJC_IVAR___CPActivitySession_isUsingAirplay;
  swift_beginAccess();
  v20[v22] = v21;

  return v20;
}

uint64_t specialized static BackgroundSession.State.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v3 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v11 = __ROR8__(a1 + 0x4000000000000000, 3);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (a2 != 0xC000000000000018)
          {
            return 0;
          }
        }

        else if (v11 == 4)
        {
          if (a2 != 0xC000000000000020)
          {
            return 0;
          }
        }

        else if (a2 != 0xC000000000000028)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v11 == 1)
        {
          if (a2 != 0xC000000000000008)
          {
            return 0;
          }
        }

        else if (a2 != 0xC000000000000010)
        {
          return 0;
        }
      }

      else if (a2 != 0xC000000000000000)
      {
        return 0;
      }

      return 1;
    }

    if (a2 >> 62 != 2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (a2 >> 62 != 1)
    {
      return 0;
    }

LABEL_9:
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = MEMORY[0x1E69E7288];
    v8 = a1 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = MEMORY[0x1E69E7CA8] + 8;
    goto LABEL_10;
  }

  if (a2 >> 62)
  {
    return 0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = MEMORY[0x1E69E7288];
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = a1;
  v9 = a2;
LABEL_10:

  return MEMORY[0x1EEE6DA00](v8, v9, v7, v5, v6);
}

void specialized BackgroundSession.sessionChanged(session:)(void *a1)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.service);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for ActivitySession(0);
    v7 = v3;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEB26000, oslog, v4, "Session changed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  else
  {
  }
}

void specialized BackgroundSession.session(session:receivedEvent:)(void *a1, void *a2)
{
  if (one-time initialization token for service != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.service);
  v5 = a1;
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    type metadata accessor for ActivitySession(0);
    v10 = v5;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivityEvent, 0x1E69D8B40);
    v14 = v6;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1AEB26000, oslog, v7, "Session, %s, received event: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.init(identifier:activity:members:localMember:service:serverBag:presenceController:delegate:sessionProvider:featureFlags:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.join()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in BackgroundSession.reset()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in BackgroundSession.reset()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.leave(endState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.leave(endState:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError()
{
  result = lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError;
  if (!lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError;
  if (!lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.BackgroundSessionError and conformance BackgroundSession.BackgroundSessionError);
  }

  return result;
}

uint64_t outlined init with copy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in BackgroundSession.acquireSuspensionAssertion()()
{
  v1 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in BackgroundSession.acquireSuspensionAssertion()(v2);
}

uint64_t outlined destroy of Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v2 = type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didChangePlugins(sessionProvider:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didChangeState(sessionProvider:state:)(a1, v4, v5, v6, v7, v1 + 48);
}

uint64_t partial apply for closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didReceiveKeyUpdate(sessionProvider:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didRejectKeyRecoveryRequest(sessionProvider:from:reason:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.didReceiveUpdatedUnknownParticipantList(sessionProvider:unknownParticipants:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1)
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
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(uint64_t a1)
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
  v11[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.session(session:fetchDataCryptorForTopic:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.session(session:requestEncryptionKeysForParticipants:topicName:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in BackgroundSession.session(session:stateChanged:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in BackgroundSession.session(session:stateChanged:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type BackgroundSession.State and conformance BackgroundSession.State()
{
  result = lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State;
  if (!lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundSession.State and conformance BackgroundSession.State);
  }

  return result;
}

uint64_t keypath_get_99Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t type metadata completion function for BackgroundSession(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of BackgroundSession.join()()
{
  v4 = (*(*v0 + 536) + **(*v0 + 536));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t dispatch thunk of BackgroundSession.reset()()
{
  v4 = (*(*v0 + 552) + **(*v0 + 552));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t dispatch thunk of BackgroundSession.leave(endState:)(uint64_t a1)
{
  v6 = (*(*v1 + 560) + **(*v1 + 560));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v6(a1);
}

uint64_t dispatch thunk of BackgroundSession.end()()
{
  v4 = (*(*v0 + 568) + **(*v0 + 568));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v4();
}

uint64_t getEnumTagSinglePayload for BackgroundSession.BackgroundSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundSession.BackgroundSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CopresenceCore17BackgroundSessionC5StateO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for BackgroundSession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BackgroundSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for BackgroundSession.State(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t type metadata completion function for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_80Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_76Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_68Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_60Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_13Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.participant(with:for:includeLocalParticipant:completion:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(uint64_t a1)
{
  v4 = *(type metadata accessor for Assertion #1 in BackgroundSession.acquireSuspensionAssertion()(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.acquireSuspensionAssertion()(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_2Tm_2(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in BackgroundSession.handleIDSSessionStateChange(_:sessionProvider:)(a1, v4, v5, v7, v6);
}