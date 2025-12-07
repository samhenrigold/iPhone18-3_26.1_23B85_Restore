uint64_t type metadata accessor for AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GroupActivityMetadata(uint64_t a1)
{
  type metadata accessor for GroupActivityMetadata.ActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGImageRef?(319, &lazy cache variable for type metadata for CGImageRef?, type metadata accessor for CGImageRef);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGImageRef?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for GroupActivityMetadata.ActivityType(uint64_t a1)
{
  result = type metadata accessor for GroupActivityDescription();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for CGImageRef?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for TUConversationActivityLifetimePolicy(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void type metadata accessor for Published<Set<Participant>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<Participant>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<Participant>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata instantiation function for GroupSession.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AEE82824()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDys6UInt64V15GroupActivities19InternalParticipantVGGMd, &_s15Synchronization5MutexVySDys6UInt64V15GroupActivities19InternalParticipantVGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void type metadata completion function for GroupSession(uint64_t a1)
{
  type metadata accessor for Participant(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      type metadata accessor for GroupSession.State(255, v5, v6, v3);
      type metadata accessor for Published();
      if (v7 <= 0x3F)
      {
        type metadata accessor for Published();
        if (v8 <= 0x3F)
        {
          type metadata accessor for Published<Set<Participant>>(319);
          if (v10 <= 0x3F)
          {
            type metadata accessor for GroupSession.Timestamps(319, v5, v6, v9);
            if (v12 <= 0x3F)
            {
              type metadata accessor for GroupSession.MessageQueue(255, v5, v6, v11);
              type metadata accessor for Published();
              if (v13 <= 0x3F)
              {
                type metadata accessor for SharePlayLatencyLogger.Interval?(319, &lazy cache variable for type metadata for SharePlayLatencyLogger.Interval?, MEMORY[0x1E6997558]);
                if (v14 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for Participant(uint64_t a1)
{
  result = type metadata singleton initialization cache for Participant;
  if (!type metadata singleton initialization cache for Participant)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Participant(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized GroupStateObserver.init(conversationManagerClient:queue:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v47 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v65 = a1;
  v25 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  LOBYTE(v64) = 0;
  Published.init(initialValue:)();
  v26 = *(v22 + 32);
  v58 = a3;
  v51 = v21;
  v26(a3 + v25, v24, v21);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.client);
  v28 = a2;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_1AEE80000, v29, v30, "Initialized group state observer on queue: %@", v31, 0xCu);
    outlined destroy of NSObject?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v31, -1, -1);
  }

  type metadata accessor for ConversationManagerClient();
  v34 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();

  v64 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v35 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR, MEMORY[0x1E695BD60]);
  v64 = Publisher.eraseToAnyPublisher()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, v35);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v36 = v49;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v48 + 8))(v14, v36);
  v64 = v28;
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v38 = v56;
  (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR, MEMORY[0x1E695BCC0]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v40 = v52;
  v39 = v53;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v38, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v50 + 8))(v16, v40);
  v41 = v58;
  swift_beginAccess();
  v42 = v60;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v43 = v55;
  Publisher<>.assign(to:)();
  (*(v54 + 8))(v39, v43);
  v45 = v61;
  v44 = v62;
  (*(v61 + 16))(v59, v42, v62);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v45 + 8))(v42, v44);
  (*(v57 + 8))(v20, v63);
  return v41;
}

uint64_t type metadata accessor for GroupStateObserver(uint64_t a1)
{
  result = type metadata singleton initialization cache for GroupStateObserver;
  if (!type metadata singleton initialization cache for GroupStateObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GroupStateObserver(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t GroupStateObserver.__allocating_init()()
{
  type metadata accessor for OS_dispatch_queue();
  v0 = static OS_dispatch_queue.main.getter();
  type metadata accessor for ConversationManagerClient();
  v1 = static ConversationManagerClient.shared.getter();
  v2 = swift_allocObject();
  v3 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v1, v0, v2);

  return v3;
}

uint64_t type metadata instantiation function for GroupSessionObserver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double GroupSessionObserver.init(for:)@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v3 = static OS_dispatch_queue.main.getter();
  GroupSessionObserver.init(for:queue:)(v3, v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t GroupSessionObserver.init(for:queue:)@<X0>(void *a1@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.client);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Initialized observer for %s on queue: %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static ConversationManager.shared;
  *a3 = v6;
  a3[1] = v16;
  a3[2] = &protocol witness table for ConversationManager;
  a3[3] = protocol witness for static GroupActivity._identifiable(by:staticIdentifier:) in conformance AnyGroupActivity;
  a3[4] = 0;
}

uint64_t sub_1AEE83B40()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGGMd, &_s15Synchronization5MutexVy14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t one-time initialization function for sessionUI(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

void type metadata completion function for GroupSession.Timestamps(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SharePlayLatencyLogger.Interval?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SharePlayLatencyLogger.Interval?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for GroupSession.MessageQueue(uint64_t a1)
{
  result = type metadata accessor for PubSubTopic.QueueState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for GroupSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for GroupSession.Sessions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for GroupSession.Sessions.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double static GroupActivity.sessions()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  GroupSessionObserver.init(for:)(v13);
  v11[0] = v13[0];
  v11[1] = v13[1];
  v12 = v14;
  v7 = type metadata accessor for GroupSessionObserver(0, a1, a2, v6);
  swift_getWitnessTable();
  _PublisherElements.init(_:)(v11, v7, v15);
  v8 = v16;
  result = *v15;
  v10 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v8;
  return result;
}

void closure #1 in GroupStateObserver.init(conversationManagerClient:queue:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
    if ([v12 state] == 3)
    {
      v13 = [v12 capabilities];

      if ((v13 & 8) != 0)
      {
        v14 = 1;
LABEL_14:

        *a2 = v14;
        return;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void closure #2 in GroupStateObserver.init(conversationManagerClient:queue:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.client);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "Group session eligibility changed to new value: %{BOOL}d", v4, 8u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void one-time initialization function for shared()
{
  type metadata accessor for ConversationManagerClient();
  v0 = static ConversationManagerClient.shared.getter();
  type metadata accessor for ConversationManager();
  v1 = swift_allocObject();
  v2 = v0;
  v3 = specialized ConversationManager.init(client:)(v2, v1);

  static ConversationManager.shared = v3;
}

{
  v0 = [objc_allocWithZone(type metadata accessor for BackgroundSessionManagerClient()) init];
  type metadata accessor for BackgroundGroupSessionManager();
  v1 = swift_allocObject();
  v2 = specialized BackgroundGroupSessionManager.init(client:)(v0, v1);

  static BackgroundGroupSessionManager.shared = v2;
}

uint64_t specialized ConversationManager.init(client:)(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for ConversationManagerClient();
  v8 = MEMORY[0x1E69975E0];
  *&v6 = a1;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static AVAudioSessionAssertionManager.shared;
  *(a2 + 72) = type metadata accessor for AVAudioSessionAssertionManager();
  *(a2 + 80) = &protocol witness table for AVAudioSessionAssertionManager;
  *(a2 + 48) = v4;
  *(a2 + 88) = 0;
  *(a2 + 136) = 0;
  outlined init with take of Transferable(&v6, a2 + 96);

  return a2;
}

uint64_t outlined init with take of Transferable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for AVAudioSessionAssertionManager();
  v1 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  result = Lock.init()();
  v3 = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = result;
  *(v1 + 24) = v3;
  static AVAudioSessionAssertionManager.shared = v1;
  return result;
}

void GroupSession.Sessions.makeAsyncIterator()(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v15 = *v3;
  v6 = type metadata accessor for GroupSessionObserver(255, *(a1 + 16), *(a1 + 24), a2);
  v7 = v5;
  swift_unknownObjectRetain();

  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for _PublisherElements(0, v6, WitnessTable, v9);
  v14 = _PublisherElements.makeAsyncIterator()(v10, v11, v12, v13);

  swift_unknownObjectRelease();

  *a3 = v14;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t type metadata completion function for _PublisherElements(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _PublisherElements.Iterator.Inner(0, a2, a3, a4);
  v4 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  swift_getWitnessTable();
  Publisher.subscribe<A>(_:)();
  return v4;
}

uint64_t *_PublisherElements.Iterator.Inner.init()()
{
  *(v0 + 16) = swift_slowAlloc();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  type metadata accessor for UnsafeContinuation();
  *(v0 + 24) = Array.init()();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = static Subscribers.Demand.none.getter();
  **(v0 + 16) = 0;
  return v0;
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t GroupSessionObserver.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v83 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMR);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v83 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMR);
  v96 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMd, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMR);
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v83 - v13;
  v14 = *(a2 + 24);
  v119 = *(a2 + 16);
  v120 = a2;
  v108 = v14;
  v16 = type metadata accessor for GroupSession(255, v119, v14, v15);
  v17 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Filter<Publishers.FlatMap<Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>>, Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>>>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMd, &_s7Combine10PublishersO6FilterVy_AC7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0I7SessionCyAL03AnyI8ActivityVGGGAC12HandleEventsVy_AA0L9PublisherVySayAQGs5NeverOGGGGMR, MEMORY[0x1E695BDE0]);
  v104 = v12;
  v97 = v16;
  v95 = v17;
  v18 = type metadata accessor for Publishers.CompactMap();
  v111 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v83 - v19;
  WitnessTable = swift_getWitnessTable();
  v113 = v18;
  v99 = WitnessTable;
  v21 = type metadata accessor for Publishers.HandleEvents();
  v114 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v83 - v22;
  v23 = type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v24 = swift_getWitnessTable();
  v25 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v115 = v21;
  *&v122 = v21;
  *(&v122 + 1) = v23;
  v106 = v23;
  v103 = v24;
  *&v123 = v24;
  *(&v123 + 1) = v25;
  v101 = v25;
  v110 = type metadata accessor for Publishers.ReceiveOn();
  v107 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = &v83 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v86 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v83 - v28;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities12ConversationCGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities12ConversationCGGMR);
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v31 = &v83 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMR);
  v118 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = v4[1];
  v122 = *v4;
  v123 = v35;
  v124 = *(v4 + 4);
  v36 = *(&v122 + 1);
  v37 = v35;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (v36 == static ConversationManager.shared)
  {
    type metadata accessor for ConversationManagerClient();
    v85 = static ConversationManagerClient.shared.getter();
    v121[0] = ConversationManagerClient.onActivitySessionsChanged.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    v84 = v32;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities12ConversationCGMd, &_sSay15GroupActivities12ConversationCGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR, MEMORY[0x1E695BCC0]);
    Publisher.map<A>(_:)();
    (*(v86 + 8))(v29, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
    v40 = v90;
    Publishers.Map.map<A>(_:)();
    (*(v87 + 8))(v31, v40);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Publishers.HandleEvents<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>>, [GroupSession<AnyGroupActivity>]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMd, &_s7Combine10PublishersO3MapVy_AC12HandleEventsVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGSay15GroupActivities0oL0CyAT0foK0VGGGMR, MEMORY[0x1E695BD60]);
    v41 = v84;
    v39 = Publisher.eraseToAnyPublisher()();

    (*(v118 + 8))(v34, v41);
  }

  else
  {
    v39 = (*(v37 + 24))(ObjectType, v37);
  }

  v121[5] = v39;
  v42 = swift_allocObject();
  v43 = v119;
  *(v42 + 16) = v119;
  *(v42 + 24) = a3;
  v44 = v43;
  v89 = a3;
  v45 = v108;
  *(v42 + 32) = v108;
  *(v42 + 40) = a4;
  v46 = v45;
  v88 = a4;
  v47 = v123;
  *(v42 + 48) = v122;
  *(v42 + 64) = v47;
  *(v42 + 80) = v124;
  v90 = v39;

  v48 = v120;
  v49 = *(v120 - 8);
  v87 = *(v49 + 16);
  v118 = v49 + 16;
  (v87)(v121, &v122, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSession<AnyGroupActivity>], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D7SessionCyAD0bD8ActivityVGGs5NeverOGMR, MEMORY[0x1E695BED8]);
  v50 = v91;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  static Subscribers.Demand.unlimited.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMd, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA12AnyPublisherVySay15GroupActivities0G7SessionCyAH0eG8ActivityVGGs5NeverOGGMR, MEMORY[0x1E695BCC0]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMd, &_s7Combine10PublishersO9MergeManyVy_AA4JustVy15GroupActivities0F7SessionCyAH03AnyF8ActivityVGGGMR, MEMORY[0x1E695BE80]);
  v51 = v94;
  v52 = v93;
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  (*(v92 + 8))(v50, v52);
  v53 = swift_allocObject();
  v54 = v89;
  *(v53 + 16) = v44;
  *(v53 + 24) = v54;
  v55 = v46;
  v56 = v88;
  *(v53 + 32) = v46;
  *(v53 + 40) = v56;
  v57 = v123;
  *(v53 + 48) = v122;
  *(v53 + 64) = v57;
  *(v53 + 80) = v124;
  v58 = v48;
  v59 = v87;
  (v87)(v121, &v122, v58);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.MergeMany<Just<GroupSession<AnyGroupActivity>>>, Publishers.HandleEvents<AnyPublisher<[GroupSession<AnyGroupActivity>], Never>>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC9MergeManyVy_AA4JustVy15GroupActivities0H7SessionCyAJ03AnyH8ActivityVGGGAC12HandleEventsVy_AA0K9PublisherVySayAOGs5NeverOGGGMR, MEMORY[0x1E695BE40]);
  v60 = v100;
  v61 = v98;
  Publisher.filter(_:)();

  (*(v96 + 8))(v51, v61);
  v62 = v122;
  v63 = swift_allocObject();
  v64 = v119;
  *(v63 + 16) = v119;
  *(v63 + 24) = v54;
  v65 = v54;
  *(v63 + 32) = v55;
  *(v63 + 40) = v56;
  v66 = v56;
  v67 = v123;
  *(v63 + 48) = v122;
  *(v63 + 64) = v67;
  *(v63 + 80) = v124;
  *(v63 + 88) = v62;
  v68 = v62;
  v59(v121, &v122, v120);
  v69 = v68;
  v70 = v109;
  v71 = v104;
  Publisher.compactMap<A>(_:)();

  (*(v102 + 8))(v60, v71);
  v72 = swift_allocObject();
  v72[2] = v64;
  v72[3] = v65;
  v72[4] = v55;
  v72[5] = v66;
  v73 = swift_allocObject();
  v73[2] = v64;
  v73[3] = v65;
  v73[4] = v55;
  v73[5] = v66;
  v74 = swift_allocObject();
  v74[2] = v64;
  v74[3] = v65;
  v74[4] = v55;
  v74[5] = v66;
  v75 = v113;
  v76 = v112;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v111 + 8))(v70, v75);
  v121[0] = v69;
  v77 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v78 = v116;
  (*(*(v77 - 8) + 56))(v116, 1, 1, v77);
  v79 = v105;
  v80 = v115;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v78, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v114 + 8))(v76, v80);
  v81 = v110;
  Publishers.ReceiveOn.receive<A>(subscriber:)();

  return (*(v107 + 8))(v79, v81);
}

uint64_t sub_1AEE85D90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

void type metadata completion function for AnyGroupActivity(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity.MetadataProvider(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AnyGroupActivity.MetadataProvider(uint64_t a1)
{
  type metadata accessor for GroupActivityMetadata(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Future<GroupActivityMetadata, Never>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for Future<GroupActivityMetadata, Never>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Future<GroupActivityMetadata, Never>)
  {
    type metadata accessor for GroupActivityMetadata(255);
    v1 = type metadata accessor for Future();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Future<GroupActivityMetadata, Never>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AnyGroupActivity(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for Conversation(uint64_t a1)
{
  result = type metadata singleton initialization cache for Conversation;
  if (!type metadata singleton initialization cache for Conversation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Conversation(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Conversation.State>(319, &lazy cache variable for type metadata for Published<Conversation.State>, &type metadata for Conversation.State);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Set<Participant>>(319, &lazy cache variable for type metadata for Published<Set<Participant>>, &_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Conversation.State>(319, &lazy cache variable for type metadata for Published<UInt64>, MEMORY[0x1E69E76D8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Set<Participant>>(319, &lazy cache variable for type metadata for Published<[GroupSession<AnyGroupActivity>]>, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Conversation.State>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Published<Set<Participant>>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void closure #11 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.client);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = Subscribers.Demand.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Received request for next activity session with demand: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }
}

void closure #1 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t *a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.client);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for UUID();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = Dictionary.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Received updated conversation containers: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #2 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v47 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v48 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v47 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v49 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v47 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v50 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v51 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v47 - v6;
  v57 = type metadata accessor for UUID();
  v7 = *(v57 - 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v47 - v10;
  v11 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v11 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = *(*(v11 + 56) + ((v18 << 9) | (8 * v19)));
        if ([v20 state] == 3 && objc_msgSend(v20, sel_localParticipantIdentifier))
        {
          a1 = &v67;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v17 = v18;
          if (!v15)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v17 = v18;
          if (!v15)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v18 = v17;
      }
    }
  }

  a1 = v67;
  v67 = v12;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (i = *(a1 + 16); ; i = __CocoaSet.count.getter())
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v23 = 0;
    v53 = a1;
    v54 = a1 & 0xC000000000000001;
    v50 += 4;
    v51 += 4;
    v48 += 4;
    v49 += 4;
    v24 = v7 + 4;
    v52 = i;
    while (1)
    {
      if (v54)
      {
        v25 = MEMORY[0x1B2714B30](v23, a1);
      }

      else
      {
        if (v23 >= *(a1 + 16))
        {
          goto LABEL_36;
        }

        v25 = *(a1 + 8 * v23 + 32);
      }

      v7 = v25;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v25 UUID];
      v28 = v55;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = [v7 groupUUID];
      v30 = v56;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v29) = [v7 capabilities];
      type metadata accessor for Conversation(0);
      v31 = swift_allocObject();
      v32 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
      LOBYTE(v66) = 0;
      v33 = v58;
      Published.init(initialValue:)();
      (*v51)(v31 + v32, v33, v59);
      v34 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
      v66 = MEMORY[0x1E69E7CD0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
      v35 = v60;
      Published.init(initialValue:)();
      (*v50)(v31 + v34, v35, v61);
      v36 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
      v66 = 0;
      v37 = v62;
      Published.init(initialValue:)();
      (*v49)(v31 + v36, v37, v63);
      v38 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
      v66 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
      v39 = v64;
      Published.init(initialValue:)();
      (*v48)(v31 + v38, v39, v65);
      v40 = *v24;
      v41 = v57;
      (*v24)(v31 + OBJC_IVAR____TtC15GroupActivities12Conversation_id, v28, v57);
      v40(v31 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v30, v41);
      *(v31 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = (v29 & 8) != 0;

      v42 = [v7 state];
      if (v42 >= 5)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v66) = v43;

      static Published.subscript.setter();
      v44 = [v7 localParticipantIdentifier];
      swift_getKeyPath();
      swift_getKeyPath();
      v66 = v44;

      static Published.subscript.setter();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v45 = specialized InternalGroupSessionProvider.groupSessions(for:)(v7);
      swift_getKeyPath();
      swift_getKeyPath();
      v66 = v45;
      static Published.subscript.setter();

      MEMORY[0x1B27142A0]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v23;
      a1 = v53;
      if (v26 == v52)
      {
        v22 = v67;
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_33:

  *v47 = v22;
  return result;
}

unint64_t closure #3 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*a1);
  *a2 = result;
  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B2714B30](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = (*(*v4 + 328))();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        __CocoaSet.count.getter();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GroupSession<AnyGroupActivity>] and conformance [A], &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR, MEMORY[0x1E69E6340]);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B2714B30](v2, v25);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = specialized InternalGroupSessionProvider.groupSessions(for:)(isUniquelyReferenced_nonNull_bridgeObject);

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        __CocoaSet.count.getter();
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v32)
          {
            goto LABEL_42;
          }

          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_44;
            }

            lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GroupSession<AnyGroupActivity>] and conformance [A], &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR, MEMORY[0x1E69E6340]);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          if (v32 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      if (v32 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t closure #4 in GroupSessionObserver.receive<A>(subscriber:)(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (one-time initialization token for client != -1)
  {
LABEL_30:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.client);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v43 = a2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136315138;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
    v14 = MEMORY[0x1B27142D0](v6, v13);
    a2 = v4;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v53);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Received updated sessions: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (v6 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_32:
    v38 = *(v43 + 16);
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 48))(ObjectType, v38);
    (*(*v40 + 152))(v17);
  }

  v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_6:
  v19 = 0;
  v48 = v6 & 0xFFFFFFFFFFFFFF8;
  v49 = v6 & 0xC000000000000001;
  v50 = (v44 + 16);
  v46 = v6;
  v47 = (v44 + 8);
  v45 = v18;
  while (1)
  {
    if (v49)
    {
      v20 = MEMORY[0x1B2714B30](v19, v6);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v19 >= *(v48 + 16))
      {
        goto LABEL_27;
      }

      v20 = *(v6 + 8 * v19 + 32);

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v51 = v21;
    v6 = *v50;
    v22 = v52;
    a2 = v4;
    (*v50)(v52, v20 + direct field offset for GroupSession.id, v4);
    v23 = *(v20 + *(*v20 + 408));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v17;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    v27 = v17[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_28;
    }

    v30 = v25;
    if (v17[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v53;
      if (v25)
      {
        goto LABEL_7;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v17 = v53;
      if (v30)
      {
LABEL_7:
        *(v17[7] + 8 * v26) = v23;

        v4 = a2;
        (*v47)(v52, a2);
        goto LABEL_8;
      }
    }

LABEL_19:
    v17[(v26 >> 6) + 8] |= 1 << v26;
    v33 = v44;
    v34 = v52;
    v4 = a2;
    (v6)(v17[6] + *(v44 + 72) * v26, v52, a2);
    *(v17[7] + 8 * v26) = v23;

    (*(v33 + 8))(v34, a2);
    v35 = v17[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_29;
    }

    v17[2] = v37;
LABEL_8:
    ++v19;
    v6 = v46;
    if (v51 == v45)
    {
      goto LABEL_32;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
  if ((v30 & 1) == (v32 & 1))
  {
    v26 = v31;
    v17 = v53;
    if (v30)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v9, v5, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t ConversationManager.groupSessionTable.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for GroupSessionTable();
    v1 = swift_allocObject();
    type metadata accessor for Lock();
    swift_allocObject();
    *(v1 + 16) = Lock.init()();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 88) = v1;
  }

  return v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMd, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v9, v5, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMd, &_s10Foundation4UUIDV_15GroupActivities0C12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = outlined init with take of GroupSessionTable.Storage(&v5[v8], v7[7] + 24 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t GroupStateObserver.$isEligibleForGroupSession.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

Swift::Void __swiftcall GroupSessionTable.cleanUpIfNotPresent(_:)(Swift::OpaquePointer a1)
{

  Lock.withLock<A>(_:)();
}

void closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for UUID();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMR);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v43 - v7;
  swift_beginAccess();

  v10 = v5;
  v11 = specialized _NativeDictionary.filter(_:)(v9, a2);
  v44 = v2;

  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v53 = v11;
  v54 = v10 + 16;
  v50 = v10;
  v57 = (v10 + 8);

  v17 = 0;
  *&v18 = 136315138;
  v46 = v18;
  v45 = xmmword_1AF00EBD0;
  v48 = v16;
  v49 = v11 + 64;
  v47 = a1;
  v51 = v8;
  while (v15)
  {
    v19 = v55;
LABEL_13:
    v21 = __clz(__rbit64(v15)) | (v17 << 6);
    v22 = v53;
    v23 = *(v53 + 48);
    v56 = *(v50 + 72);
    v24 = *(v50 + 16);
    v24(v8, v23 + v56 * v21, v58);
    outlined init with copy of GroupSessionTable.Storage(*(v22 + 56) + 24 * v21, &v8[*(v52 + 48)]);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.default);
    v24(v19, v8, v58);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v59 = v29;
      *v28 = v46;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v19;
      v33 = v32;
      v34 = *v57;
      (*v57)(v31, v58);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v59);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1AEE80000, v26, v27, "Session %s is no longer tracked. Cleaning up session.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v36 = v29;
      a1 = v47;
      MEMORY[0x1B2715BA0](v36, -1, -1);
      MEMORY[0x1B2715BA0](v28, -1, -1);
    }

    else
    {

      v37 = v19;
      v34 = *v57;
      (*v57)(v37, v58);
    }

    v12 = v49;
    swift_beginAccess();
    v8 = v51;
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v51);
    if (v39)
    {
      v40 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(a1 + 24);
      v61 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v42 = v61;
      }

      v34((*(v42 + 48) + v40 * v56), v58);
      outlined init with take of GroupSessionTable.Storage(*(v42 + 56) + 24 * v40, &v59);
      specialized _NativeDictionary._delete(at:)(v40, v42);
      *(a1 + 24) = v42;
    }

    else
    {
      v59 = v45;
      v60 = 0;
    }

    v15 &= v15 - 1;
    outlined destroy of NSObject?(&v59, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
    swift_endAccess();
    outlined destroy of NSObject?(v8, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLV5valuetMR);
    v16 = v48;
  }

  v19 = v55;
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v20);
    ++v17;
    if (v15)
    {
      v17 = v20;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t _PublisherElements.Iterator.Inner.receive(subscription:)(void *a1)
{
  v3 = *v1;
  v4 = v1[2];
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v6 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v3 + 80), *(v3 + 88), v5);
  v7 = *(v6 - 8);
  (*(v7 + 16))(v12, v1 + 4, v6);
  v8 = v13;
  (*(v7 + 8))(v12, v6);
  if (v8)
  {
    os_unfair_lock_unlock(v4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    outlined init with copy of Transferable(a1, v12);
    swift_beginAccess();
    (*(v7 + 40))(v1 + 4, v12, v6);
    swift_endAccess();
    swift_beginAccess();
    v10 = v1[9];
    v1[9] = static Subscribers.Demand.none.getter();
    os_unfair_lock_unlock(v4);
    v11 = static Subscribers.Demand.none.getter();
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0))
    {
      static Subscribers.Demand.unlimited.getter();
      if ((static Subscribers.Demand.== infix(_:_:)() & 1) != 0 || (static Subscribers.Demand.unlimited.getter(), result = static Subscribers.Demand.== infix(_:_:)(), (result & 1) == 0) && v11 < v10)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        return dispatch thunk of Subscription.request(_:)();
      }
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J12mn14C7Storage33_64pqrstuvW7ALLVTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n04_s15k14Activities0A12mn76C19cleanUpIfNotPresentyySDy10Foundation4UUIDVSiGFyyXEfU_SbAG_AC7Storage33_64pqrstuvW10ALLVtXEfU_SDyAJSiGTf1nnc_n(v12, v7, a1, a2);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = specialized closure #1 in _NativeDictionary.filter(_:)((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K23SessionProviderObserverCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J23mnO4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s15k26Activities010BackgroundA14m35ManagerC15updateProviders3forySDy10w64UUIDVSo022TUConversationActivityD9ContainerCG_tFSbAH3key_AA0aD16nO15C5valuet_tXEfU_SDyAJSo022TUConversationActivityM9ContainerCGTf1nnc_n(v12, v7, a1, a2);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = specialized closure #1 in _NativeDictionary.filter(_:)((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a2;
  v31 = a4;
  v26 = a1;
  v30 = type metadata accessor for UUID();
  v5 = *(v30 - 8);
  result = MEMORY[0x1EEE9AC00](v30);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v33 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v29 = v5 + 16;
  v27 = 0;
  v28 = v5 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v33;
    v22 = v30;
    (*(v5 + 16))(v8, v33[6] + *(v5 + 72) * v20, v30);
    outlined init with copy of GroupSessionTable.Storage(v21[7] + 24 * v20, v32);
    LOBYTE(v21) = closure #1 in closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(v8, v32, v31);
    outlined destroy of GroupSessionTable.Storage(v32);
    result = (*(v5 + 8))(v8, v22);
    if (v21)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v26, v25, v27, v33);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v26, v25, v27, v33);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

{
  v43 = a2;
  v57 = a4;
  v44 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v42 - v7;
  v54 = type metadata accessor for UUID();
  result = MEMORY[0x1EEE9AC00](v54);
  v55 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v11 = 0;
  v52 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v47 = v9 + 16;
  v48 = v9;
  v51 = (v9 + 8);
  v19 = v54;
  while (v17)
  {
    v23 = __clz(__rbit64(v17));
    v53 = (v17 - 1) & v17;
LABEL_12:
    v26 = v23 | (v11 << 6);
    v27 = v52;
    v28 = *(v48 + 16);
    v29 = v55;
    v28(v55, v52[6] + *(v48 + 72) * v26, v19);
    v30 = v27[7];
    v46 = v26;
    v31 = *(v30 + 8 * v26);
    v32 = v56;
    v28(v56, v29, v19);
    *(v32 + *(v50 + 48)) = v31;
    v33 = v32;
    v34 = v49;
    outlined init with copy of URL?(v33, v49, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
    swift_retain_n();

    if (*(v57 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v34), (v36 & 1) != 0))
    {
      v37 = [*(*(v57 + 56) + 8 * v35) state];
      outlined destroy of NSObject?(v56, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v38 = *v51;
      v39 = v34;
      v40 = v54;
      (*v51)(v39, v54);

      result = (v38)(v55, v40);
      v17 = v53;
      if (v37 == 4)
      {
        *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v44, v43, v45, v52, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
        }
      }
    }

    else
    {
      outlined destroy of NSObject?(v56, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities0D23SessionProviderObserverC5valuetMR);
      v20 = *v51;
      v21 = v34;
      v22 = v54;
      (*v51)(v21, v54);

      result = (v20)(v55, v22);
      v17 = v53;
    }
  }

  v24 = v11;
  while (1)
  {
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v44, v43, v45, v52, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
    }

    v25 = v13[v11];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator.Inner.State(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v42 = v48 + 16;
  v43 = result;
  v17 = v48 + 32;
  v18 = result + 64;
  v44 = a1;
  v40 = a4;
  v41 = a2;
  while (v15)
  {
    v19 = v17;
    v20 = v11;
    v21 = __clz(__rbit64(v15));
    v46 = (v15 - 1) & v15;
LABEL_16:
    v24 = v21 | (v16 << 6);
    v25 = a4[6];
    v27 = v48;
    v26 = v49;
    v47 = *(v48 + 72);
    v28 = v45;
    (*(v48 + 16))(v45, v25 + v47 * v24, v49);
    outlined init with copy of GroupSessionTable.Storage(a4[7] + 24 * v24, v51);
    v29 = *(v27 + 32);
    v11 = v20;
    v30 = v20;
    v17 = v19;
    v29(v30, v28, v26);
    outlined init with take of GroupSessionTable.Storage(v51, v50);
    v14 = v43;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      a1 = v44;
      a2 = v41;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
    a2 = v41;
LABEL_26:
    *(v18 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v29((*(v14 + 48) + v34 * v47), v11, v49);
    result = outlined init with take of GroupSessionTable.Storage(v50, *(v14 + 56) + 24 * v34);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v46;
    if (!a3)
    {
      return v14;
    }
  }

  v22 = v16;
  while (1)
  {
    v16 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v23 = a1[v16];
    ++v22;
    if (v23)
    {
      v19 = v17;
      v20 = v11;
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v8 = type metadata accessor for InternalParticipant(0);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    outlined init with copy of InternalParticipant(v21 + v24 * v20, v35);
    outlined init with take of InternalParticipant(v23, v37);
    result = MEMORY[0x1B2715020](*(v13 + 40), v22);
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = outlined init with take of InternalParticipant(v37, *(v13 + 56) + v28 * v24);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, a3, a4, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOyx___G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *closure #5 in GroupSessionObserver.receive<A>(subscriber:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *a1;
  if (*a1 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
LABEL_15:
    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<GroupSession<AnyGroupActivity>> and conformance Just<A>, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMd, &_s7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGMR, MEMORY[0x1E695C008]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Just<GroupSession<AnyGroupActivity>>] and conformance [A], &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_sSay7Combine4JustVy15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR, MEMORY[0x1E69E6328]);
    return Publishers.MergeMany.init<A>(_:)();
  }

  v23 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v21[1] = a2;
    v13 = v23;
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v22 = MEMORY[0x1B2714B30](i, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
        Just.init(_:)();
        v23 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v17 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
      }
    }

    else
    {
      v18 = (v11 + 32);
      do
      {
        v22 = *v18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMd, &_s15GroupActivities0A7SessionCyAA03AnyA8ActivityVGMR);
        Just.init(_:)();
        v23 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v20 + 1;
        (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v8, v4);
        ++v18;
        --v12;
      }

      while (v12);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Transferable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void closure #10 in GroupSessionObserver.receive<A>(subscriber:)(uint64_t a1)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.client);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Received cancel on observer for activity type: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(type metadata accessor for Participant(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator;

  return GroupSession.Sessions.Iterator.next()(a2);
}

uint64_t GroupSession.Sessions.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  v5 = type metadata accessor for GroupSessionObserver(255, *(a1 + 16), *(a1 + 24), v4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for _PublisherElements.Iterator(0, v5, WitnessTable, v7);
  *v3 = v1;
  v3[1] = GroupSession.Sessions.Iterator.next();

  return _PublisherElements.Iterator.next()(v1 + 16, v8);
}

uint64_t type metadata instantiation function for _PublisherElements.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](_PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v2;
  v0[5] = *v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v1 + 16);
  v4[3] = *(v1 + 24);
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[7] = v5;
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  *v5 = v0;
  v5[1] = _PublisherElements.Iterator.next();
  v7 = v0[2];

  return withTaskCancellationHandler<A>(handler:operation:)(v7, partial apply for closure #1 in _PublisherElements.Iterator.next(), v3, &async function pointer to partial apply for closure #2 in _PublisherElements.Iterator.next(), v4, v6);
}

uint64_t withTaskCancellationHandler<A>(handler:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t withTaskCancellationHandler<A>(operation:onCancel:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 32) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = closure #2 in _PublisherElements.Iterator.next();
  v2 = *(v0 + 16);

  return _PublisherElements.Iterator.Inner.next()(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](_PublisherElements.Iterator.Inner.next(), 0, 0);
}

uint64_t _PublisherElements.Iterator.Inner.next()()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  *v1 = v0;
  v1[1] = _PublisherElements.Iterator.Inner.next();
  v3 = v0[2];
  v4 = v0[3];

  return (withUnsafeContinuation<A>(isolation:_:))(v3, 0, 0, partial apply for closure #1 in _PublisherElements.Iterator.Inner.next(), v4, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t withUnsafeContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](withUnsafeContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeContinuation<A>(isolation:_:)()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = withUnsafeContinuation<A>(isolation:_:);
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 8);

  return v1();
}

void closure #1 in _PublisherElements.Iterator.Inner.next()(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = a2[2];
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v5, v4, v12);
  (*(*(v13 - 8) + 16))(&v18, a2 + 4, v13);
  if (!v19)
  {
    v16[1] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    swift_beginAccess();
    v14 = a2[9];
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_8;
    }

    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_8:
      v15 = static Subscribers.Demand.unlimited.getter();
    }

    a2[9] = v15;
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    return;
  }

  if (v19 == 1)
  {
    os_unfair_lock_unlock(v11);
    (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v10, v7);
    swift_continuation_resume();
  }

  else
  {
    outlined init with take of Transferable(&v18, v17);
    v16[4] = a1;
    swift_beginAccess();
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    Array.append(_:)();
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    dispatch thunk of Subscription.request(_:)();
    __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance BroadcastOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo42AVPlaybackCoordinatorPlaybackObjectCommandaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _sSo12SPRotation3DawCP_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Position(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEE8A340()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8A380()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8A3B8()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

double outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1AEE8A4BC@<X0>(void *a1@<X8>)
{
  result = GroupSession.state.getter();
  *a1 = v3;
  return result;
}

__n128 sub_1AEE8A51C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8A57C@<X0>(uint64_t *a1@<X8>)
{
  result = GroupSession.activeParticipants.getter();
  *a1 = result;
  return result;
}

void *sub_1AEE8A660@<X0>(void *a1@<X8>)
{
  result = GroupSession.internalState.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1AEE8A6C0()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8A6FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8A734()
{
  v1 = *(type metadata accessor for Participant(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v7(v0 + v3, v5);

  v7(v0 + v9, v5);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1AEE8A8AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1AEE8A910()
{
  v1 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8A9D8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  outlined consume of Data._Representation(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1AEE8AAE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8AB18()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8AB50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1AEE8AB8C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1AEE8ABE8(void *a1)
{

  specialized GroupSession.playbackSyncerLink.setter(v1);
}

uint64_t sub_1AEE8AC4C@<X0>(uint64_t *a1@<X8>)
{
  result = GroupSession.receivedDataPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEE8AC9C@<X0>(uint64_t *a1@<X8>)
{
  result = GroupSession.receivedAttachmentPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEE8ACEC@<X0>(uint64_t *a1@<X8>)
{
  result = GroupSession.catchupNeededPublisher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEE8AE9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 368);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1AEE8AF94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + 200))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  a2[1] = result;
  return result;
}

__n128 sub_1AEE8B028(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AEE8B05C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE8B110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B164(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t sub_1AEE8B1CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B220(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t sub_1AEE8B288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8B2DC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t sub_1AEE8B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEE8B450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEE8B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1AEE8B624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1AEE8B6EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8B810()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8B8A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8B8EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8B924()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8B9C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1AEE8BA0C()
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

uint64_t sub_1AEE8BCAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8BE80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1AEE8BFA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1AEE8C0C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8C178()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8C228()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8C2BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8C2F4()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;

  v7 = v1 + v4 + v2[5];
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v18 = v5;
    v19 = v1;
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

  return MEMORY[0x1EEE6BDD0](v1, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1AEE8C5AC()
{
  v1 = type metadata accessor for AnyGroupActivity(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v17 = v4;
    v18 = (v2 + 48) & ~v2;
    v19 = v2;
    v7 = type metadata accessor for GroupActivityDescription();
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = type metadata accessor for GroupActivityMetadata(0);

    v9 = v8[8];
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (!v12(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }

    v13 = v8[11];
    if (!v12(v6 + v13, 1, v10))
    {
      (*(v11 + 8))(v6 + v13, v10);
    }

    v3 = v18;
    v2 = v19;
    v4 = v17;
  }

  outlined consume of Data._Representation(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v14 = v1[7];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE8C860()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8C8A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8C8F4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8C958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8C9A4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_1AEE8CA24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8CA94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8CB6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8CBAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8CBF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8CC3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8CC88(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEE8CCE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8CD2C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 240);

  return v2(v3);
}

uint64_t sub_1AEE8CD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CDD4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 408);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8CE40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CE94(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 432);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8CF00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8CF54(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 456);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8CFC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8D01C(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8D0A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8D0DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8D114()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8D1D8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8D2D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEE8D310()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8D348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA03AnyC0VySbs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

double sub_1AEE8D4D8@<D0>(_OWORD *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AEE8D52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8D5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8D620()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

__n128 sub_1AEE8D6BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8D6F4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AEE8D7C8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1AEE8D964()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8D9A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8D9F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 160);

  return v4(v2, v3);
}

__n128 sub_1AEE8DA68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8DA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DAC0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t sub_1AEE8DB20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DB6C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_1AEE8DBCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8DC18(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1AEE8DC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8DCC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8DD60()
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

uint64_t sub_1AEE8E008()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8E040()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8E154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E1A8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 376);

  return v2(v3);
}

uint64_t sub_1AEE8E204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1AEE8E260(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  v6 = *(**a2 + 408);

  return v6(v2, v5, v4, v3);
}

uint64_t sub_1AEE8E2E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 12)
  {
    v14 = *(a1 + a3[6] + 8) >> 60;
    if (((4 * v14) & 0xC) != 0)
    {
      return 16 - ((4 * v14) & 0xC | (v14 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1AEE8E46C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SymmetricKey();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v15 = (a1 + a4[6]);
    *v15 = 0;
    v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + a4[8];

    return v17(v18, a2, a2, v16);
  }

  return result;
}

uint64_t sub_1AEE8E5EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8E62C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8E670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8E6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8E764(void *a1)
{
  type metadata accessor for DataRepresentation();

  return swift_getWitnessTable();
}

uint64_t sub_1AEE8E7B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E86C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E8BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8E958(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

void *sub_1AEE8E9AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 248))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1AEE8EA08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 256);

  return v3(&v5);
}

uint64_t sub_1AEE8EA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8EAC8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 288);

  return v2(v3);
}

uint64_t sub_1AEE8EB24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8EB78(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 312);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE8EBE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8EC38(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 336);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1AEE8EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEE8ED58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEE8EE14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8EE5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8EF58()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8EF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE8F090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

__n128 sub_1AEE8F14C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8F158()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8F198()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE8F1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE8F234(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_1AEE8F2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F2F4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_1AEE8F354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F3A0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1AEE8F400@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F44C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t sub_1AEE8F510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8F688(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 376);

  return v2(v3);
}

uint64_t sub_1AEE8F6F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8F774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8F84C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, AssociatedTypeWitness);
  v3(v0 + v7, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1AEE8F97C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE8F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8FA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8FA98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE8FAEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8FB2C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE8FC28@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8FCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE8FD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE8FDB4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE8FDEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1AEE8FE78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AEE8FE84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE8FEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE8FF04@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE8FFBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90040(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_1AEE90088(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GroupSessionJournal.Attachment(0);

  return swift_weakAssign();
}

uint64_t sub_1AEE900D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AEE901C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AEE902C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE902FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE9033C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE903C0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_1AEE90414()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE90454()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE904A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE904E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AEE9051C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE9059C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AEE905F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE9062C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE9068C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE906C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE907A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE907F4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1AEE90858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE908A4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_1AEE908F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE90944(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_1AEE90998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE90A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE90A84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AEE90ADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE90B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE90B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE90C70(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_1AEE90CB8(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for GroupSessionAttachmentManager.Attachment(0);

  return swift_weakAssign();
}

uint64_t sub_1AEE90D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) != a2)
  {
    return (~*(a1 + *(a3 + 24) + 8) & 0x3000000000000000) == 0;
  }

  v8 = *(v7 + 48);

  return v8(a1, a2, v6);
}

uint64_t sub_1AEE90DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (-a2 & 3) << 60;
  }

  return result;
}

uint64_t sub_1AEE90E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE90EB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE90EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AEE90FAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AEE910B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE910F0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1AEE91140()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AEE91180()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1AEE911C0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1AEE91220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs12ContinuationVy10CloudAsset6SignalVs5Error_p_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE912F8()
{
  v1 = (type metadata accessor for GroupSessionEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for Participant(0);

  v6 = v1[8];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AEE91494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE915D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE91718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Participant(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483644)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 3;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE91858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Participant(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483644)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 + 2);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE9198C()
{
  v1 = (type metadata accessor for GroupSessionEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for Participant(0);

  v6 = v1[8];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1AEE91B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s15GroupActivities14CPParticipantsOwug_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AEE91BC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1AEE91C94()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE91D6C()
{
  v1 = type metadata accessor for PubSubClient.TopicCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AEE91E70()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE91F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE91FF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AEE92044(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_1AEE920B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE920F0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE921D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1AEE922EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92338(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_1AEE9238C()
{
  MEMORY[0x1B2715C70](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE923CC()
{
  v1 = (type metadata accessor for LinkManager.Attachment(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v13 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v12 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = *(v5 + 8);
  v7(v0 + v3, v4);
  outlined consume of LinkManager.Attachment.Source(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8), *(v0 + v3 + v1[8] + 16));
  v8 = v1[9];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  if (*(v0 + v3 + v1[10]) >= 3uLL)
  {
  }

  v10 = (((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  v7(v0 + v10, v4);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v12, v2 | v6 | 7);
}

uint64_t sub_1AEE925B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92614(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x100);

  return v2(v3);
}

uint64_t sub_1AEE92680@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE926E4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);

  return v2(v3);
}

uint64_t sub_1AEE92750@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE927B4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x138);

  return v2(v3);
}

uint64_t sub_1AEE92820@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x168))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE92884(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x170);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1AEE928F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE929E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 3;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1AEE92AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 + 2);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AEE92C00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE92C6C()
{
  v1 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  outlined consume of Data._Representation(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = (v0 + v3 + v1[7]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v9, v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1[8];
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  outlined consume of Data._Representation(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  outlined consume of Data._Representation(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  __swift_destroy_boxed_opaque_existential_0((v0 + v11));

  return MEMORY[0x1EEE6BDD0](v0, v11 + 40, v2 | 7);
}

uint64_t sub_1AEE92E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  return outlined init with copy of Transferable(v3 + v4, a2);
}

uint64_t sub_1AEE92F08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE92F40()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AEE92FAC@<X0>(uint64_t *a1@<X8>)
{
  result = SystemCoordinator.remoteParticipantStates.getter();
  *a1 = result;
  return result;
}

void sub_1AEE92FD8(uint64_t a1@<X8>)
{
  SystemCoordinator.configuration.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  *(a1 + 11) = v6;
}

uint64_t sub_1AEE93038()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE93100()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93138()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93188()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE931C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93208()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE9326C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE93338()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AEE93418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_1AEE93468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_1AEE934B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t sub_1AEE93508@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundGroupSessionManager.topicManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEE93534(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 152) = *a1;
}

uint64_t sub_1AEE93578@<X0>(uint64_t *a1@<X8>)
{
  result = BackgroundGroupSessionManager.groupSessionTable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AEE935A4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 216) = *a1;
}

uint64_t sub_1AEE93604()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE936D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s15GroupActivities39SystemCoordinatorParticipantRoleRequestO14NoneCodingKeys33_D6B73B33FDCA861DFE8CDB59CEDA0070LLOs0I3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1AEE93758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE937AC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 432);

  return v2(v3);
}

uint64_t sub_1AEE93858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93890()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE938C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE939EC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 408);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1AEE93AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 568))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93B4C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 576);

  return v2(v3);
}

uint64_t _s15GroupActivities0A23ActivityAssociationKindVSHAASH4hash4intoys6HasherVz_tFTW_0(uint64_t a1)
{
  MEMORY[0x1B2715040](0);

  return String.hash(into:)();
}

uint64_t sub_1AEE93C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AEE93CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AEE93CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93D44(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_1AEE93DA0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE93E60@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AEE93ED8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

void *sub_1AEE93F50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1AEE93FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE942B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE9431C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AEE943A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE9443C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE94488(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_1AEE9457C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1AEE945D0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t sub_1AEE9462C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AEE946C0()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AEE94710@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 52));
  return result;
}

uint64_t sub_1AEE94748(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(a2 + *(result + 52)) = v3;
  return result;
}

uint64_t sub_1AEE9478C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GroupActivityMetadata(0) + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEE947DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GroupActivityMetadata(0) + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1AEE9482C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_1AEE94864(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_1AEE94898@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a2 = *(a1 + *(result + 56)) == 1;
  return result;
}

uint64_t sub_1AEE948D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  v5 = 1;
  if (v3 != 1)
  {
    v5 = 2;
  }

  *(a2 + *(result + 56)) = v5;
  return result;
}

uint64_t sub_1AEE94918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1AEE94A58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1AEE94B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AEE94BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t storeEnumTagSinglePayload for audit_token_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *destructiveInjectEnumTag for GroupSession.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x1B2715020](*(v1 + 40), a1);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695B8]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Participant.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

id lpLog(uint64_t a1)
{
  if (lpLog_once != -1)
  {
    lpLog_cold_1();
  }

  v2 = lpLog_log;

  return v2;
}

uint64_t __lpLog_block_invoke()
{
  lpLog_log = os_log_create("com.apple.groupactivities", "LinkPresentationSupport");

  return MEMORY[0x1EEE66BB8]();
}

id SystemCoordinatorHost.currentState.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id key path getter for SystemCoordinatorHost.currentState : SystemCoordinatorHost@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for SystemCoordinatorHost.currentState : SystemCoordinatorHost(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  SystemCoordinatorHost.currentState.didset(v5);
}

void SystemCoordinatorHost.currentState.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  SystemCoordinatorHost.currentState.didset(v4);
}

void SystemCoordinatorHost.currentState.didset(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v10 = *(v1 + v9);
    type metadata accessor for SystemCoordinatorState();
    v11 = v10;
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
      v13 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
      swift_beginAccess();
      v14 = *(v2 + v13);
      if (v14)
      {
        v15 = v14;
        XPCHostConnection.clientObject.getter();

        v16 = v18[1];
        v17 = *(v2 + v9);
        [v16 updateState_];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void (*SystemCoordinatorHost.currentState.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SystemCoordinatorHost.currentState.modify;
}

void SystemCoordinatorHost.currentState.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    SystemCoordinatorHost.currentState.didset(v8);

    v10 = *v5;
  }

  else
  {
    SystemCoordinatorHost.currentState.didset(v8);
  }

  free(v3);
}

uint64_t SystemCoordinatorHost.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for SystemCoordinatorHost.delegate : SystemCoordinatorHost@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SystemCoordinatorHost.delegate : SystemCoordinatorHost(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SystemCoordinatorHost.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SystemCoordinatorHost.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

void SystemCoordinatorHost.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

void *SystemCoordinatorHost.connection.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id key path getter for SystemCoordinatorHost.connection : SystemCoordinatorHost@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for SystemCoordinatorHost.connection : SystemCoordinatorHost(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = v2;
  if (v5)
  {
    v7 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v8 = *(v3 + v4);
  }

  else
  {
    v8 = 0;
  }

  *(v3 + v4) = v2;
}

void SystemCoordinatorHost.connection.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v5 = *(v2 + v4);
  }

  *(v2 + v4) = a1;
}

void (*SystemCoordinatorHost.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return SystemCoordinatorHost.connection.modify;
}

void SystemCoordinatorHost.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  if (a2)
  {
    v8 = v3;
    if (v7)
    {
      v9 = v7;
      dispatch thunk of XPCHostConnection.destroyConnection()();

      v10 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v10 = 0;
    }

    *(v6 + v5) = v3;

    v12 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = v7;
      dispatch thunk of XPCHostConnection.destroyConnection()();

      v12 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v12 = 0;
    }

    *(v6 + v5) = v3;
  }

  free(v2);
}

objc_class *SystemCoordinatorHost.__allocating_init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(a1, a2, a3);

  return v8;
}

objc_class *SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(a1, a2, a3);

  return v4;
}

uint64_t specialized Publisher.dynamicThrottle<A>(for:after:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v77 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMd, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMR);
  v6 = *(v5 - 8);
  v72 = v5;
  v73 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v70 = v51 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMd, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMR);
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMd, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMR);
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v51 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMd, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMR);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v51 - v14;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v55 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v54 = v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMd, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMR);
  v65 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = v51 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v51 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMR);
  v62 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = v51 - v26;
  v81 = v3;
  v82 = a3;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<SystemCoordinatorConfiguration, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR, MEMORY[0x1E695BF88]);
  v76 = Publisher.share()();
  v80 = v76;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMR);
  v57 = type metadata accessor for OS_dispatch_queue();
  v53 = MEMORY[0x1E695BDD0];
  v51[0] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMd, &_s7Combine10PublishersO5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGMR, MEMORY[0x1E695BDD0]);
  v56 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  Publisher.measureInterval<A>(using:options:)();
  outlined destroy of NSObject?(v25, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, MEMORY[0x1E69E8060], MEMORY[0x1E69E8078]);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v21[*(v19 + 36)] = 0;
  v28 = v52;
  v29 = *(v52 + 16);
  v30 = v54;
  v29(v54, v77, v15);
  v31 = v55;
  v29(v55, v59, v15);
  v32 = *(v28 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = (v16 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  v36 = *(v28 + 32);
  v36(v35 + v33, v30, v15);
  v36(v35 + v34, v31, v15);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue> and conformance Publishers.MeasureInterval<A, B>, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BD18]);
  Publisher.scan<A>(_:_:)();

  outlined destroy of NSObject?(v21, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  v80 = v76;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMd, &_s7Combine10PublishersO4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAL11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyATGGMR, MEMORY[0x1E695BD88]);
  v37 = v58;
  Publisher.zip<A>(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>> and conformance Publishers.Zip<A, B>, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMd, &_s7Combine10PublishersO3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AC5ShareCy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGMR, MEMORY[0x1E695BD68]);
  v38 = v60;
  v39 = Publisher.share()();
  (*(v61 + 8))(v37, v38);
  v80 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMd, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMR);
  type metadata accessor for SystemCoordinatorConfiguration();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>> and conformance Publishers.Share<A>, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMd, &_s7Combine10PublishersO5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AEy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAN11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAVGGATGGMR, v53);
  v40 = v63;
  Publisher.compactMap<A>(_:)();
  v80 = v39;
  v41 = v64;
  Publisher.compactMap<A>(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMd, &_s7Combine10PublishersO10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AGy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAP11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAXGGAVGGARGMR, MEMORY[0x1E695BC80]);
  v42 = v68;
  v43 = v66;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v44 = *(v67 + 8);
  v44(v41, v43);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, OS_dispatch_queue> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMd, &_s7Combine10PublishersO8ThrottleVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAZGMR, MEMORY[0x1E695BE68]);
  v45 = v70;
  v46 = v42;
  v47 = v69;
  Publisher.merge<A>(with:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Merge<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, Publishers.Throttle<Publishers.CompactMap<Publishers.Share<Publishers.Zip<Publishers.Scan<Publishers.MeasureInterval<Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>, OS_dispatch_queue>, PublishRate<OS_dispatch_queue>>, Publishers.Share<PassthroughSubject<SystemCoordinatorConfiguration, Never>>>>, SystemCoordinatorConfiguration>, OS_dispatch_queue>> and conformance Publishers.Merge<A, B>, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMd, &_s7Combine10PublishersO5MergeVy_AC10CompactMapVy_AC5ShareCy_AC3ZipVy_AC4ScanVy_AC15MeasureIntervalVy_AIy_AA18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGGSo17OS_dispatch_queueCGAR11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVyAZGGAXGGATGAC8ThrottleVy_A7_AZGGMR, MEMORY[0x1E695BDC0]);
  v48 = v72;
  v49 = Publisher.eraseToAnyPublisher()();

  (*(v73 + 8))(v45, v48);
  (*(v71 + 8))(v46, v47);
  v44(v40, v43);
  (*(v65 + 8))(v74, v79);
  (*(v62 + 8))(v75, v78);
  return v49;
}

void closure #1 in SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.systemCoordinator);
    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18[0] = v10;
      *v9 = 136315138;
      type metadata accessor for SystemCoordinatorConfiguration();
      v11 = v6;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1AEE80000, v7, v8, "Updated configuration to %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B2715BA0](v10, -1, -1);
      MEMORY[0x1B2715BA0](v9, -1, -1);
    }

    v15 = &v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(v4, v6, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id SystemCoordinatorHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener] invalidate];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall SystemCoordinatorHost.invalidate()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v7 = v0 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v0, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

id SystemCoordinatorHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void closure #1 in SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = a2;
  if (v5)
  {
    v7 = v5;
    dispatch thunk of XPCHostConnection.destroyConnection()();

    v8 = *(a1 + v4);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + v4) = a2;
}

void SystemCoordinatorHost.provideCurrentState(_:)(void (*a1)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v10 = *(v1 + v9);
    a1();
  }

  else
  {
    __break(1u);
  }
}

id default argument 6 of LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6997708]);

  return [v0 init];
}

uint64_t default argument 0 of SystemCoordinatorConfiguration._SpatialTemplatePreference.init(_:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

void (*default argument 2 of GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for closure #1 in default argument 2 of GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:);
}

uint64_t specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a4;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E8060];
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, MEMORY[0x1E69E8060], MEMORY[0x1E69E8068]);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride, v11, MEMORY[0x1E69E8078]);
  if (v12)
  {
    v13 = a1;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) != 0 && (v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR) + 36), (*(v13 + *v14) & 1) == 0))
    {
      result = (*(v8 + 32))(a5, v10, v7);
      v16 = 0;
    }

    else
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      (*(v8 + 8))(v10, v7);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
      v14 = (result + 36);
      v16 = 1;
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
    v16 = 0;
    v14 = (result + 36);
  }

  *(a5 + *v14) = v16;
  return result;
}

double default argument 1 of AVAudioSessionAssertion.init(id:manager:)@<D0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static AVAudioSessionAssertionManager.shared;
  a1[3] = type metadata accessor for AVAudioSessionAssertionManager();
  a1[4] = &protocol witness table for AVAudioSessionAssertionManager;
  *a1 = v2;

  return result;
}

uint64_t default argument 3 of AttachmentDownloadTask.init(topic:attachment:file:manager:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x1B2714130](v3);

  *a2 = v4;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance SPAxis@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TUConversationActivityLifetimePolicy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TUConversationActivityLifetimePolicy(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGImageRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AVPlaybackCoordinatorPlaybackObjectCommand(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey and conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, &protocol conformance descriptor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey and conformance AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey, &protocol conformance descriptor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinatorPlaybackObjectCommand(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorPlaybackObjectCommand and conformance AVPlaybackCoordinatorPlaybackObjectCommand, type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand, &protocol conformance descriptor for AVPlaybackCoordinatorPlaybackObjectCommand);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinatorPlaybackObjectCommand and conformance AVPlaybackCoordinatorPlaybackObjectCommand, type metadata accessor for AVPlaybackCoordinatorPlaybackObjectCommand, &protocol conformance descriptor for AVPlaybackCoordinatorPlaybackObjectCommand);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinationTransportControlStateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey, &protocol conformance descriptor for AVPlaybackCoordinationTransportControlStateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AVPlaybackCoordinationParticipantStateKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey, &protocol conformance descriptor for AVPlaybackCoordinationParticipantStateKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey, &protocol conformance descriptor for AVPlaybackCoordinationParticipantStateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AVPlaybackCoordinatorPlaybackObjectCommand@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1B2714130](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIImageRepresentationOption(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CGImageRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1B2714210](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

int *specialized thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  if (*(a1 + result[9]))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMR) + 48));
    result = v5;
  }

  *a2 = v5;
  return result;
}

{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCGMR);
  if (*(a1 + result[9]) == 1)
  {
    v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMd, &_s15GroupActivities11PublishRate33_0685A7AC523C323E07DEDDCFA0BA1773LLVySo17OS_dispatch_queueCG_AA30SystemCoordinatorConfigurationCtMR) + 48));
    result = v5;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

objc_class *specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v69 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = v55 - v7;
  v67 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v70 = *(v68 - 8);
  v11 = MEMORY[0x1EEE9AC00](v68);
  v59 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v64 = v14;
  v65 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v62 = v55 - v16;
  v17 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
  v18 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v19[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v20 = &v19[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v20 = 0;
  v20[1] = 0;
  *&v19[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v75.receiver = v19;
  v75.super_class = v18;
  v21 = objc_msgSendSuper2(&v75, sel_init);
  v22 = type metadata accessor for SystemCoordinatorState();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v21;
  v23[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v23[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v23[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v74.receiver = v23;
  v74.super_class = v22;
  *&v4[v17] = objc_msgSendSuper2(&v74, sel_init);
  v24 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  swift_allocObject();
  *&v4[v24] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubscription] = 0;
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection] = 0;
  v25 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v60 = v26;
  v61 = v27;
  (*(v27 + 16))(&v4[v25], v69, v26);
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue] = a2;
  v28 = objc_opt_self();
  v56 = a2;
  v29 = [v28 anonymousListener];
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener] = v29;
  v30 = [v29 endpoint];
  *&v4[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_endpoint] = v30;
  v73.receiver = v4;
  v73.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v73, sel_init);
  v32 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v34 = v8 + 16;
  v33 = *(v8 + 16);
  v36 = v66;
  v35 = v67;
  v37 = v10;
  v33(v10, v66 + *(v32 + 20), v67);
  v55[1] = v34;
  ObjectType = v31;

  v38 = v58;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v39 = v36;
  v33(v37, v36 + *(v32 + 24), v35);
  v40 = v59;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v41 = v38;
  v42 = v56;
  v43 = specialized Publisher.dynamicThrottle<A>(for:after:scheduler:)(v38, v40, v56);

  v44 = *(v70 + 8);
  v70 += 8;
  v45 = v68;
  v44(v40, v68);
  v44(v41, v45);
  v72 = v43;
  v33(v37, v39, v67);
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v71 = v42;
  v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinatorConfiguration, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  v48 = v62;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of NSObject?(v47, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v44(v41, v68);

  swift_allocObject();
  v49 = ObjectType;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Debounce<AnyPublisher<SystemCoordinatorConfiguration, Never>, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8DebounceVy_AA12AnyPublisherVy15GroupActivities30SystemCoordinatorConfigurationCs5NeverOGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE50]);
  v50 = v64;
  v51 = Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v48, v50);
  *(v49 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubscription) = v51;

  v52 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener;
  v53 = *(v49 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener);
  [v53 setDelegate_];

  [*(v49 + v52) resume];
  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v66);
  (*(v61 + 8))(v69, v60);
  return v49;
}

BOOL specialized SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.systemCoordinator);
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
    _os_log_impl(&dword_1AEE80000, v12, v13, "Asked to accept new connection from %@", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v15, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  v17 = *&v2[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue];
  v18 = objc_allocWithZone(type metadata accessor for SystemCoordinatorHostConnection(0));
  swift_unknownObjectWeakInit();
  v19 = v11;
  v17;
  v20 = XPCHostConnection.init(connection:queue:)();
  if (v20)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v20;
    aBlock[4] = partial apply for closure #1 in SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v22 = _Block_copy(aBlock);
    v23 = v2;
    v24 = v20;
    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v25 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v9, v6, v22);
    _Block_release(v22);

    (*(v33 + 8))(v6, v25);
    (*(v31 + 8))(v9, v32);
  }

  else
  {
    v26 = v19;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = [v26 processIdentifier];

      _os_log_impl(&dword_1AEE80000, v27, v28, "SystemCoordinatorHostConnection could not be created; rejecting connection from PID %d.", v29, 8u);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    else
    {
    }
  }

  return v20 != 0;
}

uint64_t type metadata accessor for SystemCoordinatorHost(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemCoordinatorHost;
  if (!type metadata singleton initialization cache for SystemCoordinatorHost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemCoordinatorHost(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SPAngle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SPAngle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for SPPose3D(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SPPose3D(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(uint64_t a1)
{
  v2 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride() - 8);
  v7 = v3 + ((*(v6 + 64) + *(v6 + 80) + ((*(v6 + 80) + 16) & ~*(v6 + 80))) & ~*(v6 + 80));

  return specialized closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, v7, a3);
}

void EquatableSpatialTemplatePreference.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t EquatableSpatialTemplatePreference.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  return result;
}

uint64_t static EquatableSpatialTemplatePreference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EquatableSpatialTemplatePreference(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) == *(a2 + 9))
  {
    v2 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        return 1;
      }
    }

    else
    {
      if (*a1 != *a2)
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EquatableSpatialTemplatePreference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 10))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EquatableSpatialTemplatePreference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 4;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int GroupSessionErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance Capabilities(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance Capabilities@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance Capabilities@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Capabilities@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t ActivityExternalParticipant.displayName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ActivityExternalParticipant.init(identifier:displayName:info:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  result = outlined init with take of Transferable(a4, a6 + 24);
  *(a6 + 64) = v7;
  return result;
}

void ActivityExternalParticipant.init(externalParticipant:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = MEMORY[0x1B27150D0]();

  *a2 = v5;
  v6 = [a1 displayName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  v10 = [a1 info];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(a2 + 48) = MEMORY[0x1E6969080];
  *(a2 + 56) = lazy protocol witness table accessor for type Data and conformance Data();
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  v14 = [a1 status];
  if (v14 >= 3)
  {
    type metadata accessor for TUExternalParticipantStatus(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    *(a2 + 64) = v14;
  }
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

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

Swift::Int ActivityExternalParticipant.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityExternalParticipant()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityExternalParticipant(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715070](*v1);
  return Hasher._finalize()();
}

GroupActivities::ActivityExternalParticipantStatus_optional __swiftcall ActivityExternalParticipantStatus.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupSessionErrors(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupSessionErrors(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t specialized GroupSession.playbackSyncerLink.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {

    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = *(**(v4 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

  v5(0, 0);
  v6 = *(v1 + v3);
  if (v6)
  {
LABEL_3:
    v7 = *(**(v6 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

    v7(v8, &protocol witness table for GroupSession<A>);
  }

LABEL_4:
}

{
  v3 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  GroupSession.playbackSyncerLink.didset(v4);
}

uint64_t GroupSession.playbackSyncerLink.setter(uint64_t a1, __n128 a2)
{
  specialized GroupSession.playbackSyncerLink.setter(a1);
}

uint64_t GroupSession.playbackSyncerLink.didset(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    (*(**(a1 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456))(0, 0);
  }

  v3 = direct field offset for GroupSession.playbackSyncerLink;
  result = swift_beginAccess();
  v5 = *(v2 + v3);
  if (v5)
  {
    v6 = *(**(v5 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 456);

    v6(v7, &protocol witness table for GroupSession<A>);
  }

  return result;
}

void (*GroupSession.playbackSyncerLink.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  *(v3 + 32) = v1;
  v5 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return GroupSession.playbackSyncerLink.modify;
}

void GroupSession.playbackSyncerLink.modify(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 3);
  if (a2)
  {

    specialized GroupSession.playbackSyncerLink.setter(v5);
  }

  else
  {
    specialized GroupSession.playbackSyncerLink.setter(v4);
  }

  free(v3);
}

double GroupSession.playbackSyncerLink.getter(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t GroupSession.playbackSyncMessenger.setter(uint64_t a1)
{
  v3 = direct field offset for GroupSession.playbackSyncMessenger;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double GroupSession.attachmentDownloadBytes.getter()
{
  v1 = direct field offset for GroupSession.attachmentDownloadBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentDownloadBytes.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentDownloadBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentUploadBytes.getter()
{
  v1 = direct field offset for GroupSession.attachmentUploadBytes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentUploadBytes.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentUploadBytes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentDownloadTime.getter()
{
  v1 = direct field offset for GroupSession.attachmentDownloadTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentDownloadTime.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentDownloadTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double GroupSession.attachmentUploadTime.getter()
{
  v1 = direct field offset for GroupSession.attachmentUploadTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.attachmentUploadTime.setter(double a1)
{
  v3 = direct field offset for GroupSession.attachmentUploadTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double key path getter for GroupSession.receivedDataHandler : <A>GroupSession<A>@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v4, v5);
}

uint64_t key path setter for GroupSession.receivedDataHandler : <A>GroupSession<A>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v8, v9);
}

uint64_t GroupSession.receivedDataHandler.getter()
{
  v1 = (v0 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t GroupSession.receivedDataHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for GroupSession.receivedDataHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6, v7);
}

uint64_t specialized Subject.wrappedValue.getter(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  if (*(v3 + 8))
  {
    v5 = *(v3 + 8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](a3, a1, a2, MEMORY[0x1E695BF88]);
    v5 = Publisher.eraseToAnyPublisher()();
    *(v3 + 8) = v5;
  }

  return v5;
}

uint64_t (*GroupSession.receivedDataPublisher.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession._receivedDataPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<(Data, Participant, SendReliability), Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedDataPublisher.modify;
}

double GroupSession.$receivedDataPublisher.getter()
{
  specialized GroupSession.$receivedDataPublisher.getter();

  return result;
}

uint64_t (*GroupSession.receivedAttachmentPublisher.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession._receivedAttachmentPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedAttachmentPublisher.modify;
}

double GroupSession.$receivedAttachmentPublisher.getter()
{
  specialized GroupSession.$receivedAttachmentPublisher.getter();

  return result;
}

uint64_t GroupSession.attachmentsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMR);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + direct field offset for GroupSession.linkManager)) + 0x148))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LinkManager.Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<CurrentValueSubject<[LinkManager.Attachment], Never>, [UUID]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMd, &_s7Combine10PublishersO3MapVy_AA19CurrentValueSubjectCySay15GroupActivities11LinkManagerC10AttachmentVGs5NeverOGSay10Foundation4UUIDVGGMR, MEMORY[0x1E695BD60]);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t closure #1 in GroupSession.attachmentsPublisher.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v20[0] = a2;
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v22;
    v16 = v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v20[1] = v9 + 32;
    v21 = v17;
    do
    {
      outlined init with copy of Participant(v16, v7, type metadata accessor for LinkManager.Attachment);
      (*(v9 + 16))(v12, v7, v8);
      outlined destroy of Participant(v7, type metadata accessor for LinkManager.Attachment);
      v22 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v15 = v22;
      }

      *(v15 + 16) = v19 + 1;
      result = (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v12, v8);
      v16 += v21;
      --v14;
    }

    while (v14);
    a2 = v20[0];
  }

  *a2 = v15;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVys6UInt64V15GroupActivities19InternalParticipantV_G_AJ0I0Vs5NeverOTg504_s15f29Activities0A7SessionC32updateh26ActiveParticipantsyyySDys6e7VAA0E11I67VGzXEFAA0I0VAHcfu2_33_64ff5b9e04bfd4295e50d2b41d46dfcaAhKTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for InternalParticipant(0);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Participant(0);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v28[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  v30 = v6;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v37;
  v36 = v30 + 64;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = v30;
  v14 = 0;
  v29 = v30 + 72;
  v31 = v9;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v13 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v36 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v35 = *(v13 + 36);
    v17 = v33;
    outlined init with copy of Participant(*(v13 + 56) + *(v34 + 72) * v12, v33, type metadata accessor for InternalParticipant);
    outlined init with copy of Participant(v17, v8, type metadata accessor for Participant);
    outlined destroy of Participant(v17, type metadata accessor for InternalParticipant);
    v37 = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v10 = v37;
    }

    *(v10 + 16) = v19 + 1;
    v20 = v8;
    result = outlined init with take of Participant(v8, v10 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v19, type metadata accessor for Participant);
    v15 = 1 << *(v13 + 32);
    if (v12 >= v15)
    {
      goto LABEL_22;
    }

    v21 = *(v36 + 8 * v16);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(v13 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v15 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      while (v24 < (v15 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = outlined consume of Set<TUHandle>.Index._Variant(v12, v35, 0);
          v13 = v30;
          v15 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<TUHandle>.Index._Variant(v12, v35, 0);
      v13 = v30;
    }

LABEL_4:
    ++v14;
    v12 = v15;
    v8 = v20;
    if (v14 == v31)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_s6UInt64Vs5NeverOTg504_s15d111Activities0A7SessionC12sendResource5atURL2to8metadata10completiony10Foundation0G0V_AA12ParticipantsOAI4DataVys5c52_pSgctFyyXEfU_y14CopresenceCore08ActivityC7XPCHost_py4U_s6g5VAA11F7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v32;
  v7 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v25 = a1 + 64;
  v26 = v5;
  v27 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v31 = *(a1 + 36);
    v13 = v28;
    outlined init with copy of Participant(*(a1 + 48) + *(v29 + 72) * v9, v28, type metadata accessor for Participant);
    v14 = *(v13 + *(v30 + 24));
    result = outlined destroy of Participant(v13, type metadata accessor for Participant);
    v32 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + 8 * v16 + 32) = v14;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v27;
    v17 = *(v27 + 8 * v12);
    if ((v17 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v9 & 0x3F));
    if (v18)
    {
      v11 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v12 << 6;
      v20 = v12 + 1;
      v21 = (v25 + 8 * v12);
      while (v20 < (v11 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<TUHandle>.Index._Variant(v9, v31, 0);
          v11 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<TUHandle>.Index._Variant(v9, v31, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v26)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t GroupSession.receivedDataPublisher.getter(void *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  swift_beginAccess();
  v7 = specialized Subject.wrappedValue.getter(a2, a3, a4);
  swift_endAccess();
  return v7;
}

uint64_t GroupSession.receivedDataPublisher.setter(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  swift_beginAccess();
  *(v4 + 8) = a1;
}

uint64_t (*GroupSession.catchupNeededPublisher.modify(uint64_t *a1))()
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
  v5 = direct field offset for GroupSession._catchupNeededPublisher;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = specialized Subject.wrappedValue.getter(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR, &lazy protocol witness table cache variable for type PassthroughSubject<Participant, Never> and conformance PassthroughSubject<A, B>);
  return GroupSession.receivedAttachmentPublisher.modify;
}

void GroupSession.receivedDataPublisher.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40) + 8) = *(*a1 + 24);
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v2);
}