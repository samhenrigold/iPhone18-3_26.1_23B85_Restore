uint64_t TopicManager.Subscription.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 224))(Strong);
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t key path getter for TopicManager.conversationClientsByGroupUUID : TopicManager@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for TopicManager.conversationClientsByGroupUUID : TopicManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k12Activities12mn3C18oP4CTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s10x7UUIDV15kzmn3C18oP34CSbIgngd_AcHSbs5Error_pIegnndzo_TRAjOSbIgngd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, __n128))
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

uint64_t specialized TopicManager.init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - v13 + 8;
  v22[3] = a4;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v16 = OBJC_IVAR____TtC15GroupActivities12TopicManager__conversationClientsByGroupUUID;
  v17 = MEMORY[0x1E69E7CC0];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities12TopicManagerC18ConversationClientCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_sSDy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
  Published.init(initialValue:)();
  (*(v12 + 32))(a3 + v16, v14, v11);
  if (v17 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_cancellables) = v18;
  v19 = OBJC_IVAR____TtC15GroupActivities12TopicManager_lock;
  type metadata accessor for Lock();
  swift_allocObject();
  *(a3 + v19) = Lock.init()();
  outlined init with copy of Transferable(v22, a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_provider);
  *(a3 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) = a2;
  v21 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v22);
  return a3;
}

uint64_t specialized TopicManager.__allocating_init(provider:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TopicManager(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a4);
  return specialized TopicManager.init(provider:featureFlags:)(v13, a2, v14, a4, a5, a6);
}

unint64_t specialized TopicManager.ServiceName.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TopicManager.ServiceName.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in TopicManager.firstConversation(for:with:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);

  return closure #1 in TopicManager.firstConversation(for:with:)(a1, v6, v4, v5);
}

uint64_t partial apply for closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return closure #1 in TopicManager.unreliableServiceGenerator(groupUUID:name:unreliableMessengerConfig:)(a1, v6, v1 + v4, v5);
}

uint64_t partial apply for closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PubSubClient.TopicCategory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = (v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return closure #2 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)(a1, v8, v9, v2 + v6, v2 + v7, v11, v12, a2);
}

unint64_t lazy protocol witness table accessor for type TUConversationVirtualParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for TUConversationVirtualParticipant, 0x1E69D8BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationVirtualParticipant and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TopicManager.Errors and conformance TopicManager.Errors()
{
  result = lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors;
  if (!lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors;
  if (!lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.Errors and conformance TopicManager.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PluginAttachmentLedgerTopic and conformance PluginAttachmentLedgerTopic(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type TopicManager.ServiceName and conformance TopicManager.ServiceName()
{
  result = lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName;
  if (!lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopicManager.ServiceName and conformance TopicManager.ServiceName);
  }

  return result;
}

uint64_t type metadata accessor for TopicManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for TopicManager;
  if (!type metadata singleton initialization cache for TopicManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TopicManager(uint64_t a1)
{
  type metadata accessor for Published<[UUID : TopicManager.ConversationClient]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of TopicManager.ConversationClient.service(generator:)()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TopicManager.ConversationClient.Service(uint64_t a1, unsigned int a2)
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
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TopicManager.ConversationClient.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t destructiveInjectEnumTag for TopicManager.ConversationClient.Service(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, __n128))
{
  v25 = a2;
  v34 = a4;
  v26 = a1;
  v33 = type metadata accessor for UUID();
  result = MEMORY[0x1EEE9AC00](v33);
  v31 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  v8 = 0;
  v35 = a3;
  v9 = *(a3 + 64);
  v27 = 0;
  v28 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v29 = v6 + 8;
  v30 = v6 + 16;
  v14 = v31;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v36 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v35;
    v21 = v32;
    v20 = v33;
    (*(v32 + 16))(v14, v35[6] + *(v32 + 72) * v18, v33);
    v22 = v18;
    v23 = *(v19[7] + 8 * v18);

    LOBYTE(v18) = (v34)(v14, v23);

    result = (*(v21 + 8))(v14, v20);
    v12 = v36;
    if (v18)
    {
      *(v26 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v26, v25, v27, v35);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v26, v25, v27, v35);
    }

    v17 = *(v28 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v36 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t, __n128))
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
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k12Activities12mn3C18oP4CTG5APxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjOIsgnndzo_Tf1nc_n04_s10x7UUIDV15kzmn3C18oP34CSbIgngd_AcHSbs5Error_pIegnndzo_TRAjOSbIgngd_Tf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x1B2715BA0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pluginAttachmentTopicGenerator(groupUUID:name:dataCryptorProvider:initialAttachments:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 40) = 2;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.pubSubTopicGenerator(groupUUID:name:category:dataCryptorProvider:delegate:seqNumWatermark:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(**(v1 + 16) + 280))(*(v1 + 24));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return closure #3 in closure #1 in TopicManager.createUnreliableMessenger(groupUUID:name:localParticipantID:unreliableMessengerConfig:delegate:)(v3, v4, v6, v0 + v2, v5);
}

uint64_t partial apply for closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)(a1, v4, v5, v6, v7);
}

uint64_t specialized Topic.init(name:delegate:pubSubTopicGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMd, &_s7Combine9PublishedVy14CopresenceCore11PubSubTopicC10QueueStateVGMR);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v29 - v8;
  v9 = type metadata accessor for PubSubTopic.QueueState();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v29 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMd, &_s7Combine9PublishedVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGGMR);
  v31 = *(v13 - 8);
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v29 - v14;
  *(a6 + 16) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(a6 + 40) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0F0OAJ5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities5TopicC0C0OAH5Event33_FCF72D66A10B9B1DA93469C1BA0E40A1LLO_GMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AF013F80;
  LOBYTE(v45) = 3;
  v46 = 0;
  lazy protocol witness table accessor for type Topic.State and conformance Topic.State();
  lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 0;
  v46 = 258;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 0;
  v46 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 0;
  v46 = 769;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 1;
  v46 = 513;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 1;
  v46 = 771;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 2;
  v46 = 770;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v45) = 3;
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
  v16 = OBJC_IVAR____TtC15GroupActivities5Topic__subscribedParticipants;
  v45 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMd, &_sSDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVGMR);
  v17 = v30;
  Published.init(initialValue:)();
  (*(v31 + 32))(a6 + v16, v17, v32);
  v18 = OBJC_IVAR____TtC15GroupActivities5Topic__queueState;
  v19 = v33;
  PubSubTopic.QueueState.init()();
  v20 = v35;
  v21 = v36;
  (*(v35 + 16))(v34, v19, v36);
  v22 = v37;
  Published.init(initialValue:)();
  (*(v20 + 8))(v19, v21);
  (*(v38 + 32))(a6 + v18, v22, v39);
  v23 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_invalidationHandler);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a6 + OBJC_IVAR____TtC15GroupActivities5Topic_requestEncryptionKeysHandler);
  *v24 = 0;
  v24[1] = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_seqNumWatermark) = 0;
  *(a6 + OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessages) = MEMORY[0x1E69E7CC0];
  v25 = OBJC_IVAR____TtC15GroupActivities5Topic_pendingMessagesLock;
  type metadata accessor for Lock();
  swift_allocObject();
  *(a6 + v25) = Lock.init()();
  v26 = v41;
  *(a6 + 80) = v40;
  *(a6 + 88) = v26;
  *(a6 + 64) = &protocol witness table for TopicManager.ConversationClient;
  swift_unknownObjectWeakAssign();
  v27 = v44;
  *(a6 + 24) = v43;
  *(a6 + 32) = v27;
  return a6;
}

unint64_t lazy protocol witness table accessor for type Topic.State and conformance Topic.State()
{
  result = lazy protocol witness table cache variable for type Topic.State and conformance Topic.State;
  if (!lazy protocol witness table cache variable for type Topic.State and conformance Topic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.State and conformance Topic.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.State and conformance Topic.State;
  if (!lazy protocol witness table cache variable for type Topic.State and conformance Topic.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.State and conformance Topic.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Topic.Event and conformance Topic.Event()
{
  result = lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event;
  if (!lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event;
  if (!lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Topic.Event and conformance Topic.Event);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in TopicManager.createTopic(groupUUID:name:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  result = (*(**(v2 + 16) + 272))(v2 + v6, *(v2 + v7), *(v2 + v7 + 8), a1, v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 40), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 48), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 56));
  *a2 = result;
  return result;
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_72Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #2 in closure #1 in TopicManager.createAttachmentLedgerTopic(groupUUID:name:)(a1, v4, v5, v6, v7);
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:)(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = *a2;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v7[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v8;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v7[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:remoteParticipantStates:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *a2;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v9[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v10;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v9[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v6 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorState.__allocating_init(localParticipantState:groupImmersionStyle:)(uint64_t a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v6;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v3;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v3[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v4;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v3[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v6, sel_init);
}

id SystemCoordinatorState.init(localParticipantState:groupImmersionStyle:activeSpatialParticipantCount:remoteParticipantStates:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = a1;
  v4[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v5;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = a3;
  *&v4[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for SystemCoordinatorState();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t SystemCoordinatorState.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of URL?(a1, v12, &_sypSgMd, &_sypSgMR);
  if (!v13)
  {
    outlined destroy of NSObject?(v12, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  type metadata accessor for SystemCoordinatorState();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v9 = 0;
    return v9 & 1;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v2 = *&v11[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  v5 = v11[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle];
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    goto LABEL_12;
  }

  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount) != *&v11[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount])
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v7 = *&v11[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates];

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantG0CTt1g5(v6, v7);
  v9 = v8;

  return v9 & 1;
}

Swift::Int SystemCoordinatorState.hash.getter()
{
  Hasher.init()();
  NSObject.hash(into:)();
  v1 = *(v0 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1B2715040](v1 + 1);
  }

  MEMORY[0x1B2715040](*(v0 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount));
  specialized Dictionary<>.hash(into:)(v3, *(v0 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates));
  return Hasher.finalize()();
}

Swift::Void __swiftcall SystemCoordinatorState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
  v4 = MEMORY[0x1B2714130](0xD000000000000015, 0x80000001AF01B120);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
  if (v5 != 3)
  {
    v6 = MEMORY[0x1B2714130](0xD000000000000013, 0x80000001AF01CB50);
    [(objc_class *)with.super.isa encodeInteger:v5 + 1 forKey:v6];
  }

  v7 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01CB10);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  type metadata accessor for SystemCoordinatorState.ParticipantState();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10 = MEMORY[0x1B2714130](0xD000000000000017, 0x80000001AF01CB30);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v10];
}

id SystemCoordinatorState.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SystemCoordinatorState.ParticipantState();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {

    type metadata accessor for SystemCoordinatorState();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v4;
  v5 = v4;
  v6 = MEMORY[0x1B2714130](0xD000000000000013, 0x80000001AF01CB50);
  v7 = [a1 decodeIntegerForKey_];

  v8 = 0x2010003u >> (8 * v7);
  if (v7 >= 4)
  {
    LOBYTE(v8) = 3;
  }

  v2[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v8;
  v9 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01CB10);
  v10 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v10;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v11 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (!v11)
  {
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

LABEL_37:
    *&v2[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v13;
    v58.receiver = v2;
    v58.super_class = type metadata accessor for SystemCoordinatorState();
    v18 = objc_msgSendSuper2(&v58, sel_init);

    return v18;
  }

  v12 = v11;
  v52 = v5;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v53 = v2;
  v54 = a1;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(v12 + 32);
    v15 = ~v19;
    v14 = v12 + 64;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v16 = v21 & *(v12 + 64);
    v17 = v12;
  }

  v22 = 0;
  v51 = v15;
  v23 = (v15 + 64) >> 6;
  v55 = v17;
  v56 = v23;
  while ((v17 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()() || (swift_dynamicCast(), v32 = v57, swift_dynamicCast(), v33 = v57, v28 = v22, v29 = v16, !v57))
    {
LABEL_36:

      outlined consume of [UUID : Conversation].Iterator._Variant(v17);

      v2 = v53;
      a1 = v54;
      goto LABEL_37;
    }

LABEL_25:
    v34 = v14;
    v35 = v32;
    v36 = [v32 unsignedLongLongValue];
    v37 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v13;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
    v41 = v13[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_40;
    }

    v44 = v39;
    if (v13[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v39)
        {
          goto LABEL_14;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v44)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_42;
      }

      v40 = v45;
      if (v44)
      {
LABEL_14:
        v24 = v13[7];
        v25 = *(v24 + 8 * v40);
        *(v24 + 8 * v40) = v37;

        goto LABEL_15;
      }
    }

    v13[(v40 >> 6) + 8] |= 1 << v40;
    *(v13[6] + 8 * v40) = v36;
    *(v13[7] + 8 * v40) = v37;

    v47 = v13[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_41;
    }

    v13[2] = v49;
LABEL_15:
    v22 = v28;
    v23 = v56;
    v16 = v29;
    v14 = v34;
    v17 = v55;
  }

  v26 = v22;
  v27 = v16;
  v28 = v22;
  if (v16)
  {
LABEL_21:
    v29 = (v27 - 1) & v27;
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v17 + 56) + v30);
    v32 = *(*(v17 + 48) + v30);
    v33 = v31;
    if (!v32)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      goto LABEL_36;
    }

    v27 = *(v14 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

GroupActivities::SystemCoordinatorState::GroupImmersionStyle_optional __swiftcall SystemCoordinatorState.GroupImmersionStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SystemCoordinatorState.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(134);
  MEMORY[0x1B27141F0](0xD00000000000002DLL, 0x80000001AF01CB70);
  v2 = [*(v0 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B27141F0](v3, v5);

  MEMORY[0x1B27141F0](0xD000000000000016, 0x80000001AF01CBA0);
  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle) == 3)
  {
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v7 = String.init<A>(reflecting:)();
    v6 = v8;
  }

  MEMORY[0x1B27141F0](v7, v6);

  MEMORY[0x1B27141F0](0xD000000000000020, 0x80000001AF01CBC0);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v9);

  MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01CBF0);
  type metadata accessor for SystemCoordinatorState.ParticipantState();
  v10 = Dictionary.description.getter();
  MEMORY[0x1B27141F0](v10);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t SystemCoordinatorState.ParticipantState.roleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier);

  return v1;
}

double SystemCoordinatorState.ParticipantState.seat.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat);
  if (v3)
  {
    v4 = (v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x68));
    v5 = v4[1];
    v24[0] = *v4;
    v24[1] = v5;
    v6 = v4[5];
    v8 = v4[2];
    v7 = v4[3];
    v24[4] = v4[4];
    v24[5] = v6;
    v24[2] = v8;
    v24[3] = v7;
    v9 = v4[9];
    v11 = v4[6];
    v10 = v4[7];
    v24[8] = v4[8];
    v24[9] = v9;
    v24[6] = v11;
    v24[7] = v10;
    memmove(&__dst, v4, 0xA0uLL);
    InternalParticipant.participant.modify();
    v12 = v32;
    a1[6] = v31;
    a1[7] = v12;
    v13 = v34;
    a1[8] = v33;
    a1[9] = v13;
    v14 = v28;
    a1[2] = v27;
    a1[3] = v14;
    v15 = v30;
    a1[4] = v29;
    a1[5] = v15;
    v16 = v26;
    *a1 = __dst;
    a1[1] = v16;
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v24, &v23);
  }

  else
  {
    _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOi0_(&__dst);
    v18 = v32;
    a1[6] = v31;
    a1[7] = v18;
    v19 = v34;
    a1[8] = v33;
    a1[9] = v19;
    v20 = v28;
    a1[2] = v27;
    a1[3] = v20;
    v21 = v30;
    a1[4] = v29;
    a1[5] = v21;
    result = *&__dst;
    v22 = v26;
    *a1 = __dst;
    a1[1] = v22;
  }

  return result;
}

id SystemCoordinatorState.ParticipantState.init(isSpatial:isSpatialInitiator:)(uint64_t a1, char a2)
{
  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v3 = &v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)(char a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = v5;
  v13 = objc_allocWithZone(v7);
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v14 = a5[7];
  v25[6] = a5[6];
  v25[7] = v14;
  v15 = a5[9];
  v25[8] = a5[8];
  v25[9] = v15;
  v16 = a5[3];
  v25[2] = a5[2];
  v25[3] = v16;
  v17 = a5[5];
  v25[4] = a5[4];
  v25[5] = v17;
  v18 = *a5;
  v19 = a5[1];
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v25[0] = v18;
  v25[1] = v19;
  v20 = &v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v20 = a3;
  v20[1] = a4;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
  v22 = specialized XPCWrapper.init(_:)(v25);
  if (v6)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v22;
    v24.receiver = v13;
    v24.super_class = v7;
    return objc_msgSendSuper2(&v24, sel_init);
  }
}

{
  v7 = v5;
  v13 = objc_allocWithZone(v7);
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v14 = &v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v14 = a3;
  v14[1] = a4;
  v15 = a5[1];
  v25 = *a5;
  v26 = v15;
  v16 = a5[5];
  v29 = a5[4];
  v30 = v16;
  v17 = a5[3];
  v27 = a5[2];
  v28 = v17;
  v18 = a5[9];
  v33 = a5[8];
  v34 = v18;
  v19 = a5[7];
  v31 = a5[6];
  v32 = v19;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v25) == 1)
  {
    v20 = 0;
  }

  else
  {
    v24[6] = v31;
    v24[7] = v32;
    v24[8] = v33;
    v24[9] = v34;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v24[5] = v30;
    v24[0] = v25;
    v24[1] = v26;
    v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
    v20 = specialized XPCWrapper.init(_:)(v24);
    if (v6)
    {

      return swift_deallocPartialClassInstance();
    }
  }

  *&v13[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v20;
  v23.receiver = v13;
  v23.super_class = v7;
  return objc_msgSendSuper2(&v23, sel_init);
}

id SystemCoordinatorState.ParticipantState.init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)(char a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v7 = a5[7];
  v18[6] = a5[6];
  v18[7] = v7;
  v8 = a5[9];
  v18[8] = a5[8];
  v18[9] = v8;
  v9 = a5[3];
  v18[2] = a5[2];
  v18[3] = v9;
  v10 = a5[5];
  v18[4] = a5[4];
  v18[5] = v10;
  v11 = *a5;
  v12 = a5[1];
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v18[0] = v11;
  v18[1] = v12;
  v13 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = a3;
  v13[1] = a4;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
  v15 = specialized XPCWrapper.init(_:)(v18);
  if (v6)
  {

    type metadata accessor for SystemCoordinatorState.ParticipantState();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v15;
    v17.receiver = v5;
    v17.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
    return objc_msgSendSuper2(&v17, sel_init);
  }
}

{
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = a1;
  v7 = a5[7];
  v25 = a5[6];
  v26 = v7;
  v8 = a5[9];
  v27 = a5[8];
  v28 = v8;
  v9 = a5[3];
  v21 = a5[2];
  v22 = v9;
  v10 = a5[5];
  v23 = a5[4];
  v24 = v10;
  v11 = *a5;
  v12 = a5[1];
  v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = a2;
  v19 = v11;
  v20 = v12;
  v13 = &v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = a3;
  v13[1] = a4;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(&v19) == 1)
  {
    v14 = 0;
  }

  else
  {
    v18[6] = v25;
    v18[7] = v26;
    v18[8] = v27;
    v18[9] = v28;
    v18[2] = v21;
    v18[3] = v22;
    v18[4] = v23;
    v18[5] = v24;
    v18[0] = v19;
    v18[1] = v20;
    v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR));
    v14 = specialized XPCWrapper.init(_:)(v18);
    if (v6)
    {

      type metadata accessor for SystemCoordinatorState.ParticipantState();
      return swift_deallocPartialClassInstance();
    }
  }

  *&v5[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = v14;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v17, sel_init);
}

__n128 SystemCoordinatorState.ParticipantState.Seat.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 SystemCoordinatorState.ParticipantState.Seat.assignedParticipantPose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  result = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = result;
  return result;
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.roleIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

double SystemCoordinatorState.ParticipantState.Seat.init(pose:roleIdentifier:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  v5 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v5;
  result = 0.0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 1;
  *(a4 + 136) = a2;
  *(a4 + 144) = a3;
  *(a4 + 152) = -1;
  return result;
}

double SystemCoordinatorState.ParticipantState.Seat.init(number:pose:roleIdentifier:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v5;
  v6 = a2[3];
  *(a5 + 32) = a2[2];
  *(a5 + 48) = v6;
  result = 0.0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 1;
  *(a5 + 136) = a3;
  *(a5 + 144) = a4;
  *(a5 + 152) = a1;
  return result;
}

__n128 SystemCoordinatorState.ParticipantState.Seat.init(number:pose:assignedParticipantPose:roleIdentifier:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2[1];
  *a6 = *a2;
  *(a6 + 16) = v6;
  v7 = a2[3];
  *(a6 + 32) = a2[2];
  *(a6 + 48) = v7;
  *(a6 + 136) = a4;
  *(a6 + 144) = a5;
  *(a6 + 152) = a1;
  v8 = *(a3 + 48);
  *(a6 + 96) = *(a3 + 32);
  *(a6 + 112) = v8;
  *(a6 + 128) = *(a3 + 64);
  result = *(a3 + 16);
  *(a6 + 64) = *a3;
  *(a6 + 80) = result;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys()
{
  v1 = 1702063984;
  v2 = 0x6E656449656C6F72;
  if (*v0 != 2)
  {
    v2 = 0x7265626D756ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SystemCoordinatorState.ParticipantState.Seat.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = v1[1];
  v17 = *v1;
  v16 = v7;
  v18 = v1[2];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[7];
  v27 = v1[6];
  v28 = v10;
  v29 = *(v1 + 128);
  v11 = v1[5];
  v25 = v1[4];
  v26 = v11;
  v12 = *(v1 + 18);
  v15[3] = *(v1 + 17);
  v15[2] = v12;
  v15[1] = *(v1 + 19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v17;
  v21 = v16;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  v22 = v18;
  v30 = 0;
  type metadata accessor for SPPose3D(0);
  lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(&lazy protocol witness table cache variable for type SPPose3D and conformance SPPose3D, MEMORY[0x1EEE9A658]);
  v13 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v22 = v27;
  v23 = v28;
  v24 = v29;
  v20 = v25;
  v21 = v26;
  v30 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v20) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v20) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 144);
  v5 = *(v1 + 152);
  SPPose3D.hash(into:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return MEMORY[0x1B2715040](v5);
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return MEMORY[0x1B2715040](v5);
}

Swift::Int SystemCoordinatorState.ParticipantState.Seat.hashValue.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 144);
  v4 = *(v0 + 152);
  Hasher.init(_seed:)();
  SPPose3D.hash(into:)();
  if (v1 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  MEMORY[0x1B2715040](v4);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorState.ParticipantState.Seat.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities22SystemCoordinatorStateC011ParticipantH0C4SeatV10CodingKeys33_F9655F4C51447F3C29D73B552484838DLLOGMR);
  v5 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v36 = a2;
  v37 = v5;
  type metadata accessor for SPPose3D(0);
  LOBYTE(v38) = 0;
  lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(&lazy protocol witness table cache variable for type SPPose3D and conformance SPPose3D, MEMORY[0x1EEE9A660]);
  v8 = v77;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v50;
  v35 = v51;
  v33 = v48;
  v32 = v54;
  v9 = v52;
  v30 = v49;
  v31 = v53;
  v65 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v9;
  v10 = v34;
  v11 = v35;
  v74 = v68;
  v75 = v69;
  v76 = v70;
  v72 = v66;
  v73 = v67;
  LOBYTE(v48) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v28 = v12;
  v64 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v37 + 8))(v7, v8);
  v16 = v11;
  *&v39 = v10;
  *(&v39 + 1) = v11;
  v17 = v10;
  v18 = v30;
  *&v38 = v33;
  *(&v38 + 1) = v30;
  v41 = v32;
  v19 = v28;
  *&v40 = v29;
  *(&v40 + 1) = v31;
  LOBYTE(v46) = v76;
  v44 = v74;
  v45 = v75;
  v42 = v72;
  v43 = v73;
  *(&v46 + 1) = *v71;
  DWORD1(v46) = *&v71[3];
  *(&v46 + 1) = v28;
  *&v47 = v14;
  *(&v47 + 1) = v15;
  v20 = v32;
  v77 = v14;
  v21 = v36;
  v36[2] = v40;
  v21[3] = v20;
  v22 = v47;
  v21[8] = v46;
  v21[9] = v22;
  v23 = v39;
  *v21 = v38;
  v21[1] = v23;
  v24 = v43;
  v21[4] = v42;
  v21[5] = v24;
  v25 = v45;
  v21[6] = v44;
  v21[7] = v25;
  outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(&v38, &v48);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v50 = v17;
  v51 = v16;
  v48 = v33;
  v49 = v18;
  v54 = v32;
  v52 = v29;
  v53 = v31;
  v57 = v74;
  v58 = v75;
  v59 = v76;
  v55 = v72;
  v56 = v73;
  *v60 = *v71;
  *&v60[3] = *&v71[3];
  v61 = v19;
  v62 = v77;
  v63 = v15;
  return outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v48);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorState.ParticipantState.Seat(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 144);
  v5 = *(v1 + 152);
  Hasher.init(_seed:)();
  SPPose3D.hash(into:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    SPPose3D.hash(into:)();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  MEMORY[0x1B2715040](v5);
  return Hasher._finalize()();
}

uint64_t SystemCoordinatorState.ParticipantState.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of URL?(a1, __src, &_sypSgMd, &_sypSgMR);
  if (!*(&__src[1] + 1))
  {
    v3 = &_sypSgMd;
    v4 = &_sypSgMR;
    v5 = __src;
    goto LABEL_7;
  }

  type metadata accessor for SystemCoordinatorState.ParticipantState();
  if (swift_dynamicCast())
  {
    v2 = *&__dst[0];
    if (*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial) != *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial) || *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator) != *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
    {
      goto LABEL_5;
    }

    v8 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    v9 = *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) == *(*&__dst[0] + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier) && v8 == v9;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (v9)
    {
LABEL_5:

      goto LABEL_8;
    }

    v11 = MEMORY[0x1E69E7D40];
    v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(&v47);
    (*((*v11 & **&__dst[0]) + 0x70))(v57, v12);
    __src[6] = v53;
    __src[7] = v54;
    __src[8] = v55;
    __src[9] = v56;
    __src[2] = v49;
    __src[3] = v50;
    __src[4] = v51;
    __src[5] = v52;
    __src[0] = v47;
    __src[1] = v48;
    __src[16] = v57[6];
    __src[17] = v57[7];
    __src[18] = v57[8];
    __src[19] = v57[9];
    __src[12] = v57[2];
    __src[13] = v57[3];
    __src[14] = v57[4];
    __src[15] = v57[5];
    __src[10] = v57[0];
    __src[11] = v57[1];
    v58[6] = v53;
    v58[7] = v54;
    v58[8] = v55;
    v58[9] = v56;
    v58[2] = v49;
    v58[3] = v50;
    v58[4] = v51;
    v58[5] = v52;
    v58[0] = v47;
    v58[1] = v48;
    if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v58) == 1)
    {

      __dst[6] = __src[16];
      __dst[7] = __src[17];
      __dst[8] = __src[18];
      __dst[9] = __src[19];
      __dst[2] = __src[12];
      __dst[3] = __src[13];
      __dst[4] = __src[14];
      __dst[5] = __src[15];
      __dst[0] = __src[10];
      __dst[1] = __src[11];
      if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(__dst) == 1)
      {
        v41 = __src[6];
        v42 = __src[7];
        v43 = __src[8];
        v44 = __src[9];
        v37 = __src[2];
        v38 = __src[3];
        v39 = __src[4];
        v40 = __src[5];
        v35 = __src[0];
        v36 = __src[1];
        outlined destroy of NSObject?(&v35, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v6 = 1;
        return v6 & 1;
      }
    }

    else
    {
      v41 = __src[6];
      v42 = __src[7];
      v43 = __src[8];
      v44 = __src[9];
      v37 = __src[2];
      v38 = __src[3];
      v39 = __src[4];
      v40 = __src[5];
      v35 = __src[0];
      v36 = __src[1];
      v31 = __src[6];
      v32 = __src[7];
      v33 = __src[8];
      v34 = __src[9];
      v27 = __src[2];
      v28 = __src[3];
      v29 = __src[4];
      v30 = __src[5];
      v25 = __src[0];
      v26 = __src[1];
      __dst[6] = __src[16];
      __dst[7] = __src[17];
      __dst[8] = __src[18];
      __dst[9] = __src[19];
      __dst[2] = __src[12];
      __dst[3] = __src[13];
      __dst[4] = __src[14];
      __dst[5] = __src[15];
      __dst[0] = __src[10];
      __dst[1] = __src[11];
      if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(__dst) != 1)
      {
        v21 = __src[16];
        v22 = __src[17];
        v23 = __src[18];
        v24 = __src[19];
        v17 = __src[12];
        v18 = __src[13];
        v19 = __src[14];
        v20 = __src[15];
        v15 = __src[10];
        v16 = __src[11];
        outlined init with copy of URL?(&v47, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined init with copy of URL?(v57, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined init with copy of URL?(&v35, v14, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v6 = specialized static SystemCoordinatorState.ParticipantState.Seat.== infix(_:_:)(&v25, &v15);

        outlined destroy of NSObject?(v57, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined destroy of NSObject?(&v47, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        v13[6] = v21;
        v13[7] = v22;
        v13[8] = v23;
        v13[9] = v24;
        v13[2] = v17;
        v13[3] = v18;
        v13[4] = v19;
        v13[5] = v20;
        v13[0] = v15;
        v13[1] = v16;
        outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v13);
        v14[6] = v31;
        v14[7] = v32;
        v14[8] = v33;
        v14[9] = v34;
        v14[2] = v27;
        v14[3] = v28;
        v14[4] = v29;
        v14[5] = v30;
        v14[0] = v25;
        v14[1] = v26;
        outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v14);
        v21 = __src[6];
        v22 = __src[7];
        v23 = __src[8];
        v24 = __src[9];
        v17 = __src[2];
        v18 = __src[3];
        v19 = __src[4];
        v20 = __src[5];
        v15 = __src[0];
        v16 = __src[1];
        outlined destroy of NSObject?(&v15, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        return v6 & 1;
      }

      outlined init with copy of URL?(&v35, &v15, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);

      v21 = __src[6];
      v22 = __src[7];
      v23 = __src[8];
      v24 = __src[9];
      v17 = __src[2];
      v18 = __src[3];
      v19 = __src[4];
      v20 = __src[5];
      v15 = __src[0];
      v16 = __src[1];
      outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v15);
    }

    memcpy(__dst, __src, sizeof(__dst));
    v3 = &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSg_AHtMd;
    v4 = &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSg_AHtMR;
    v5 = __dst;
LABEL_7:
    outlined destroy of NSObject?(v5, v3, v4);
  }

LABEL_8:
  v6 = 0;
  return v6 & 1;
}

uint64_t @objc SystemCoordinatorState.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of NSObject?(v10, &_sypSgMd, &_sypSgMR);
  return v8 & 1;
}

Swift::Int SystemCoordinatorState.ParticipantState.hash.getter()
{
  Hasher.init()();
  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial));
  Hasher._combine(_:)(*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator));
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
  {
    Hasher._combine(_:)(1u);
    v1 = String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v11, v1);
  v21[6] = v17;
  v21[7] = v18;
  v21[8] = v19;
  v21[9] = v20;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  v21[0] = v11;
  v21[1] = v12;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v21) != 1)
  {
    v9[2] = v13;
    v9[3] = v14;
    v9[6] = v17;
    v9[7] = v18;
    v9[8] = v19;
    v10 = v20;
    v9[4] = v15;
    v9[5] = v16;
    v9[0] = v11;
    v9[1] = v12;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v21[15] = v11;
    v21[16] = v12;
    v21[18] = v14;
    v21[17] = v13;
    Hasher._combine(_:)(1u);
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v9, v8);
    SPPose3D.hash(into:)();
    if (v6)
    {
      Hasher._combine(_:)(0);
      if (v10)
      {
LABEL_8:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
LABEL_11:
        MEMORY[0x1B2715040](*(&v10 + 1));
        outlined destroy of NSObject?(&v11, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        outlined destroy of NSObject?(&v11, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
        return Hasher.finalize()();
      }
    }

    else
    {
      v8[1] = v3;
      v8[0] = v2;
      v8[3] = v5;
      v8[2] = v4;
      Hasher._combine(_:)(1u);
      SPPose3D.hash(into:)();
      if (v10)
      {
        goto LABEL_8;
      }
    }

    Hasher._combine(_:)(0);
    goto LABEL_11;
  }

  Hasher._combine(_:)(0);
  return Hasher.finalize()();
}

Swift::Void __swiftcall SystemCoordinatorState.ParticipantState.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial);
  v4 = MEMORY[0x1B2714130](0x6169746170537369, 0xE90000000000006CLL);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator);
  v6 = MEMORY[0x1B2714130](0xD000000000000012, 0x80000001AF01CC40);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8))
  {
    v7 = MEMORY[0x1B2714130](*(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1B2714130](0x6E656449656C6F72, 0xEE00726569666974);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat);
  v10 = MEMORY[0x1B2714130](1952540019, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id SystemCoordinatorState.ParticipantState.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorState.ParticipantState.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorState.ParticipantState.init(coder:)(a1);

  return v2;
}

id @objc SystemCoordinatorState.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B2714130](v5, v7);

  return v8;
}

uint64_t SystemCoordinatorState.ParticipantState.description.getter()
{
  v1 = 7104878;
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(81);
  v27 = v26[0];
  MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01CC60);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v2, v3);

  MEMORY[0x1B27141F0](0xD000000000000015, 0x80000001AF01CC80);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v4, v5);

  MEMORY[0x1B27141F0](0xD000000000000011, 0x80000001AF01CCA0);
  v6 = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8);
  if (v6)
  {
    *&v26[0] = *(v0 + OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier);
    *(&v26[0] + 1) = v6;

    v7 = String.init<A>(reflecting:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1B27141F0](v7, v9);

  v10 = MEMORY[0x1B27141F0](0x3D74616573202CLL, 0xE700000000000000);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v16, v10);
  v26[6] = v22;
  v26[7] = v23;
  v26[8] = v24;
  v26[9] = v25;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v26[5] = v21;
  v26[0] = v16;
  v26[1] = v17;
  if (_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOg(v26) == 1)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v15[6] = v22;
    v15[7] = v23;
    v15[8] = v24;
    v15[9] = v25;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = v21;
    v15[0] = v16;
    v15[1] = v17;
    v14[16] = v22;
    v14[17] = v23;
    v14[18] = v24;
    v14[19] = v25;
    v14[12] = v18;
    v14[13] = v19;
    v14[14] = v20;
    v14[15] = v21;
    v14[10] = v16;
    v14[11] = v17;
    outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v15, v14);
    v1 = String.init<A>(reflecting:)();
    v11 = v12;
  }

  MEMORY[0x1B27141F0](v1, v11);

  outlined destroy of NSObject?(&v16, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMd, &_s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgMR);
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return v27;
}

id SystemCoordinatorState.ParticipantState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorState.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SystemCoordinatorState.GroupImmersionStyle.description.getter()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646578696DLL;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SystemCoordinatorState.GroupImmersionStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemCoordinatorState.GroupImmersionStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v2 + 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorState.GroupImmersionStyle()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0x73736572676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646578696DLL;
  }
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
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
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(a2 + 56) + v12);
    v6 &= v6 - 1;
    MEMORY[0x1B2715070](*(*(a2 + 48) + v12));
    v14 = v13;
    NSObject.hash(into:)();

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

      return MEMORY[0x1B2715040](v9);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

double _s15GroupActivities22SystemCoordinatorStateC011ParticipantE0C4SeatVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[8] = 0u;
  a1[9] = xmmword_1AF00FCC0;
  return result;
}

unint64_t specialized static SystemCoordinatorState.ParticipantState.Seat.== infix(_:_:)(uint64_t a1, double *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v31 = *(a1 + 72);
  v29 = *(a1 + 80);
  v27 = *(a1 + 88);
  v32 = *(a1 + 96);
  v33 = *(a1 + 64);
  v30 = *(a1 + 104);
  v28 = *(a1 + 112);
  v6 = *(a1 + 128);
  v23 = *(a1 + 136);
  v35 = *(a1 + 144);
  v25 = *(a1 + 152);
  v26 = *(a1 + 120);
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v15 = a2[10];
  v14 = a2[11];
  v16 = a2[12];
  v17 = a2[13];
  v19 = a2[14];
  v18 = a2[15];
  v20 = *(a2 + 128);
  v22 = *(a2 + 17);
  v34 = *(a2 + 18);
  v24 = *(a2 + 19);
  *&v37.position.x = *a1;
  *&v37.position.vector.f64[2] = v2;
  v37.rotation.vector.f64[2] = v4;
  v37.rotation.vector.f64[3] = v5;
  *v37.rotation.vector.f64 = v3;
  *&v36.position.x = v7;
  *&v36.position.vector.f64[2] = v8;
  v36.rotation.vector.f64[2] = v10;
  v36.rotation.vector.f64[3] = v11;
  *v36.rotation.vector.f64 = v9;
  result = SPPose3DEqualToPose(&v37, &v36);
  if (result)
  {
    if (v6)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v20)
      {
        return 0;
      }

      v37.position.z = v29;
      v37.position.vector.f64[3] = v27;
      v37.position.x = v33;
      v37.position.y = v31;
      v37.rotation.vector.f64[2] = v28;
      v37.rotation.vector.f64[3] = v26;
      v37.rotation.vector.f64[0] = v32;
      v37.rotation.vector.f64[1] = v30;
      v36.position.z = v15;
      v36.position.vector.f64[3] = v14;
      v36.position.x = v12;
      v36.position.y = v13;
      v36.rotation.vector.f64[2] = v19;
      v36.rotation.vector.f64[3] = v18;
      v36.rotation.vector.f64[0] = v16;
      v36.rotation.vector.f64[1] = v17;
      result = SPPose3DEqualToPose(&v37, &v36);
      if (!result)
      {
        return result;
      }
    }

    if (v35)
    {
      if (!v34 || (v23 != v22 || v35 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      return v25 == v24;
    }

    if (!v34)
    {
      return v25 == v24;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat.CodingKeys and conformance SystemCoordinatorState.ParticipantState.Seat.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SPPose3D and conformance SPPose3D(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPPose3D(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of URL?(v9, v5, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMd, &_ss6UInt64V_15GroupActivities19InternalParticipantVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for InternalParticipant(0);
      result = _s15GroupActivities11ParticipantVWObTm_1(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for InternalParticipant);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_15GroupActivities0C16SessionMessengerC18MessageStreamStoreO7Storage33_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v5;
    *(v10 + 8) = v7;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 2;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v17 = *v9;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities20TypedPayloadDecoding_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v13, &_sSS_15GroupActivities20TypedPayloadDecoding_ptMd, &_sSS_15GroupActivities20TypedPayloadDecoding_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Transferable(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities11ParticipantV_AC17SystemCoordinatorC0E5StateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMd, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of URL?(v9, v5, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMd, &_s15GroupActivities11ParticipantV_AA17SystemCoordinatorC0C5StateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for Participant(0);
      result = _s15GroupActivities11ParticipantVWObTm_1(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for Participant);
      v16 = (v7[7] + 240 * v13);
      v18 = *(v8 + 13);
      v17 = *(v8 + 14);
      v19 = *(v8 + 12);
      v16[11] = *(v8 + 11);
      v16[12] = v19;
      v16[13] = v18;
      v16[14] = v17;
      v21 = *(v8 + 9);
      v20 = *(v8 + 10);
      v22 = *(v8 + 8);
      v16[7] = *(v8 + 7);
      v16[8] = v22;
      v16[9] = v21;
      v16[10] = v20;
      v24 = *(v8 + 5);
      v23 = *(v8 + 6);
      v25 = *(v8 + 4);
      v16[3] = *(v8 + 3);
      v16[4] = v25;
      v16[5] = v24;
      v16[6] = v23;
      v27 = *(v8 + 1);
      v26 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v27;
      v16[2] = v26;
      v28 = v7[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_10;
      }

      v7[2] = v30;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27CIImageRepresentationOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo27CIImageRepresentationOptionaypGMd, &_ss18_DictionaryStorageCySo27CIImageRepresentationOptionaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v11, &_sSo27CIImageRepresentationOptiona_yptMd, &_sSo27CIImageRepresentationOptiona_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities31SpatialTemplatePreferenceOutputVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    v4 = (a1 + 48);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = v4[2];
      v10 = v4[3];
      v11 = v4[4];
      v12 = *(v4 + 40);

      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v9, v10, v11, v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 8;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15GroupActivities25SpatialTemplatePreferenceVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 16 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 9) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So38TUConversationActivitySessionContainerCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of URL?(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities12TopicManagerC11ServiceNameO_AE18ConversationClientC0G0OTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, v14, &_s15GroupActivities12TopicManagerC11ServiceNameO_AC18ConversationClientC0E0OtMd, &_s15GroupActivities12TopicManagerC11ServiceNameO_AC18ConversationClientC0E0OtMR);
      v5 = v14[0];
      result = specialized __RawDictionaryStorage.find<A>(_:)(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v16[0];
      *(v8 + 25) = *(v16 + 9);
      *v8 = v9;
      v8[1] = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
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

uint64_t specialized SystemCoordinatorState.ParticipantState.Seat.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702063984 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001AF01CD90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656449656C6F72 && a2 == 0xEE00726569666974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id specialized SystemCoordinatorState.ParticipantState.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0x6169746170537369, 0xE90000000000006CLL);
  v5 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = v5;
  v6 = MEMORY[0x1B2714130](0xD000000000000012, 0x80000001AF01CC40);
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = v7;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v13 = v10;
  v13[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
  *&v2[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = NSCoder.decodeObject<A>(of:forKey:)();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SystemCoordinatorState.ParticipantState();
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle);
  }

  return result;
}

uint64_t dispatch thunk of SystemCoordinatorState.ParticipantState.__allocating_init(isSpatial:isSpatialInitiator:roleIdentifier:seat:)()
{
  return (*(v0 + 128))();
}

{
  return (*(v0 + 136))();
}

__n128 __swift_memcpy160_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinatorState.ParticipantState.Seat(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t storeEnumTagSinglePayload for SystemCoordinatorState.ParticipantState.Seat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t _s15GroupActivities11ParticipantVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Signposts.groupSession.unsafeMutableAddressor()
{
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static Signposts.groupSession);
}

uint64_t one-time initialization function for groupSession()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposts.groupSession);
  __swift_project_value_buffer(v0, static Signposts.groupSession);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t static Signposts.groupSession.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for groupSession != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static Signposts.groupSession);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t UUID.uint64Value.getter(uint64_t a1)
{
  UUID.uuid.getter();
  v2 = v1;
  UUID.uuid.getter();
  v4 = (v3 >> 40) & 0xFF00 | v2;
  UUID.uuid.getter();
  v6 = (v5 >> 24) & 0xFF0000;
  UUID.uuid.getter();
  v8 = v4 | v6 | (v7 >> 8) & 0xFF000000;
  UUID.uuid.getter();
  v10 = v8 & 0xFFFFFF00FFFFFFFFLL | (v9 << 32);
  UUID.uuid.getter();
  v12 = v10 & 0xFFFF00FFFFFFFFFFLL | (v11 << 40);
  UUID.uuid.getter();
  v14 = v12 & 0xFF00FFFFFFFFFFFFLL | (v13 << 48);
  UUID.uuid.getter();
  return v14 | (v15 << 56);
}

uint64_t AVAudioSessionAssertion.__allocating_init(id:manager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4 + v5, a1, v6);
  outlined init with copy of Transferable(a2, v4 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v9 + 8))(a1, v8, v9);
  (*(v7 + 8))(a1, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t AVAudioSessionAssertionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  v1 = Lock.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t *AVAudioSessionAssertionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static AVAudioSessionAssertionManager.shared;
}

double static AVAudioSessionAssertionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

id implicit closure #1 in AVAudioSessionAssertionManager.groupSessions.didset(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6958068];
  v4[0] = 0;
  if ([a1 setCategory:v1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id implicit closure #2 in AVAudioSessionAssertionManager.groupSessions.didset(void *a1, char a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([a1 setIsExpanseMediaSession:a2 & 1 error:v4])
  {
    return v4[0];
  }

  v3 = v4[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void AVAudioSessionAssertionManager.groupSessions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  v3 = *(*(v1 + 24) + 16);
  v4 = [objc_opt_self() sharedInstance];
  v5 = v4;
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v4);
    v4 = tryLog<A>(_:_:function:line:)();
  }

  MEMORY[0x1EEE9AC00](v4);
  tryLog<A>(_:_:function:line:)();
}

void (*AVAudioSessionAssertionManager.groupSessions.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AVAudioSessionAssertionManager.groupSessions.modify;
}

void AVAudioSessionAssertionManager.groupSessions.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(*(a1 + 24) + 24) + 16);
    v5 = [objc_opt_self() sharedInstance];
    v6 = v5;
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v5);
      v5 = tryLog<A>(_:_:function:line:)();
    }

    MEMORY[0x1EEE9AC00](v5);
    tryLog<A>(_:_:function:line:)();
  }
}

uint64_t closure #1 in AVAudioSessionAssertionManager.addSession(id:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-v9];
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(*a1 + 112))(v13);
  specialized Set._Variant.insert(_:)(v10, v8);
  (*(v5 + 8))(v10, v4);
  return v11(v13, 0);
}

uint64_t closure #1 in AVAudioSessionAssertionManager.removeSession(id:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  v7 = (*(*a1 + 112))(v9);
  specialized Set._Variant.remove(_:)(a2, v6);
  outlined destroy of UUID?(v6);
  return v7(v9, 0);
}

uint64_t AVAudioSessionAssertionManager.deinit()
{

  return v0;
}

uint64_t AVAudioSessionAssertionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AVAudioSessionAssertionManager.init()()
{
  type metadata accessor for Lock();
  swift_allocObject();
  v1 = Lock.init()();
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t *BackgroundAudioSessionAssertionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundAudioSessionAssertionManager.shared;
}

uint64_t static BackgroundAudioSessionAssertionManager.shared.getter()
{
  type metadata accessor for BackgroundAudioSessionAssertionManager();

  return swift_initStaticObject();
}

uint64_t AVAudioSessionAssertion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AVAudioSessionAssertion.init(id:manager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + v6, a1, v7);
  outlined init with copy of Transferable(a2, v3 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 8))(a1, v9, v10);
  (*(v8 + 8))(a1, v7);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t AVAudioSessionAssertion.deinit()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager;
  outlined init with copy of Transferable(v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id, v1);
  (*(v7 + 16))(v4, v6, v7);
  v9 = *(v2 + 8);
  v9(v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v9((v0 + v8), v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  return v0;
}

uint64_t AVAudioSessionAssertion.__deallocating_deinit()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager;
  outlined init with copy of Transferable(v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id, v1);
  (*(v7 + 16))(v4, v6, v7);
  v9 = *(v2 + 8);
  v9(v4, v1);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v9((v0 + v8), v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVAudioSessionAssertion(uint64_t a1)
{
  result = type metadata singleton initialization cache for AVAudioSessionAssertion;
  if (!type metadata singleton initialization cache for AVAudioSessionAssertion)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for AVAudioSessionAssertion(uint64_t a1)
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
}

{
  return specialized _NativeSet.copy()(type metadata accessor for Participant, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(type metadata accessor for PresenceSessionInfo.Participant, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR, type metadata accessor for PresenceSessionInfo.Participant);
}

{
  return specialized _NativeSet.copy()(MEMORY[0x1E69E8450], &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        outlined init with copy of PresenceSessionInfo.Participant(*(v13 + 48) + v28, v12, a4);
        result = outlined init with take of PresenceSessionInfo.Participant(v12, *(v15 + 48) + v28, a4);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v30;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v15;
  }

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

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for Participant(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  Participant.hash(into:)(v34);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return (*(v5 + 56))(v33, 1, 1, v4);
  }

  v12 = ~v10;
  v13 = *(v5 + 72);
  while (1)
  {
    v14 = v13 * v11;
    outlined init with copy of PresenceSessionInfo.Participant(*(v8 + 48) + v13 * v11, v7, type metadata accessor for Participant);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v15 = v4[5];
    v16 = *&v7[v15];
    v17 = *&v7[v15 + 8];
    v18 = (a1 + v15);
    v19 = v16 == *v18 && v17 == v18[1];
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v7[v4[6]] != *(a1 + v4[6]))
    {
      goto LABEL_4;
    }

    v20 = v4[7];
    v21 = &v7[v20];
    v22 = *&v7[v20 + 8];
    v23 = (a1 + v20);
    v24 = v23[1];
    if (v22)
    {
      break;
    }

    if (!v24)
    {
      goto LABEL_19;
    }

LABEL_4:
    outlined destroy of Participant(v7);
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return (*(v5 + 56))(v33, 1, 1, v4);
    }
  }

  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = *v21 == *v23 && v22 == v24;
  if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_19:
  if (v7[v4[8]] != *(a1 + v4[8]) || v7[v4[9]] != *(a1 + v4[9]))
  {
    goto LABEL_4;
  }

  outlined destroy of Participant(v7);
  v26 = v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v26;
  v34[0] = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(type metadata accessor for Participant, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR, type metadata accessor for Participant);
    v28 = v34[0];
  }

  v29 = v33;
  outlined init with take of PresenceSessionInfo.Participant(*(v28 + 48) + v14, v33, type metadata accessor for Participant);
  specialized _NativeSet._delete(at:)(v11);
  *v26 = v34[0];
  return (*(v5 + 56))(v29, 0, 1, v4);
}

{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v30 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69695A8], &_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    specialized _NativeSet._delete(at:)(v12, MEMORY[0x1E69695A8], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  v30 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v9 + 56;
  v29 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = v2;
    v26 = v6;
    v27 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v14(v8, *(v29 + 48) + v17 * v12, v5);
      _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v8, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v28 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v19 = 1;
        v6 = v26;
        a2 = v27;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    v20 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v31 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69E8450], &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
      v22 = v31;
    }

    v6 = v26;
    a2 = v27;
    (*(v26 + 32))(v27, *(v22 + 48) + v17 * v12, v5);
    specialized _NativeSet._delete(at:)(v12, MEMORY[0x1E69E8450], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
    v19 = 0;
    *v20 = v31;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 56))(a2, v19, 1, v5);
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 1);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = (v13 + 1) & v12;
      v15 = *(v4 + 72);
      v25 = v15;
      v26 = v9;
      while (1)
      {
        v16 = *(v8 + 48);
        v27 = v11;
        v17 = v15 * v11;
        outlined init with copy of PresenceSessionInfo.Participant(v16 + v15 * v11, v7, type metadata accessor for Participant);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        String.hash(into:)();
        MEMORY[0x1B2715070](*&v7[v3[6]]);
        if (*&v7[v3[7] + 8])
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v7[v3[8]]);
        Hasher._combine(_:)(v7[v3[9]]);
        v18 = Hasher._finalize()();
        outlined destroy of Participant(v7);
        v19 = v18 & v12;
        if (a1 >= v14)
        {
          break;
        }

        v15 = v25;
        v20 = v27;
        if (v19 < v14)
        {
          goto LABEL_14;
        }

LABEL_15:
        v21 = v15 * a1;
        if ((v15 * a1) < v17 || *(v8 + 48) + v15 * a1 >= *(v8 + 48) + v17 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v20;
          if (v21 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v20;
LABEL_6:
        v11 = (v20 + 1) & v12;
        v9 = v26;
        if (((*(v26 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v15 = v25;
      v20 = v27;
      if (v19 < v14)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v19)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v8 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v24;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = _HashTable.previousHole(before:)();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        _s10Foundation4UUIDVACSHAAWlTm_4(v41, v42, v43);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }

  return result;
}

__n128 GroupSession.Sessions.init(base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

double GroupSession.Sessions.base.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = v2;
  swift_unknownObjectRetain();

  return result;
}

uint64_t GroupSession.Sessions.Iterator.baseIterator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GroupSession.Sessions.Iterator.next()()
{

  return MEMORY[0x1EEE6DFA0](GroupSession.Sessions.Iterator.next(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSession<A>.Sessions.Iterator(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSession<A>.Sessions(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  GroupSession.Sessions.makeAsyncIterator()(a1, a2, a3);
  v4 = *v3;

  swift_unknownObjectRelease();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v32 = v37;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        specialized Set.subscript.getter(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 participantIdentifier];

        v15 = v32;
        v37 = v32;
        v17 = *(v32 + 16);
        v16 = *(v32 + 24);
        if (v17 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo13CPParticipantC_GMd, &_sSh5IndexVySo13CPParticipantC_GMR);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            outlined consume of Set<TUHandle>.Index._Variant(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                outlined consume of Set<TUHandle>.Index._Variant(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(uint64_t a1)
{
  v3 = type metadata accessor for Participant(0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v30[1] = v1;
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v31 = a1 + 64;
    v32 = v10;
    v34 = v5;
    v35 = a1;
    v33 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v39 = v9;
      v40 = 1 << v8;
      v13 = v36;
      _s15GroupActivities11ParticipantVWOcTm_1(*(a1 + 48) + *(v37 + 72) * v8, v36, type metadata accessor for Participant);
      v14 = v38;
      v15 = (v13 + *(v38 + 20));
      v17 = *v15;
      v16 = v15[1];
      v18 = objc_allocWithZone(MEMORY[0x1E6997710]);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v20 = MEMORY[0x1B2714130](v17, v16);
      v21 = [v18 initWithUUID:isa accountIdentifier:v20];

      [v21 _setParticipantIdentifier_];
      a1 = v35;
      _s15GroupActivities11ParticipantVWOhTm_0(v13, type metadata accessor for Participant);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v11 = 1 << *(a1 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v7 = v33;
      v22 = v34;
      v23 = *(v33 + 8 * v12);
      if ((v23 & v40) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v10) = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v12 << 6;
        v26 = v12 + 1;
        v27 = (v31 + 8 * v12);
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = outlined consume of Set<TUHandle>.Index._Variant(v8, v32, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<TUHandle>.Index._Variant(v8, v32, 0);
      }

LABEL_4:
      v9 = v39 + 1;
      v8 = v11;
      if (v39 + 1 == v22)
      {
        return v41;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

char *LinkManager.__allocating_init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v90 = a5;
  v91 = a7;
  v88 = a1;
  v89 = a6;
  v86 = a3;
  v87 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v73 - v12;
  v73 = type metadata accessor for Participant(0);
  v80 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v81 = v13;
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - v20;
  v83 = v8;
  v22 = objc_allocWithZone(v8);
  v23 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v22[v23] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v24 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v92[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v19 + 32))(&v22[v24], v21, v18);
  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v25 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v26 = MEMORY[0x1E69E7CC0];
  v92[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v15 + 32))(&v22[v25], v17, v14);
  if (v26 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CD0];
  }

  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v27;
  v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v28 = &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier;
  v33 = type metadata accessor for UUID();
  v84 = *(v33 - 8);
  v34 = *(v84 + 16);
  v35 = v88;
  v34(&v22[v32], v88, v33);
  v36 = v87;
  v85 = v33;
  v34(&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v87, v33);
  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = a4;
  v37 = v90;
  _s15GroupActivities11ParticipantVWOcTm_1(v90, &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  v38 = v89;
  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v89;
  v39 = a4;
  v40 = v91;
  *&v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v91;
  v93.receiver = v22;
  v93.super_class = v83;

  v89 = v38;
  swift_unknownObjectRetain();
  v41 = objc_msgSendSuper2(&v93, sel_init);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v82;
  _s15GroupActivities11ParticipantVWOcTm_1(v37, v82, type metadata accessor for Participant);
  v44 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  _s15GroupActivities11ParticipantVWObTm_2(v43, v45 + v44, type metadata accessor for Participant);
  v46 = *(*v39 + 336);
  v47 = v41;

  v46(partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v45);
  v48 = v35;

  v49 = v40;
  v50 = v39;
  v51 = [v49 unreliableMessengerEnabled];
  v52 = v86;
  if (v51)
  {
    v53 = UUID.uuidString.getter();
    v55 = v54;
    v56 = *(v37 + *(v73 + 24));
    v57 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager, &protocol conformance descriptor for LinkManager);
    v58 = (*(*v52 + 256))(v36, v53, v55, v56, v89, v47, v57);

    v60 = v74;
    (*(*v50 + 448))(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
    v61 = v36;
    v62 = v48;
    v63 = v75;
    v64 = v77;
    Publisher.map<A>(_:)();
    (*(v76 + 8))(v60, v64);
    v65 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR, MEMORY[0x1E695BD60]);
    v66 = v79;
    Publisher<>.assign(to:)();
    v67 = v63;
    v48 = v62;
    v36 = v61;
    v37 = v90;
    (*(v78 + 8))(v67, v66);
    v65(v92, 0);
    *&v47[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v58;
  }

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v69 = *(*v50 + 360);

  v69(partial apply for closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v68);

  swift_unknownObjectRelease();

  _s15GroupActivities11ParticipantVWOhTm_0(v37, type metadata accessor for Participant);
  v70 = v85;
  v71 = *(v84 + 8);
  v71(v36, v85);
  v71(v48, v70);

  return v47;
}

void LinkManager.sendData(_:to:messageTypeIdentifier:reliability:completion:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(void), uint64_t a8)
{
  v15 = *a3;
  v16 = *a6;
  if (TUSimulatedModeEnabled())
  {
    (a7)(0);
    return;
  }

  if (v15)
  {
    if ((v16 & 1) == 0)
    {
      v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(v15);
      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(v19, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710, &lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, specialized Set._Variant.insert(_:));

      LinkManager.sendDataReliably(_:to:messageTypeIdentifier:completion:)(a1, a2, v20, a4, a5, a7, a8);
      goto LABEL_13;
    }

    if ([*(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled])
    {
      v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15GroupActivities11ParticipantVG_So13CPParticipantCs5NeverOTg504_s15d145Activities11LinkManagerC8sendData_2to21messageTypeIdentifier11reliability10completiony10Foundation0F0V_AA12ParticipantsOSSAA15SendReliabilityOys5c11_pSgctFSo13g5CAA11F6VXEfU_Tf1cn_nTm(v15);
      v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(v17, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710, &lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, specialized Set._Variant.insert(_:));

      LinkManager.sendDataUnreliably(_:to:completion:)(a1, a2, v18, a7, a8);
LABEL_13:

      return;
    }

    goto LABEL_16;
  }

  if ((v16 & 1) == 0)
  {
    (*(**(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 664))(a1, a2, 0, a4, a5, a7, a8);
    return;
  }

  if (([*(v8 + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled] & 1) == 0)
  {
LABEL_16:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Dropping message since unreliable messaging is disabled", v24, 2u);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v25 = swift_allocError();
    *v26 = 1;
    a7();

    return;
  }

  LinkManager.sendDataUnreliably(_:to:completion:)(a1, a2, 0, a7, a8);
}

uint64_t LinkManager.removeAttachment(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.removeAttachment(id:), 0, 0);
}

uint64_t LinkManager.removeAttachment(id:)()
{
  v25 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0xF8))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = LinkManager.removeAttachment(id:);
    v3 = *(v0 + 16);

    return AttachmentLedgerTopic.remove(id:)(v3);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    v15 = *(v0 + 32);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Dropping removal request %s due to not having a topic yet.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = LinkManager.removeAttachment(id:);
  }

  else
  {
    v2 = LinkManager.removeAttachment(id:);
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

uint64_t LinkManager.uploadAttachment(id:file:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  v5[18] = swift_task_alloc();
  v6 = type metadata accessor for LinkManager.Attachment(0);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.uploadAttachment(id:file:developerMetadata:), 0, 0);
}

uint64_t LinkManager.uploadAttachment(id:file:developerMetadata:)()
{
  v53 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];
  v8 = v0[13];
  v7 = v0[14];
  v9 = type metadata accessor for Logger();
  v0[39] = __swift_project_value_buffer(v9, static Log.default);
  v10 = *(v3 + 16);
  v0[40] = v10;
  v0[41] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  v0[42] = v11;
  v0[43] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[32];
  v20 = v0[29];
  v19 = v0[30];
  if (v14)
  {
    v46 = v0[28];
    v48 = v0[26];
    v49 = v0[27];
    v50 = v13;
    v21 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v51;
    *v21 = 136315650;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v45 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v12;
    v24 = v23;
    v25 = *(v16 + 8);
    v25(v15, v17);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v52);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v19 + 8))(v45, v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v52);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v49 + 8))(v46, v48);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v52);

    *(v21 + 24) = v34;
    _os_log_impl(&dword_1AEE80000, log, v50, "Received upload request: %s, file: %s. Waiting for topic with priority: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v51, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v25 = *(v16 + 8);
    v25(v15, v17);
  }

  v0[44] = v25;
  v35 = v0[25];
  v36 = v0[17];
  (*(v0[27] + 56))(v35, 1, 1, v0[26]);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v36;
  v38 = v36;
  v39 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in LinkManager.fetchAttachmentLedgerTopic(), v37);
  v0[45] = v39;
  v40 = swift_task_alloc();
  v0[46] = v40;
  v41 = type metadata accessor for AttachmentLedgerTopic(0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[47] = v42;
  *v40 = v0;
  v40[1] = LinkManager.uploadAttachment(id:file:developerMetadata:);
  v43 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 10, v39, v41, v42, v43);
}

{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  else
  {
    v2 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v47 = v0;
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[13];
  v40 = v0[10];
  v0[49] = v40;
  v1(v2, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[44];
  v9 = v0[37];
  v10 = v0[33];
  if (v7)
  {
    v44 = v0[44];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315138;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v44(v9, v10);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v46);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Got topic for upload request: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);
  }

  else
  {

    v8(v9, v10);
  }

  v42 = v0[42];
  v17 = v0[40];
  v18 = v0[33];
  v41 = v18;
  v39 = v0[31];
  v19 = v0[29];
  v20 = v0[21];
  v38 = v0[20];
  v21 = v0[19];
  v36 = v0[36];
  v37 = v0[18];
  v35 = v0[17];
  v45 = v0[16];
  v22 = v0[14];
  v43 = v0[15];
  v23 = v0[13];
  static Date.now.getter();
  v17(v20, v23, v18);
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  v42(v20 + v21[7], v22, v19);
  *(v20 + v21[5]) = v25;
  v26 = v20 + v21[6];
  *v26 = v43;
  *(v26 + 8) = v45;
  *(v26 + 16) = 1;
  *(v20 + v21[8]) = 2;
  v27 = *(v35 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v0[50] = v27;
  [v27 lock];
  v17(v36, v23, v41);
  _s15GroupActivities11ParticipantVWOcTm_1(v20, v37, type metadata accessor for LinkManager.Attachment);
  (*(v38 + 56))(v37, 0, 1, v21);
  v28 = *MEMORY[0x1E69E7D40] & *v35;
  v29 = *(v28 + 0x128);
  v0[51] = v29;
  v0[52] = (v28 + 296) & 0xFFFFFFFFFFFFLL | 0xF38D000000000000;
  v30 = v29(v0 + 2);
  specialized Dictionary.subscript.setter(v37, v36);
  v30(v0 + 2, 0);
  [v27 unlock];
  v42(v39, v22, v19);
  v17(v36, v23, v41);
  type metadata accessor for AssetManager();

  v31 = static AssetManager.shared.getter();
  type metadata accessor for AttachmentUploadTask(0);
  v32 = swift_allocObject();
  outlined copy of Data?(v43, v45);
  v0[53] = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(v40, v39, v43, v45, v36, v31, v32);

  v33 = swift_task_alloc();
  v0[54] = v33;
  *v33 = v0;
  v33[1] = LinkManager.uploadAttachment(id:file:developerMetadata:);

  return AttachmentUploadTask.start()();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  else
  {
    v2 = LinkManager.uploadAttachment(id:file:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];

  _s15GroupActivities11ParticipantVWOhTm_0(v4, type metadata accessor for LinkManager.Attachment);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

{
  v46 = v0;
  v1 = *(v0 + 440);
  *(v0 + 88) = v1;
  v2 = v1;
  if (swift_dynamicCast() && *(v0 + 448) == 1)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();

    _s15GroupActivities11ParticipantVWOhTm_0(v6, type metadata accessor for LinkManager.Attachment);
    (*(v3 + 8))(v4, v5);
  }

  else
  {
    v44 = v0 + 48;
    v8 = *(v0 + 440);
    v9 = *(v0 + 320);
    v10 = *(v0 + 280);
    v11 = *(v0 + 264);
    v12 = *(v0 + 104);

    v9(v10, v12, v11);
    v13 = v8;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v39 = *(v0 + 440);
      v17 = *(v0 + 272);
      v16 = *(v0 + 280);
      v18 = *(v0 + 264);
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45[0] = v42;
      *v19 = 136315394;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v17 + 8))(v16, v18);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v45);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v0 + 96) = v39;
      v24 = v39;
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v45);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Failed to upload attachment %s, error: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v42, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    else
    {
      v29 = *(v0 + 272);
      v28 = *(v0 + 280);
      v30 = *(v0 + 264);

      (*(v29 + 8))(v28, v30);
    }

    v31 = *(v0 + 400);
    v32 = *(v0 + 408);
    v33 = *(v0 + 184);
    v41 = *(v0 + 176);
    v43 = *(v0 + 192);
    v40 = *(v0 + 168);
    v34 = *(v0 + 144);
    v35 = *(v0 + 104);
    [v31 lock];
    v36 = v32(v44);
    specialized Dictionary.removeValue(forKey:)(v35, v34);
    outlined destroy of NSObject?(v34, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
    v36(v44, 0);
    [v31 unlock];
    swift_willThrow();

    _s15GroupActivities11ParticipantVWOhTm_0(v40, type metadata accessor for LinkManager.Attachment);
    (*(v33 + 8))(v43, v41);
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachment(attachmentID:), 0, 0);
}

uint64_t LinkManager.fetchAttachment(attachmentID:)()
{
  v27 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0xF8))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;

    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = LinkManager.fetchAttachment(attachmentID:);
    v4 = *(v0 + 24);
    v5 = *(v0 + 16);

    return LinkManager.fetchAttachment(attachmentID:generator:)(v5, v4, &async function pointer to partial apply for closure #1 in LinkManager.fetchAttachment(attachmentID:), v2);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = *(v0 + 24);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);
    (*(v8 + 16))(v7, v10, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Dropping downloadRequest %s due to not having a topic yet.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2715BA0](v19, -1, -1);
      MEMORY[0x1B2715BA0](v18, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

{

  v1 = *(v0 + 8);
  v2.n128_u64[0] = *(v0 + 88);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LinkManager.fetchAttachment(attachmentID:)(double a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = LinkManager.fetchAttachment(attachmentID:);
  }

  else
  {

    *(v4 + 88) = a1;
    v5 = LinkManager.fetchAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t LinkManager.fetchAttachmentMetadata(attachmentID:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Attachment.Metadata();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for LinkManager.Attachment(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachmentMetadata(attachmentID:), 0, 0);
}

uint64_t LinkManager.fetchAttachmentMetadata(attachmentID:)()
{
  v58 = v0;
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0xF8))();
  *(v0 + 152) = v1;
  if (!v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = *(v0 + 24);
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = *(v0 + 40);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v57);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1AEE80000, v11, v12, "Dropping downloadRequest %s due to not having a topic yet.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B2715BA0](v18, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    goto LABEL_16;
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v5 lock];
  closure #1 in LinkManager.fetchAttachmentMetadata(attachmentID:)(v4, v3, v2);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  [v5 unlock];
  v25 = v23 + *(v24 + 24);
  v26 = *v25;
  *(v0 + 160) = *v25;
  v27 = *(v25 + 8);
  *(v0 + 168) = v27;
  if (*(v25 + 16))
  {
    if (v27 >> 60 == 15)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.default);
      _s15GroupActivities11ParticipantVWOcTm_1(v28, v29, type metadata accessor for LinkManager.Attachment);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 136);
      if (v33)
      {
        v36 = *(v0 + 104);
        v35 = *(v0 + 112);
        v38 = *(v0 + 64);
        v37 = *(v0 + 72);
        v39 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57[0] = v56;
        *v39 = 136315138;
        _s15GroupActivities11ParticipantVWOcTm_1(v34, v37, type metadata accessor for LinkManager.Attachment);
        (*(v35 + 56))(v37, 0, 1, v36);
        outlined init with copy of URL?(v37, v38, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        if ((*(v35 + 48))(v38, 1, v36) == 1)
        {
          v40 = 0xE300000000000000;
          v41 = 7104878;
        }

        else
        {
          v49 = *(v0 + 120);
          v50 = *(v0 + 128);
          _s15GroupActivities11ParticipantVWObTm_2(*(v0 + 64), v50, type metadata accessor for LinkManager.Attachment);
          _s15GroupActivities11ParticipantVWOcTm_1(v50, v49, type metadata accessor for LinkManager.Attachment);
          v41 = String.init<A>(reflecting:)();
          v40 = v51;
          _s15GroupActivities11ParticipantVWOhTm_0(v50, type metadata accessor for LinkManager.Attachment);
        }

        v52 = *(v0 + 136);
        outlined destroy of NSObject?(*(v0 + 72), &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        _s15GroupActivities11ParticipantVWOhTm_0(v52, type metadata accessor for LinkManager.Attachment);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, v57);

        *(v39 + 4) = v53;
        _os_log_impl(&dword_1AEE80000, v31, v32, "Requested to fetch metadata but local attachment %s doesn't have any", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1B2715BA0](v56, -1, -1);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }

      else
      {

        _s15GroupActivities11ParticipantVWOhTm_0(v34, type metadata accessor for LinkManager.Attachment);
      }

      v54 = *(v0 + 144);
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      swift_allocError();
      *v55 = 3;
      swift_willThrow();

      _s15GroupActivities11ParticipantVWOhTm_0(v54, type metadata accessor for LinkManager.Attachment);
LABEL_16:

      v43 = *(v0 + 8);

      return v43();
    }

    v47 = *(v0 + 144);
    outlined copy of LinkManager.Attachment.Source(v26, v27, 1);

    _s15GroupActivities11ParticipantVWOhTm_0(v47, type metadata accessor for LinkManager.Attachment);

    v48 = *(v0 + 8);

    return v48(v26, v27);
  }

  else
  {

    v45 = swift_task_alloc();
    *(v0 + 176) = v45;
    *v45 = v0;
    v45[1] = LinkManager.fetchAttachmentMetadata(attachmentID:);
    v46 = *(v0 + 96);

    return MEMORY[0x1EEDF85A8](v46);
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = LinkManager.fetchAttachmentMetadata(attachmentID:);
  }

  else
  {
    v2 = LinkManager.fetchAttachmentMetadata(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v28 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = Attachment.Metadata.developerMetadata.getter();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v7 = v0[21];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.default);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    outlined consume of LinkManager.Attachment.Source(v8, v7, 0);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[20];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      v0[2] = v12;
      type metadata accessor for Attachment();

      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Requested to fetch metadata but attachment %s doesn't have any", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[18];
    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();

    outlined consume of LinkManager.Attachment.Source(v19, v18, 0);
    _s15GroupActivities11ParticipantVWOhTm_0(v20, type metadata accessor for LinkManager.Attachment);

    v22 = v0[1];

    return v22();
  }

  else
  {
    v25 = v0[20];
    v24 = v0[21];
    _s15GroupActivities11ParticipantVWOhTm_0(v0[18], type metadata accessor for LinkManager.Attachment);
    outlined consume of LinkManager.Attachment.Source(v25, v24, 0);

    v26 = v0[1];

    return v26(v4, v6);
  }
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];

  outlined consume of LinkManager.Attachment.Source(v1, v2, 0);
  _s15GroupActivities11ParticipantVWOhTm_0(v3, type metadata accessor for LinkManager.Attachment);

  v4 = v0[1];

  return v4();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of URL?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
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
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for AttachmentLedgerTopic(0);

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
  type metadata accessor for AttachmentLedgerTopic(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities35PluginAttachmentLedgerTopicProvider_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of URL?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMd, &_s15GroupActivities35PluginAttachmentLedgerTopicProvider_pMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of URL?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
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
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.subscript.setter(a1, a2, specialized _NativeDictionary.setValue(_:forKey:isUnique:), specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for LinkManager.Attachment(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
    specialized Dictionary.removeValue(forKey:)(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of NSObject?(v7, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  }

  else
  {
    _s15GroupActivities11ParticipantVWObTm_2(a1, v10, type metadata accessor for LinkManager.Attachment);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return outlined destroy of NSObject?(v9, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
  }

  return result;
}

{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)();
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    outlined destroy of NSObject?(a1, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v22;
      }

      v18.n128_f64[0] = (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      specialized _NativeDictionary._delete(at:)(v15, v17, v18);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return outlined destroy of NSObject?(v8, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v17;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v18 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v18;
      }

      result = specialized _NativeDictionary._delete(at:)(v13, v15, v16);
      *v5 = v15;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for UUID();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for UUID();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      specialized _NativeDictionary._delete(at:)(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, outlined init with take of Transferable, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), v9);

    return outlined destroy of NSObject?(v9, &_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1] == 1;
  }

  if (v4)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v10);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(a2, v8);
    return outlined destroy of NSObject?(v10, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMd, &_s15GroupActivities0A12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVSgMR);
  }

  else
  {
    outlined init with take of GroupSessionTable.Storage(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 40) == 255)
  {
    outlined destroy of NSObject?(a1, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMd, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMR);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v12 = v17;
      }

      v13 = (*(v12 + 56) + 48 * v10);
      v14 = *(v13 + 25);
      v15 = v13[1];
      *v18 = *v13;
      *&v18[16] = v15;
      *&v18[25] = v14;
      specialized _NativeDictionary._delete(at:)(v10, v12, v14);
      *v3 = v12;
    }

    else
    {
      memset(v18, 0, 40);
      v18[40] = -1;
    }

    return outlined destroy of NSObject?(v18, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMd, &_s15GroupActivities12TopicManagerC18ConversationClientC7ServiceOSgMR);
  }

  else
  {
    v5 = *(a1 + 16);
    *v18 = *a1;
    *&v18[16] = v5;
    *&v18[25] = *(a1 + 25);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a2, v6);
    *v2 = v16;
  }

  return result;
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v20 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v20;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v19 = *(v11 - 8);
    v12.n128_f64[0] = (*(v19 + 32))(a2, v10 + *(v19 + 72) * v7, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9, v12);
    *v3 = v9;
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for LinkManager.Attachment(0);
    v20 = *(v13 - 8);
    _s15GroupActivities11ParticipantVWObTm_2(v12 + *(v20 + 72) * v7, a2, type metadata accessor for LinkManager.Attachment);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for LinkManager.Attachment(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void LinkManager.attachmentLedgerTopic.willset(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMR);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v21 = v3;
    v10 = 7104878;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    v13 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xF8))();
    if (v13)
    {
      v23 = v13;
      type metadata accessor for AttachmentLedgerTopic(0);
      v14 = String.init<A>(reflecting:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v24);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    if (a1)
    {
      v23 = a1;
      type metadata accessor for AttachmentLedgerTopic(0);

      v10 = String.init<A>(reflecting:)();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v19, v24);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Updating AttachmentLedgerTopic from %s to: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);

    v3 = v21;
    if (a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (a1)
    {
LABEL_13:
      v24[0] = (*(*a1 + 392))();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[Attachment], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR, MEMORY[0x1E695BFB0]);
      Publisher.compactMap<A>(_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.CompactMap<CurrentValueSubject<[Attachment], Never>, [LinkManager.Attachment]> and conformance Publishers.CompactMap<A, B>, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMd, &_s7Combine10PublishersO10CompactMapVy_AA19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGSay15GroupActivities11LinkManagerCAIVGGMR, MEMORY[0x1E695BC80]);
      Publisher<>.sink(receiveValue:)();

      (*(v22 + 8))(v5, v3);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }
}

void closure #1 in LinkManager.attachmentLedgerTopic.willset(unint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v37 = type metadata accessor for LinkManager.Attachment(0);
  v34 = *(v37 - 8);
  v8 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - v10;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v11 >> 62)
    {
      goto LABEL_26;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = a3; v12; i = a3)
    {
      v13 = 0;
      v35 = v11 & 0xC000000000000001;
      a3 = (v11 & 0xFFFFFFFFFFFFFF8);
      v14 = (v34 + 48);
      v15 = MEMORY[0x1E69E7CC0];
      v32 = v11;
      while (v35)
      {
        v16 = MEMORY[0x1B2714B30](v13, v11);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_24;
        }

LABEL_10:
        v39 = v16;
        closure #1 in closure #1 in LinkManager.attachmentLedgerTopic.willset(&v39, Strong, v7);

        if ((*v14)(v7, 1, v37) == 1)
        {
          outlined destroy of NSObject?(v7, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
        }

        else
        {
          v18 = v33;
          _s15GroupActivities11ParticipantVWObTm_2(v7, v33, type metadata accessor for LinkManager.Attachment);
          _s15GroupActivities11ParticipantVWObTm_2(v18, v36, type metadata accessor for LinkManager.Attachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
          }

          v20 = v15[2];
          v19 = v15[3];
          if (v20 >= v19 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
          }

          v15[2] = v20 + 1;
          _s15GroupActivities11ParticipantVWObTm_2(v36, v15 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, type metadata accessor for LinkManager.Attachment);
          v11 = v32;
        }

        ++v13;
        if (v17 == v12)
        {
          goto LABEL_28;
        }
      }

      if (v13 >= a3[2])
      {
        goto LABEL_25;
      }

      v16 = *(v11 + 8 * v13 + 32);

      v17 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v12 = __CocoaSet.count.getter();
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_28:

    a3 = i;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v39 = v25;
      *v24 = 136315138;
      v26 = type metadata accessor for Attachment();
      v27 = MEMORY[0x1B27142D0](v11, v26);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v39);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v22, v23, "Learned about new attachments: %s but lost reference to self. Can't indicate an update to clients", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    v15 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v15;
}

void closure #1 in closure #1 in LinkManager.attachmentLedgerTopic.willset(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for Date();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v59 - v8;
  v72 = type metadata accessor for URL();
  v66 = *(v72 - 8);
  v9 = MEMORY[0x1EEE9AC00](v72);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v59 - v13;
  v14 = type metadata accessor for UUID();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LinkManager.Attachment(0);
  v17 = *(v73 - 8);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v62 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v61 = &v59 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v60 = &v59 - v26;
  v27 = *a1;
  v28 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x130);
  v71 = a2;
  v29 = v28(v25);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = (v75 + 8);
    while (v31 < *(v29 + 16))
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v22, type metadata accessor for LinkManager.Attachment);
      Attachment.id.getter();
      v33 = static UUID.== infix(_:_:)();
      (*v32)(v16, v76);
      if (v33)
      {

        v54 = v61;
        _s15GroupActivities11ParticipantVWObTm_2(v22, v61, type metadata accessor for LinkManager.Attachment);
        v55 = v54;
        v56 = v60;
        _s15GroupActivities11ParticipantVWObTm_2(v55, v60, type metadata accessor for LinkManager.Attachment);
        v57 = v56;
        v58 = v74;
        _s15GroupActivities11ParticipantVWObTm_2(v57, v74, type metadata accessor for LinkManager.Attachment);
        (*(v17 + 56))(v58, 0, 1, v73);
        return;
      }

      ++v31;
      _s15GroupActivities11ParticipantVWOhTm_0(v22, type metadata accessor for LinkManager.Attachment);
      if (v30 == v31)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v34 = v27;
    Attachment.id.getter();
    v35 = (*((*MEMORY[0x1E69E7D40] & *v71) + 0x128))(v77);
    v36 = v70;
    specialized Dictionary.removeValue(forKey:)(v16, v70);
    v37 = v76;
    v38 = *(v75 + 8);
    v38(v16, v76);
    v35(v77, 0);
    v39 = v73;
    if ((*(v17 + 48))(v36, 1, v73) == 1)
    {
      outlined destroy of NSObject?(v36, &_s15GroupActivities11LinkManagerC10AttachmentVSgMd, &_s15GroupActivities11LinkManagerC10AttachmentVSgMR);
      UUID.init()();
      UUID.uuidString.getter();
      v38(v16, v37);
      v40 = v64;
      static URL.temporaryDirectory.getter();
      v41 = v66;
      (*(v66 + 56))(v40, 0, 1, v72);
      v42 = v63;
      URL.init(fileURLWithPath:relativeTo:)();

      outlined destroy of NSObject?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v43 = v65;
      URL.absoluteURL.getter();
      v44 = v42;
      v45 = v72;
      (*(v41 + 8))(v44, v72);
      v46 = v67;
      static Date.now.getter();
      v47 = v74;
      Attachment.id.getter();
      Date.timeIntervalSince1970.getter();
      v49 = v48;
      (*(v68 + 8))(v46, v69);
      *(v47 + v39[5]) = v49;
      v50 = v47 + v39[6];
      *v50 = v34;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      (*(v41 + 32))(v47 + v39[7], v43, v45);
      *(v47 + v39[8]) = 0;
      (*(v17 + 56))(v47, 0, 1, v39);
    }

    else
    {
      v51 = v62;
      _s15GroupActivities11ParticipantVWObTm_2(v36, v62, type metadata accessor for LinkManager.Attachment);
      v52 = v51;
      v53 = v74;
      _s15GroupActivities11ParticipantVWObTm_2(v52, v74, type metadata accessor for LinkManager.Attachment);
      (*(v17 + 56))(v53, 0, 1, v39);
    }
  }
}

uint64_t LinkManager.Attachment.init(id:sentTime:source:file:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for LinkManager.Attachment(0);
  *(a7 + v17[5]) = a8;
  v18 = a7 + v17[6];
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4 & 1;
  v19 = v17[7];
  v20 = type metadata accessor for URL();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  *(a7 + v17[8]) = a6;
  return result;
}

void closure #2 in LinkManager.attachmentLedgerTopic.willset(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
    [v5 lock];
    v6 = *((*MEMORY[0x1E69E7D40] & v4->isa) + 0x138);

    v6(v7);
    [v5 unlock];
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = type metadata accessor for LinkManager.Attachment(0);
      v13 = MEMORY[0x1B27142D0](v2, v12);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEE80000, v4, v9, "Learned about new attachments: %s but lost reference to self. Can't indicate an update to clients", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }
  }
}

uint64_t LinkManager.attachmentLedgerTopic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

uint64_t LinkManager.attachmentLedgerTopic.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  LinkManager.attachmentLedgerTopic.willset(a1);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic, v3);
  v8[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

void (*LinkManager.attachmentLedgerTopic.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v5[5] = v6;
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v5[6] = v8;
  v5[7] = v9;
  v10 = *(v7 + 16);
  v5[8] = v10;
  v5[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11 = v8;
  v10();
  CurrentSubject.wrappedValue.getter();
  v12 = *(v7 + 8);
  v5[10] = v12;
  v5[11] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v11, v6);
  *v5 = v5[1];
  return LinkManager.attachmentLedgerTopic.modify;
}

void LinkManager.attachmentLedgerTopic.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[10];
  v5 = (*a1)[8];
  v6 = (*a1)[6];
  v7 = (*a1)[7];
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  if (a2)
  {

    LinkManager.attachmentLedgerTopic.willset(v10);
    v5(v6, v8 + v7, v9);
    v2[2] = v3;
    CurrentSubject.wrappedValue.setter();
    v4(v6, v9);
  }

  else
  {
    LinkManager.attachmentLedgerTopic.willset(v3);
    v5(v6, v8 + v7, v9);
    v2[3] = v3;
    CurrentSubject.wrappedValue.setter();
    v4(v6, v9);
  }

  free(v6);

  free(v2);
}

uint64_t LinkManager.pendingLocalAttachments.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LinkManager.attachments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

uint64_t LinkManager.attachments.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments, v3);
  v8[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

void (*LinkManager.attachments.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t LinkManager.$attachmentLedgerTopic.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v3 + *a3, v5);
  v9 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t LinkManager.dataCryptor.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(**(v2 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 408);
  v5 = swift_unknownObjectRetain();
  result = v4(v5);
  if (*(v2 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
  {
    if (a1)
    {
      ObjectType = swift_getObjectType();
      v13 = ObjectType;
      v12[0] = a1;
      swift_unknownObjectRetain();

      UnreliableMessenger.refreshDataCryptorProvider(with:)();
      v8 = __swift_destroy_boxed_opaque_existential_0(v12);
      v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF8))(v8);
      if (v9)
      {
        (*(*v9 + 344))(v12);

        if (v13)
        {
          outlined init with copy of Transferable(v12, v11);
          outlined destroy of NSObject?(v12, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
          __swift_project_boxed_opaque_existential_1(v11, v11[3]);
          v10[3] = ObjectType;
          v10[0] = a1;
          swift_unknownObjectRetain();
          dispatch thunk of TopicCryptorProvider.refresh(with:)();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v10);
          return __swift_destroy_boxed_opaque_existential_0(v11);
        }

        else
        {
          swift_unknownObjectRelease();

          return outlined destroy of NSObject?(v12, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*LinkManager.dataCryptor.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = (*(**(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 400))();
  return LinkManager.dataCryptor.modify;
}

uint64_t LinkManager.dataCryptor.modify(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return LinkManager.dataCryptor.setter(*a1, a2);
  }

  v2 = swift_unknownObjectRetain();
  LinkManager.dataCryptor.setter(v2, v3);

  return swift_unknownObjectRelease();
}

uint64_t LinkManager.hasConnectedOnce.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LinkManager.hasConnectedOnce.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for LinkManager.receivedDataHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data, @unowned UInt64, @in_guaranteed SendReliability) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.receivedDataHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed SendReliability) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1B8);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t key path getter for LinkManager.onFirstConnectedHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.onFirstConnectedHandler : LinkManager(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t key path getter for LinkManager.invalidationHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.invalidationHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E8);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t key path getter for LinkManager.catchupNeededHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt64) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.catchupNeededHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x200);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t (*LinkManager.catchupNeededHandler.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic);
  a1[2] = v2;
  *a1 = (*(*v2 + 376))();
  a1[1] = v4;
  return LinkManager.catchupNeededHandler.modify;
}

uint64_t LinkManager.catchupNeededHandler.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 384);
  if ((a2 & 1) == 0)
  {
    return (v4)(*a1, v2);
  }

  v5 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*a1, v2);
  v4(v3, v2, v5);

  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3, v2);
}

uint64_t key path getter for LinkManager.requestEncryptionKeysHandler : LinkManager@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [UInt64]?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for LinkManager.requestEncryptionKeysHandler : LinkManager(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [UInt64]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);
  v8 = outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t LinkManager.receivedDataHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t LinkManager.receivedDataHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

char *LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v77 = a3;
  v78 = a7;
  v76 = a6;
  v80 = a5;
  v81 = a2;
  v79 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - v12;
  v67 = type metadata accessor for Participant(0);
  v74 = *(v67 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v75 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v67 - v20;
  v22 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v7[v22] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v23 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v82[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v19 + 32))(&v7[v23], v21, v18);
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v24 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v25 = MEMORY[0x1E69E7CC0];
  v82[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v15 + 32))(&v7[v24], v17, v14);
  if (v25 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CD0];
  }

  v27 = v79;
  v28 = v81;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v26;
  v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v29 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v36(&v7[v33], v27, v34);
  v36(&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v28, v34);
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = a4;
  v37 = v80;
  _s15GroupActivities11ParticipantVWOcTm_1(v80, &v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  v38 = v76;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v76;
  v39 = v78;
  *&v7[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v78;
  v40 = type metadata accessor for LinkManager(0);
  v83.receiver = v7;
  v83.super_class = v40;

  v76 = v38;
  swift_unknownObjectRetain();
  v41 = objc_msgSendSuper2(&v83, sel_init);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v75;
  _s15GroupActivities11ParticipantVWOcTm_1(v37, v75, type metadata accessor for Participant);
  v44 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  _s15GroupActivities11ParticipantVWObTm_2(v43, v45 + v44, type metadata accessor for Participant);
  v46 = *(*a4 + 336);
  v47 = v41;

  v46(closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v45);
  v48 = v79;

  if ([v39 unreliableMessengerEnabled])
  {
    v49 = UUID.uuidString.getter();
    v51 = v50;
    v52 = *(v80 + *(v67 + 24));
    v53 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager, &protocol conformance descriptor for LinkManager);
    v75 = (*(*v77 + 256))(v81, v49, v51, v52, v76, v47, v53);

    v55 = v68;
    (*(*a4 + 448))(v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
    v56 = v48;
    v57 = v69;
    v58 = v71;
    Publisher.map<A>(_:)();
    (*(v70 + 8))(v55, v58);
    v59 = v75;
    v60 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR, MEMORY[0x1E695BD60]);
    v61 = v73;
    Publisher<>.assign(to:)();
    v62 = v57;
    v48 = v56;
    (*(v72 + 8))(v62, v61);
    v60(v82, 0);
    *&v47[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v59;
  }

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v64 = *(*a4 + 360);

  v64(closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)partial apply, v63);

  swift_unknownObjectRelease();

  _s15GroupActivities11ParticipantVWOhTm_0(v80, type metadata accessor for Participant);
  v65 = *(v35 + 8);
  v65(v81, v34);
  v65(v48, v34);

  return v47;
}

void closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = type metadata accessor for Participant(0);
    if (a4)
    {
      v14 = *(a4 + 16);
      v15 = (a4 + 32);
      while (v14)
      {
        v16 = *v15++;
        --v14;
        if (v16 == *(a6 + *(v13 + 24)))
        {
          goto LABEL_6;
        }
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.default);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1AEE80000, v22, v23, "Ignoring topic record due to not being in the destination list", v24, 2u);
        MEMORY[0x1B2715BA0](v24, -1, -1);
      }
    }

    else
    {
LABEL_6:
      v17 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1B0))(v13);
      if (v17)
      {
        v19 = v17;
        v20 = v18;
        v25 = 0;
        v17(a1, a2, a3, &v25);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19, v20);
      }
    }
  }
}

uint64_t closure #2 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMd, &_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMR);
  v4 = MEMORY[0x1EEE9AC00](v50);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v41 - v7;
  result = MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - v9;
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v42 = a2;
    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v54;
    v13 = v10 + 64;
    result = _HashTable.startBucket.getter();
    v14 = result;
    v15 = 0;
    v43 = v10 + 72;
    v44 = v11;
    v45 = v10 + 64;
    v46 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v10 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(v10 + 36);
      v51 = v15;
      v52 = v19;
      v53 = v12;
      v20 = v50;
      v21 = *(v50 + 48);
      v22 = *(v10 + 56);
      v23 = *(*(v10 + 48) + 8 * v14);
      v24 = type metadata accessor for PubSubTopic.Participant();
      v25 = *(v24 - 8);
      v26 = v47;
      (*(v25 + 16))(&v47[v21], v22 + *(v25 + 72) * v14, v24);
      v27 = v48;
      *v48 = v23;
      (*(v25 + 32))(&v27[*(v20 + 48)], &v26[v21], v24);
      v28 = v27;
      v29 = v49;
      outlined init with take of (key: UInt64, value: PubSubTopic.Participant)(v28, v49);
      v30 = *v29;
      v31 = *(v20 + 48);
      v12 = v53;
      result = (*(v25 + 8))(&v29[v31], v24);
      v54 = v12;
      v33 = *(v12 + 16);
      v32 = *(v12 + 24);
      if (v33 >= v32 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v12 = v54;
      }

      *(v12 + 16) = v33 + 1;
      *(v12 + 8 * v33 + 32) = v30;
      v10 = v46;
      v16 = 1 << *(v46 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v13 = v45;
      v34 = *(v45 + 8 * v18);
      if ((v34 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (v52 != *(v46 + 36))
      {
        goto LABEL_25;
      }

      v35 = v34 & (-2 << (v14 & 0x3F));
      if (v35)
      {
        v16 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v44;
      }

      else
      {
        v36 = v18 << 6;
        v37 = v18 + 1;
        v17 = v44;
        v38 = (v43 + 8 * v18);
        while (v37 < (v16 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = outlined consume of Set<TUHandle>.Index._Variant(v14, v52, 0);
            v16 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<TUHandle>.Index._Variant(v14, v52, 0);
      }

LABEL_4:
      v15 = v51 + 1;
      v14 = v16;
      if (v51 + 1 == v17)
      {
        a2 = v42;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_20:
    *a2 = v12;
  }

  return result;
}

void closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for PubSubTopic.State();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 104))(v6, *MEMORY[0x1E69974D8], v3);
    v9 = static PubSubTopic.State.== infix(_:_:)();
    v10 = (*(v4 + 8))(v6, v3);
    if ((v9 & 1) != 0 && (v11 = MEMORY[0x1E69E7D40], ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x198))(v10) & 1) == 0) && (v12 = (*((*v11 & *v8) + 0x1A0))(1), (v13 = (*((*v11 & *v8) + 0x1C8))(v12)) != 0))
    {
      v15 = v14;
      v16 = v13;
      v13();

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16, v15);
    }

    else
    {
    }
  }
}

id LinkManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

NSObject *LinkManager.resume()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - v6;
  v8 = *(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v9 = [v8 lock];
  v10 = OBJC_IVAR____TtC15GroupActivities11LinkManager_state;
  if ((*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_state) & 1) == 0)
  {
    (*(**(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 648))(v9);
    *(&v0->isa + v10) = 1;
    if ([*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags) unreliableMessengerEnabled])
    {
      if (!*(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Log.default);
        v0 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v0, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v31, "No UnreliableMessenger to start", v32, 2u);
          MEMORY[0x1B2715BA0](v32, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        v12 = 3;
        goto LABEL_3;
      }

      v13 = *((*MEMORY[0x1E69E7D40] & v0->isa) + 0x168);
      v47 = *(&v0->isa + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger);

      v15 = v13(v14);
      if (!v15)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, static Log.default);
        v0 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v0, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v34, "Missing dataCryptor, unable to start UnreliableMessenger", v35, 2u);
          MEMORY[0x1B2715BA0](v35, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        *v36 = 4;
        swift_willThrow();

        goto LABEL_4;
      }

      v16 = v15;
      v17 = (*((*MEMORY[0x1E69E7D40] & v0->isa) + 0x210))();
      if (!v17)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Log.default);
        v0 = Logger.logObject.getter();
        v38 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v0, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1AEE80000, v0, v38, "Missing requestEncryptionKeysHandler for UnreliableMessenger", v39, 2u);
          MEMORY[0x1B2715BA0](v39, -1, -1);
        }

        lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
        swift_allocError();
        *v40 = 5;
        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_4;
      }

      v42 = v2;
      v19 = v17;
      v46 = v18;
      v20 = UUID.uuidString.getter();
      v43 = v21;
      v44 = v20;
      v45 = type metadata accessor for GroupSessionDataCryptorProvider();
      v41 = swift_allocObject();
      outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v19, v46);
      swift_unknownObjectRetain();
      v43 = v19;
      v44 = v16;
      v22 = GroupSessionDataCryptorProvider.init(topic:dataCryptor:refreshEncryptionKeysHandler:)();
      v23 = static Date.now.getter();
      v24 = (*((*MEMORY[0x1E69E7D40] & v0->isa) + 0xF8))(v23);
      v25 = MEMORY[0x1E69976B8];
      if (v24)
      {
        v49 = v45;
        v50 = MEMORY[0x1E69976B8];
        v48[0] = v22;
        v26 = *(*v24 + 432);

        v26(v48, MEMORY[0x1E69E7CC0]);
        v25 = MEMORY[0x1E69976B8];

        outlined destroy of NSObject?(v48, &_s14CopresenceCore20TopicCryptorProvider_pSgMd, &_s14CopresenceCore20TopicCryptorProvider_pSgMR);
      }

      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      Date.timeIntervalSince1970.getter();
      v49 = v45;
      v50 = v25;
      v48[0] = v22;

      UnreliableMessenger.start(dataCryptorProvider:)();

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v43, v46);
      swift_unknownObjectRelease();
      v27 = *(v42 + 8);
      v27(v5, v1);
      v27(v7, v1);
      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    v28 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v0 = AttachmentDataReport.init(isSubscribe:responseTime:)();
    [v8 unlock];
    return v0;
  }

  lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
  swift_allocError();
  v12 = 2;
LABEL_3:
  *v11 = v12;
  swift_willThrow();
LABEL_4:
  [v8 unlock];
  return v0;
}

uint64_t LinkManager.close()()
{
  v3 = v0;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  v12 = [v11 lock];
  v13 = OBJC_IVAR____TtC15GroupActivities11LinkManager_state;
  if (*(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_state) == 1)
  {
    v21[0] = v11;
    v21[1] = v1;
    (*(**(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 656))(v12);
    v14 = static Date.now.getter();
    v15 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xF8))(v14);
    if (v15)
    {
      (*(*v15 + 448))(v15);
    }

    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    Date.timeIntervalSince1970.getter();
    v16 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v2 = AttachmentDataReport.init(isSubscribe:responseTime:)();
    v17 = OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger;
    if (*(v3 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
    {

      UnreliableMessenger.close()();
    }

    v18 = *(v5 + 8);
    v18(v8, v4);
    v18(v10, v4);
    *(v3 + v17) = 0;

    *(v3 + v13) = 0;
    [v21[0] unlock];
  }

  else
  {
    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    [v11 unlock];
  }

  return v2;
}

id LinkManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LinkManager.sendDataReliably(_:to:messageTypeIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  if (!a3)
  {
    v12 = 0;
    goto LABEL_18;
  }

  v34 = a4;
  v35 = a1;
  v32 = a5;
  v33 = a2;
  v9 = a6;
  v10 = a7;
  if ((a3 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
      v12 = v11;
      v13 = *(v11 + 16);

      if (v13 == __CocoaSet.count.getter())
      {
LABEL_5:

        a7 = v10;
        a6 = v9;
        a5 = v32;
        a2 = v33;
        a4 = v34;
        a1 = v35;
LABEL_18:
        (*(**(v7 + OBJC_IVAR____TtC15GroupActivities11LinkManager_topic) + 664))(a1, a2, v12, a4, a5, a6, a7);

        return;
      }

LABEL_9:
      v31 = v7;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v36[0] = v30;
        *v20 = 136315394;
        v21 = MEMORY[0x1B27142D0](v12, MEMORY[0x1E69E76D8]);
        v23 = v22;

        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v36);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
        lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
        v25 = Set.description.getter();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v36);

        *(v20 + 14) = v27;
        _os_log_impl(&dword_1AEE80000, v18, v19, "Not able to resolve all participants' identifiers, sending only to destinations %s instead of %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v30, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }

      else
      {
      }

      a7 = v10;
      a6 = v9;
      a5 = v32;
      a2 = v33;
      a4 = v34;
      a1 = v35;
      v7 = v31;
      goto LABEL_18;
    }
  }

  else if (*(a3 + 16))
  {
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
    v12 = v14;
    v15 = *(v14 + 16);
    v16 = *(a3 + 16);

    if (v15 == v16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
  v28 = swift_allocError();
  *v29 = 0;
  v9();
}

void LinkManager.sendDataUnreliably(_:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (*(v5 + OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger))
  {
    if (!a3)
    {

      goto LABEL_25;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {

      if (__CocoaSet.count.getter())
      {
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
        v9 = v8;
        v10 = *(v8 + 16);

        if (v10 == __CocoaSet.count.getter())
        {
LABEL_6:

LABEL_25:
          UnreliableMessenger.send(_:to:completion:)();

          return;
        }

LABEL_15:
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.default);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36[0] = v35;
          *v24 = 136315394;
          v33 = v23;
          v25 = MEMORY[0x1B27142D0](v9, MEMORY[0x1E69E76D8]);
          log = v22;
          v27 = v26;

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v36);

          *(v24 + 4) = v28;
          *(v24 + 12) = 2080;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
          lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CPParticipant and conformance NSObject, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
          v29 = Set.description.getter();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v36);

          *(v24 + 14) = v31;
          v22 = log;
          _os_log_impl(&dword_1AEE80000, log, v33, "Not able to resolve all participants' identifiers, sending only to destinations %s instead of %s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v35, -1, -1);
          MEMORY[0x1B2715BA0](v24, -1, -1);
        }

        else
        {
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = *(a3 + 16);

      if (v17)
      {
        _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo13CPParticipantCG_s6UInt64Vs5NeverOTg50146_s15GroupActivities11LinkManagerC18sendDataUnreliably33_48733F7BC0874567A073322F4D1276FELL_2to10completiony10Foundation0F0V_AA14CPParticipantsOys5c9_pSgctFs6e5VSo13D6CXEfU_Tf1cn_nTm(a3);
        v9 = v18;
        v19 = *(v18 + 16);
        v20 = *(a3 + 16);

        if (v19 == v20)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v15 = swift_allocError();
    *v32 = 0;
    a4();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Log.default);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1AEE80000, v12, v13, "Unexpected, unreliableMessenger instance not found", v14, 2u);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    v15 = swift_allocError();
    *v16 = 1;
    a4();
  }
}

uint64_t LinkManager.fetchAttachmentLedgerTopic()()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities21AttachmentLedgerTopicC_Tt2g5(0, 0, v1, &closure #1 in LinkManager.fetchAttachmentLedgerTopic()partial apply, v4);
  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = type metadata accessor for AttachmentLedgerTopic(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v7 = v0;
  v7[1] = LinkManager.fetchAttachmentLedgerTopic();
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v6, v8, v9, v10);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = LinkManager.fetchAttachmentLedgerTopic();
  }

  else
  {
    v2 = LinkManager.fetchAttachmentLedgerTopic();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in LinkManager.fetchAttachmentLedgerTopic()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGGMR);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

uint64_t closure #1 in LinkManager.fetchAttachmentLedgerTopic()()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  *(v0 + 16) = (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x110))();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<AttachmentLedgerTopic?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  MEMORY[0x1B2713ED0](v4, v5);

  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<AttachmentLedgerTopic?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  v8 = *(v0 + 80);

  return MEMORY[0x1EEE6D8C8](v0 + 24, v8, v6);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  }

  else
  {
    v2 = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 120) = *(v0 + 24);
  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachmentLedgerTopic(), 0, 0);
}

{
  v1 = v0[15];
  if (v1 == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v5 = v0[1];
  }

  else
  {
    if (!v1)
    {
      v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<AttachmentLedgerTopic?, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities21AttachmentLedgerTopicCSgs5NeverOG_GMR, MEMORY[0x1E695BF38]);
      v3 = swift_task_alloc();
      v0[13] = v3;
      *v3 = v0;
      v3[1] = closure #1 in LinkManager.fetchAttachmentLedgerTopic();
      v4 = v0[10];

      return MEMORY[0x1EEE6D8C8](v0 + 3, v4, v2);
    }

    v6 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);
    *v6 = v1;

    v5 = v0[1];
  }

  return v5();
}

{
  *(v0 + 32) = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t closure #1 in LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for URL();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for TaskPriority();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkManager.fetchAttachment(attachmentID:), 0, 0);
}

uint64_t closure #1 in LinkManager.fetchAttachment(attachmentID:)()
{
  v35 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 264) = __swift_project_value_buffer(v1, static Log.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 232);
    v7 = *(v0 + 240);
    v8 = *(v0 + 224);
    v31 = *(v0 + 216);
    v33 = v3;
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v9 = 136315394;
    Attachment.id.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v4 + 8))(v5, v7);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v8 + 8))(v6, v31);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v2, v33, "Received request to generate new AttachmentDownloadTask for attachment: %s with priority: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v19 + 16);
  *(v0 + 272) = v24;
  *(v0 + 280) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v18, v22, v20);
  v25 = type metadata accessor for AssetManager();
  v26 = static AssetManager.shared.getter();
  *(v0 + 40) = v25;
  *(v0 + 48) = &protocol witness table for AssetManager;
  *(v0 + 16) = v26;
  *(v0 + 80) = type metadata accessor for AttachmentLedgerTopic(0);
  *(v0 + 88) = &protocol witness table for AttachmentLedgerTopic;
  *(v0 + 56) = v21;
  v27 = type metadata accessor for Attachment();
  *(v0 + 288) = v27;
  *(v0 + 120) = v27;
  *(v0 + 128) = &protocol witness table for Attachment;
  *(v0 + 96) = v23;
  type metadata accessor for AttachmentDownloadTask(0);
  v28 = swift_allocObject();
  *(v0 + 296) = v28;

  swift_defaultActor_initialize();
  *(v28 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_signalHandler) = 0;
  outlined init with take of Transferable((v0 + 56), v28 + 112);
  outlined init with take of Transferable((v0 + 96), v28 + 152);
  (*(v19 + 32))(v28 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_file, v18, v20);
  outlined init with take of Transferable((v0 + 16), v28 + OBJC_IVAR____TtC15GroupActivities22AttachmentDownloadTask_manager);
  v29 = swift_task_alloc();
  *(v0 + 304) = v29;
  *v29 = v0;
  v29[1] = closure #1 in LinkManager.fetchAttachment(attachmentID:);

  return AttachmentDownloadTask.start()();
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = closure #1 in LinkManager.fetchAttachment(attachmentID:);
  }

  else
  {
    v2 = closure #1 in LinkManager.fetchAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[34];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];

  v1(v4, v3, v2);

  v5 = v0[1];

  return v5();
}

{
  v22 = v0;
  v1 = *(v0 + 312);
  *(v0 + 136) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v0 + 320) == 1)
  {

    lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 312);

    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 312);
      v9 = *(v0 + 168);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136315394;
      *(v0 + 144) = v9;

      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v0 + 152) = v8;
      v15 = v8;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to download attachment %s, error: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    swift_willThrow();
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for LinkManager.Attachment(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v5[22] = *(v10 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LinkManager.fetchAttachment(attachmentID:generator:), 0, 0);
}

uint64_t LinkManager.fetchAttachment(attachmentID:generator:)()
{
  v103 = v0;
  v101 = *(v0[10] + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v101 lock];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, static Log.default);
  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v7 = v9;
  v9(v1, v4, v2);
  v100 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[21];
  if (v12)
  {
    v96 = v7;
    v16 = v0[19];
    v91 = v0[17];
    v92 = v0[18];
    v17 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v102[0] = v94;
    *v17 = 136315394;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    LODWORD(v90) = v11;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v8;
    v21 = v20;
    v98 = *(v15 + 8);
    v98(v13, v14);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, v102);
    v8 = v19;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = v16;
    v7 = v96;
    (*(v92 + 8))(v26, v91);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v102);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v10, v90, "Received request to fetch attachment: %s with priority: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v94, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  else
  {

    v98 = *(v15 + 8);
    v28 = (v98)(v13, v14);
  }

  v29 = v0[10];
  v30 = v0[7];
  v31 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x130);
  v32 = (v31)(v28);
  v33 = swift_task_alloc();
  v33[2] = v30;
  v34 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in GroupSession.createPlaybackEvent(originatorUUID:avCommand:rate:), v33, v32);
  v36 = v35;

  if (v36)
  {
    v7(v0[23], v0[7], v0[20]);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[23];
    v42 = v0[20];
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v102[0] = v44;
      *v43 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v98(v41, v42);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v102);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1AEE80000, v38, v39, "Failed to find attachment with attachmentID %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1B2715BA0](v44, -1, -1);
      MEMORY[0x1B2715BA0](v43, -1, -1);
    }

    else
    {

      v98(v41, v42);
    }

    [v101 unlock];
    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v57 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v49 = v0[10];
  v50 = (v31)(v37);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v34 >= *(v50 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v0[16];
  v53 = v0[12];
  v52 = v0[13];
  v54 = *(v52 + 80);
  v100 = (v54 + 32) & ~v54;
  v31 = *(v52 + 72) * v34;
  _s15GroupActivities11ParticipantVWOcTm_1(v50 + v100 + v31, v51, type metadata accessor for LinkManager.Attachment);

  v55 = *(v53 + 32);
  v56 = *(v51 + v55);
  if (v56 - 1 < 2)
  {
    v8 = 0;
    goto LABEL_22;
  }

  v8 = *(v51 + v55);
  if (v56)
  {
    goto LABEL_22;
  }

  v60 = v0[16];
  v61 = v60 + *(v0[12] + 24);
  if ((*(v61 + 16) & 1) == 0)
  {
    v79 = *(v51 + v55);
    v90 = *v61;
    v91 = *(v61 + 8);
    v99 = v0[24];
    v95 = v0[21];
    v97 = v0[20];
    v93 = v0[15];
    v88 = v0[10];
    v89 = v0[11];
    v87 = v0[9];
    v86 = v0[8];
    v80 = v0[7];
    v82 = v0[14];
    (*(v0[18] + 56))();
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s15GroupActivities11ParticipantVWOcTm_1(v60, v93, type metadata accessor for LinkManager.Attachment);
    v7(v99, v80, v97);
    v81 = (v54 + 56) & ~v54;
    v85 = (v81 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v85 + *(v95 + 80) + 8) & ~*(v95 + 80);
    v63 = swift_allocObject();
    *(v63 + 2) = 0;
    *(v63 + 3) = 0;
    *(v63 + 4) = v86;
    *(v63 + 5) = v87;
    *(v63 + 6) = v90;
    _s15GroupActivities11ParticipantVWObTm_2(v93, &v63[v81], type metadata accessor for LinkManager.Attachment);
    *&v63[v85] = v84;
    (*(v95 + 32))(&v63[v83], v99, v97);
    outlined copy of LinkManager.Attachment.Source(v90, v91, 0);
    outlined copy of LinkManager.Attachment.Source(v90, v91, 0);

    v8 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v89, &async function pointer to partial apply for closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), v63);
    v29 = v0 + 2;
    *(v51 + v55) = v8;
    v64 = *((*MEMORY[0x1E69E7D40] & *v88) + 0x140);

    v49 = v64(v0 + 2);
    v36 = v65;
    v33 = *v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v33;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_20:
      if (v34 >= v33[2])
      {
        __break(1u);
        return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_native, v67, v68, v69, v70);
      }

      outlined assign with copy of LinkManager.Attachment(v0[16], v33 + v100 + v31);
      v49(v29, 0);
      outlined consume of LinkManager.Attachment.Source(v90, v91, 0);
      v56 = v79;
LABEL_22:
      v0[26] = v8;
      [v101 unlock];
      if (!v8)
      {
        v72 = v0[16];
        v73 = v0[12];
        v74 = v0[6];
        v75 = *(v73 + 28);
        v76 = type metadata accessor for URL();
        (*(*(v76 - 8) + 16))(v74, v72 + v75, v76);
        v77 = *(v72 + *(v73 + 20));
        _s15GroupActivities11ParticipantVWOhTm_0(v72, type metadata accessor for LinkManager.Attachment);

        v59 = v0[1];
        v58.n128_u64[0] = v77;
        goto LABEL_27;
      }

      v71 = swift_task_alloc();
      v0[27] = v71;
      isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v71 = v0;
      v71[1] = LinkManager.fetchAttachment(attachmentID:generator:);
      v70 = MEMORY[0x1E69E7288];
      v68 = MEMORY[0x1E69E7CA8] + 8;
      v67 = v8;
      v69 = isUniquelyReferenced_nonNull_native;

      return MEMORY[0x1EEE6DA10](isUniquelyReferenced_nonNull_native, v67, v68, v69, v70);
    }

LABEL_32:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
    v33 = isUniquelyReferenced_nonNull_native;
    *v36 = isUniquelyReferenced_nonNull_native;
    goto LABEL_20;
  }

  [v101 unlock];
  lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
  swift_allocError();
  *v62 = 4;
  swift_willThrow();
  _s15GroupActivities11ParticipantVWOhTm_0(v60, type metadata accessor for LinkManager.Attachment);
LABEL_15:

  v59 = v0[1];
LABEL_27:

  return v59(v58);
}

{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = LinkManager.fetchAttachment(attachmentID:generator:);
  }

  else
  {
    v2 = LinkManager.fetchAttachment(attachmentID:generator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[6];
  v4 = *(v2 + 28);
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 16))(v3, v1 + v4, v5);
  v6 = *(v1 + *(v2 + 20));
  _s15GroupActivities11ParticipantVWOhTm_0(v1, type metadata accessor for LinkManager.Attachment);

  v7 = v0[1];
  v8.n128_u64[0] = v6;

  return v7(v8);
}

{
  v1 = *(v0 + 128);

  _s15GroupActivities11ParticipantVWOhTm_0(v1, type metadata accessor for LinkManager.Attachment);

  v2 = *(v0 + 8);

  return v2();
}